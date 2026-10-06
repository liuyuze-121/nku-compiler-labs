module {
  func @vecadd(%A: memref<16xi16>,
               %B: memref<16xi16>,
               %C: memref<16xi16>) {
    linalg.generic {
      indexing_maps = [
        affine_map<(d0) -> (d0)>,
        affine_map<(d0) -> (d0)>,
        affine_map<(d0) -> (d0)>
      ],
      iterator_types = ["parallel"]
    } ins(%A, %B : memref<16xi16>, memref<16xi16>)
      outs(%C : memref<16xi16>) {
    ^bb0(%a: i16, %b: i16, %c: i16):
      %sum = arith.addi %a, %b : i16
      linalg.yield %sum : i16
    }
    return
  }
}