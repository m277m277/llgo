package main

import (
	"unsafe"

	"github.com/goplus/llgo/internal/abi"
)

type eface struct {
	_type *abi.Type
	data  unsafe.Pointer
}

func main() {
	dump(true)
	dump(0)
	dump(int8(0))
	dump(int16(0))
	dump(int32(0))
	dump(int64(0))
	dump(uint(0))
	dump(uint8(0))
	dump(uint16(0))
	dump(uint32(0))
	dump(uint64(0))
	dump(uintptr(0))
	dump(float32(0))
	dump(float64(0))
	dump([10]int{})
	dump(func() {})
	dump((*int)(nil))
	dump([]int{})
	dump("hello")
	dump(struct {
		x int8
		y int
		z int
	}{})
}

func dump(v any) {
	e := (*eface)(unsafe.Pointer(&v))
	println(e._type.Size(), e._type.Kind(), e._type, e._type.Elem())
}