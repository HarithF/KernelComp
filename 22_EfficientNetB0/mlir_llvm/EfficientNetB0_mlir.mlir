#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> ()>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @EfficientNetB0(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<32x3x3x3xf32>, %arg2: tensor<32xf32>, %arg3: tensor<32xf32>, %arg4: tensor<32x1x3x3xf32>, %arg5: tensor<32xf32>, %arg6: tensor<32xf32>, %arg7: tensor<16x32x1x1xf32>, %arg8: tensor<16xf32>, %arg9: tensor<16xf32>, %arg10: tensor<96x16x1x1xf32>, %arg11: tensor<96xf32>, %arg12: tensor<96xf32>, %arg13: tensor<96x1x3x3xf32>, %arg14: tensor<96xf32>, %arg15: tensor<96xf32>, %arg16: tensor<24x96x1x1xf32>, %arg17: tensor<24xf32>, %arg18: tensor<24xf32>, %arg19: tensor<144x24x1x1xf32>, %arg20: tensor<144xf32>, %arg21: tensor<144xf32>, %arg22: tensor<144x1x3x3xf32>, %arg23: tensor<144xf32>, %arg24: tensor<144xf32>, %arg25: tensor<24x144x1x1xf32>, %arg26: tensor<24xf32>, %arg27: tensor<24xf32>, %arg28: tensor<144x24x1x1xf32>, %arg29: tensor<144xf32>, %arg30: tensor<144xf32>, %arg31: tensor<144x1x5x5xf32>, %arg32: tensor<144xf32>, %arg33: tensor<144xf32>, %arg34: tensor<40x144x1x1xf32>, %arg35: tensor<40xf32>, %arg36: tensor<40xf32>, %arg37: tensor<240x40x1x1xf32>, %arg38: tensor<240xf32>, %arg39: tensor<240xf32>, %arg40: tensor<240x1x5x5xf32>, %arg41: tensor<240xf32>, %arg42: tensor<240xf32>, %arg43: tensor<40x240x1x1xf32>, %arg44: tensor<40xf32>, %arg45: tensor<40xf32>, %arg46: tensor<240x40x1x1xf32>, %arg47: tensor<240xf32>, %arg48: tensor<240xf32>, %arg49: tensor<240x1x3x3xf32>, %arg50: tensor<240xf32>, %arg51: tensor<240xf32>, %arg52: tensor<80x240x1x1xf32>, %arg53: tensor<80xf32>, %arg54: tensor<80xf32>, %arg55: tensor<480x80x1x1xf32>, %arg56: tensor<480xf32>, %arg57: tensor<480xf32>, %arg58: tensor<480x1x3x3xf32>, %arg59: tensor<480xf32>, %arg60: tensor<480xf32>, %arg61: tensor<80x480x1x1xf32>, %arg62: tensor<80xf32>, %arg63: tensor<80xf32>, %arg64: tensor<480x80x1x1xf32>, %arg65: tensor<480xf32>, %arg66: tensor<480xf32>, %arg67: tensor<480x1x5x5xf32>, %arg68: tensor<480xf32>, %arg69: tensor<480xf32>, %arg70: tensor<112x480x1x1xf32>, %arg71: tensor<112xf32>, %arg72: tensor<112xf32>, %arg73: tensor<672x112x1x1xf32>, %arg74: tensor<672xf32>, %arg75: tensor<672xf32>, %arg76: tensor<672x1x5x5xf32>, %arg77: tensor<672xf32>, %arg78: tensor<672xf32>, %arg79: tensor<112x672x1x1xf32>, %arg80: tensor<112xf32>, %arg81: tensor<112xf32>, %arg82: tensor<672x112x1x1xf32>, %arg83: tensor<672xf32>, %arg84: tensor<672xf32>, %arg85: tensor<672x1x5x5xf32>, %arg86: tensor<672xf32>, %arg87: tensor<672xf32>, %arg88: tensor<192x672x1x1xf32>, %arg89: tensor<192xf32>, %arg90: tensor<192xf32>, %arg91: tensor<1152x192x1x1xf32>, %arg92: tensor<1152xf32>, %arg93: tensor<1152xf32>, %arg94: tensor<1152x1x5x5xf32>, %arg95: tensor<1152xf32>, %arg96: tensor<1152xf32>, %arg97: tensor<192x1152x1x1xf32>, %arg98: tensor<192xf32>, %arg99: tensor<192xf32>, %arg100: tensor<1152x192x1x1xf32>, %arg101: tensor<1152xf32>, %arg102: tensor<1152xf32>, %arg103: tensor<1152x1x5x5xf32>, %arg104: tensor<1152xf32>, %arg105: tensor<1152xf32>, %arg106: tensor<192x1152x1x1xf32>, %arg107: tensor<192xf32>, %arg108: tensor<192xf32>, %arg109: tensor<1152x192x1x1xf32>, %arg110: tensor<1152xf32>, %arg111: tensor<1152xf32>, %arg112: tensor<1152x1x3x3xf32>, %arg113: tensor<1152xf32>, %arg114: tensor<1152xf32>, %arg115: tensor<320x1152x1x1xf32>, %arg116: tensor<320xf32>, %arg117: tensor<320xf32>, %arg118: tensor<1280x320x1x1xf32>, %arg119: tensor<1280xf32>, %arg120: tensor<1280xf32>, %arg121: tensor<1000x1280xf32>, %arg122: tensor<1000xf32>, %arg123: tensor<32xf32>, %arg124: tensor<32xf32>, %arg125: tensor<32xf32>, %arg126: tensor<32xf32>, %arg127: tensor<16xf32>, %arg128: tensor<16xf32>, %arg129: tensor<96xf32>, %arg130: tensor<96xf32>, %arg131: tensor<96xf32>, %arg132: tensor<96xf32>, %arg133: tensor<24xf32>, %arg134: tensor<24xf32>, %arg135: tensor<144xf32>, %arg136: tensor<144xf32>, %arg137: tensor<144xf32>, %arg138: tensor<144xf32>, %arg139: tensor<24xf32>, %arg140: tensor<24xf32>, %arg141: tensor<144xf32>, %arg142: tensor<144xf32>, %arg143: tensor<144xf32>, %arg144: tensor<144xf32>, %arg145: tensor<40xf32>, %arg146: tensor<40xf32>, %arg147: tensor<240xf32>, %arg148: tensor<240xf32>, %arg149: tensor<240xf32>, %arg150: tensor<240xf32>, %arg151: tensor<40xf32>, %arg152: tensor<40xf32>, %arg153: tensor<240xf32>, %arg154: tensor<240xf32>, %arg155: tensor<240xf32>, %arg156: tensor<240xf32>, %arg157: tensor<80xf32>, %arg158: tensor<80xf32>, %arg159: tensor<480xf32>, %arg160: tensor<480xf32>, %arg161: tensor<480xf32>, %arg162: tensor<480xf32>, %arg163: tensor<80xf32>, %arg164: tensor<80xf32>, %arg165: tensor<480xf32>, %arg166: tensor<480xf32>, %arg167: tensor<480xf32>, %arg168: tensor<480xf32>, %arg169: tensor<112xf32>, %arg170: tensor<112xf32>, %arg171: tensor<672xf32>, %arg172: tensor<672xf32>, %arg173: tensor<672xf32>, %arg174: tensor<672xf32>, %arg175: tensor<112xf32>, %arg176: tensor<112xf32>, %arg177: tensor<672xf32>, %arg178: tensor<672xf32>, %arg179: tensor<672xf32>, %arg180: tensor<672xf32>, %arg181: tensor<192xf32>, %arg182: tensor<192xf32>, %arg183: tensor<1152xf32>, %arg184: tensor<1152xf32>, %arg185: tensor<1152xf32>, %arg186: tensor<1152xf32>, %arg187: tensor<192xf32>, %arg188: tensor<192xf32>, %arg189: tensor<1152xf32>, %arg190: tensor<1152xf32>, %arg191: tensor<1152xf32>, %arg192: tensor<1152xf32>, %arg193: tensor<192xf32>, %arg194: tensor<192xf32>, %arg195: tensor<1152xf32>, %arg196: tensor<1152xf32>, %arg197: tensor<1152xf32>, %arg198: tensor<1152xf32>, %arg199: tensor<320xf32>, %arg200: tensor<320xf32>, %arg201: tensor<1280xf32>, %arg202: tensor<1280xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant dense<6.000000e+00> : tensor<f32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_2 = arith.constant 1.000000e-05 : f64
    %cst_3 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x32x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %3 = tensor.empty() : tensor<32xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg124 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<32xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg123 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_4 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_6 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_6 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.cmpf ugt, %in, %cst : f32
      %402 = arith.select %401, %in, %cst : f32
      linalg.yield %402 : f32
    } -> tensor<10x32x112x112xf32>
    %padded_7 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %collapsed = tensor.collapse_shape %arg4 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %11 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_7, %collapsed : tensor<10x32x114x114xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg126 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<32xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%12 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<32xf32>
    %expanded_8 = tensor.expand_shape %arg125 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_9 = tensor.expand_shape %13 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %expanded_8 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_9 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_10 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_10 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_11 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_11 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x32x112x112xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_1 : tensor<10x32x112x112xf32>, tensor<f32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x32x112x112xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %18 : tensor<f32>, tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x32x112x112xf32>
    %20 = tensor.empty() : tensor<10x16x112x112xf32>
    %21 = linalg.fill ins(%cst : f32) outs(%20 : tensor<10x16x112x112xf32>) -> tensor<10x16x112x112xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%19, %arg7 : tensor<10x32x112x112xf32>, tensor<16x32x1x1xf32>) outs(%21 : tensor<10x16x112x112xf32>) -> tensor<10x16x112x112xf32>
    %23 = tensor.empty() : tensor<16xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg128 : tensor<16xf32>) outs(%23 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<16xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%24 : tensor<16xf32>) outs(%23 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<16xf32>
    %expanded_12 = tensor.expand_shape %arg127 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %expanded_13 = tensor.expand_shape %25 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %expanded_12 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%20 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x16x112x112xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %expanded_13 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%20 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x16x112x112xf32>
    %expanded_14 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_14 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%20 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x16x112x112xf32>
    %expanded_15 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_15 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%20 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x16x112x112xf32>
    %30 = tensor.empty() : tensor<10x96x112x112xf32>
    %31 = linalg.fill ins(%cst : f32) outs(%30 : tensor<10x96x112x112xf32>) -> tensor<10x96x112x112xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %arg10 : tensor<10x16x112x112xf32>, tensor<96x16x1x1xf32>) outs(%31 : tensor<10x96x112x112xf32>) -> tensor<10x96x112x112xf32>
    %33 = tensor.empty() : tensor<96xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg130 : tensor<96xf32>) outs(%33 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<96xf32>
    %35 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%34 : tensor<96xf32>) outs(%33 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<96xf32>
    %expanded_16 = tensor.expand_shape %arg129 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_17 = tensor.expand_shape %35 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_16 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x112x112xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_17 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x112x112xf32>
    %expanded_18 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_18 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x112x112xf32>
    %expanded_19 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %expanded_19 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x112x112xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_1 : tensor<10x96x112x112xf32>, tensor<f32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x96x112x112xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %40 : tensor<f32>, tensor<10x96x112x112xf32>) outs(%30 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x96x112x112xf32>
    %padded_20 = tensor.pad %41 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x96x112x112xf32> to tensor<10x96x114x114xf32>
    %42 = tensor.empty() : tensor<10x96x56x56xf32>
    %43 = linalg.fill ins(%cst : f32) outs(%42 : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %collapsed_21 = tensor.collapse_shape %arg13 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %44 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_20, %collapsed_21 : tensor<10x96x114x114xf32>, tensor<96x3x3xf32>) outs(%43 : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg132 : tensor<96xf32>) outs(%33 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<96xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%45 : tensor<96xf32>) outs(%33 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<96xf32>
    %expanded_22 = tensor.expand_shape %arg131 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_23 = tensor.expand_shape %46 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %expanded_22 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_23 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_24 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %expanded_24 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_25 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %expanded_25 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x96x56x56xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_1 : tensor<10x96x56x56xf32>, tensor<f32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x96x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %51 : tensor<f32>, tensor<10x96x56x56xf32>) outs(%42 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x96x56x56xf32>
    %53 = tensor.empty() : tensor<10x24x56x56xf32>
    %54 = linalg.fill ins(%cst : f32) outs(%53 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %arg16 : tensor<10x96x56x56xf32>, tensor<24x96x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %56 = tensor.empty() : tensor<24xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg134 : tensor<24xf32>) outs(%56 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<24xf32>
    %58 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%57 : tensor<24xf32>) outs(%56 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<24xf32>
    %expanded_26 = tensor.expand_shape %arg133 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_27 = tensor.expand_shape %58 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %expanded_26 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %expanded_27 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %expanded_28 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_29 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %expanded_29 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %63 = tensor.empty() : tensor<10x144x56x56xf32>
    %64 = linalg.fill ins(%cst : f32) outs(%63 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %arg19 : tensor<10x24x56x56xf32>, tensor<144x24x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %66 = tensor.empty() : tensor<144xf32>
    %67 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg136 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<144xf32>
    %68 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%67 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<144xf32>
    %expanded_30 = tensor.expand_shape %arg135 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_31 = tensor.expand_shape %68 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %expanded_30 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %expanded_31 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_32 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %expanded_32 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_33 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %expanded_33 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %74 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %73 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %padded_34 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %collapsed_35 = tensor.collapse_shape %arg22 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %75 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %collapsed_35 : tensor<10x144x58x58xf32>, tensor<144x3x3xf32>) outs(%64 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg138 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<144xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%76 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<144xf32>
    %expanded_36 = tensor.expand_shape %arg137 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_37 = tensor.expand_shape %77 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %expanded_36 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %expanded_37 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_38 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_38 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_39 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_39 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %83 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %82 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %arg25 : tensor<10x144x56x56xf32>, tensor<24x144x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %85 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg140 : tensor<24xf32>) outs(%56 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<24xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%85 : tensor<24xf32>) outs(%56 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<24xf32>
    %expanded_40 = tensor.expand_shape %arg139 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_41 = tensor.expand_shape %86 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %expanded_40 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %expanded_41 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_42 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_42 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_43 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %expanded_43 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %62 : tensor<10x24x56x56xf32>, tensor<10x24x56x56xf32>) outs(%53 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x24x56x56xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %arg28 : tensor<10x24x56x56xf32>, tensor<144x24x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg142 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<144xf32>
    %94 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%93 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<144xf32>
    %expanded_44 = tensor.expand_shape %arg141 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_45 = tensor.expand_shape %94 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_44 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %expanded_45 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_46 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %expanded_46 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_47 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %expanded_47 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x56x56xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %99 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%63 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x56x56xf32>
    %padded_48 = tensor.pad %100 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x60x60xf32>
    %101 = tensor.empty() : tensor<10x144x28x28xf32>
    %102 = linalg.fill ins(%cst : f32) outs(%101 : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %collapsed_49 = tensor.collapse_shape %arg31 [[0, 1], [2], [3]] : tensor<144x1x5x5xf32> into tensor<144x5x5xf32>
    %103 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_48, %collapsed_49 : tensor<10x144x60x60xf32>, tensor<144x5x5xf32>) outs(%102 : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg144 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<144xf32>
    %105 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%104 : tensor<144xf32>) outs(%66 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<144xf32>
    %expanded_50 = tensor.expand_shape %arg143 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_51 = tensor.expand_shape %105 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %expanded_50 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %expanded_51 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x28x28xf32>
    %expanded_52 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %expanded_52 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x28x28xf32>
    %expanded_53 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %expanded_53 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x144x28x28xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_1 : tensor<10x144x28x28xf32>, tensor<f32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %110 : tensor<f32>, tensor<10x144x28x28xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x144x28x28xf32>
    %112 = tensor.empty() : tensor<10x40x28x28xf32>
    %113 = linalg.fill ins(%cst : f32) outs(%112 : tensor<10x40x28x28xf32>) -> tensor<10x40x28x28xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %arg34 : tensor<10x144x28x28xf32>, tensor<40x144x1x1xf32>) outs(%113 : tensor<10x40x28x28xf32>) -> tensor<10x40x28x28xf32>
    %115 = tensor.empty() : tensor<40xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg146 : tensor<40xf32>) outs(%115 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<40xf32>
    %117 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%116 : tensor<40xf32>) outs(%115 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<40xf32>
    %expanded_54 = tensor.expand_shape %arg145 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %expanded_55 = tensor.expand_shape %117 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %expanded_54 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %expanded_55 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %expanded_56 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %expanded_56 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %expanded_57 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %expanded_57 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %122 = tensor.empty() : tensor<10x240x28x28xf32>
    %123 = linalg.fill ins(%cst : f32) outs(%122 : tensor<10x240x28x28xf32>) -> tensor<10x240x28x28xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %arg37 : tensor<10x40x28x28xf32>, tensor<240x40x1x1xf32>) outs(%123 : tensor<10x240x28x28xf32>) -> tensor<10x240x28x28xf32>
    %125 = tensor.empty() : tensor<240xf32>
    %126 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg148 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<240xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%126 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<240xf32>
    %expanded_58 = tensor.expand_shape %arg147 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_59 = tensor.expand_shape %127 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_58 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %expanded_59 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_60 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_60 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_61 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %expanded_61 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_1 : tensor<10x240x28x28xf32>, tensor<f32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %132 : tensor<f32>, tensor<10x240x28x28xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %padded_62 = tensor.pad %133 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x240x28x28xf32> to tensor<10x240x32x32xf32>
    %collapsed_63 = tensor.collapse_shape %arg40 [[0, 1], [2], [3]] : tensor<240x1x5x5xf32> into tensor<240x5x5xf32>
    %134 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_62, %collapsed_63 : tensor<10x240x32x32xf32>, tensor<240x5x5xf32>) outs(%123 : tensor<10x240x28x28xf32>) -> tensor<10x240x28x28xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg150 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<240xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%135 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<240xf32>
    %expanded_64 = tensor.expand_shape %arg149 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_65 = tensor.expand_shape %136 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %expanded_64 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %expanded_65 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_66 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %expanded_66 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_67 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %expanded_67 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %cst_1 : tensor<10x240x28x28xf32>, tensor<f32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %141 : tensor<f32>, tensor<10x240x28x28xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%142, %arg43 : tensor<10x240x28x28xf32>, tensor<40x240x1x1xf32>) outs(%113 : tensor<10x40x28x28xf32>) -> tensor<10x40x28x28xf32>
    %144 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg152 : tensor<40xf32>) outs(%115 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<40xf32>
    %145 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%144 : tensor<40xf32>) outs(%115 : tensor<40xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<40xf32>
    %expanded_68 = tensor.expand_shape %arg151 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %expanded_69 = tensor.expand_shape %145 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %expanded_68 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_69 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %expanded_70 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %expanded_70 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %expanded_71 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [40, 1, 1] : tensor<40xf32> into tensor<40x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %expanded_71 : tensor<10x40x28x28xf32>, tensor<40x1x1xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %150 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %121 : tensor<10x40x28x28xf32>, tensor<10x40x28x28xf32>) outs(%112 : tensor<10x40x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x40x28x28xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %arg46 : tensor<10x40x28x28xf32>, tensor<240x40x1x1xf32>) outs(%123 : tensor<10x240x28x28xf32>) -> tensor<10x240x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg154 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<240xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%152 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<240xf32>
    %expanded_72 = tensor.expand_shape %arg153 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_73 = tensor.expand_shape %153 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %expanded_72 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_73 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_74 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %expanded_74 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %expanded_75 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %expanded_75 : tensor<10x240x28x28xf32>, tensor<240x1x1xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x28x28xf32>
    %158 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_1 : tensor<10x240x28x28xf32>, tensor<f32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %158 : tensor<f32>, tensor<10x240x28x28xf32>) outs(%122 : tensor<10x240x28x28xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x28x28xf32>
    %padded_76 = tensor.pad %159 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x240x28x28xf32> to tensor<10x240x30x30xf32>
    %160 = tensor.empty() : tensor<10x240x14x14xf32>
    %161 = linalg.fill ins(%cst : f32) outs(%160 : tensor<10x240x14x14xf32>) -> tensor<10x240x14x14xf32>
    %collapsed_77 = tensor.collapse_shape %arg49 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %162 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_76, %collapsed_77 : tensor<10x240x30x30xf32>, tensor<240x3x3xf32>) outs(%161 : tensor<10x240x14x14xf32>) -> tensor<10x240x14x14xf32>
    %163 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg156 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<240xf32>
    %164 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%163 : tensor<240xf32>) outs(%125 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<240xf32>
    %expanded_78 = tensor.expand_shape %arg155 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_79 = tensor.expand_shape %164 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_78 : tensor<10x240x14x14xf32>, tensor<240x1x1xf32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x14x14xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %expanded_79 : tensor<10x240x14x14xf32>, tensor<240x1x1xf32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x14x14xf32>
    %expanded_80 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %expanded_80 : tensor<10x240x14x14xf32>, tensor<240x1x1xf32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x14x14xf32>
    %expanded_81 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %expanded_81 : tensor<10x240x14x14xf32>, tensor<240x1x1xf32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x240x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_1 : tensor<10x240x14x14xf32>, tensor<f32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x14x14xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %169 : tensor<f32>, tensor<10x240x14x14xf32>) outs(%160 : tensor<10x240x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x240x14x14xf32>
    %171 = tensor.empty() : tensor<10x80x14x14xf32>
    %172 = linalg.fill ins(%cst : f32) outs(%171 : tensor<10x80x14x14xf32>) -> tensor<10x80x14x14xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %arg52 : tensor<10x240x14x14xf32>, tensor<80x240x1x1xf32>) outs(%172 : tensor<10x80x14x14xf32>) -> tensor<10x80x14x14xf32>
    %174 = tensor.empty() : tensor<80xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg158 : tensor<80xf32>) outs(%174 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<80xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%175 : tensor<80xf32>) outs(%174 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<80xf32>
    %expanded_82 = tensor.expand_shape %arg157 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %expanded_83 = tensor.expand_shape %176 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %expanded_82 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_83 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %expanded_84 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_84 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %expanded_85 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %expanded_85 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %181 = tensor.empty() : tensor<10x480x14x14xf32>
    %182 = linalg.fill ins(%cst : f32) outs(%181 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %arg55 : tensor<10x80x14x14xf32>, tensor<480x80x1x1xf32>) outs(%182 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %184 = tensor.empty() : tensor<480xf32>
    %185 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg160 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<480xf32>
    %186 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%185 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<480xf32>
    %expanded_86 = tensor.expand_shape %arg159 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_87 = tensor.expand_shape %186 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %expanded_86 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %expanded_87 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_88 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %expanded_88 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_89 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %expanded_89 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %191 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %cst_1 : tensor<10x480x14x14xf32>, tensor<f32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %191 : tensor<f32>, tensor<10x480x14x14xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %padded_90 = tensor.pad %192 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %collapsed_91 = tensor.collapse_shape %arg58 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %193 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_90, %collapsed_91 : tensor<10x480x16x16xf32>, tensor<480x3x3xf32>) outs(%182 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %194 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg162 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<480xf32>
    %195 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%194 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<480xf32>
    %expanded_92 = tensor.expand_shape %arg161 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_93 = tensor.expand_shape %195 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %expanded_92 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %expanded_93 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_94 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %expanded_94 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_95 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %expanded_95 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %cst_1 : tensor<10x480x14x14xf32>, tensor<f32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %200 : tensor<f32>, tensor<10x480x14x14xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %arg61 : tensor<10x480x14x14xf32>, tensor<80x480x1x1xf32>) outs(%172 : tensor<10x80x14x14xf32>) -> tensor<10x80x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg164 : tensor<80xf32>) outs(%174 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<80xf32>
    %204 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%203 : tensor<80xf32>) outs(%174 : tensor<80xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<80xf32>
    %expanded_96 = tensor.expand_shape %arg163 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %expanded_97 = tensor.expand_shape %204 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_96 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %expanded_97 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %expanded_98 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %expanded_98 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %expanded_99 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [80, 1, 1] : tensor<80xf32> into tensor<80x1x1xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %expanded_99 : tensor<10x80x14x14xf32>, tensor<80x1x1xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %180 : tensor<10x80x14x14xf32>, tensor<10x80x14x14xf32>) outs(%171 : tensor<10x80x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x80x14x14xf32>
    %210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %arg64 : tensor<10x80x14x14xf32>, tensor<480x80x1x1xf32>) outs(%182 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %211 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg166 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<480xf32>
    %212 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%211 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<480xf32>
    %expanded_100 = tensor.expand_shape %arg165 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_101 = tensor.expand_shape %212 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_100 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %expanded_101 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_102 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %expanded_102 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_103 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %expanded_103 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %cst_1 : tensor<10x480x14x14xf32>, tensor<f32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %218 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %217 : tensor<f32>, tensor<10x480x14x14xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %padded_104 = tensor.pad %218 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x18x18xf32>
    %collapsed_105 = tensor.collapse_shape %arg67 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %219 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<10x480x18x18xf32>, tensor<480x5x5xf32>) outs(%182 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg168 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<480xf32>
    %221 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%220 : tensor<480xf32>) outs(%184 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<480xf32>
    %expanded_106 = tensor.expand_shape %arg167 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_107 = tensor.expand_shape %221 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %expanded_106 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %expanded_107 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_108 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %expanded_108 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_109 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %expanded_109 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x480x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %cst_1 : tensor<10x480x14x14xf32>, tensor<f32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %227 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %226 : tensor<f32>, tensor<10x480x14x14xf32>) outs(%181 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x480x14x14xf32>
    %228 = tensor.empty() : tensor<10x112x14x14xf32>
    %229 = linalg.fill ins(%cst : f32) outs(%228 : tensor<10x112x14x14xf32>) -> tensor<10x112x14x14xf32>
    %230 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %arg70 : tensor<10x480x14x14xf32>, tensor<112x480x1x1xf32>) outs(%229 : tensor<10x112x14x14xf32>) -> tensor<10x112x14x14xf32>
    %231 = tensor.empty() : tensor<112xf32>
    %232 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg170 : tensor<112xf32>) outs(%231 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<112xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%232 : tensor<112xf32>) outs(%231 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<112xf32>
    %expanded_110 = tensor.expand_shape %arg169 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %expanded_111 = tensor.expand_shape %233 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %expanded_110 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %expanded_111 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %expanded_112 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %expanded_112 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %expanded_113 = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %expanded_113 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %238 = tensor.empty() : tensor<10x672x14x14xf32>
    %239 = linalg.fill ins(%cst : f32) outs(%238 : tensor<10x672x14x14xf32>) -> tensor<10x672x14x14xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %arg73 : tensor<10x112x14x14xf32>, tensor<672x112x1x1xf32>) outs(%239 : tensor<10x672x14x14xf32>) -> tensor<10x672x14x14xf32>
    %241 = tensor.empty() : tensor<672xf32>
    %242 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg172 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<672xf32>
    %243 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%242 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<672xf32>
    %expanded_114 = tensor.expand_shape %arg171 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_115 = tensor.expand_shape %243 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %expanded_114 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %expanded_115 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_116 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %expanded_116 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_117 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %expanded_117 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_1 : tensor<10x672x14x14xf32>, tensor<f32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %248 : tensor<f32>, tensor<10x672x14x14xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %padded_118 = tensor.pad %249 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x18x18xf32>
    %collapsed_119 = tensor.collapse_shape %arg76 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %250 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_118, %collapsed_119 : tensor<10x672x18x18xf32>, tensor<672x5x5xf32>) outs(%239 : tensor<10x672x14x14xf32>) -> tensor<10x672x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg174 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<672xf32>
    %252 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%251 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<672xf32>
    %expanded_120 = tensor.expand_shape %arg173 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_121 = tensor.expand_shape %252 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %expanded_120 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %expanded_121 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_122 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %expanded_122 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_123 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %expanded_123 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %cst_1 : tensor<10x672x14x14xf32>, tensor<f32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %257 : tensor<f32>, tensor<10x672x14x14xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %259 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%258, %arg79 : tensor<10x672x14x14xf32>, tensor<112x672x1x1xf32>) outs(%229 : tensor<10x112x14x14xf32>) -> tensor<10x112x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg176 : tensor<112xf32>) outs(%231 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<112xf32>
    %261 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%260 : tensor<112xf32>) outs(%231 : tensor<112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<112xf32>
    %expanded_124 = tensor.expand_shape %arg175 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %expanded_125 = tensor.expand_shape %261 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %expanded_124 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %expanded_125 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %expanded_126 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %expanded_126 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %expanded_127 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [112, 1, 1] : tensor<112xf32> into tensor<112x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %expanded_127 : tensor<10x112x14x14xf32>, tensor<112x1x1xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %237 : tensor<10x112x14x14xf32>, tensor<10x112x14x14xf32>) outs(%228 : tensor<10x112x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x112x14x14xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %arg82 : tensor<10x112x14x14xf32>, tensor<672x112x1x1xf32>) outs(%239 : tensor<10x672x14x14xf32>) -> tensor<10x672x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg178 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<672xf32>
    %269 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%268 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<672xf32>
    %expanded_128 = tensor.expand_shape %arg177 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_129 = tensor.expand_shape %269 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %expanded_128 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %expanded_129 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_130 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %expanded_130 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_131 = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %expanded_131 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %cst_1 : tensor<10x672x14x14xf32>, tensor<f32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %274 : tensor<f32>, tensor<10x672x14x14xf32>) outs(%238 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x14x14xf32>
    %padded_132 = tensor.pad %275 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x18x18xf32>
    %276 = tensor.empty() : tensor<10x672x7x7xf32>
    %277 = linalg.fill ins(%cst : f32) outs(%276 : tensor<10x672x7x7xf32>) -> tensor<10x672x7x7xf32>
    %collapsed_133 = tensor.collapse_shape %arg85 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %278 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_132, %collapsed_133 : tensor<10x672x18x18xf32>, tensor<672x5x5xf32>) outs(%277 : tensor<10x672x7x7xf32>) -> tensor<10x672x7x7xf32>
    %279 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg180 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<672xf32>
    %280 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%279 : tensor<672xf32>) outs(%241 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<672xf32>
    %expanded_134 = tensor.expand_shape %arg179 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_135 = tensor.expand_shape %280 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %expanded_134 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x7x7xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %expanded_135 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x7x7xf32>
    %expanded_136 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %expanded_136 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x7x7xf32>
    %expanded_137 = tensor.expand_shape %arg87 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %expanded_137 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x672x7x7xf32>
    %285 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_1 : tensor<10x672x7x7xf32>, tensor<f32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x7x7xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %285 : tensor<f32>, tensor<10x672x7x7xf32>) outs(%276 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x672x7x7xf32>
    %287 = tensor.empty() : tensor<10x192x7x7xf32>
    %288 = linalg.fill ins(%cst : f32) outs(%287 : tensor<10x192x7x7xf32>) -> tensor<10x192x7x7xf32>
    %289 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %arg88 : tensor<10x672x7x7xf32>, tensor<192x672x1x1xf32>) outs(%288 : tensor<10x192x7x7xf32>) -> tensor<10x192x7x7xf32>
    %290 = tensor.empty() : tensor<192xf32>
    %291 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg182 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<192xf32>
    %292 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%291 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<192xf32>
    %expanded_138 = tensor.expand_shape %arg181 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_139 = tensor.expand_shape %292 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %expanded_138 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %expanded_139 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_140 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %expanded_140 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_141 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %expanded_141 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %297 = tensor.empty() : tensor<10x1152x7x7xf32>
    %298 = linalg.fill ins(%cst : f32) outs(%297 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %299 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %arg91 : tensor<10x192x7x7xf32>, tensor<1152x192x1x1xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %300 = tensor.empty() : tensor<1152xf32>
    %301 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg184 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %302 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%301 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_142 = tensor.expand_shape %arg183 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_143 = tensor.expand_shape %302 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %expanded_142 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %expanded_143 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_144 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %expanded_144 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_145 = tensor.expand_shape %arg93 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %expanded_145 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %307 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %308 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %307 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %padded_146 = tensor.pad %308 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x11x11xf32>
    %collapsed_147 = tensor.collapse_shape %arg94 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %309 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_146, %collapsed_147 : tensor<10x1152x11x11xf32>, tensor<1152x5x5xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %310 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg186 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %311 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%310 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_148 = tensor.expand_shape %arg185 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_149 = tensor.expand_shape %311 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %expanded_148 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %expanded_149 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_150 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %314 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %expanded_150 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_151 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %expanded_151 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %317 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %316 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %arg97 : tensor<10x1152x7x7xf32>, tensor<192x1152x1x1xf32>) outs(%288 : tensor<10x192x7x7xf32>) -> tensor<10x192x7x7xf32>
    %319 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg188 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<192xf32>
    %320 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%319 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<192xf32>
    %expanded_152 = tensor.expand_shape %arg187 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_153 = tensor.expand_shape %320 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %expanded_152 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %expanded_153 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_154 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %expanded_154 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_155 = tensor.expand_shape %arg99 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %expanded_155 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %296 : tensor<10x192x7x7xf32>, tensor<10x192x7x7xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %326 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%325, %arg100 : tensor<10x192x7x7xf32>, tensor<1152x192x1x1xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %327 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg190 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %328 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%327 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_156 = tensor.expand_shape %arg189 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_157 = tensor.expand_shape %328 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %expanded_156 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %expanded_157 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_158 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %expanded_158 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_159 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %expanded_159 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %334 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %333 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %padded_160 = tensor.pad %334 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x11x11xf32>
    %collapsed_161 = tensor.collapse_shape %arg103 [[0, 1], [2], [3]] : tensor<1152x1x5x5xf32> into tensor<1152x5x5xf32>
    %335 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_160, %collapsed_161 : tensor<10x1152x11x11xf32>, tensor<1152x5x5xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %336 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg192 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %337 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%336 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_162 = tensor.expand_shape %arg191 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_163 = tensor.expand_shape %337 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %expanded_162 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %339 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %expanded_163 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_164 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %expanded_164 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_165 = tensor.expand_shape %arg105 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %expanded_165 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %343 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %342 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %arg106 : tensor<10x1152x7x7xf32>, tensor<192x1152x1x1xf32>) outs(%288 : tensor<10x192x7x7xf32>) -> tensor<10x192x7x7xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg194 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<192xf32>
    %346 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%345 : tensor<192xf32>) outs(%290 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<192xf32>
    %expanded_166 = tensor.expand_shape %arg193 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_167 = tensor.expand_shape %346 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %347 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %expanded_166 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %expanded_167 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_168 = tensor.expand_shape %arg107 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %expanded_168 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %expanded_169 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %expanded_169 : tensor<10x192x7x7xf32>, tensor<192x1x1xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %325 : tensor<10x192x7x7xf32>, tensor<10x192x7x7xf32>) outs(%287 : tensor<10x192x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x192x7x7xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %arg109 : tensor<10x192x7x7xf32>, tensor<1152x192x1x1xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %353 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg196 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%353 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_170 = tensor.expand_shape %arg195 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_171 = tensor.expand_shape %354 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %expanded_170 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %expanded_171 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_172 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356, %expanded_172 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_173 = tensor.expand_shape %arg111 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %expanded_173 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %360 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %359 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %padded_174 = tensor.pad %360 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg203: index, %arg204: index, %arg205: index, %arg206: index):
      tensor.yield %cst : f32
    } : tensor<10x1152x7x7xf32> to tensor<10x1152x9x9xf32>
    %collapsed_175 = tensor.collapse_shape %arg112 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %361 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_174, %collapsed_175 : tensor<10x1152x9x9xf32>, tensor<1152x3x3xf32>) outs(%298 : tensor<10x1152x7x7xf32>) -> tensor<10x1152x7x7xf32>
    %362 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg198 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1152xf32>
    %363 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%362 : tensor<1152xf32>) outs(%300 : tensor<1152xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1152xf32>
    %expanded_176 = tensor.expand_shape %arg197 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %expanded_177 = tensor.expand_shape %363 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %expanded_176 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %365 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %expanded_177 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_178 = tensor.expand_shape %arg113 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %expanded_178 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %expanded_179 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [1152, 1, 1] : tensor<1152xf32> into tensor<1152x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %expanded_179 : tensor<10x1152x7x7xf32>, tensor<1152x1x1xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1152x7x7xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_1 : tensor<10x1152x7x7xf32>, tensor<f32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf ogt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %369 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %368 : tensor<f32>, tensor<10x1152x7x7xf32>) outs(%297 : tensor<10x1152x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.cmpf olt, %in, %in_189 : f32
      %402 = arith.select %401, %in, %in_189 : f32
      linalg.yield %402 : f32
    } -> tensor<10x1152x7x7xf32>
    %370 = tensor.empty() : tensor<10x320x7x7xf32>
    %371 = linalg.fill ins(%cst : f32) outs(%370 : tensor<10x320x7x7xf32>) -> tensor<10x320x7x7xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%369, %arg115 : tensor<10x1152x7x7xf32>, tensor<320x1152x1x1xf32>) outs(%371 : tensor<10x320x7x7xf32>) -> tensor<10x320x7x7xf32>
    %373 = tensor.empty() : tensor<320xf32>
    %374 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg200 : tensor<320xf32>) outs(%373 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<320xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%374 : tensor<320xf32>) outs(%373 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<320xf32>
    %expanded_180 = tensor.expand_shape %arg199 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %expanded_181 = tensor.expand_shape %375 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372, %expanded_180 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%370 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x320x7x7xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %expanded_181 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%370 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x320x7x7xf32>
    %expanded_182 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %expanded_182 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%370 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x320x7x7xf32>
    %expanded_183 = tensor.expand_shape %arg117 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %expanded_183 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%370 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x320x7x7xf32>
    %380 = tensor.empty() : tensor<10x1280x7x7xf32>
    %381 = linalg.fill ins(%cst : f32) outs(%380 : tensor<10x1280x7x7xf32>) -> tensor<10x1280x7x7xf32>
    %382 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%379, %arg118 : tensor<10x320x7x7xf32>, tensor<1280x320x1x1xf32>) outs(%381 : tensor<10x1280x7x7xf32>) -> tensor<10x1280x7x7xf32>
    %383 = tensor.empty() : tensor<1280xf32>
    %384 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg202 : tensor<1280xf32>) outs(%383 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.truncf %cst_2 : f64 to f32
      %402 = arith.addf %in, %401 : f32
      linalg.yield %402 : f32
    } -> tensor<1280xf32>
    %385 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%384 : tensor<1280xf32>) outs(%383 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = math.rsqrt %in : f32
      linalg.yield %401 : f32
    } -> tensor<1280xf32>
    %expanded_184 = tensor.expand_shape %arg201 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %expanded_185 = tensor.expand_shape %385 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %expanded_184 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%380 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.subf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1280x7x7xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %expanded_185 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%380 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1280x7x7xf32>
    %expanded_186 = tensor.expand_shape %arg119 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %expanded_186 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%380 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.mulf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1280x7x7xf32>
    %expanded_187 = tensor.expand_shape %arg120 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %389 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %expanded_187 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%380 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1280x7x7xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<10x1280x7x7xf32>) outs(%380 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.cmpf ugt, %in, %cst : f32
      %402 = arith.select %401, %in, %cst : f32
      linalg.yield %402 : f32
    } -> tensor<10x1280x7x7xf32>
    %391 = tensor.empty() : tensor<10x1280x1x1xf32>
    %392 = linalg.fill ins(%cst : f32) outs(%391 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %393 = tensor.empty() : tensor<7x7xf32>
    %394 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%390, %393 : tensor<10x1280x7x7xf32>, tensor<7x7xf32>) outs(%392 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<10x1280x1x1xf32>) outs(%391 : tensor<10x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %401 = arith.divf %in, %cst_3 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1280x1x1xf32>
    %collapsed_188 = tensor.collapse_shape %395 [[0], [1, 2, 3]] : tensor<10x1280x1x1xf32> into tensor<10x1280xf32>
    %396 = tensor.empty() : tensor<1280x1000xf32>
    %transposed = linalg.transpose ins(%arg121 : tensor<1000x1280xf32>) outs(%396 : tensor<1280x1000xf32>) permutation = [1, 0] 
    %397 = tensor.empty() : tensor<10x1000xf32>
    %398 = linalg.fill ins(%cst : f32) outs(%397 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %399 = linalg.matmul ins(%collapsed_188, %transposed : tensor<10x1280xf32>, tensor<1280x1000xf32>) outs(%398 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %400 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel"]} ins(%399, %arg122 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%397 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_189: f32, %out: f32):
      %401 = arith.addf %in, %in_189 : f32
      linalg.yield %401 : f32
    } -> tensor<10x1000xf32>
    return %400 : tensor<10x1000xf32>
  }
}
