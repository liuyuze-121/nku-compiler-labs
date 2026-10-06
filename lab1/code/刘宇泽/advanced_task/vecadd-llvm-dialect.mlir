module attributes {llvm.data_layout = ""} {
  llvm.func @vecadd(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i16>, %arg6: !llvm.ptr<i16>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr<i16>, %arg11: !llvm.ptr<i16>, %arg12: i64, %arg13: i64, %arg14: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %arg13, %15[3, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[4, 0] : !llvm.struct<(ptr<i16>, ptr<i16>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.mlir.constant(16 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb2
    %22 = llvm.icmp "slt" %21, %18 : i64
    llvm.cond_br %22, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %23 = llvm.getelementptr %arg1[%21] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %24 = llvm.load %23 : !llvm.ptr<i16>
    %25 = llvm.getelementptr %arg6[%21] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %26 = llvm.load %25 : !llvm.ptr<i16>
    %27 = llvm.add %24, %26  : i16
    %28 = llvm.getelementptr %arg11[%21] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %27, %28 : !llvm.ptr<i16>
    %29 = llvm.add %21, %20  : i64
    llvm.br ^bb1(%29 : i64)
  ^bb3:  // pred: ^bb1
    llvm.return
  }
}

