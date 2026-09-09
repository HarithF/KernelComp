#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
module {
  func.func @DenseNet121DenseBlock(%arg0: tensor<10x32x224x224xf32>, %arg1: tensor<32xf32>, %arg2: tensor<32xf32>, %arg3: tensor<32x32x3x3xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64xf32>, %arg6: tensor<32x64x3x3xf32>, %arg7: tensor<96xf32>, %arg8: tensor<96xf32>, %arg9: tensor<32x96x3x3xf32>, %arg10: tensor<128xf32>, %arg11: tensor<128xf32>, %arg12: tensor<32x128x3x3xf32>, %arg13: tensor<160xf32>, %arg14: tensor<160xf32>, %arg15: tensor<32x160x3x3xf32>, %arg16: tensor<192xf32>, %arg17: tensor<192xf32>, %arg18: tensor<32x192x3x3xf32>, %arg19: tensor<32xf32>, %arg20: tensor<32xf32>, %arg21: tensor<64xf32>, %arg22: tensor<64xf32>, %arg23: tensor<96xf32>, %arg24: tensor<96xf32>, %arg25: tensor<128xf32>, %arg26: tensor<128xf32>, %arg27: tensor<160xf32>, %arg28: tensor<160xf32>, %arg29: tensor<192xf32>, %arg30: tensor<192xf32>) -> tensor<10x224x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-05 : f64
    %0 = tensor.empty() : tensor<32xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg20 : tensor<32xf32>) outs(%0 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<32xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%1 : tensor<32xf32>) outs(%0 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg19 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_1 = tensor.expand_shape %2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %3 = tensor.empty() : tensor<10x32x224x224xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg0, %expanded : tensor<10x32x224x224xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<10x32x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x32x224x224xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %expanded_1 : tensor<10x32x224x224xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<10x32x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x32x224x224xf32>
    %expanded_2 = tensor.expand_shape %arg1 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %expanded_2 : tensor<10x32x224x224xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<10x32x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x32x224x224xf32>
    %expanded_3 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_3 : tensor<10x32x224x224xf32>, tensor<32x1x1xf32>) outs(%3 : tensor<10x32x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x32x224x224xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<10x32x224x224xf32>) outs(%3 : tensor<10x32x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x32x224x224xf32>
    %padded = tensor.pad %8 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x32x224x224xf32> to tensor<10x32x226x226xf32>
    %9 = linalg.fill ins(%cst : f32) outs(%3 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg3 : tensor<10x32x226x226xf32>, tensor<32x32x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat = tensor.concat dim(1) %arg0, %10 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x64x224x224xf32>
    %11 = tensor.empty() : tensor<64xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg22 : tensor<64xf32>) outs(%11 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<64xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%12 : tensor<64xf32>) outs(%11 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<64xf32>
    %expanded_4 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_5 = tensor.expand_shape %13 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %14 = tensor.empty() : tensor<10x64x224x224xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat, %expanded_4 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%14 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x64x224x224xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_5 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%14 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_6 = tensor.expand_shape %arg4 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_6 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%14 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x64x224x224xf32>
    %expanded_7 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %expanded_7 : tensor<10x64x224x224xf32>, tensor<64x1x1xf32>) outs(%14 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x64x224x224xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<10x64x224x224xf32>) outs(%14 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x64x224x224xf32>
    %padded_8 = tensor.pad %19 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_8, %arg6 : tensor<10x64x226x226xf32>, tensor<32x64x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat_9 = tensor.concat dim(1) %arg0, %10, %20 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x96x224x224xf32>
    %21 = tensor.empty() : tensor<96xf32>
    %22 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg24 : tensor<96xf32>) outs(%21 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<96xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%22 : tensor<96xf32>) outs(%21 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<96xf32>
    %expanded_10 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_11 = tensor.expand_shape %23 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %24 = tensor.empty() : tensor<10x96x224x224xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_9, %expanded_10 : tensor<10x96x224x224xf32>, tensor<96x1x1xf32>) outs(%24 : tensor<10x96x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x96x224x224xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %expanded_11 : tensor<10x96x224x224xf32>, tensor<96x1x1xf32>) outs(%24 : tensor<10x96x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x96x224x224xf32>
    %expanded_12 = tensor.expand_shape %arg7 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %expanded_12 : tensor<10x96x224x224xf32>, tensor<96x1x1xf32>) outs(%24 : tensor<10x96x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x96x224x224xf32>
    %expanded_13 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_13 : tensor<10x96x224x224xf32>, tensor<96x1x1xf32>) outs(%24 : tensor<10x96x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x96x224x224xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<10x96x224x224xf32>) outs(%24 : tensor<10x96x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x96x224x224xf32>
    %padded_14 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x96x224x224xf32> to tensor<10x96x226x226xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_14, %arg9 : tensor<10x96x226x226xf32>, tensor<32x96x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat_15 = tensor.concat dim(1) %arg0, %10, %20, %30 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x128x224x224xf32>
    %31 = tensor.empty() : tensor<128xf32>
    %32 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg26 : tensor<128xf32>) outs(%31 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<128xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%32 : tensor<128xf32>) outs(%31 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<128xf32>
    %expanded_16 = tensor.expand_shape %arg25 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_17 = tensor.expand_shape %33 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %34 = tensor.empty() : tensor<10x128x224x224xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_15, %expanded_16 : tensor<10x128x224x224xf32>, tensor<128x1x1xf32>) outs(%34 : tensor<10x128x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x128x224x224xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %expanded_17 : tensor<10x128x224x224xf32>, tensor<128x1x1xf32>) outs(%34 : tensor<10x128x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x128x224x224xf32>
    %expanded_18 = tensor.expand_shape %arg10 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_18 : tensor<10x128x224x224xf32>, tensor<128x1x1xf32>) outs(%34 : tensor<10x128x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x128x224x224xf32>
    %expanded_19 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_19 : tensor<10x128x224x224xf32>, tensor<128x1x1xf32>) outs(%34 : tensor<10x128x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x128x224x224xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<10x128x224x224xf32>) outs(%34 : tensor<10x128x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x128x224x224xf32>
    %padded_20 = tensor.pad %39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x128x224x224xf32> to tensor<10x128x226x226xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_20, %arg12 : tensor<10x128x226x226xf32>, tensor<32x128x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat_21 = tensor.concat dim(1) %arg0, %10, %20, %30, %40 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x160x224x224xf32>
    %41 = tensor.empty() : tensor<160xf32>
    %42 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg28 : tensor<160xf32>) outs(%41 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<160xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%42 : tensor<160xf32>) outs(%41 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<160xf32>
    %expanded_22 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_23 = tensor.expand_shape %43 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %44 = tensor.empty() : tensor<10x160x224x224xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_21, %expanded_22 : tensor<10x160x224x224xf32>, tensor<160x1x1xf32>) outs(%44 : tensor<10x160x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x160x224x224xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %expanded_23 : tensor<10x160x224x224xf32>, tensor<160x1x1xf32>) outs(%44 : tensor<10x160x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x160x224x224xf32>
    %expanded_24 = tensor.expand_shape %arg13 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_24 : tensor<10x160x224x224xf32>, tensor<160x1x1xf32>) outs(%44 : tensor<10x160x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x160x224x224xf32>
    %expanded_25 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_25 : tensor<10x160x224x224xf32>, tensor<160x1x1xf32>) outs(%44 : tensor<10x160x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x160x224x224xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<10x160x224x224xf32>) outs(%44 : tensor<10x160x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x160x224x224xf32>
    %padded_26 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x160x224x224xf32> to tensor<10x160x226x226xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_26, %arg15 : tensor<10x160x226x226xf32>, tensor<32x160x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat_27 = tensor.concat dim(1) %arg0, %10, %20, %30, %40, %50 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x192x224x224xf32>
    %51 = tensor.empty() : tensor<192xf32>
    %52 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg30 : tensor<192xf32>) outs(%51 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.truncf %cst_0 : f64 to f32
      %62 = arith.addf %in, %61 : f32
      linalg.yield %62 : f32
    } -> tensor<192xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%52 : tensor<192xf32>) outs(%51 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = math.rsqrt %in : f32
      linalg.yield %61 : f32
    } -> tensor<192xf32>
    %expanded_28 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_29 = tensor.expand_shape %53 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %54 = tensor.empty() : tensor<10x192x224x224xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_27, %expanded_28 : tensor<10x192x224x224xf32>, tensor<192x1x1xf32>) outs(%54 : tensor<10x192x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.subf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x192x224x224xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %expanded_29 : tensor<10x192x224x224xf32>, tensor<192x1x1xf32>) outs(%54 : tensor<10x192x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x192x224x224xf32>
    %expanded_30 = tensor.expand_shape %arg16 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_30 : tensor<10x192x224x224xf32>, tensor<192x1x1xf32>) outs(%54 : tensor<10x192x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.mulf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x192x224x224xf32>
    %expanded_31 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %expanded_31 : tensor<10x192x224x224xf32>, tensor<192x1x1xf32>) outs(%54 : tensor<10x192x224x224xf32>) {
    ^bb0(%in: f32, %in_34: f32, %out: f32):
      %61 = arith.addf %in, %in_34 : f32
      linalg.yield %61 : f32
    } -> tensor<10x192x224x224xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<10x192x224x224xf32>) outs(%54 : tensor<10x192x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %61 = arith.cmpf ugt, %in, %cst : f32
      %62 = arith.select %61, %in, %cst : f32
      linalg.yield %62 : f32
    } -> tensor<10x192x224x224xf32>
    %padded_32 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg31: index, %arg32: index, %arg33: index, %arg34: index):
      tensor.yield %cst : f32
    } : tensor<10x192x224x224xf32> to tensor<10x192x226x226xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %arg18 : tensor<10x192x226x226xf32>, tensor<32x192x3x3xf32>) outs(%9 : tensor<10x32x224x224xf32>) -> tensor<10x32x224x224xf32>
    %concat_33 = tensor.concat dim(1) %arg0, %10, %20, %30, %40, %50, %60 : (tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>, tensor<10x32x224x224xf32>) -> tensor<10x224x224x224xf32>
    return %concat_33 : tensor<10x224x224x224xf32>
  }
}
