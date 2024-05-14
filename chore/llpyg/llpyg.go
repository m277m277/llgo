/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/types"
	"log"
	"os"
	"os/exec"
	"strings"

	"github.com/goplus/gogen"
)

type symbol struct {
	Name string `json:"name"`
	Type string `json:"type"`
	Doc  string `json:"doc"`
	Sig  string `json:"sig"`
}

type module struct {
	Name  string    `json:"name"`
	Items []*symbol `json:"items"`
}

func main() {
	if len(os.Args) < 2 {
		fmt.Fprintln(os.Stderr, "Usage: llpyg <pythonLibPath>")
		return
	}
	pyLib := os.Args[1]

	var out bytes.Buffer
	pydump := exec.Command("pydump", pyLib)
	pydump.Stdout = &out
	pydump.Run()

	var mod module
	json.Unmarshal(out.Bytes(), &mod)

	pkg := gogen.NewPackage("", mod.Name, nil)
	pkg.Import("unsafe").MarkForceUsed(pkg)       // import _ "unsafe"
	py := pkg.Import("github.com/goplus/llgo/py") // import "github.com/goplus/llgo/py"

	obj := py.Ref("Object").(*types.TypeName).Type().(*types.Named)
	objPtr := types.NewPointer(obj)
	ret := types.NewTuple(pkg.NewParam(0, "", objPtr))

	ctx := &context{pkg, obj, objPtr, ret, py}
	for _, sym := range mod.Items {
		switch sym.Type {
		case "builtin_function_or_method", "function":
			ctx.genFunc(pkg, sym)
		case "str", "float", "bool", "type", "dict", "list", "module", "int", "set": // skip
		default:
			t := sym.Type
			if len(t) > 0 && (t[0] >= 'a' && t[0] <= 'z') {
				log.Panicln("unsupport type:", sym.Type)
			}
		}
	}
	pkg.WriteTo(os.Stdout)
}

type context struct {
	pkg    *gogen.Package
	obj    *types.Named
	objPtr *types.Pointer
	ret    *types.Tuple
	py     gogen.PkgRef
}

func (ctx *context) genFunc(pkg *gogen.Package, sym *symbol) {
	name := sym.Name
	if len(name) == 0 || name[0] == '_' {
		return
	}
	params, variadic, skip := ctx.genParams(pkg, sym.Sig)
	if skip {
		// TODO(xsw): don't skip any func
		log.Println("skip func:", name, sym.Sig)
		return
	}
	if c := name[0]; c >= 'a' && c <= 'z' {
		name = string(c+'A'-'a') + name[1:]
	}
	fn := pkg.NewFunc(nil, name, params, ctx.ret, variadic)
	fn.SetComments(pkg, ctx.genComment(sym.Doc))
	fn.BodyStart(pkg).End()
}

func (ctx *context) genParams(pkg *gogen.Package, sig string) (*types.Tuple, bool, bool) {
	if sig == "<NULL>" {
		return nil, false, true
	}
	sig = strings.TrimSuffix(strings.TrimPrefix(sig, "("), ")")
	parts := strings.Split(sig, ",")
	n := len(parts)
	if last := strings.TrimSpace(parts[n-1]); last == "/" {
		n--
	}
	objPtr := ctx.objPtr
	list := make([]*types.Var, n)
	for i := 0; i < n; i++ {
		part := strings.TrimSpace(parts[i])
		if strings.HasPrefix(part, "*") {
			if len(part) > 1 && part[1] == '*' || i != n-1 {
				return nil, false, true
			}
			list[i] = pkg.NewParam(0, part[1:], types.NewSlice(objPtr))
			return types.NewTuple(list...), true, false
		}
		list[i] = pkg.NewParam(0, part, objPtr)
	}
	return types.NewTuple(list...), false, false
}

func (ctx *context) genComment(doc string) *ast.CommentGroup {
	lines := strings.Split(doc, "\n")
	list := make([]*ast.Comment, len(lines))
	for i, line := range lines {
		list[i] = &ast.Comment{Text: "// " + line}
	}
	return &ast.CommentGroup{List: list}
}
