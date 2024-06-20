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

package cmplx

import (
	_ "unsafe"
)

const (
	LLGoPackage = "decl"
)

// -----------------------------------------------------------------------------

//go:linkname Abs C.cabs
func Abs(z complex128) float64

//go:linkname Acos C.cacos
func Acos(z complex128) complex128

//go:linkname Acosh C.cacosh
func Acosh(z complex128) complex128

//go:linkname Asin C.casin
func Asin(z complex128) complex128

//go:linkname Asinh C.casinh
func Asinh(z complex128) complex128

//go:linkname Atan C.catan
func Atan(z complex128) complex128

//go:linkname Atanh C.catanh
func Atanh(z complex128) complex128

//go:linkname Cos C.ccos
func Cos(z complex128) complex128

//go:linkname Cosh C.ccosh
func Cosh(z complex128) complex128

//go:linkname Exp C.cexp
func Exp(z complex128) complex128

//go:linkname Log C.clog
func Log(z complex128) complex128

//go:linkname Log10 C.clog10
func Log10(z complex128) complex128

//go:linkname Arg C.carg
func Arg(z complex128) float64

//go:linkname Phase C.carg
func Phase(z complex128) float64

//go:linkname Pow C.cpow
func Pow(x, y complex128) complex128

//go:linkname Sin C.csin
func Sin(z complex128) complex128

//go:linkname Sinh C.csinh
func Sinh(z complex128) complex128

//go:linkname Sqrt C.csqrt
func Sqrt(z complex128) complex128

//go:linkname Tan C.ctan
func Tan(z complex128) complex128

//go:linkname Tanh C.ctanh
func Tanh(z complex128) complex128

// -----------------------------------------------------------------------------
