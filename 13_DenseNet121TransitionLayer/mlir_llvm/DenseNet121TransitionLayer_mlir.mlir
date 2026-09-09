#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
module {
  func.func @DenseNet121TransitionLayer(%arg0: tensor<128x32x256x256xf32>, %arg1: tensor<32xf32>, %arg2: tensor<32xf32>, %arg3: tensor<64x32x1x1xf32>, %arg4: tensor<32xf32>, %arg5: tensor<32xf32>) -> tensor<128x64x128x128xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-05 : f64
    %cst_1 = arith.constant 4.000000e+00 : f32
    %0 = tensor.empty() : tensor<32xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg5 : tensor<32xf32>) outs(%0 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %17 = arith.truncf %cst_0 : f64 to f32
      %18 = arith.addf %in, %17 : f32
      linalg.yield %18 : f32
    } -> tensor<32xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%1 : tensor<32xf32>) outs(%0 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %17 = math.rsqrt %in : f32
      linalg.yield %17 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg4 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_2 = tensor.expand_shape %2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %3 = tensor.empty() : tensor<128x32x256x256xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %expanded : tensor<128x32x256x256xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<128x32x256x256xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %17 = arith.subf %in, %in_5 : f32
      linalg.yield %17 : f32
    } -> tensor<128x32x256x256xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %expanded_2 : tensor<128x32x256x256xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<128x32x256x256xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %17 = arith.mulf %in, %in_5 : f32
      linalg.yield %17 : f32
    } -> tensor<128x32x256x256xf32>
    %expanded_3 = tensor.expand_shape %arg1 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %expanded_3 : tensor<128x32x256x256xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<128x32x256x256xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %17 = arith.mulf %in, %in_5 : f32
      linalg.yield %17 : f32
    } -> tensor<128x32x256x256xf32>
    %expanded_4 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<128x32x256x256xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<128x32x256x256xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %17 = arith.addf %in, %in_5 : f32
      linalg.yield %17 : f32
    } -> tensor<128x32x256x256xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<128x32x256x256xf32>) outs(%3 : tensor<128x32x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %17 = arith.cmpf ugt, %in, %cst : f32
      %18 = arith.select %17, %in, %cst : f32
      linalg.yield %18 : f32
    } -> tensor<128x32x256x256xf32>
    %9 = tensor.empty() : tensor<128x64x256x256xf32>
    %10 = linalg.fill ins(%cst : f32) outs(%9 : tensor<128x64x256x256xf32>) -> tensor<128x64x256x256xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%8, %arg3 : tensor<128x32x256x256xf32>, tensor<64x32x1x1xf32>) outs(%10 : tensor<128x64x256x256xf32>) -> tensor<128x64x256x256xf32>
    %12 = tensor.empty() : tensor<128x64x128x128xf32>
    %13 = linalg.fill ins(%cst : f32) outs(%12 : tensor<128x64x128x128xf32>) -> tensor<128x64x128x128xf32>
    %14 = tensor.empty() : tensor<2x2xf32>
    %15 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%11, %14 : tensor<128x64x256x256xf32>, tensor<2x2xf32>) outs(%13 : tensor<128x64x128x128xf32>) -> tensor<128x64x128x128xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<128x64x128x128xf32>) outs(%12 : tensor<128x64x128x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %17 = arith.divf %in, %cst_1 : f32
      linalg.yield %17 : f32
    } -> tensor<128x64x128x128xf32>
    return %16 : tensor<128x64x128x128xf32>
  }
}
