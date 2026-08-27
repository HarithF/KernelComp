#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @MLP(%arg0: tensor<128x16384xf32>, %arg1: tensor<16384x16384xf32>, %arg2: tensor<16384xf32>, %arg3: tensor<16384x16384xf32>, %arg4: tensor<16384xf32>, %arg5: tensor<8192x16384xf32>, %arg6: tensor<8192xf32>) -> tensor<128x8192xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<16384x16384xf32>
    %transposed = linalg.transpose ins(%arg1 : tensor<16384x16384xf32>) outs(%0 : tensor<16384x16384xf32>) permutation = [1, 0] 
    %1 = tensor.empty() : tensor<128x16384xf32>
    %2 = linalg.fill ins(%cst : f32) outs(%1 : tensor<128x16384xf32>) -> tensor<128x16384xf32>
    %3 = linalg.matmul ins(%arg0, %transposed : tensor<128x16384xf32>, tensor<16384x16384xf32>) outs(%2 : tensor<128x16384xf32>) -> tensor<128x16384xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%3, %arg2 : tensor<128x16384xf32>, tensor<16384xf32>) outs(%1 : tensor<128x16384xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %14 = arith.addf %in, %in_2 : f32
      linalg.yield %14 : f32
    } -> tensor<128x16384xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%4 : tensor<128x16384xf32>) outs(%1 : tensor<128x16384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.cmpf ugt, %in, %cst : f32
      %15 = arith.select %14, %in, %cst : f32
      linalg.yield %15 : f32
    } -> tensor<128x16384xf32>
    %transposed_0 = linalg.transpose ins(%arg3 : tensor<16384x16384xf32>) outs(%0 : tensor<16384x16384xf32>) permutation = [1, 0] 
    %6 = linalg.matmul ins(%5, %transposed_0 : tensor<128x16384xf32>, tensor<16384x16384xf32>) outs(%2 : tensor<128x16384xf32>) -> tensor<128x16384xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%6, %arg4 : tensor<128x16384xf32>, tensor<16384xf32>) outs(%1 : tensor<128x16384xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %14 = arith.addf %in, %in_2 : f32
      linalg.yield %14 : f32
    } -> tensor<128x16384xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%7 : tensor<128x16384xf32>) outs(%1 : tensor<128x16384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %14 = arith.cmpf ugt, %in, %cst : f32
      %15 = arith.select %14, %in, %cst : f32
      linalg.yield %15 : f32
    } -> tensor<128x16384xf32>
    %9 = tensor.empty() : tensor<16384x8192xf32>
    %transposed_1 = linalg.transpose ins(%arg5 : tensor<8192x16384xf32>) outs(%9 : tensor<16384x8192xf32>) permutation = [1, 0] 
    %10 = tensor.empty() : tensor<128x8192xf32>
    %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<128x8192xf32>) -> tensor<128x8192xf32>
    %12 = linalg.matmul ins(%8, %transposed_1 : tensor<128x16384xf32>, tensor<16384x8192xf32>) outs(%11 : tensor<128x8192xf32>) -> tensor<128x8192xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%12, %arg6 : tensor<128x8192xf32>, tensor<8192xf32>) outs(%10 : tensor<128x8192xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %14 = arith.addf %in, %in_2 : f32
      linalg.yield %14 : f32
    } -> tensor<128x8192xf32>
    return %13 : tensor<128x8192xf32>
  }
}
