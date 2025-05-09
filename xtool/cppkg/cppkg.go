/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

package cppkg

import (
	"strings"
)

const (
	// DefaultFlags is the default flags for package installation.
	DefaultFlags = IndexAutoUpdate | ToolQuietInstall
)

// Install installs a package with the given name and version.
// pkgAndVer: 7bitcoder/7bitconf@1.2.0
func Install(pkgAndVer string, flags int) {
	pkgPath, ver := parsePkgVer(pkgAndVer)
	_, _, err := InstallPkg("", pkgPath, ver, nil, flags)
	check(err)
}

// InstallPkg installs a package with the given package path and version.
func InstallPkg(cacheDir, pkgPath, ver string, options []string, flags int) (pkg *Package, buildDir string, err error) {
	m, err := New(cacheDir)
	if err != nil {
		return
	}
	pkg, err = m.Lookup(pkgPath, ver, flags)
	if err == nil {
		buildDir, err = m.Install(pkg, options, flags)
	}
	return
}

func parsePkgVer(pkg string) (string, string) {
	parts := strings.SplitN(pkg, "@", 2)
	if len(parts) == 1 {
		return parts[0], ""
	}
	return parts[0], parts[1]
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
