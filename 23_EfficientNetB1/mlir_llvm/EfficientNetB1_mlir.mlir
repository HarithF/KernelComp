#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> ()>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @EfficientNetB1(%arg0: tensor<10x3x240x240xf32>, %arg1: tensor<32x3x3x3xf32>, %arg2: tensor<32xf32>, %arg3: tensor<32xf32>, %arg4: tensor<32x32x1x1xf32>, %arg5: tensor<32xf32>, %arg6: tensor<32xf32>, %arg7: tensor<32x1x3x3xf32>, %arg8: tensor<32xf32>, %arg9: tensor<32xf32>, %arg10: tensor<16x32x1x1xf32>, %arg11: tensor<16xf32>, %arg12: tensor<16xf32>, %arg13: tensor<96x16x1x1xf32>, %arg14: tensor<96xf32>, %arg15: tensor<96xf32>, %arg16: tensor<96x1x3x3xf32>, %arg17: tensor<96xf32>, %arg18: tensor<96xf32>, %arg19: tensor<24x96x1x1xf32>, %arg20: tensor<24xf32>, %arg21: tensor<24xf32>, %arg22: tensor<144x24x1x1xf32>, %arg23: tensor<144xf32>, %arg24: tensor<144xf32>, %arg25: tensor<144x1x3x3xf32>, %arg26: tensor<144xf32>, %arg27: tensor<144xf32>, %arg28: tensor<40x144x1x1xf32>, %arg29: tensor<40xf32>, %arg30: tensor<40xf32>, %arg31: tensor<240x40x1x1xf32>, %arg32: tensor<240xf32>, %arg33: tensor<240xf32>, %arg34: tensor<240x1x3x3xf32>, %arg35: tensor<240xf32>, %arg36: tensor<240xf32>, %arg37: tensor<80x240x1x1xf32>, %arg38: tensor<80xf32>, %arg39: tensor<80xf32>, %arg40: tensor<480x80x1x1xf32>, %arg41: tensor<480xf32>, %arg42: tensor<480xf32>, %arg43: tensor<480x1x3x3xf32>, %arg44: tensor<480xf32>, %arg45: tensor<480xf32>, %arg46: tensor<112x480x1x1xf32>, %arg47: tensor<112xf32>, %arg48: tensor<112xf32>, %arg49: tensor<672x112x1x1xf32>, %arg50: tensor<672xf32>, %arg51: tensor<672xf32>, %arg52: tensor<672x1x3x3xf32>, %arg53: tensor<672xf32>, %arg54: tensor<672xf32>, %arg55: tensor<192x672x1x1xf32>, %arg56: tensor<192xf32>, %arg57: tensor<192xf32>, %arg58: tensor<1152x192x1x1xf32>, %arg59: tensor<1152xf32>, %arg60: tensor<1152xf32>, %arg61: tensor<1152x1x3x3xf32>, %arg62: tensor<1152xf32>, %arg63: tensor<1152xf32>, %arg64: tensor<320x1152x1x1xf32>, %arg65: tensor<320xf32>, %arg66: tensor<320xf32>, %arg67: tensor<1280x320x1x1xf32>, %arg68: tensor<1280xf32>, %arg69: tensor<1280xf32>, %arg70: tensor<1000x1280xf32>, %arg71: tensor<1000xf32>, %arg72: tensor<32xf32>, %arg73: tensor<32xf32>, %arg74: tensor<32xf32>, %arg75: tensor<32xf32>, %arg76: tensor<32xf32>, %arg77: tensor<32xf32>, %arg78: tensor<16xf32>, %arg79: tensor<16xf32>, %arg80: tensor<96xf32>, %arg81: tensor<96xf32>, %arg82: tensor<96xf32>, %arg83: tensor<96xf32>, %arg84: tensor<24xf32>, %arg85: tensor<24xf32>, %arg86: tensor<144xf32>, %arg87: tensor<144xf32>, %arg88: tensor<144xf32>, %arg89: tensor<144xf32>, %arg90: tensor<40xf32>, %arg91: tensor<40xf32>, %arg92: tensor<240xf32>, %arg93: tensor<240xf32>, %arg94: tensor<240xf32>, %arg95: tensor<240xf32>, %arg96: tensor<80xf32>, %arg97: tensor<80xf32>, %arg98: tensor<480xf32>, %arg99: tensor<480xf32>, %arg100: tensor<480xf32>, %arg101: tensor<480xf32>, %arg102: tensor<112xf32>, %arg103: tensor<112xf32>, %arg104: tensor<672xf32>, %arg105: tensor<672xf32>, %arg106: tensor<672xf32>, %arg107: tensor<672xf32>, %arg108: tensor<192xf32>, %arg109: tensor<192xf32>, %arg110: tensor<1152xf32>, %arg111: tensor<1152xf32>, %arg112: tensor<1152xf32>, %arg113: tensor<1152xf32>, %arg114: tensor<320xf32>, %arg115: tensor<320xf32>, %arg116: tensor<1280xf32>, %arg117: tensor<1280xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant dense<6.000000e+00> : tensor<f32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_2 = arith.constant 1.000000e-05 : f64
    %cst_3 = arith.constant 6.400000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x3x240x240xf32> to tensor<10x3x242x242xf32>
    %0 = tensor.empty() : tensor<10x32x120x120xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x32x120x120xf32>) -> tensor<10x32x120x120xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x242x242xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<10x32x120x120xf32>) -> tensor<10x32x120x120xf32>
    %3 = tensor.empty() : tensor<32xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg73 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<32xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_4 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_5 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_6 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_6 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x32x120x120xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.cmpf ugt, %in, %cst : f32
      %255 = arith.select %254, %in, %cst : f32
      linalg.yield %255 : f32
    } -> tensor<10x32x120x120xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %arg4 : tensor<10x32x120x120xf32>, tensor<32x32x1x1xf32>) outs(%1 : tensor<10x32x120x120xf32>) -> tensor<10x32x120x120xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg75 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<32xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%12 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<32xf32>
    %expanded_7 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_8 = tensor.expand_shape %13 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %expanded_7 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_8 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_9 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_9 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_10 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_10 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_1 : tensor<10x32x120x120xf32>, tensor<f32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x32x120x120xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %18 : tensor<f32>, tensor<10x32x120x120xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x32x120x120xf32>
    %padded_11 = tensor.pad %19 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x32x120x120xf32> to tensor<10x32x122x122xf32>
    %collapsed = tensor.collapse_shape %arg7 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %20 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_11, %collapsed : tensor<10x32x122x122xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<10x32x120x120xf32>) -> tensor<10x32x120x120xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg77 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<32xf32>
    %22 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%21 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<32xf32>
    %expanded_12 = tensor.expand_shape %arg76 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_13 = tensor.expand_shape %22 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %expanded_12 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_13 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_14 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %expanded_14 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %expanded_15 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %expanded_15 : tensor<10x32x120x120xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x32x120x120xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_1 : tensor<10x32x120x120xf32>, tensor<f32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x32x120x120xf32>
    %28 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %27 : tensor<f32>, tensor<10x32x120x120xf32>) outs(%0 : tensor<10x32x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x32x120x120xf32>
    %29 = tensor.empty() : tensor<10x16x120x120xf32>
    %30 = linalg.fill ins(%cst : f32) outs(%29 : tensor<10x16x120x120xf32>) -> tensor<10x16x120x120xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%28, %arg10 : tensor<10x32x120x120xf32>, tensor<16x32x1x1xf32>) outs(%30 : tensor<10x16x120x120xf32>) -> tensor<10x16x120x120xf32>
    %32 = tensor.empty() : tensor<16xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg79 : tensor<16xf32>) outs(%32 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<16xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%33 : tensor<16xf32>) outs(%32 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<16xf32>
    %expanded_16 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %expanded_17 = tensor.expand_shape %34 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_16 : tensor<10x16x120x120xf32>, tensor<16x1x1xf32>) outs(%29 : tensor<10x16x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x16x120x120xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %expanded_17 : tensor<10x16x120x120xf32>, tensor<16x1x1xf32>) outs(%29 : tensor<10x16x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x16x120x120xf32>
    %expanded_18 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_18 : tensor<10x16x120x120xf32>, tensor<16x1x1xf32>) outs(%29 : tensor<10x16x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x16x120x120xf32>
    %expanded_19 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_19 : tensor<10x16x120x120xf32>, tensor<16x1x1xf32>) outs(%29 : tensor<10x16x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x16x120x120xf32>
    %39 = tensor.empty() : tensor<10x96x120x120xf32>
    %40 = linalg.fill ins(%cst : f32) outs(%39 : tensor<10x96x120x120xf32>) -> tensor<10x96x120x120xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %arg13 : tensor<10x16x120x120xf32>, tensor<96x16x1x1xf32>) outs(%40 : tensor<10x96x120x120xf32>) -> tensor<10x96x120x120xf32>
    %42 = tensor.empty() : tensor<96xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg81 : tensor<96xf32>) outs(%42 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<96xf32>
    %44 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%43 : tensor<96xf32>) outs(%42 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<96xf32>
    %expanded_20 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_21 = tensor.expand_shape %44 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %expanded_20 : tensor<10x96x120x120xf32>, tensor<96x1x1xf32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x120x120xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %expanded_21 : tensor<10x96x120x120xf32>, tensor<96x1x1xf32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x120x120xf32>
    %expanded_22 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_22 : tensor<10x96x120x120xf32>, tensor<96x1x1xf32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x120x120xf32>
    %expanded_23 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_23 : tensor<10x96x120x120xf32>, tensor<96x1x1xf32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x120x120xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_1 : tensor<10x96x120x120xf32>, tensor<f32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x96x120x120xf32>
    %50 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %49 : tensor<f32>, tensor<10x96x120x120xf32>) outs(%39 : tensor<10x96x120x120xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x96x120x120xf32>
    %padded_24 = tensor.pad %50 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x96x120x120xf32> to tensor<10x96x122x122xf32>
    %51 = tensor.empty() : tensor<10x96x60x60xf32>
    %52 = linalg.fill ins(%cst : f32) outs(%51 : tensor<10x96x60x60xf32>) -> tensor<10x96x60x60xf32>
    %collapsed_25 = tensor.collapse_shape %arg16 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %53 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_24, %collapsed_25 : tensor<10x96x122x122xf32>, tensor<96x3x3xf32>) outs(%52 : tensor<10x96x60x60xf32>) -> tensor<10x96x60x60xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg83 : tensor<96xf32>) outs(%42 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<96xf32>
    %55 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%54 : tensor<96xf32>) outs(%42 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<96xf32>
    %expanded_26 = tensor.expand_shape %arg82 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_27 = tensor.expand_shape %55 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %expanded_26 : tensor<10x96x60x60xf32>, tensor<96x1x1xf32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x60x60xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_27 : tensor<10x96x60x60xf32>, tensor<96x1x1xf32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x60x60xf32>
    %expanded_28 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %expanded_28 : tensor<10x96x60x60xf32>, tensor<96x1x1xf32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x60x60xf32>
    %expanded_29 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %expanded_29 : tensor<10x96x60x60xf32>, tensor<96x1x1xf32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x96x60x60xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_1 : tensor<10x96x60x60xf32>, tensor<f32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x96x60x60xf32>
    %61 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %60 : tensor<f32>, tensor<10x96x60x60xf32>) outs(%51 : tensor<10x96x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x96x60x60xf32>
    %62 = tensor.empty() : tensor<10x24x60x60xf32>
    %63 = linalg.fill ins(%cst : f32) outs(%62 : tensor<10x24x60x60xf32>) -> tensor<10x24x60x60xf32>
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %arg19 : tensor<10x96x60x60xf32>, tensor<24x96x1x1xf32>) outs(%63 : tensor<10x24x60x60xf32>) -> tensor<10x24x60x60xf32>
    %65 = tensor.empty() : tensor<24xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg85 : tensor<24xf32>) outs(%65 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<24xf32>
    %67 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%66 : tensor<24xf32>) outs(%65 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<24xf32>
    %expanded_30 = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_31 = tensor.expand_shape %67 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %expanded_30 : tensor<10x24x60x60xf32>, tensor<24x1x1xf32>) outs(%62 : tensor<10x24x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x24x60x60xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %expanded_31 : tensor<10x24x60x60xf32>, tensor<24x1x1xf32>) outs(%62 : tensor<10x24x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x24x60x60xf32>
    %expanded_32 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %expanded_32 : tensor<10x24x60x60xf32>, tensor<24x1x1xf32>) outs(%62 : tensor<10x24x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x24x60x60xf32>
    %expanded_33 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %expanded_33 : tensor<10x24x60x60xf32>, tensor<24x1x1xf32>) outs(%62 : tensor<10x24x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x24x60x60xf32>
    %72 = tensor.empty() : tensor<10x144x60x60xf32>
    %73 = linalg.fill ins(%cst : f32) outs(%72 : tensor<10x144x60x60xf32>) -> tensor<10x144x60x60xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%71, %arg22 : tensor<10x24x60x60xf32>, tensor<144x24x1x1xf32>) outs(%73 : tensor<10x144x60x60xf32>) -> tensor<10x144x60x60xf32>
    %75 = tensor.empty() : tensor<144xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg87 : tensor<144xf32>) outs(%75 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<144xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%76 : tensor<144xf32>) outs(%75 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<144xf32>
    %expanded_34 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_35 = tensor.expand_shape %77 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %expanded_34 : tensor<10x144x60x60xf32>, tensor<144x1x1xf32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x60x60xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %expanded_35 : tensor<10x144x60x60xf32>, tensor<144x1x1xf32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x60x60xf32>
    %expanded_36 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_36 : tensor<10x144x60x60xf32>, tensor<144x1x1xf32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x60x60xf32>
    %expanded_37 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_37 : tensor<10x144x60x60xf32>, tensor<144x1x1xf32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x60x60xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_1 : tensor<10x144x60x60xf32>, tensor<f32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x144x60x60xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %82 : tensor<f32>, tensor<10x144x60x60xf32>) outs(%72 : tensor<10x144x60x60xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x144x60x60xf32>
    %padded_38 = tensor.pad %83 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x144x60x60xf32> to tensor<10x144x62x62xf32>
    %84 = tensor.empty() : tensor<10x144x30x30xf32>
    %85 = linalg.fill ins(%cst : f32) outs(%84 : tensor<10x144x30x30xf32>) -> tensor<10x144x30x30xf32>
    %collapsed_39 = tensor.collapse_shape %arg25 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %86 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_38, %collapsed_39 : tensor<10x144x62x62xf32>, tensor<144x3x3xf32>) outs(%85 : tensor<10x144x30x30xf32>) -> tensor<10x144x30x30xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg89 : tensor<144xf32>) outs(%75 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<144xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%87 : tensor<144xf32>) outs(%75 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<144xf32>
    %expanded_40 = tensor.expand_shape %arg88 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_41 = tensor.expand_shape %88 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %expanded_40 : tensor<10x144x30x30xf32>, tensor<144x1x1xf32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x30x30xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %expanded_41 : tensor<10x144x30x30xf32>, tensor<144x1x1xf32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x30x30xf32>
    %expanded_42 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %expanded_42 : tensor<10x144x30x30xf32>, tensor<144x1x1xf32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x30x30xf32>
    %expanded_43 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %expanded_43 : tensor<10x144x30x30xf32>, tensor<144x1x1xf32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x144x30x30xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_1 : tensor<10x144x30x30xf32>, tensor<f32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x144x30x30xf32>
    %94 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %93 : tensor<f32>, tensor<10x144x30x30xf32>) outs(%84 : tensor<10x144x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x144x30x30xf32>
    %95 = tensor.empty() : tensor<10x40x30x30xf32>
    %96 = linalg.fill ins(%cst : f32) outs(%95 : tensor<10x40x30x30xf32>) -> tensor<10x40x30x30xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %arg28 : tensor<10x144x30x30xf32>, tensor<40x144x1x1xf32>) outs(%96 : tensor<10x40x30x30xf32>) -> tensor<10x40x30x30xf32>
    %98 = tensor.empty() : tensor<40xf32>
    %99 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg91 : tensor<40xf32>) outs(%98 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<40xf32>
    %100 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%99 : tensor<40xf32>) outs(%98 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<40xf32>
    %expanded_44 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %expanded_45 = tensor.expand_shape %100 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %expanded_44 : tensor<10x40x30x30xf32>, tensor<40x1x1xf32>) outs(%95 : tensor<10x40x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x40x30x30xf32>
    %102 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %expanded_45 : tensor<10x40x30x30xf32>, tensor<40x1x1xf32>) outs(%95 : tensor<10x40x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x40x30x30xf32>
    %expanded_46 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %expanded_46 : tensor<10x40x30x30xf32>, tensor<40x1x1xf32>) outs(%95 : tensor<10x40x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x40x30x30xf32>
    %expanded_47 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %expanded_47 : tensor<10x40x30x30xf32>, tensor<40x1x1xf32>) outs(%95 : tensor<10x40x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x40x30x30xf32>
    %105 = tensor.empty() : tensor<10x240x30x30xf32>
    %106 = linalg.fill ins(%cst : f32) outs(%105 : tensor<10x240x30x30xf32>) -> tensor<10x240x30x30xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%104, %arg31 : tensor<10x40x30x30xf32>, tensor<240x40x1x1xf32>) outs(%106 : tensor<10x240x30x30xf32>) -> tensor<10x240x30x30xf32>
    %108 = tensor.empty() : tensor<240xf32>
    %109 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg93 : tensor<240xf32>) outs(%108 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<240xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%109 : tensor<240xf32>) outs(%108 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<240xf32>
    %expanded_48 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_49 = tensor.expand_shape %110 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %expanded_48 : tensor<10x240x30x30xf32>, tensor<240x1x1xf32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x30x30xf32>
    %112 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %expanded_49 : tensor<10x240x30x30xf32>, tensor<240x1x1xf32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x30x30xf32>
    %expanded_50 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %expanded_50 : tensor<10x240x30x30xf32>, tensor<240x1x1xf32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x30x30xf32>
    %expanded_51 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %expanded_51 : tensor<10x240x30x30xf32>, tensor<240x1x1xf32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x30x30xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_1 : tensor<10x240x30x30xf32>, tensor<f32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x240x30x30xf32>
    %116 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %115 : tensor<f32>, tensor<10x240x30x30xf32>) outs(%105 : tensor<10x240x30x30xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x240x30x30xf32>
    %padded_52 = tensor.pad %116 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x240x30x30xf32> to tensor<10x240x32x32xf32>
    %117 = tensor.empty() : tensor<10x240x15x15xf32>
    %118 = linalg.fill ins(%cst : f32) outs(%117 : tensor<10x240x15x15xf32>) -> tensor<10x240x15x15xf32>
    %collapsed_53 = tensor.collapse_shape %arg34 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %119 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_52, %collapsed_53 : tensor<10x240x32x32xf32>, tensor<240x3x3xf32>) outs(%118 : tensor<10x240x15x15xf32>) -> tensor<10x240x15x15xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg95 : tensor<240xf32>) outs(%108 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<240xf32>
    %121 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%120 : tensor<240xf32>) outs(%108 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<240xf32>
    %expanded_54 = tensor.expand_shape %arg94 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_55 = tensor.expand_shape %121 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %expanded_54 : tensor<10x240x15x15xf32>, tensor<240x1x1xf32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x15x15xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %expanded_55 : tensor<10x240x15x15xf32>, tensor<240x1x1xf32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x15x15xf32>
    %expanded_56 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %expanded_56 : tensor<10x240x15x15xf32>, tensor<240x1x1xf32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x15x15xf32>
    %expanded_57 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_57 : tensor<10x240x15x15xf32>, tensor<240x1x1xf32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x240x15x15xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_1 : tensor<10x240x15x15xf32>, tensor<f32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x240x15x15xf32>
    %127 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %126 : tensor<f32>, tensor<10x240x15x15xf32>) outs(%117 : tensor<10x240x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x240x15x15xf32>
    %128 = tensor.empty() : tensor<10x80x15x15xf32>
    %129 = linalg.fill ins(%cst : f32) outs(%128 : tensor<10x80x15x15xf32>) -> tensor<10x80x15x15xf32>
    %130 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %arg37 : tensor<10x240x15x15xf32>, tensor<80x240x1x1xf32>) outs(%129 : tensor<10x80x15x15xf32>) -> tensor<10x80x15x15xf32>
    %131 = tensor.empty() : tensor<80xf32>
    %132 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg97 : tensor<80xf32>) outs(%131 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<80xf32>
    %133 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%132 : tensor<80xf32>) outs(%131 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<80xf32>
    %expanded_58 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %expanded_59 = tensor.expand_shape %133 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %expanded_58 : tensor<10x80x15x15xf32>, tensor<80x1x1xf32>) outs(%128 : tensor<10x80x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x80x15x15xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %expanded_59 : tensor<10x80x15x15xf32>, tensor<80x1x1xf32>) outs(%128 : tensor<10x80x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x80x15x15xf32>
    %expanded_60 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %expanded_60 : tensor<10x80x15x15xf32>, tensor<80x1x1xf32>) outs(%128 : tensor<10x80x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x80x15x15xf32>
    %expanded_61 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %expanded_61 : tensor<10x80x15x15xf32>, tensor<80x1x1xf32>) outs(%128 : tensor<10x80x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x80x15x15xf32>
    %138 = tensor.empty() : tensor<10x480x15x15xf32>
    %139 = linalg.fill ins(%cst : f32) outs(%138 : tensor<10x480x15x15xf32>) -> tensor<10x480x15x15xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %arg40 : tensor<10x80x15x15xf32>, tensor<480x80x1x1xf32>) outs(%139 : tensor<10x480x15x15xf32>) -> tensor<10x480x15x15xf32>
    %141 = tensor.empty() : tensor<480xf32>
    %142 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg99 : tensor<480xf32>) outs(%141 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<480xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%142 : tensor<480xf32>) outs(%141 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<480xf32>
    %expanded_62 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_63 = tensor.expand_shape %143 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %expanded_62 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %expanded_63 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %expanded_64 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %expanded_64 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %expanded_65 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_65 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_1 : tensor<10x480x15x15xf32>, tensor<f32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x480x15x15xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %148 : tensor<f32>, tensor<10x480x15x15xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x480x15x15xf32>
    %padded_66 = tensor.pad %149 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x480x15x15xf32> to tensor<10x480x17x17xf32>
    %collapsed_67 = tensor.collapse_shape %arg43 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %150 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_66, %collapsed_67 : tensor<10x480x17x17xf32>, tensor<480x3x3xf32>) outs(%139 : tensor<10x480x15x15xf32>) -> tensor<10x480x15x15xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg101 : tensor<480xf32>) outs(%141 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<480xf32>
    %152 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%151 : tensor<480xf32>) outs(%141 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<480xf32>
    %expanded_68 = tensor.expand_shape %arg100 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_69 = tensor.expand_shape %152 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %expanded_68 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_69 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %expanded_70 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_70 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %expanded_71 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %expanded_71 : tensor<10x480x15x15xf32>, tensor<480x1x1xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x480x15x15xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_1 : tensor<10x480x15x15xf32>, tensor<f32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x480x15x15xf32>
    %158 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %157 : tensor<f32>, tensor<10x480x15x15xf32>) outs(%138 : tensor<10x480x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x480x15x15xf32>
    %159 = tensor.empty() : tensor<10x112x15x15xf32>
    %160 = linalg.fill ins(%cst : f32) outs(%159 : tensor<10x112x15x15xf32>) -> tensor<10x112x15x15xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %arg46 : tensor<10x480x15x15xf32>, tensor<112x480x1x1xf32>) outs(%160 : tensor<10x112x15x15xf32>) -> tensor<10x112x15x15xf32>
    %162 = tensor.empty() : tensor<112xf32>
    %163 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg103 : tensor<112xf32>) outs(%162 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<112xf32>
    %164 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%163 : tensor<112xf32>) outs(%162 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<112xf32>
    %expanded_72 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %expanded_73 = tensor.expand_shape %164 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_72 : tensor<10x112x15x15xf32>, tensor<112x1x1xf32>) outs(%159 : tensor<10x112x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x112x15x15xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %expanded_73 : tensor<10x112x15x15xf32>, tensor<112x1x1xf32>) outs(%159 : tensor<10x112x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x112x15x15xf32>
    %expanded_74 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %expanded_74 : tensor<10x112x15x15xf32>, tensor<112x1x1xf32>) outs(%159 : tensor<10x112x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x112x15x15xf32>
    %expanded_75 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %expanded_75 : tensor<10x112x15x15xf32>, tensor<112x1x1xf32>) outs(%159 : tensor<10x112x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x112x15x15xf32>
    %169 = tensor.empty() : tensor<10x672x15x15xf32>
    %170 = linalg.fill ins(%cst : f32) outs(%169 : tensor<10x672x15x15xf32>) -> tensor<10x672x15x15xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %arg49 : tensor<10x112x15x15xf32>, tensor<672x112x1x1xf32>) outs(%170 : tensor<10x672x15x15xf32>) -> tensor<10x672x15x15xf32>
    %172 = tensor.empty() : tensor<672xf32>
    %173 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg105 : tensor<672xf32>) outs(%172 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<672xf32>
    %174 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%173 : tensor<672xf32>) outs(%172 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<672xf32>
    %expanded_76 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_77 = tensor.expand_shape %174 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %175 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %expanded_76 : tensor<10x672x15x15xf32>, tensor<672x1x1xf32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x15x15xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %expanded_77 : tensor<10x672x15x15xf32>, tensor<672x1x1xf32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x15x15xf32>
    %expanded_78 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %expanded_78 : tensor<10x672x15x15xf32>, tensor<672x1x1xf32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x15x15xf32>
    %expanded_79 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_79 : tensor<10x672x15x15xf32>, tensor<672x1x1xf32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x15x15xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_1 : tensor<10x672x15x15xf32>, tensor<f32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x672x15x15xf32>
    %180 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %179 : tensor<f32>, tensor<10x672x15x15xf32>) outs(%169 : tensor<10x672x15x15xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x672x15x15xf32>
    %padded_80 = tensor.pad %180 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x672x15x15xf32> to tensor<10x672x17x17xf32>
    %181 = tensor.empty() : tensor<10x672x8x8xf32>
    %182 = linalg.fill ins(%cst : f32) outs(%181 : tensor<10x672x8x8xf32>) -> tensor<10x672x8x8xf32>
    %collapsed_81 = tensor.collapse_shape %arg52 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %183 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_80, %collapsed_81 : tensor<10x672x17x17xf32>, tensor<672x3x3xf32>) outs(%182 : tensor<10x672x8x8xf32>) -> tensor<10x672x8x8xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg107 : tensor<672xf32>) outs(%172 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<672xf32>
    %185 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%184 : tensor<672xf32>) outs(%172 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<672xf32>
    %expanded_82 = tensor.expand_shape %arg106 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_83 = tensor.expand_shape %185 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %expanded_82 : tensor<10x672x8x8xf32>, tensor<672x1x1xf32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x8x8xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %expanded_83 : tensor<10x672x8x8xf32>, tensor<672x1x1xf32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x8x8xf32>
    %expanded_84 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %expanded_84 : tensor<10x672x8x8xf32>, tensor<672x1x1xf32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x8x8xf32>
    %expanded_85 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %expanded_85 : tensor<10x672x8x8xf32>, tensor<672x1x1xf32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x672x8x8xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_1 : tensor<10x672x8x8xf32>, tensor<f32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x672x8x8xf32>
    %191 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %190 : tensor<f32>, tensor<10x672x8x8xf32>) outs(%181 : tensor<10x672x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x672x8x8xf32>
    %192 = tensor.empty() : tensor<10x192x8x8xf32>
    %193 = linalg.fill ins(%cst : f32) outs(%192 : tensor<10x192x8x8xf32>) -> tensor<10x192x8x8xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%191, %arg55 : tensor<10x672x8x8xf32>, tensor<192x672x1x1xf32>) outs(%193 : tensor<10x192x8x8xf32>) -> tensor<10x192x8x8xf32>
    %195 = tensor.empty() : tensor<192xf32>
    %196 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg109 : tensor<192xf32>) outs(%195 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<192xf32>
    %197 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%196 : tensor<192xf32>) outs(%195 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<192xf32>
    %expanded_86 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_87 = tensor.expand_shape %197 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %expanded_86 : tensor<10x192x8x8xf32>, tensor<192x1x1xf32>) outs(%192 : tensor<10x192x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x192x8x8xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %expanded_87 : tensor<10x192x8x8xf32>, tensor<192x1x1xf32>) outs(%192 : tensor<10x192x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x192x8x8xf32>
    %expanded_88 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %expanded_88 : tensor<10x192x8x8xf32>, tensor<192x1x1xf32>) outs(%192 : tensor<10x192x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x192x8x8xf32>
    %expanded_89 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %expanded_89 : tensor<10x192x8x8xf32>, tensor<192x1x1xf32>) outs(%192 : tensor<10x192x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x192x8x8xf32>
    %202 = tensor.empty() : tensor<10x1152x8x8xf32>
    %203 = linalg.fill ins(%cst : f32) outs(%202 : tensor<10x1152x8x8xf32>) -> tensor<10x1152x8x8xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %arg58 : tensor<10x192x8x8xf32>, tensor<1152x192x1x1xf32>) outs(%203 : tensor<10x1152x8x8xf32>) -> tensor<10x1152x8x8xf32>
    %205 = tensor.empty() : tensor<1152xf32>
    %206 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg111 : tensor<1152xf32>) outs(%205 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<1152xf32>
    %207 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%206 : tensor<1152xf32>) outs(%205 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<1152xf32>
    %expanded_90 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_91 = tensor.expand_shape %207 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %expanded_90 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %expanded_91 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %expanded_92 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %expanded_92 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %expanded_93 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_93 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_1 : tensor<10x1152x8x8xf32>, tensor<f32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x1152x8x8xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %212 : tensor<f32>, tensor<10x1152x8x8xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x1152x8x8xf32>
    %padded_94 = tensor.pad %213 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg118: index, %arg119: index, %arg120: index, %arg121: index):
      tensor.yield %cst : f32
    } : tensor<10x1152x8x8xf32> to tensor<10x1152x10x10xf32>
    %collapsed_95 = tensor.collapse_shape %arg61 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %214 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_94, %collapsed_95 : tensor<10x1152x10x10xf32>, tensor<1152x3x3xf32>) outs(%203 : tensor<10x1152x8x8xf32>) -> tensor<10x1152x8x8xf32>
    %215 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg113 : tensor<1152xf32>) outs(%205 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<1152xf32>
    %216 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%215 : tensor<1152xf32>) outs(%205 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<1152xf32>
    %expanded_96 = tensor.expand_shape %arg112 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_97 = tensor.expand_shape %216 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %expanded_96 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %expanded_97 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %expanded_98 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %expanded_98 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %expanded_99 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %expanded_99 : tensor<10x1152x8x8xf32>, tensor<1152x1x1xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1152x8x8xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %cst_1 : tensor<10x1152x8x8xf32>, tensor<f32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf ogt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x1152x8x8xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %221 : tensor<f32>, tensor<10x1152x8x8xf32>) outs(%202 : tensor<10x1152x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.cmpf olt, %in, %in_109 : f32
      %255 = arith.select %254, %in, %in_109 : f32
      linalg.yield %255 : f32
    } -> tensor<10x1152x8x8xf32>
    %223 = tensor.empty() : tensor<10x320x8x8xf32>
    %224 = linalg.fill ins(%cst : f32) outs(%223 : tensor<10x320x8x8xf32>) -> tensor<10x320x8x8xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%222, %arg64 : tensor<10x1152x8x8xf32>, tensor<320x1152x1x1xf32>) outs(%224 : tensor<10x320x8x8xf32>) -> tensor<10x320x8x8xf32>
    %226 = tensor.empty() : tensor<320xf32>
    %227 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg115 : tensor<320xf32>) outs(%226 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<320xf32>
    %228 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%227 : tensor<320xf32>) outs(%226 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<320xf32>
    %expanded_100 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %expanded_101 = tensor.expand_shape %228 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %expanded_100 : tensor<10x320x8x8xf32>, tensor<320x1x1xf32>) outs(%223 : tensor<10x320x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x320x8x8xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %expanded_101 : tensor<10x320x8x8xf32>, tensor<320x1x1xf32>) outs(%223 : tensor<10x320x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x320x8x8xf32>
    %expanded_102 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %expanded_102 : tensor<10x320x8x8xf32>, tensor<320x1x1xf32>) outs(%223 : tensor<10x320x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x320x8x8xf32>
    %expanded_103 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %expanded_103 : tensor<10x320x8x8xf32>, tensor<320x1x1xf32>) outs(%223 : tensor<10x320x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x320x8x8xf32>
    %233 = tensor.empty() : tensor<10x1280x8x8xf32>
    %234 = linalg.fill ins(%cst : f32) outs(%233 : tensor<10x1280x8x8xf32>) -> tensor<10x1280x8x8xf32>
    %235 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%232, %arg67 : tensor<10x320x8x8xf32>, tensor<1280x320x1x1xf32>) outs(%234 : tensor<10x1280x8x8xf32>) -> tensor<10x1280x8x8xf32>
    %236 = tensor.empty() : tensor<1280xf32>
    %237 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg117 : tensor<1280xf32>) outs(%236 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.truncf %cst_2 : f64 to f32
      %255 = arith.addf %in, %254 : f32
      linalg.yield %255 : f32
    } -> tensor<1280xf32>
    %238 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%237 : tensor<1280xf32>) outs(%236 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = math.rsqrt %in : f32
      linalg.yield %254 : f32
    } -> tensor<1280xf32>
    %expanded_104 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %expanded_105 = tensor.expand_shape %238 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %expanded_104 : tensor<10x1280x8x8xf32>, tensor<1280x1x1xf32>) outs(%233 : tensor<10x1280x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.subf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1280x8x8xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %expanded_105 : tensor<10x1280x8x8xf32>, tensor<1280x1x1xf32>) outs(%233 : tensor<10x1280x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1280x8x8xf32>
    %expanded_106 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %expanded_106 : tensor<10x1280x8x8xf32>, tensor<1280x1x1xf32>) outs(%233 : tensor<10x1280x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.mulf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1280x8x8xf32>
    %expanded_107 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %expanded_107 : tensor<10x1280x8x8xf32>, tensor<1280x1x1xf32>) outs(%233 : tensor<10x1280x8x8xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1280x8x8xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<10x1280x8x8xf32>) outs(%233 : tensor<10x1280x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.cmpf ugt, %in, %cst : f32
      %255 = arith.select %254, %in, %cst : f32
      linalg.yield %255 : f32
    } -> tensor<10x1280x8x8xf32>
    %244 = tensor.empty() : tensor<10x1280x1x1xf32>
    %245 = linalg.fill ins(%cst : f32) outs(%244 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %246 = tensor.empty() : tensor<8x8xf32>
    %247 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<8> : vector<2xi64>} ins(%243, %246 : tensor<10x1280x8x8xf32>, tensor<8x8xf32>) outs(%245 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<10x1280x1x1xf32>) outs(%244 : tensor<10x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %254 = arith.divf %in, %cst_3 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1280x1x1xf32>
    %collapsed_108 = tensor.collapse_shape %248 [[0], [1, 2, 3]] : tensor<10x1280x1x1xf32> into tensor<10x1280xf32>
    %249 = tensor.empty() : tensor<1280x1000xf32>
    %transposed = linalg.transpose ins(%arg70 : tensor<1000x1280xf32>) outs(%249 : tensor<1280x1000xf32>) permutation = [1, 0] 
    %250 = tensor.empty() : tensor<10x1000xf32>
    %251 = linalg.fill ins(%cst : f32) outs(%250 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %252 = linalg.matmul ins(%collapsed_108, %transposed : tensor<10x1280xf32>, tensor<1280x1000xf32>) outs(%251 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %253 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel"]} ins(%252, %arg71 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%250 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_109: f32, %out: f32):
      %254 = arith.addf %in, %in_109 : f32
      linalg.yield %254 : f32
    } -> tensor<10x1000xf32>
    return %253 : tensor<10x1000xf32>
  }
}
