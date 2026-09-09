#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @RegNet(%arg0: tensor<8x3x224x224xf32>, %arg1: tensor<64x3x3x3xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64x64x3x3xf32>, %arg6: tensor<64xf32>, %arg7: tensor<64xf32>, %arg8: tensor<64xf32>, %arg9: tensor<128x64x3x3xf32>, %arg10: tensor<128xf32>, %arg11: tensor<128xf32>, %arg12: tensor<128xf32>, %arg13: tensor<128x128x3x3xf32>, %arg14: tensor<128xf32>, %arg15: tensor<128xf32>, %arg16: tensor<128xf32>, %arg17: tensor<256x128x3x3xf32>, %arg18: tensor<256xf32>, %arg19: tensor<256xf32>, %arg20: tensor<256xf32>, %arg21: tensor<256x256x3x3xf32>, %arg22: tensor<256xf32>, %arg23: tensor<256xf32>, %arg24: tensor<256xf32>, %arg25: tensor<10x256xf32>, %arg26: tensor<10xf32>, %arg27: tensor<64xf32>, %arg28: tensor<64xf32>, %arg29: tensor<64xf32>, %arg30: tensor<64xf32>, %arg31: tensor<128xf32>, %arg32: tensor<128xf32>, %arg33: tensor<128xf32>, %arg34: tensor<128xf32>, %arg35: tensor<256xf32>, %arg36: tensor<256xf32>, %arg37: tensor<256xf32>, %arg38: tensor<256xf32>) -> tensor<8x10xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e-05 : f64
    %cst_2 = arith.constant 7.840000e+02 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x3x224x224xf32> to tensor<8x3x226x226xf32>
    %0 = tensor.empty() : tensor<8x64x224x224xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<64xf32>) outs(%0 : tensor<8x64x224x224xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg1 : tensor<8x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%broadcasted : tensor<8x64x224x224xf32>) -> tensor<8x64x224x224xf32>
    %2 = tensor.empty() : tensor<64xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg28 : tensor<64xf32>) outs(%2 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<64xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%3 : tensor<64xf32>) outs(%2 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_3 = tensor.expand_shape %4 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1, %expanded : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %expanded_3 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %expanded_4 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %expanded_5 = tensor.expand_shape %arg4 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<8x64x224x224xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x64x224x224xf32>
    %padded_6 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x64x224x224xf32> to tensor<8x64x226x226xf32>
    %broadcasted_7 = linalg.broadcast ins(%arg6 : tensor<64xf32>) outs(%0 : tensor<8x64x224x224xf32>) dimensions = [0, 2, 3] 
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_6, %arg5 : tensor<8x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%broadcasted_7 : tensor<8x64x224x224xf32>) -> tensor<8x64x224x224xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg30 : tensor<64xf32>) outs(%2 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<64xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%11 : tensor<64xf32>) outs(%2 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<64xf32>
    %expanded_8 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_9 = tensor.expand_shape %12 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %expanded_8 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %expanded_9 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %expanded_10 = tensor.expand_shape %arg7 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_10 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %expanded_11 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_11 : tensor<8x64x224x224xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x64x224x224xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<8x64x224x224xf32>) outs(%0 : tensor<8x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x64x224x224xf32>
    %18 = tensor.empty() : tensor<8x64x112x112xf32>
    %19 = linalg.fill ins(%cst_0 : f32) outs(%18 : tensor<8x64x112x112xf32>) -> tensor<8x64x112x112xf32>
    %20 = tensor.empty() : tensor<2x2xf32>
    %21 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%17, %20 : tensor<8x64x224x224xf32>, tensor<2x2xf32>) outs(%19 : tensor<8x64x112x112xf32>) -> tensor<8x64x112x112xf32>
    %padded_12 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x64x112x112xf32> to tensor<8x64x114x114xf32>
    %22 = tensor.empty() : tensor<8x128x112x112xf32>
    %broadcasted_13 = linalg.broadcast ins(%arg10 : tensor<128xf32>) outs(%22 : tensor<8x128x112x112xf32>) dimensions = [0, 2, 3] 
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_12, %arg9 : tensor<8x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%broadcasted_13 : tensor<8x128x112x112xf32>) -> tensor<8x128x112x112xf32>
    %24 = tensor.empty() : tensor<128xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg32 : tensor<128xf32>) outs(%24 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<128xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%25 : tensor<128xf32>) outs(%24 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<128xf32>
    %expanded_14 = tensor.expand_shape %arg31 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_15 = tensor.expand_shape %26 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_14 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_15 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %expanded_16 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_16 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %expanded_17 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_17 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<8x128x112x112xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x128x112x112xf32>
    %padded_18 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x128x112x112xf32> to tensor<8x128x114x114xf32>
    %broadcasted_19 = linalg.broadcast ins(%arg14 : tensor<128xf32>) outs(%22 : tensor<8x128x112x112xf32>) dimensions = [0, 2, 3] 
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_18, %arg13 : tensor<8x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%broadcasted_19 : tensor<8x128x112x112xf32>) -> tensor<8x128x112x112xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg34 : tensor<128xf32>) outs(%24 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<128xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%33 : tensor<128xf32>) outs(%24 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<128xf32>
    %expanded_20 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_21 = tensor.expand_shape %34 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_20 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %expanded_21 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %expanded_22 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_22 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %expanded_23 = tensor.expand_shape %arg16 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_23 : tensor<8x128x112x112xf32>, tensor<128x1x1xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x128x112x112xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<8x128x112x112xf32>) outs(%22 : tensor<8x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x128x112x112xf32>
    %40 = tensor.empty() : tensor<8x128x56x56xf32>
    %41 = linalg.fill ins(%cst_0 : f32) outs(%40 : tensor<8x128x56x56xf32>) -> tensor<8x128x56x56xf32>
    %42 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%39, %20 : tensor<8x128x112x112xf32>, tensor<2x2xf32>) outs(%41 : tensor<8x128x56x56xf32>) -> tensor<8x128x56x56xf32>
    %padded_24 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x128x56x56xf32> to tensor<8x128x58x58xf32>
    %43 = tensor.empty() : tensor<8x256x56x56xf32>
    %broadcasted_25 = linalg.broadcast ins(%arg18 : tensor<256xf32>) outs(%43 : tensor<8x256x56x56xf32>) dimensions = [0, 2, 3] 
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %arg17 : tensor<8x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%broadcasted_25 : tensor<8x256x56x56xf32>) -> tensor<8x256x56x56xf32>
    %45 = tensor.empty() : tensor<256xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg36 : tensor<256xf32>) outs(%45 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<256xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%46 : tensor<256xf32>) outs(%45 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<256xf32>
    %expanded_26 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_27 = tensor.expand_shape %47 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %expanded_26 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %expanded_27 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg19 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %expanded_28 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %expanded_29 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_29 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<8x256x56x56xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x256x56x56xf32>
    %padded_30 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<8x256x56x56xf32> to tensor<8x256x58x58xf32>
    %broadcasted_31 = linalg.broadcast ins(%arg22 : tensor<256xf32>) outs(%43 : tensor<8x256x56x56xf32>) dimensions = [0, 2, 3] 
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_30, %arg21 : tensor<8x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%broadcasted_31 : tensor<8x256x56x56xf32>) -> tensor<8x256x56x56xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg38 : tensor<256xf32>) outs(%45 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.truncf %cst_1 : f64 to f32
      %74 = arith.addf %in, %73 : f32
      linalg.yield %74 : f32
    } -> tensor<256xf32>
    %55 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%54 : tensor<256xf32>) outs(%45 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = math.rsqrt %in : f32
      linalg.yield %73 : f32
    } -> tensor<256xf32>
    %expanded_32 = tensor.expand_shape %arg37 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_33 = tensor.expand_shape %55 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %expanded_32 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.subf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_33 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %expanded_34 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %expanded_34 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.mulf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %expanded_35 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %expanded_35 : tensor<8x256x56x56xf32>, tensor<256x1x1xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<8x256x56x56xf32>) outs(%43 : tensor<8x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.cmpf ugt, %in, %cst : f32
      %74 = arith.select %73, %in, %cst : f32
      linalg.yield %74 : f32
    } -> tensor<8x256x56x56xf32>
    %61 = tensor.empty() : tensor<8x256x28x28xf32>
    %62 = linalg.fill ins(%cst_0 : f32) outs(%61 : tensor<8x256x28x28xf32>) -> tensor<8x256x28x28xf32>
    %63 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%60, %20 : tensor<8x256x56x56xf32>, tensor<2x2xf32>) outs(%62 : tensor<8x256x28x28xf32>) -> tensor<8x256x28x28xf32>
    %64 = tensor.empty() : tensor<8x256xf32>
    %65 = linalg.fill ins(%cst : f32) outs(%64 : tensor<8x256xf32>) -> tensor<8x256xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "reduction", "reduction"]} ins(%63 : tensor<8x256x28x28xf32>) outs(%65 : tensor<8x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.addf %in, %out : f32
      linalg.yield %73 : f32
    } -> tensor<8x256xf32>
    %67 = linalg.generic {indexing_maps = [#map4, #map4], iterator_types = ["parallel", "parallel"]} ins(%66 : tensor<8x256xf32>) outs(%64 : tensor<8x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %73 = arith.divf %in, %cst_2 : f32
      linalg.yield %73 : f32
    } -> tensor<8x256xf32>
    %68 = tensor.empty() : tensor<256x10xf32>
    %transposed = linalg.transpose ins(%arg25 : tensor<10x256xf32>) outs(%68 : tensor<256x10xf32>) permutation = [1, 0] 
    %69 = tensor.empty() : tensor<8x10xf32>
    %70 = linalg.fill ins(%cst : f32) outs(%69 : tensor<8x10xf32>) -> tensor<8x10xf32>
    %71 = linalg.matmul ins(%67, %transposed : tensor<8x256xf32>, tensor<256x10xf32>) outs(%70 : tensor<8x10xf32>) -> tensor<8x10xf32>
    %72 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel"]} ins(%71, %arg26 : tensor<8x10xf32>, tensor<10xf32>) outs(%69 : tensor<8x10xf32>) {
    ^bb0(%in: f32, %in_36: f32, %out: f32):
      %73 = arith.addf %in, %in_36 : f32
      linalg.yield %73 : f32
    } -> tensor<8x10xf32>
    return %72 : tensor<8x10xf32>
  }
}
