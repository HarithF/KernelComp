#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
module {
  func.func @ShuffleNetUnit(%arg0: tensor<10x240x224x224xf32>, %arg1: tensor<120x80x1x1xf32>, %arg2: tensor<120xf32>, %arg3: tensor<120xf32>, %arg4: tensor<120x1x3x3xf32>, %arg5: tensor<120xf32>, %arg6: tensor<120xf32>, %arg7: tensor<480x40x1x1xf32>, %arg8: tensor<480xf32>, %arg9: tensor<480xf32>, %arg10: tensor<480x240x1x1xf32>, %arg11: tensor<480xf32>, %arg12: tensor<480xf32>, %arg13: tensor<120xf32>, %arg14: tensor<120xf32>, %arg15: tensor<120xf32>, %arg16: tensor<120xf32>, %arg17: tensor<480xf32>, %arg18: tensor<480xf32>, %arg19: tensor<480xf32>, %arg20: tensor<480xf32>) -> tensor<10x480x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-05 : f64
    %0 = tensor.empty() : tensor<10x120x224x224xf32>
    %expanded = tensor.expand_shape %arg0 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 224, 224] : tensor<10x240x224x224xf32> into tensor<10x3x80x224x224xf32>
    %expanded_1 = tensor.expand_shape %arg1 [[0, 1], [2], [3], [4]] output_shape [3, 40, 80, 1, 1] : tensor<120x80x1x1xf32> into tensor<3x40x80x1x1xf32>
    %expanded_2 = tensor.expand_shape %0 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 224, 224] : tensor<10x120x224x224xf32> into tensor<10x3x40x224x224xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%expanded_2 : tensor<10x3x40x224x224xf32>) -> tensor<10x3x40x224x224xf32>
    %2 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded, %expanded_1 : tensor<10x3x80x224x224xf32>, tensor<3x40x80x1x1xf32>) outs(%1 : tensor<10x3x40x224x224xf32>) -> tensor<10x3x40x224x224xf32>
    %collapsed = tensor.collapse_shape %2 [[0], [1, 2], [3], [4]] : tensor<10x3x40x224x224xf32> into tensor<10x120x224x224xf32>
    %3 = tensor.empty() : tensor<120xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg14 : tensor<120xf32>) outs(%3 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.truncf %cst_0 : f64 to f32
      %41 = arith.addf %in, %40 : f32
      linalg.yield %41 : f32
    } -> tensor<120xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<120xf32>) outs(%3 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = math.rsqrt %in : f32
      linalg.yield %40 : f32
    } -> tensor<120xf32>
    %expanded_3 = tensor.expand_shape %arg13 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_4 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %expanded_3 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.subf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %expanded_5 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %expanded_6 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_6 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.addf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x120x224x224xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.cmpf ugt, %in, %cst : f32
      %41 = arith.select %40, %in, %cst : f32
      linalg.yield %41 : f32
    } -> tensor<10x120x224x224xf32>
    %padded = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg21: index, %arg22: index, %arg23: index, %arg24: index):
      tensor.yield %cst : f32
    } : tensor<10x120x224x224xf32> to tensor<10x120x226x226xf32>
    %11 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x120x224x224xf32>) -> tensor<10x120x224x224xf32>
    %collapsed_7 = tensor.collapse_shape %arg4 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %12 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %collapsed_7 : tensor<10x120x226x226xf32>, tensor<120x3x3xf32>) outs(%11 : tensor<10x120x224x224xf32>) -> tensor<10x120x224x224xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg16 : tensor<120xf32>) outs(%3 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.truncf %cst_0 : f64 to f32
      %41 = arith.addf %in, %40 : f32
      linalg.yield %41 : f32
    } -> tensor<120xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%13 : tensor<120xf32>) outs(%3 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = math.rsqrt %in : f32
      linalg.yield %40 : f32
    } -> tensor<120xf32>
    %expanded_8 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_9 = tensor.expand_shape %14 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %expanded_8 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.subf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_9 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %expanded_10 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_10 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %expanded_11 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %expanded_11 : tensor<10x120x224x224xf32>, tensor<120x1x1xf32>) outs(%0 : tensor<10x120x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.addf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x120x224x224xf32>
    %expanded_12 = tensor.expand_shape %18 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 224, 224] : tensor<10x120x224x224xf32> into tensor<10x3x40x224x224xf32>
    %19 = tensor.empty() : tensor<10x40x3x224x224xf32>
    %transposed = linalg.transpose ins(%expanded_12 : tensor<10x3x40x224x224xf32>) outs(%19 : tensor<10x40x3x224x224xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_13 = tensor.collapse_shape %transposed [[0], [1, 2], [3], [4]] : tensor<10x40x3x224x224xf32> into tensor<10x120x224x224xf32>
    %20 = tensor.empty() : tensor<10x480x224x224xf32>
    %expanded_14 = tensor.expand_shape %collapsed_13 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 224, 224] : tensor<10x120x224x224xf32> into tensor<10x3x40x224x224xf32>
    %expanded_15 = tensor.expand_shape %arg7 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %expanded_16 = tensor.expand_shape %20 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 224, 224] : tensor<10x480x224x224xf32> into tensor<10x3x160x224x224xf32>
    %21 = linalg.fill ins(%cst : f32) outs(%expanded_16 : tensor<10x3x160x224x224xf32>) -> tensor<10x3x160x224x224xf32>
    %22 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_14, %expanded_15 : tensor<10x3x40x224x224xf32>, tensor<3x160x40x1x1xf32>) outs(%21 : tensor<10x3x160x224x224xf32>) -> tensor<10x3x160x224x224xf32>
    %collapsed_17 = tensor.collapse_shape %22 [[0], [1, 2], [3], [4]] : tensor<10x3x160x224x224xf32> into tensor<10x480x224x224xf32>
    %23 = tensor.empty() : tensor<480xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg18 : tensor<480xf32>) outs(%23 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.truncf %cst_0 : f64 to f32
      %41 = arith.addf %in, %40 : f32
      linalg.yield %41 : f32
    } -> tensor<480xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%24 : tensor<480xf32>) outs(%23 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = math.rsqrt %in : f32
      linalg.yield %40 : f32
    } -> tensor<480xf32>
    %expanded_18 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_19 = tensor.expand_shape %25 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_17, %expanded_18 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.subf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %expanded_19 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %expanded_20 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_20 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %expanded_21 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_21 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.addf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<10x480x224x224xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.cmpf ugt, %in, %cst : f32
      %41 = arith.select %40, %in, %cst : f32
      linalg.yield %41 : f32
    } -> tensor<10x480x224x224xf32>
    %31 = linalg.fill ins(%cst : f32) outs(%20 : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg10 : tensor<10x240x224x224xf32>, tensor<480x240x1x1xf32>) outs(%31 : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg20 : tensor<480xf32>) outs(%23 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = arith.truncf %cst_0 : f64 to f32
      %41 = arith.addf %in, %40 : f32
      linalg.yield %41 : f32
    } -> tensor<480xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%33 : tensor<480xf32>) outs(%23 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %40 = math.rsqrt %in : f32
      linalg.yield %40 : f32
    } -> tensor<480xf32>
    %expanded_22 = tensor.expand_shape %arg19 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_23 = tensor.expand_shape %34 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_22 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.subf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %expanded_23 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %expanded_24 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_24 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.mulf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %expanded_25 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_25 : tensor<10x480x224x224xf32>, tensor<480x1x1xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.addf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %38 : tensor<10x480x224x224xf32>, tensor<10x480x224x224xf32>) outs(%20 : tensor<10x480x224x224xf32>) {
    ^bb0(%in: f32, %in_26: f32, %out: f32):
      %40 = arith.addf %in, %in_26 : f32
      linalg.yield %40 : f32
    } -> tensor<10x480x224x224xf32>
    return %39 : tensor<10x480x224x224xf32>
  }
}
