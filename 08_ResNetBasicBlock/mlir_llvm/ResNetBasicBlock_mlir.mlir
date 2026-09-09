#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
module {
  func.func @ResNetBasicBlock(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<64x3x3x3xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64x64x3x3xf32>, %arg5: tensor<64xf32>, %arg6: tensor<64xf32>, %arg7: tensor<64x3x1x1xf32>, %arg8: tensor<64xf32>, %arg9: tensor<64xf32>, %arg10: tensor<64xf32>, %arg11: tensor<64xf32>, %arg12: tensor<64xf32>, %arg13: tensor<64xf32>, %arg14: tensor<64xf32>, %arg15: tensor<64xf32>) -> tensor<10x64x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-05 : f64
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg16: index, %arg17: index, %arg18: index, %arg19: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x64x224x224xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %3 = tensor.empty() : tensor<64xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg11 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = arith.truncf %cst_0 : f64 to f32
      %28 = arith.addf %in, %27 : f32
      linalg.yield %28 : f32
    } -> tensor<64xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = math.rsqrt %in : f32
      linalg.yield %27 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg10 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_1 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.subf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_1 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_2 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_2 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_3 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_3 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.addf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x64x224x224xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = arith.cmpf ugt, %in, %cst : f32
      %28 = arith.select %27, %in, %cst : f32
      linalg.yield %28 : f32
    } -> tensor<10x64x224x224xf32>
    %padded_4 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg16: index, %arg17: index, %arg18: index, %arg19: index):
      tensor.yield %cst : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_4, %arg4 : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%1 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg13 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = arith.truncf %cst_0 : f64 to f32
      %28 = arith.addf %in, %27 : f32
      linalg.yield %28 : f32
    } -> tensor<64xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%12 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = math.rsqrt %in : f32
      linalg.yield %27 : f32
    } -> tensor<64xf32>
    %expanded_5 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_6 = tensor.expand_shape %13 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %expanded_5 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.subf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_6 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_7 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_7 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_8 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_8 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.addf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg7 : tensor<10x3x224x224xf32>, tensor<64x3x1x1xf32>) outs(%1 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg15 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = arith.truncf %cst_0 : f64 to f32
      %28 = arith.addf %in, %27 : f32
      linalg.yield %28 : f32
    } -> tensor<64xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%19 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = math.rsqrt %in : f32
      linalg.yield %27 : f32
    } -> tensor<64xf32>
    %expanded_9 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_10 = tensor.expand_shape %20 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %expanded_9 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.subf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %expanded_10 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_11 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %expanded_11 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.mulf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_12 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_12 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.addf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %24 : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_13: f32, %out: f32):
      %27 = arith.addf %in, %in_13 : f32
      linalg.yield %27 : f32
    } -> tensor<10x64x224x224xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<10x64x224x224xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %27 = arith.cmpf ugt, %in, %cst : f32
      %28 = arith.select %27, %in, %cst : f32
      linalg.yield %28 : f32
    } -> tensor<10x64x224x224xf32>
    return %26 : tensor<10x64x224x224xf32>
  }
}
