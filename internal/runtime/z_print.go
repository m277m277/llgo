// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/internal/runtime/c"
)

func PrintByte(v byte) {
	c.Fputc(c.Int(v), c.Stderr)
}

func PrintBool(v bool) {
	if v {
		c.Fprintf(c.Stderr, c.Str("true"))
	} else {
		c.Fprintf(c.Stderr, c.Str("false"))
	}
}

func PrintFloat(v float64) {
	switch {
	case v != v:
		c.Fprintf(c.Stderr, c.Str("NaN"))
		return
	case v+v == v && v != 0:
		if v > 0 {
			c.Fprintf(c.Stderr, c.Str("+Inf"))
		} else {
			c.Fprintf(c.Stderr, c.Str("-Inf"))
		}
		return
	}
	c.Fprintf(c.Stderr, c.Str("%e"), v)
}

// func PrintComplex(c complex128) {
// 	print("(", real(c), imag(c), "i)")
// }

func PrintUint(v uint64) {
	c.Fprintf(c.Stderr, c.Str("%llu"), v)
}

func PrintInt(v int64) {
	c.Fprintf(c.Stderr, c.Str("%lld"), v)
}

func PrintHex(v uint64) {
	c.Fprintf(c.Stderr, c.Str("%llx"), v)
}

func PrintPointer(p unsafe.Pointer) {
	c.Fprintf(c.Stderr, c.Str("%p"), p)
}

func PrintString(s String) {
	c.Fwrite(s.data, 1, uintptr(s.len), c.Stderr)
}

func PrintSlice(s Slice) {
	print("[", s.len, "/", s.cap, "]", s.data)
}

func PrintEface(e Eface) {
	print("(", e._type, ",", e.data, ")")
}