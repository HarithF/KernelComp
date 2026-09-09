#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> ()>
module {
  func.func @EfficientNetMBConv(%arg0: tensor<10x112x224x224xf32>, %arg1: tensor<672x112x1x1xf32>, %arg2: tensor<672xf32>, %arg3: tensor<672xf32>, %arg4: tensor<672x1x5x5xf32>, %arg5: tensor<672xf32>, %arg6: tensor<672xf32>, %arg7: tensor<192x672x1x1xf32>, %arg8: tensor<192xf32>, %arg9: tensor<192xf32>, %arg10: tensor<672xf32>, %arg11: tensor<672xf32>, %arg12: tensor<672xf32>, %arg13: tensor<672xf32>, %arg14: tensor<192xf32>, %arg15: tensor<192xf32>) -> tensor<10x192x112x112xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant dense<6.000000e+00> : tensor<f32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_2 = arith.constant 1.000000e-05 : f64
    %0 = tensor.empty() : tensor<10x672x224x224xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x672x224x224xf32>) -> tensor<10x672x224x224xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg1 : tensor<10x112x224x224xf32>, tensor<672x112x1x1xf32>) outs(%1 : tensor<10x672x224x224xf32>) -> tensor<10x672x224x224xf32>
    %3 = tensor.empty() : tensor<672xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg11 : tensor<672xf32>) outs(%3 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = arith.truncf %cst_2 : f64 to f32
      %34 = arith.addf %in, %33 : f32
      linalg.yield %34 : f32
    } -> tensor<672xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<672xf32>) outs(%3 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = math.rsqrt %in : f32
      linalg.yield %33 : f32
    } -> tensor<672xf32>
    %expanded = tensor.expand_shape %arg10 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_3 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x672x224x224xf32>, tensor<672x1x1xf32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.subf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x224x224xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_3 : tensor<10x672x224x224xf32>, tensor<672x1x1xf32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x224x224xf32>
    %expanded_4 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_4 : tensor<10x672x224x224xf32>, tensor<672x1x1xf32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x224x224xf32>
    %expanded_5 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_5 : tensor<10x672x224x224xf32>, tensor<672x1x1xf32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.addf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x224x224xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_1 : tensor<10x672x224x224xf32>, tensor<f32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.cmpf ogt, %in, %in_14 : f32
      %34 = arith.select %33, %in, %in_14 : f32
      linalg.yield %34 : f32
    } -> tensor<10x672x224x224xf32>
    %11 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %10 : tensor<f32>, tensor<10x672x224x224xf32>) outs(%0 : tensor<10x672x224x224xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.cmpf olt, %in, %in_14 : f32
      %34 = arith.select %33, %in, %in_14 : f32
      linalg.yield %34 : f32
    } -> tensor<10x672x224x224xf32>
    %padded = tensor.pad %11 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg16: index, %arg17: index, %arg18: index, %arg19: index):
      tensor.yield %cst : f32
    } : tensor<10x672x224x224xf32> to tensor<10x672x228x228xf32>
    %12 = tensor.empty() : tensor<10x672x112x112xf32>
    %13 = linalg.fill ins(%cst : f32) outs(%12 : tensor<10x672x112x112xf32>) -> tensor<10x672x112x112xf32>
    %collapsed = tensor.collapse_shape %arg4 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %14 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %collapsed : tensor<10x672x228x228xf32>, tensor<672x5x5xf32>) outs(%13 : tensor<10x672x112x112xf32>) -> tensor<10x672x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg13 : tensor<672xf32>) outs(%3 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = arith.truncf %cst_2 : f64 to f32
      %34 = arith.addf %in, %33 : f32
      linalg.yield %34 : f32
    } -> tensor<672xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%15 : tensor<672xf32>) outs(%3 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = math.rsqrt %in : f32
      linalg.yield %33 : f32
    } -> tensor<672xf32>
    %expanded_6 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_7 = tensor.expand_shape %16 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_6 : tensor<10x672x112x112xf32>, tensor<672x1x1xf32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.subf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x112x112xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %expanded_7 : tensor<10x672x112x112xf32>, tensor<672x1x1xf32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x112x112xf32>
    %expanded_8 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %expanded_8 : tensor<10x672x112x112xf32>, tensor<672x1x1xf32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x112x112xf32>
    %expanded_9 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %expanded_9 : tensor<10x672x112x112xf32>, tensor<672x1x1xf32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.addf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x672x112x112xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_1 : tensor<10x672x112x112xf32>, tensor<f32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.cmpf ogt, %in, %in_14 : f32
      %34 = arith.select %33, %in, %in_14 : f32
      linalg.yield %34 : f32
    } -> tensor<10x672x112x112xf32>
    %22 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %21 : tensor<f32>, tensor<10x672x112x112xf32>) outs(%12 : tensor<10x672x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.cmpf olt, %in, %in_14 : f32
      %34 = arith.select %33, %in, %in_14 : f32
      linalg.yield %34 : f32
    } -> tensor<10x672x112x112xf32>
    %23 = tensor.empty() : tensor<10x192x112x112xf32>
    %24 = linalg.fill ins(%cst : f32) outs(%23 : tensor<10x192x112x112xf32>) -> tensor<10x192x112x112xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %arg7 : tensor<10x672x112x112xf32>, tensor<192x672x1x1xf32>) outs(%24 : tensor<10x192x112x112xf32>) -> tensor<10x192x112x112xf32>
    %26 = tensor.empty() : tensor<192xf32>
    %27 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg15 : tensor<192xf32>) outs(%26 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = arith.truncf %cst_2 : f64 to f32
      %34 = arith.addf %in, %33 : f32
      linalg.yield %34 : f32
    } -> tensor<192xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%27 : tensor<192xf32>) outs(%26 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %33 = math.rsqrt %in : f32
      linalg.yield %33 : f32
    } -> tensor<192xf32>
    %expanded_10 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_11 = tensor.expand_shape %28 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %expanded_10 : tensor<10x192x112x112xf32>, tensor<192x1x1xf32>) outs(%23 : tensor<10x192x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.subf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x192x112x112xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_11 : tensor<10x192x112x112xf32>, tensor<192x1x1xf32>) outs(%23 : tensor<10x192x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x192x112x112xf32>
    %expanded_12 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %expanded_12 : tensor<10x192x112x112xf32>, tensor<192x1x1xf32>) outs(%23 : tensor<10x192x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.mulf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x192x112x112xf32>
    %expanded_13 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_13 : tensor<10x192x112x112xf32>, tensor<192x1x1xf32>) outs(%23 : tensor<10x192x112x112xf32>) {
    ^bb0(%in: f32, %in_14: f32, %out: f32):
      %33 = arith.addf %in, %in_14 : f32
      linalg.yield %33 : f32
    } -> tensor<10x192x112x112xf32>
    return %32 : tensor<10x192x112x112xf32>
  }
}
