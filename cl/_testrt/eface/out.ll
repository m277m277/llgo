; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.UncommonType" = type { %"github.com/goplus/llgo/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"\09elem: ", align 1
@2 = private unnamed_addr constant [9 x i8] c"\09uncomm: ", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@_llgo_int16 = linkonce global ptr null, align 8
@_llgo_int32 = linkonce global ptr null, align 8
@_llgo_int64 = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@_llgo_uint8 = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@_llgo_uint64 = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_float32 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@"[10]_llgo_int" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30" = linkonce global ptr null, align 8
@"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"f", align 1
@4 = private unnamed_addr constant [4 x i8] c"data", align 1
@5 = private unnamed_addr constant [4 x i8] c"main", align 1
@"*_llgo_int" = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = linkonce global ptr null, align 8
@"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [1 x i8] c"x", align 1
@8 = private unnamed_addr constant [1 x i8] c"y", align 1
@9 = private unnamed_addr constant [1 x i8] c"z", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@11 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [1 x i8] c"T", align 1

define void @"main.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 6, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.eface, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @main.dumpTyp(ptr %3, %"github.com/goplus/llgo/internal/runtime.String" %7)
  ret void
}

define void @main.dumpTyp(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %2 = call i64 @"github.com/goplus/llgo/internal/abi.(*Type).Kind"(ptr %0)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %16 = zext i32 %8 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %17 = zext i8 %10 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %18 = zext i8 %12 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %0)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %21 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %0)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @1, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 7, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @main.dumpTyp(ptr %21, %"github.com/goplus/llgo/internal/runtime.String" %26)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  %28 = icmp ne ptr %27, null
  br i1 %28, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %29 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @2, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 9, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %33)
  call void @main.dumpUncommon(ptr %29, %"github.com/goplus/llgo/internal/runtime.String" %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %39)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @2, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 9, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %44)
  call void @main.dumpUncommon(ptr %40, %"github.com/goplus/llgo/internal/runtime.String" %45)
  br label %_llgo_4
}

define void @main.dumpUncommon(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %8 = zext i16 %5 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %9 = zext i16 %7 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @_llgo_bool, align 8
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  %12 = load ptr, ptr @_llgo_int8, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 1
  store ptr null, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %16)
  %17 = load ptr, ptr @_llgo_int16, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr null, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  %22 = load ptr, ptr @_llgo_int32, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %26)
  %27 = load ptr, ptr @_llgo_int64, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr null, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %31)
  %32 = load ptr, ptr @_llgo_uint, align 8
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %36)
  %37 = load ptr, ptr @_llgo_uint8, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %37, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %41)
  %42 = load ptr, ptr @_llgo_uint16, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %46)
  %47 = load ptr, ptr @_llgo_uint32, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr null, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %51)
  %52 = load ptr, ptr @_llgo_uint64, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %56)
  %57 = load ptr, ptr @_llgo_uintptr, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %57, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr null, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %61)
  %62 = load ptr, ptr @_llgo_float32, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 1
  store ptr null, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %66)
  %67 = load ptr, ptr @_llgo_float64, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr null, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %71)
  %72 = load ptr, ptr @"[10]_llgo_int", align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %73, align 4
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 0
  store ptr %72, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 1
  store ptr %73, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %77)
  %78 = alloca { ptr, ptr }, align 8
  %79 = getelementptr inbounds { ptr, ptr }, ptr %78, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %79, align 8
  %80 = getelementptr inbounds { ptr, ptr }, ptr %78, i32 0, i32 1
  store ptr null, ptr %80, align 8
  %81 = load { ptr, ptr }, ptr %78, align 8
  %82 = load ptr, ptr @_llgo_Pointer, align 8
  %83 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %84 = load ptr, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %81, ptr %85, align 8
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, i32 0, i32 0
  store ptr %84, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, i32 0, i32 1
  store ptr %85, ptr %88, align 8
  %89 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %89)
  %90 = load ptr, ptr @"*_llgo_int", align 8
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, i32 0, i32 0
  store ptr %90, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, i32 0, i32 1
  store ptr null, ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %94)
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 0
  store ptr %95, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 1
  store i64 0, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 2
  store i64 0, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, align 8
  %101 = load ptr, ptr @"[]_llgo_int", align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/internal/runtime.Slice" %100, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %103, i32 0, i32 0
  store ptr %101, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %103, i32 0, i32 1
  store ptr %102, ptr %105, align 8
  %106 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %103, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %106)
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 0
  store ptr @6, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 1
  store i64 5, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %107, align 8
  %111 = load ptr, ptr @_llgo_string, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %110, ptr %112, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 0
  store ptr %111, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 1
  store ptr %112, ptr %115, align 8
  %116 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %116)
  %117 = load ptr, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %118, align 4
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, i32 0, i32 0
  store ptr %117, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, i32 0, i32 1
  store ptr %118, ptr %121, align 8
  %122 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %119, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %122)
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr null, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 0, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  %127 = load ptr, ptr @_llgo_main.T, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %128, align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %129, i32 0, i32 0
  store ptr %127, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %129, i32 0, i32 1
  store ptr %128, ptr %131, align 8
  %132 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %129, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %132)
  ret i32 0
}

define void @"main.main$1"() {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 33)
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int8, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %8, ptr @_llgo_int8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_int16, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 36)
  store ptr %11, ptr @_llgo_int16, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %12 = load ptr, ptr @_llgo_int32, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %14, ptr @_llgo_int32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %15 = load ptr, ptr @_llgo_int64, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 38)
  store ptr %17, ptr @_llgo_int64, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %18 = load ptr, ptr @_llgo_uint, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 39)
  store ptr %20, ptr @_llgo_uint, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %21 = load ptr, ptr @_llgo_uint8, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  store ptr %23, ptr @_llgo_uint8, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %24 = load ptr, ptr @_llgo_uint16, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 41)
  store ptr %26, ptr @_llgo_uint16, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %27 = load ptr, ptr @_llgo_uint32, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 42)
  store ptr %29, ptr @_llgo_uint32, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %30 = load ptr, ptr @_llgo_uint64, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 43)
  store ptr %32, ptr @_llgo_uint64, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %33 = load ptr, ptr @_llgo_uintptr, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %35, ptr @_llgo_uintptr, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %36 = load ptr, ptr @_llgo_float32, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 45)
  store ptr %38, ptr @_llgo_float32, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %39 = load ptr, ptr @_llgo_float64, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 46)
  store ptr %41, ptr @_llgo_float64, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %42 = load ptr, ptr @"[10]_llgo_int", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 10, ptr %44)
  store ptr %45, ptr @"[10]_llgo_int", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %46 = load ptr, ptr @_llgo_Pointer, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %48)
  store ptr %48, ptr @_llgo_Pointer, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %49 = load ptr, ptr @_llgo_Pointer, align 8
  %50 = load ptr, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %53 = getelementptr ptr, ptr %52, i64 0
  store ptr %49, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 0
  store ptr %52, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 1
  store i64 1, ptr %56, align 4
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, i32 0, i32 2
  store i64 1, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %54, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 1
  store i64 0, ptr %62, align 4
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, i32 0, i32 2
  store i64 0, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %60, align 8
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %58, %"github.com/goplus/llgo/internal/runtime.Slice" %64, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %65)
  store ptr %65, ptr @"_llgo_func$CqBkokmWG3Ia8PBDErMKLrnXwWQ3khfTBm7VXk_2y30", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %66 = load ptr, ptr @_llgo_Pointer, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @3, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 1, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 0, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %76 = getelementptr ptr, ptr %75, i64 0
  store ptr %66, ptr %76, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 0
  store ptr %75, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 1
  store i64 1, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 2
  store i64 1, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 0
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 1
  store i64 0, ptr %85, align 4
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, i32 0, i32 2
  store i64 0, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %83, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %81, %"github.com/goplus/llgo/internal/runtime.Slice" %87, i1 false)
  %89 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %70, ptr %88, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %74, i1 false)
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @4, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 4, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr null, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 0, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %99 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %93, ptr %98, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %97, i1 false)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @5, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %89, ptr %105, align 8
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %104, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %99, ptr %106, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 0
  store ptr %104, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 1
  store i64 2, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 2
  store i64 2, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %103, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %111)
  store ptr %112, ptr @"main.struct$hWvPvnlB9uIZSm1cMlcssbAfCpkLhNdpCzAk4conL0o", align 8
  %113 = load ptr, ptr @"*_llgo_int", align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %115)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %116)
  store ptr %116, ptr @"*_llgo_int", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %117 = load ptr, ptr @"[]_llgo_int", align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %119 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %119)
  store ptr %120, ptr @"[]_llgo_int", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %121 = load ptr, ptr @_llgo_string, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %123, ptr @_llgo_string, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @7, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 1, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 0
  store ptr null, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 1
  store i64 0, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %128, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %133 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %127, ptr %132, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %131, i1 false)
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @8, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 1, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 0
  store ptr null, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 1
  store i64 0, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %138, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %143 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %137, ptr %142, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %141, i1 false)
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @9, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 1, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr null, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 0, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %153 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %147, ptr %152, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %151, i1 false)
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @5, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 4, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %159 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %158, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %133, ptr %159, align 8
  %160 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %158, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %143, ptr %160, align 8
  %161 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %158, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %153, ptr %161, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %162, i32 0, i32 0
  store ptr %158, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %162, i32 0, i32 1
  store i64 3, ptr %164, align 4
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %162, i32 0, i32 2
  store i64 3, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %162, align 8
  %167 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %157, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %166)
  store ptr %167, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @10, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 6, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %171, i64 24, i64 16, i64 0, i64 1)
  %173 = load ptr, ptr @_llgo_main.T, align 8
  %174 = icmp eq ptr %173, null
  br i1 %174, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %172, ptr @_llgo_main.T, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %175 = load ptr, ptr @_llgo_string, align 8
  br i1 %174, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @11, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 6, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %_llgo_45, label %_llgo_46

_llgo_44:                                         ; preds = %_llgo_46, %_llgo_42
  ret void

_llgo_45:                                         ; preds = %_llgo_43
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 0
  store ptr %182, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 1
  store i64 0, ptr %185, align 4
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, i32 0, i32 2
  store i64 0, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %183, align 8
  %188 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 0
  store ptr %188, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 1
  store i64 0, ptr %191, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 2
  store i64 0, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %187, %"github.com/goplus/llgo/internal/runtime.Slice" %193, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %194)
  store ptr %194, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_43
  %195 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %196 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %196, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %179, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %196, i32 0, i32 1
  store ptr %195, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %196, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %196, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %200, align 8
  %201 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %196, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %203 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %202, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %201, ptr %203, align 8
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 0
  store ptr %202, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 1
  store i64 1, ptr %206, align 4
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, i32 0, i32 2
  store i64 1, ptr %207, align 4
  %208 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %204, align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @5, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 4, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 0
  store ptr @12, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %213, i32 0, i32 1
  store i64 1, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %213, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %172, %"github.com/goplus/llgo/internal/runtime.String" %212, %"github.com/goplus/llgo/internal/runtime.String" %216, ptr %175, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %208)
  br label %_llgo_44
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define linkonce void @"__llgo_stub.main.main$1"(ptr %0) {
_llgo_0:
  tail call void @"main.main$1"()
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")
