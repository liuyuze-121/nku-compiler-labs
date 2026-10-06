; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define void @vecadd(i16* %0, i16* %1, i64 %2, i64 %3, i64 %4, i16* %5, i16* %6, i64 %7, i64 %8, i64 %9, i16* %10, i16* %11, i64 %12, i64 %13, i64 %14) !dbg !3 {
  %16 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } undef, i16* %0, 0, !dbg !7
  %17 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %16, i16* %1, 1, !dbg !9
  %18 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %17, i64 %2, 2, !dbg !10
  %19 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %18, i64 %3, 3, 0, !dbg !11
  %20 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %19, i64 %4, 4, 0, !dbg !12
  %21 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } undef, i16* %5, 0, !dbg !13
  %22 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %21, i16* %6, 1, !dbg !14
  %23 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %22, i64 %7, 2, !dbg !15
  %24 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %23, i64 %8, 3, 0, !dbg !16
  %25 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %24, i64 %9, 4, 0, !dbg !17
  %26 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } undef, i16* %10, 0, !dbg !18
  %27 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %26, i16* %11, 1, !dbg !19
  %28 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %27, i64 %12, 2, !dbg !20
  %29 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %28, i64 %13, 3, 0, !dbg !21
  %30 = insertvalue { i16*, i16*, i64, [1 x i64], [1 x i64] } %29, i64 %14, 4, 0, !dbg !22
  br label %31, !dbg !23

31:                                               ; preds = %34, %15
  %32 = phi i64 [ %41, %34 ], [ 0, %15 ]
  %33 = icmp slt i64 %32, 16, !dbg !24
  br i1 %33, label %34, label %42, !dbg !25

34:                                               ; preds = %31
  %35 = getelementptr i16, i16* %1, i64 %32, !dbg !26
  %36 = load i16, i16* %35, align 2, !dbg !27
  %37 = getelementptr i16, i16* %6, i64 %32, !dbg !28
  %38 = load i16, i16* %37, align 2, !dbg !29
  %39 = add i16 %36, %38, !dbg !30
  %40 = getelementptr i16, i16* %11, i64 %32, !dbg !31
  store i16 %39, i16* %40, align 2, !dbg !32
  %41 = add i64 %32, 1, !dbg !33
  br label %31, !dbg !34

42:                                               ; preds = %31
  ret void, !dbg !35
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "vecadd", linkageName: "vecadd", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "vecadd-llvm-dialect.mlir", directory: "/home/liuyuze/lab/lab1/advanced-mlir-vecadd")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 4, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 5, column: 10, scope: !8)
!10 = !DILocation(line: 6, column: 10, scope: !8)
!11 = !DILocation(line: 7, column: 10, scope: !8)
!12 = !DILocation(line: 8, column: 10, scope: !8)
!13 = !DILocation(line: 10, column: 10, scope: !8)
!14 = !DILocation(line: 11, column: 10, scope: !8)
!15 = !DILocation(line: 12, column: 10, scope: !8)
!16 = !DILocation(line: 13, column: 11, scope: !8)
!17 = !DILocation(line: 14, column: 11, scope: !8)
!18 = !DILocation(line: 16, column: 11, scope: !8)
!19 = !DILocation(line: 17, column: 11, scope: !8)
!20 = !DILocation(line: 18, column: 11, scope: !8)
!21 = !DILocation(line: 19, column: 11, scope: !8)
!22 = !DILocation(line: 20, column: 11, scope: !8)
!23 = !DILocation(line: 24, column: 5, scope: !8)
!24 = !DILocation(line: 26, column: 11, scope: !8)
!25 = !DILocation(line: 27, column: 5, scope: !8)
!26 = !DILocation(line: 29, column: 11, scope: !8)
!27 = !DILocation(line: 30, column: 11, scope: !8)
!28 = !DILocation(line: 31, column: 11, scope: !8)
!29 = !DILocation(line: 32, column: 11, scope: !8)
!30 = !DILocation(line: 33, column: 11, scope: !8)
!31 = !DILocation(line: 34, column: 11, scope: !8)
!32 = !DILocation(line: 35, column: 5, scope: !8)
!33 = !DILocation(line: 36, column: 11, scope: !8)
!34 = !DILocation(line: 37, column: 5, scope: !8)
!35 = !DILocation(line: 39, column: 5, scope: !8)
