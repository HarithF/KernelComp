#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>
#map3 = affine_map<(d0, d1) -> (d0)>
#map4 = affine_map<(d0, d1) -> (d0, 0)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map6 = affine_map<(d0, d1, d2) -> (d0, 0, d2)>
#map7 = affine_map<(d0, d1, d2) -> (0, d1, d2)>
#map8 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @NetVladNoGhostClusters(%arg0: tensor<2048x100x512xf32>, %arg1: tensor<512x32xf32>, %arg2: tensor<1x512x32xf32>, %arg3: tensor<32xf32>, %arg4: tensor<32xf32>, %arg5: tensor<32xf32>, %arg6: tensor<32xf32>) -> tensor<2048x16384xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %c0_i64 = arith.constant 0 : i64
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 9.9999999999999998E-13 : f64
    %cst_2 = arith.constant 1.000000e-05 : f64
    %cst_3 = arith.constant 5.000000e-01 : f32
    %cst_4 = arith.constant 2.000000e+00 : f32
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2]] : tensor<2048x100x512xf32> into tensor<204800x512xf32>
    %0 = tensor.empty() : tensor<204800x32xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<204800x32xf32>) -> tensor<204800x32xf32>
    %2 = linalg.matmul ins(%collapsed, %arg1 : tensor<204800x512xf32>, tensor<512x32xf32>) outs(%1 : tensor<204800x32xf32>) -> tensor<204800x32xf32>
    %3 = tensor.empty() : tensor<32xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg6 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.truncf %cst_2 : f64 to f32
      %45 = arith.addf %in, %44 : f32
      linalg.yield %45 : f32
    } -> tensor<32xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.rsqrt %in : f32
      linalg.yield %44 : f32
    } -> tensor<32xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%2, %arg5 : tensor<204800x32xf32>, tensor<32xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.subf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%6, %5 : tensor<204800x32xf32>, tensor<32xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.mulf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%7, %arg3 : tensor<204800x32xf32>, tensor<32xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.mulf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%8, %arg4 : tensor<204800x32xf32>, tensor<32xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.addf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %10 = tensor.empty() : tensor<204800xi64>
    %11 = linalg.fill ins(%c0_i64 : i64) outs(%10 : tensor<204800xi64>) -> tensor<204800xi64>
    %12 = tensor.empty() : tensor<204800xf32>
    %13 = linalg.fill ins(%cst_0 : f32) outs(%12 : tensor<204800xf32>) -> tensor<204800xf32>
    %14:2 = linalg.generic {indexing_maps = [#map1, #map3, #map3], iterator_types = ["parallel", "reduction"]} ins(%9 : tensor<204800x32xf32>) outs(%13, %11 : tensor<204800xf32>, tensor<204800xi64>) {
    ^bb0(%in: f32, %out: f32, %out_10: i64):
      %44 = linalg.index 1 : index
      %45 = arith.index_cast %44 : index to i64
      %46 = arith.maximumf %in, %out : f32
      %47 = arith.cmpf ogt, %in, %out : f32
      %48 = arith.select %47, %45, %out_10 : i64
      linalg.yield %46, %48 : f32, i64
    } -> (tensor<204800xf32>, tensor<204800xi64>)
    %expanded = tensor.expand_shape %14#0 [[0, 1]] output_shape [204800, 1] : tensor<204800xf32> into tensor<204800x1xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel"]} ins(%9, %expanded : tensor<204800x32xf32>, tensor<204800x1xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.subf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%15 : tensor<204800x32xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.exp %in : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %17 = tensor.empty() : tensor<204800x1xf32>
    %18 = linalg.fill ins(%cst : f32) outs(%17 : tensor<204800x1xf32>) -> tensor<204800x1xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map4], iterator_types = ["parallel", "reduction"]} ins(%16 : tensor<204800x32xf32>) outs(%18 : tensor<204800x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.addf %in, %out : f32
      linalg.yield %44 : f32
    } -> tensor<204800x1xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map4, #map1], iterator_types = ["parallel", "parallel"]} ins(%16, %19 : tensor<204800x32xf32>, tensor<204800x1xf32>) outs(%0 : tensor<204800x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.divf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<204800x32xf32>
    %expanded_5 = tensor.expand_shape %20 [[0, 1], [2]] output_shape [2048, 100, 32] : tensor<204800x32xf32> into tensor<2048x100x32xf32>
    %21 = tensor.empty() : tensor<2048x1x32xf32>
    %22 = linalg.fill ins(%cst : f32) outs(%21 : tensor<2048x1x32xf32>) -> tensor<2048x1x32xf32>
    %23 = linalg.generic {indexing_maps = [#map5, #map6], iterator_types = ["parallel", "reduction", "parallel"]} ins(%expanded_5 : tensor<2048x100x32xf32>) outs(%22 : tensor<2048x1x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.addf %in, %out : f32
      linalg.yield %44 : f32
    } -> tensor<2048x1x32xf32>
    %24 = tensor.empty() : tensor<2048x512x32xf32>
    %25 = linalg.generic {indexing_maps = [#map6, #map7, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%23, %arg2 : tensor<2048x1x32xf32>, tensor<1x512x32xf32>) outs(%24 : tensor<2048x512x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.mulf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x512x32xf32>
    %26 = tensor.empty() : tensor<2048x32x100xf32>
    %transposed = linalg.transpose ins(%expanded_5 : tensor<2048x100x32xf32>) outs(%26 : tensor<2048x32x100xf32>) permutation = [0, 2, 1] 
    %27 = tensor.empty() : tensor<2048x32x512xf32>
    %28 = linalg.fill ins(%cst : f32) outs(%27 : tensor<2048x32x512xf32>) -> tensor<2048x32x512xf32>
    %29 = linalg.batch_matmul ins(%transposed, %arg0 : tensor<2048x32x100xf32>, tensor<2048x100x512xf32>) outs(%28 : tensor<2048x32x512xf32>) -> tensor<2048x32x512xf32>
    %transposed_6 = linalg.transpose ins(%29 : tensor<2048x32x512xf32>) outs(%24 : tensor<2048x512x32xf32>) permutation = [0, 2, 1] 
    %30 = linalg.generic {indexing_maps = [#map5, #map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_6, %25 : tensor<2048x512x32xf32>, tensor<2048x512x32xf32>) outs(%24 : tensor<2048x512x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.subf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x512x32xf32>
    %31 = linalg.generic {indexing_maps = [#map5, #map6], iterator_types = ["parallel", "reduction", "parallel"]} ins(%30 : tensor<2048x512x32xf32>) outs(%22 : tensor<2048x1x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.absf %in : f32
      %45 = math.powf %44, %cst_4 : f32
      %46 = arith.addf %45, %out : f32
      linalg.yield %46 : f32
    } -> tensor<2048x1x32xf32>
    %32 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%31 : tensor<2048x1x32xf32>) outs(%21 : tensor<2048x1x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.powf %in, %cst_3 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x1x32xf32>
    %33 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%32 : tensor<2048x1x32xf32>) outs(%21 : tensor<2048x1x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.truncf %cst_1 : f64 to f32
      %45 = arith.cmpf ult, %in, %44 : f32
      %46 = arith.select %45, %44, %in : f32
      linalg.yield %46 : f32
    } -> tensor<2048x1x32xf32>
    %collapsed_7 = tensor.collapse_shape %33 [[0, 1], [2]] : tensor<2048x1x32xf32> into tensor<2048x32xf32>
    %34 = linalg.generic {indexing_maps = [#map8, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_7 : tensor<2048x32xf32>) outs(%24 : tensor<2048x512x32xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x512x32xf32>
    %35 = linalg.generic {indexing_maps = [#map5, #map5, #map5], iterator_types = ["parallel", "parallel", "parallel"]} ins(%30, %34 : tensor<2048x512x32xf32>, tensor<2048x512x32xf32>) outs(%24 : tensor<2048x512x32xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.divf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x512x32xf32>
    %collapsed_8 = tensor.collapse_shape %35 [[0], [1, 2]] : tensor<2048x512x32xf32> into tensor<2048x16384xf32>
    %36 = tensor.empty() : tensor<2048x1xf32>
    %37 = linalg.fill ins(%cst : f32) outs(%36 : tensor<2048x1xf32>) -> tensor<2048x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map4], iterator_types = ["parallel", "reduction"]} ins(%collapsed_8 : tensor<2048x16384xf32>) outs(%37 : tensor<2048x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.absf %in : f32
      %45 = math.powf %44, %cst_4 : f32
      %46 = arith.addf %45, %out : f32
      linalg.yield %46 : f32
    } -> tensor<2048x1xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%38 : tensor<2048x1xf32>) outs(%36 : tensor<2048x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = math.powf %in, %cst_3 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x1xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%39 : tensor<2048x1xf32>) outs(%36 : tensor<2048x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %44 = arith.truncf %cst_1 : f64 to f32
      %45 = arith.cmpf ult, %in, %44 : f32
      %46 = arith.select %45, %44, %in : f32
      linalg.yield %46 : f32
    } -> tensor<2048x1xf32>
    %41 = tensor.empty() : tensor<2048x16384xf32>
    %collapsed_9 = tensor.collapse_shape %40 [[0, 1]] : tensor<2048x1xf32> into tensor<2048xf32>
    %42 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel"]} ins(%collapsed_9 : tensor<2048xf32>) outs(%41 : tensor<2048x16384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x16384xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%collapsed_8, %42 : tensor<2048x16384xf32>, tensor<2048x16384xf32>) outs(%41 : tensor<2048x16384xf32>) {
    ^bb0(%in: f32, %in_10: f32, %out: f32):
      %44 = arith.divf %in, %in_10 : f32
      linalg.yield %44 : f32
    } -> tensor<2048x16384xf32>
    return %43 : tensor<2048x16384xf32>
  }
}
