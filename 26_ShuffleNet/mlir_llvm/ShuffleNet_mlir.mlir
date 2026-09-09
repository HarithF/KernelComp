#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @ShuffleNet(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<24x3x3x3xf32>, %arg2: tensor<24xf32>, %arg3: tensor<24xf32>, %arg4: tensor<60x8x1x1xf32>, %arg5: tensor<60xf32>, %arg6: tensor<60xf32>, %arg7: tensor<60x1x3x3xf32>, %arg8: tensor<60xf32>, %arg9: tensor<60xf32>, %arg10: tensor<240x20x1x1xf32>, %arg11: tensor<240xf32>, %arg12: tensor<240xf32>, %arg13: tensor<240x24x1x1xf32>, %arg14: tensor<240xf32>, %arg15: tensor<240xf32>, %arg16: tensor<60x80x1x1xf32>, %arg17: tensor<60xf32>, %arg18: tensor<60xf32>, %arg19: tensor<60x1x3x3xf32>, %arg20: tensor<60xf32>, %arg21: tensor<60xf32>, %arg22: tensor<240x20x1x1xf32>, %arg23: tensor<240xf32>, %arg24: tensor<240xf32>, %arg25: tensor<60x80x1x1xf32>, %arg26: tensor<60xf32>, %arg27: tensor<60xf32>, %arg28: tensor<60x1x3x3xf32>, %arg29: tensor<60xf32>, %arg30: tensor<60xf32>, %arg31: tensor<240x20x1x1xf32>, %arg32: tensor<240xf32>, %arg33: tensor<240xf32>, %arg34: tensor<120x80x1x1xf32>, %arg35: tensor<120xf32>, %arg36: tensor<120xf32>, %arg37: tensor<120x1x3x3xf32>, %arg38: tensor<120xf32>, %arg39: tensor<120xf32>, %arg40: tensor<480x40x1x1xf32>, %arg41: tensor<480xf32>, %arg42: tensor<480xf32>, %arg43: tensor<480x240x1x1xf32>, %arg44: tensor<480xf32>, %arg45: tensor<480xf32>, %arg46: tensor<120x160x1x1xf32>, %arg47: tensor<120xf32>, %arg48: tensor<120xf32>, %arg49: tensor<120x1x3x3xf32>, %arg50: tensor<120xf32>, %arg51: tensor<120xf32>, %arg52: tensor<480x40x1x1xf32>, %arg53: tensor<480xf32>, %arg54: tensor<480xf32>, %arg55: tensor<120x160x1x1xf32>, %arg56: tensor<120xf32>, %arg57: tensor<120xf32>, %arg58: tensor<120x1x3x3xf32>, %arg59: tensor<120xf32>, %arg60: tensor<120xf32>, %arg61: tensor<480x40x1x1xf32>, %arg62: tensor<480xf32>, %arg63: tensor<480xf32>, %arg64: tensor<120x160x1x1xf32>, %arg65: tensor<120xf32>, %arg66: tensor<120xf32>, %arg67: tensor<120x1x3x3xf32>, %arg68: tensor<120xf32>, %arg69: tensor<120xf32>, %arg70: tensor<480x40x1x1xf32>, %arg71: tensor<480xf32>, %arg72: tensor<480xf32>, %arg73: tensor<120x160x1x1xf32>, %arg74: tensor<120xf32>, %arg75: tensor<120xf32>, %arg76: tensor<120x1x3x3xf32>, %arg77: tensor<120xf32>, %arg78: tensor<120xf32>, %arg79: tensor<480x40x1x1xf32>, %arg80: tensor<480xf32>, %arg81: tensor<480xf32>, %arg82: tensor<120x160x1x1xf32>, %arg83: tensor<120xf32>, %arg84: tensor<120xf32>, %arg85: tensor<120x1x3x3xf32>, %arg86: tensor<120xf32>, %arg87: tensor<120xf32>, %arg88: tensor<480x40x1x1xf32>, %arg89: tensor<480xf32>, %arg90: tensor<480xf32>, %arg91: tensor<120x160x1x1xf32>, %arg92: tensor<120xf32>, %arg93: tensor<120xf32>, %arg94: tensor<120x1x3x3xf32>, %arg95: tensor<120xf32>, %arg96: tensor<120xf32>, %arg97: tensor<480x40x1x1xf32>, %arg98: tensor<480xf32>, %arg99: tensor<480xf32>, %arg100: tensor<240x160x1x1xf32>, %arg101: tensor<240xf32>, %arg102: tensor<240xf32>, %arg103: tensor<240x1x3x3xf32>, %arg104: tensor<240xf32>, %arg105: tensor<240xf32>, %arg106: tensor<960x80x1x1xf32>, %arg107: tensor<960xf32>, %arg108: tensor<960xf32>, %arg109: tensor<960x480x1x1xf32>, %arg110: tensor<960xf32>, %arg111: tensor<960xf32>, %arg112: tensor<240x320x1x1xf32>, %arg113: tensor<240xf32>, %arg114: tensor<240xf32>, %arg115: tensor<240x1x3x3xf32>, %arg116: tensor<240xf32>, %arg117: tensor<240xf32>, %arg118: tensor<960x80x1x1xf32>, %arg119: tensor<960xf32>, %arg120: tensor<960xf32>, %arg121: tensor<240x320x1x1xf32>, %arg122: tensor<240xf32>, %arg123: tensor<240xf32>, %arg124: tensor<240x1x3x3xf32>, %arg125: tensor<240xf32>, %arg126: tensor<240xf32>, %arg127: tensor<960x80x1x1xf32>, %arg128: tensor<960xf32>, %arg129: tensor<960xf32>, %arg130: tensor<1024x960x1x1xf32>, %arg131: tensor<1024xf32>, %arg132: tensor<1024xf32>, %arg133: tensor<1000x1024xf32>, %arg134: tensor<1000xf32>, %arg135: tensor<24xf32>, %arg136: tensor<24xf32>, %arg137: tensor<60xf32>, %arg138: tensor<60xf32>, %arg139: tensor<60xf32>, %arg140: tensor<60xf32>, %arg141: tensor<240xf32>, %arg142: tensor<240xf32>, %arg143: tensor<240xf32>, %arg144: tensor<240xf32>, %arg145: tensor<60xf32>, %arg146: tensor<60xf32>, %arg147: tensor<60xf32>, %arg148: tensor<60xf32>, %arg149: tensor<240xf32>, %arg150: tensor<240xf32>, %arg151: tensor<60xf32>, %arg152: tensor<60xf32>, %arg153: tensor<60xf32>, %arg154: tensor<60xf32>, %arg155: tensor<240xf32>, %arg156: tensor<240xf32>, %arg157: tensor<120xf32>, %arg158: tensor<120xf32>, %arg159: tensor<120xf32>, %arg160: tensor<120xf32>, %arg161: tensor<480xf32>, %arg162: tensor<480xf32>, %arg163: tensor<480xf32>, %arg164: tensor<480xf32>, %arg165: tensor<120xf32>, %arg166: tensor<120xf32>, %arg167: tensor<120xf32>, %arg168: tensor<120xf32>, %arg169: tensor<480xf32>, %arg170: tensor<480xf32>, %arg171: tensor<120xf32>, %arg172: tensor<120xf32>, %arg173: tensor<120xf32>, %arg174: tensor<120xf32>, %arg175: tensor<480xf32>, %arg176: tensor<480xf32>, %arg177: tensor<120xf32>, %arg178: tensor<120xf32>, %arg179: tensor<120xf32>, %arg180: tensor<120xf32>, %arg181: tensor<480xf32>, %arg182: tensor<480xf32>, %arg183: tensor<120xf32>, %arg184: tensor<120xf32>, %arg185: tensor<120xf32>, %arg186: tensor<120xf32>, %arg187: tensor<480xf32>, %arg188: tensor<480xf32>, %arg189: tensor<120xf32>, %arg190: tensor<120xf32>, %arg191: tensor<120xf32>, %arg192: tensor<120xf32>, %arg193: tensor<480xf32>, %arg194: tensor<480xf32>, %arg195: tensor<120xf32>, %arg196: tensor<120xf32>, %arg197: tensor<120xf32>, %arg198: tensor<120xf32>, %arg199: tensor<480xf32>, %arg200: tensor<480xf32>, %arg201: tensor<240xf32>, %arg202: tensor<240xf32>, %arg203: tensor<240xf32>, %arg204: tensor<240xf32>, %arg205: tensor<960xf32>, %arg206: tensor<960xf32>, %arg207: tensor<960xf32>, %arg208: tensor<960xf32>, %arg209: tensor<240xf32>, %arg210: tensor<240xf32>, %arg211: tensor<240xf32>, %arg212: tensor<240xf32>, %arg213: tensor<960xf32>, %arg214: tensor<960xf32>, %arg215: tensor<240xf32>, %arg216: tensor<240xf32>, %arg217: tensor<240xf32>, %arg218: tensor<240xf32>, %arg219: tensor<960xf32>, %arg220: tensor<960xf32>, %arg221: tensor<1024xf32>, %arg222: tensor<1024xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e-05 : f64
    %cst_2 = arith.constant 3.136000e+03 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x24x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x24x112x112xf32>) -> tensor<10x24x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<24x3x3x3xf32>) outs(%1 : tensor<10x24x112x112xf32>) -> tensor<10x24x112x112xf32>
    %3 = tensor.empty() : tensor<24xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg136 : tensor<24xf32>) outs(%3 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<24xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<24xf32>) outs(%3 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<24xf32>
    %expanded = tensor.expand_shape %arg135 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_3 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x24x112x112xf32>, tensor<24x1x1xf32>) outs(%0 : tensor<10x24x112x112xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x24x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_3 : tensor<10x24x112x112xf32>, tensor<24x1x1xf32>) outs(%0 : tensor<10x24x112x112xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x24x112x112xf32>
    %expanded_4 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_4 : tensor<10x24x112x112xf32>, tensor<24x1x1xf32>) outs(%0 : tensor<10x24x112x112xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x24x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_5 : tensor<10x24x112x112xf32>, tensor<24x1x1xf32>) outs(%0 : tensor<10x24x112x112xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x24x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x24x112x112xf32>) outs(%0 : tensor<10x24x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x24x112x112xf32>
    %padded_6 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x24x112x112xf32> to tensor<10x24x114x114xf32>
    %11 = tensor.empty() : tensor<10x24x56x56xf32>
    %12 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_6, %13 : tensor<10x24x114x114xf32>, tensor<3x3xf32>) outs(%12 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %15 = tensor.empty() : tensor<10x60x56x56xf32>
    %expanded_7 = tensor.expand_shape %14 [[0], [1, 2], [3], [4]] output_shape [10, 3, 8, 56, 56] : tensor<10x24x56x56xf32> into tensor<10x3x8x56x56xf32>
    %expanded_8 = tensor.expand_shape %arg4 [[0, 1], [2], [3], [4]] output_shape [3, 20, 8, 1, 1] : tensor<60x8x1x1xf32> into tensor<3x20x8x1x1xf32>
    %expanded_9 = tensor.expand_shape %15 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %16 = linalg.fill ins(%cst : f32) outs(%expanded_9 : tensor<10x3x20x56x56xf32>) -> tensor<10x3x20x56x56xf32>
    %17 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_7, %expanded_8 : tensor<10x3x8x56x56xf32>, tensor<3x20x8x1x1xf32>) outs(%16 : tensor<10x3x20x56x56xf32>) -> tensor<10x3x20x56x56xf32>
    %collapsed = tensor.collapse_shape %17 [[0], [1, 2], [3], [4]] : tensor<10x3x20x56x56xf32> into tensor<10x60x56x56xf32>
    %18 = tensor.empty() : tensor<60xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg138 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%19 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_10 = tensor.expand_shape %arg137 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_11 = tensor.expand_shape %20 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed, %expanded_10 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %expanded_11 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_12 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %expanded_12 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_13 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_13 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<10x60x56x56xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x60x56x56xf32>
    %padded_14 = tensor.pad %25 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %26 = linalg.fill ins(%cst : f32) outs(%15 : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %collapsed_15 = tensor.collapse_shape %arg7 [[0, 1], [2], [3]] : tensor<60x1x3x3xf32> into tensor<60x3x3xf32>
    %27 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_14, %collapsed_15 : tensor<10x60x58x58xf32>, tensor<60x3x3xf32>) outs(%26 : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg140 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %29 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%28 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_16 = tensor.expand_shape %arg139 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_17 = tensor.expand_shape %29 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_16 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %expanded_17 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_18 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_18 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_19 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %33 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_19 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_20 = tensor.expand_shape %33 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %34 = tensor.empty() : tensor<10x20x3x56x56xf32>
    %transposed = linalg.transpose ins(%expanded_20 : tensor<10x3x20x56x56xf32>) outs(%34 : tensor<10x20x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_21 = tensor.collapse_shape %transposed [[0], [1, 2], [3], [4]] : tensor<10x20x3x56x56xf32> into tensor<10x60x56x56xf32>
    %35 = tensor.empty() : tensor<10x240x56x56xf32>
    %expanded_22 = tensor.expand_shape %collapsed_21 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %expanded_23 = tensor.expand_shape %arg10 [[0, 1], [2], [3], [4]] output_shape [3, 80, 20, 1, 1] : tensor<240x20x1x1xf32> into tensor<3x80x20x1x1xf32>
    %expanded_24 = tensor.expand_shape %35 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %36 = linalg.fill ins(%cst : f32) outs(%expanded_24 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %37 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_22, %expanded_23 : tensor<10x3x20x56x56xf32>, tensor<3x80x20x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_25 = tensor.collapse_shape %37 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %38 = tensor.empty() : tensor<240xf32>
    %39 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg142 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %40 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%39 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_26 = tensor.expand_shape %arg141 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_27 = tensor.expand_shape %40 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_25, %expanded_26 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %expanded_27 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %expanded_28 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_29 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %expanded_29 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %46 = linalg.fill ins(%cst : f32) outs(%35 : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg13 : tensor<10x24x56x56xf32>, tensor<240x24x1x1xf32>) outs(%46 : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg144 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%48 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_30 = tensor.expand_shape %arg143 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_31 = tensor.expand_shape %49 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_30 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_31 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_32 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %expanded_32 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_33 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %expanded_33 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %53 : tensor<10x240x56x56xf32>, tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_34 = tensor.expand_shape %54 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_35 = tensor.expand_shape %arg16 [[0, 1], [2], [3], [4]] output_shape [3, 20, 80, 1, 1] : tensor<60x80x1x1xf32> into tensor<3x20x80x1x1xf32>
    %55 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_34, %expanded_35 : tensor<10x3x80x56x56xf32>, tensor<3x20x80x1x1xf32>) outs(%16 : tensor<10x3x20x56x56xf32>) -> tensor<10x3x20x56x56xf32>
    %collapsed_36 = tensor.collapse_shape %55 [[0], [1, 2], [3], [4]] : tensor<10x3x20x56x56xf32> into tensor<10x60x56x56xf32>
    %56 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg146 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%56 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_37 = tensor.expand_shape %arg145 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_38 = tensor.expand_shape %57 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_36, %expanded_37 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %expanded_38 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_39 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %expanded_39 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_40 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %expanded_40 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<10x60x56x56xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x60x56x56xf32>
    %padded_41 = tensor.pad %62 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %collapsed_42 = tensor.collapse_shape %arg19 [[0, 1], [2], [3]] : tensor<60x1x3x3xf32> into tensor<60x3x3xf32>
    %63 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %collapsed_42 : tensor<10x60x58x58xf32>, tensor<60x3x3xf32>) outs(%26 : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg148 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%64 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_43 = tensor.expand_shape %arg147 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_44 = tensor.expand_shape %65 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %expanded_43 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %expanded_44 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_45 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %expanded_45 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_46 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %expanded_46 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_47 = tensor.expand_shape %69 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %transposed_48 = linalg.transpose ins(%expanded_47 : tensor<10x3x20x56x56xf32>) outs(%34 : tensor<10x20x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_49 = tensor.collapse_shape %transposed_48 [[0], [1, 2], [3], [4]] : tensor<10x20x3x56x56xf32> into tensor<10x60x56x56xf32>
    %expanded_50 = tensor.expand_shape %collapsed_49 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %expanded_51 = tensor.expand_shape %arg22 [[0, 1], [2], [3], [4]] output_shape [3, 80, 20, 1, 1] : tensor<240x20x1x1xf32> into tensor<3x80x20x1x1xf32>
    %70 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_50, %expanded_51 : tensor<10x3x20x56x56xf32>, tensor<3x80x20x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_52 = tensor.collapse_shape %70 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg150 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %72 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%71 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_53 = tensor.expand_shape %arg149 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_54 = tensor.expand_shape %72 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_52, %expanded_53 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %expanded_54 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_55 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %expanded_55 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_56 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %expanded_56 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %78 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %54 : tensor<10x240x56x56xf32>, tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_57 = tensor.expand_shape %78 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_58 = tensor.expand_shape %arg25 [[0, 1], [2], [3], [4]] output_shape [3, 20, 80, 1, 1] : tensor<60x80x1x1xf32> into tensor<3x20x80x1x1xf32>
    %79 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_57, %expanded_58 : tensor<10x3x80x56x56xf32>, tensor<3x20x80x1x1xf32>) outs(%16 : tensor<10x3x20x56x56xf32>) -> tensor<10x3x20x56x56xf32>
    %collapsed_59 = tensor.collapse_shape %79 [[0], [1, 2], [3], [4]] : tensor<10x3x20x56x56xf32> into tensor<10x60x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg152 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %81 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%80 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_60 = tensor.expand_shape %arg151 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_61 = tensor.expand_shape %81 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_59, %expanded_60 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %expanded_61 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_62 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %expanded_62 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_63 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %expanded_63 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85 : tensor<10x60x56x56xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x60x56x56xf32>
    %padded_64 = tensor.pad %86 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x60x56x56xf32> to tensor<10x60x58x58xf32>
    %collapsed_65 = tensor.collapse_shape %arg28 [[0, 1], [2], [3]] : tensor<60x1x3x3xf32> into tensor<60x3x3xf32>
    %87 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_64, %collapsed_65 : tensor<10x60x58x58xf32>, tensor<60x3x3xf32>) outs(%26 : tensor<10x60x56x56xf32>) -> tensor<10x60x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg154 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<60xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%88 : tensor<60xf32>) outs(%18 : tensor<60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<60xf32>
    %expanded_66 = tensor.expand_shape %arg153 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %expanded_67 = tensor.expand_shape %89 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %expanded_66 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %expanded_67 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_68 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %expanded_68 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_69 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [60, 1, 1] : tensor<60xf32> into tensor<60x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_69 : tensor<10x60x56x56xf32>, tensor<60x1x1xf32>) outs(%15 : tensor<10x60x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x60x56x56xf32>
    %expanded_70 = tensor.expand_shape %93 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %transposed_71 = linalg.transpose ins(%expanded_70 : tensor<10x3x20x56x56xf32>) outs(%34 : tensor<10x20x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_72 = tensor.collapse_shape %transposed_71 [[0], [1, 2], [3], [4]] : tensor<10x20x3x56x56xf32> into tensor<10x60x56x56xf32>
    %expanded_73 = tensor.expand_shape %collapsed_72 [[0], [1, 2], [3], [4]] output_shape [10, 3, 20, 56, 56] : tensor<10x60x56x56xf32> into tensor<10x3x20x56x56xf32>
    %expanded_74 = tensor.expand_shape %arg31 [[0, 1], [2], [3], [4]] output_shape [3, 80, 20, 1, 1] : tensor<240x20x1x1xf32> into tensor<3x80x20x1x1xf32>
    %94 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_73, %expanded_74 : tensor<10x3x20x56x56xf32>, tensor<3x80x20x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_75 = tensor.collapse_shape %94 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %95 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg156 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %96 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%95 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_76 = tensor.expand_shape %arg155 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_77 = tensor.expand_shape %96 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_75, %expanded_76 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %expanded_77 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_78 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %expanded_78 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_79 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %expanded_79 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %102 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %78 : tensor<10x240x56x56xf32>, tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %103 = tensor.empty() : tensor<10x120x56x56xf32>
    %expanded_80 = tensor.expand_shape %102 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_81 = tensor.expand_shape %arg34 [[0, 1], [2], [3], [4]] output_shape [3, 40, 80, 1, 1] : tensor<120x80x1x1xf32> into tensor<3x40x80x1x1xf32>
    %expanded_82 = tensor.expand_shape %103 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %104 = linalg.fill ins(%cst : f32) outs(%expanded_82 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %105 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_80, %expanded_81 : tensor<10x3x80x56x56xf32>, tensor<3x40x80x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_83 = tensor.collapse_shape %105 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %106 = tensor.empty() : tensor<120xf32>
    %107 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg158 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%107 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_84 = tensor.expand_shape %arg157 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_85 = tensor.expand_shape %108 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_83, %expanded_84 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %expanded_85 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_86 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %expanded_86 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_87 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %expanded_87 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_88 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %114 = linalg.fill ins(%cst : f32) outs(%103 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %collapsed_89 = tensor.collapse_shape %arg37 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %115 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_88, %collapsed_89 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg160 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %117 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%116 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_90 = tensor.expand_shape %arg159 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_91 = tensor.expand_shape %117 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %expanded_90 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %expanded_91 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_92 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %expanded_92 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_93 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %expanded_93 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_94 = tensor.expand_shape %121 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %122 = tensor.empty() : tensor<10x40x3x56x56xf32>
    %transposed_95 = linalg.transpose ins(%expanded_94 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_96 = tensor.collapse_shape %transposed_95 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %123 = tensor.empty() : tensor<10x480x56x56xf32>
    %expanded_97 = tensor.expand_shape %collapsed_96 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_98 = tensor.expand_shape %arg40 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %expanded_99 = tensor.expand_shape %123 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %124 = linalg.fill ins(%cst : f32) outs(%expanded_99 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %125 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_97, %expanded_98 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_100 = tensor.collapse_shape %125 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %126 = tensor.empty() : tensor<480xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg162 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%127 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_101 = tensor.expand_shape %arg161 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_102 = tensor.expand_shape %128 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_100, %expanded_101 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_102 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_103 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %expanded_103 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_104 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %expanded_104 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %134 = linalg.fill ins(%cst : f32) outs(%123 : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %arg43 : tensor<10x240x56x56xf32>, tensor<480x240x1x1xf32>) outs(%134 : tensor<10x480x56x56xf32>) -> tensor<10x480x56x56xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg164 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %137 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%136 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_105 = tensor.expand_shape %arg163 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_106 = tensor.expand_shape %137 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %expanded_105 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %expanded_106 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_107 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %expanded_107 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_108 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %expanded_108 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %141 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_109 = tensor.expand_shape %142 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_110 = tensor.expand_shape %arg46 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %143 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_109, %expanded_110 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_111 = tensor.collapse_shape %143 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %144 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg166 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %145 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%144 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_112 = tensor.expand_shape %arg165 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_113 = tensor.expand_shape %145 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_111, %expanded_112 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_113 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_114 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %expanded_114 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_115 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %expanded_115 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %150 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_116 = tensor.pad %150 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_117 = tensor.collapse_shape %arg49 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %151 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_116, %collapsed_117 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %152 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg168 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %153 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%152 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_118 = tensor.expand_shape %arg167 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_119 = tensor.expand_shape %153 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %expanded_118 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_119 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_120 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %expanded_120 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_121 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %expanded_121 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_122 = tensor.expand_shape %157 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_123 = linalg.transpose ins(%expanded_122 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_124 = tensor.collapse_shape %transposed_123 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_125 = tensor.expand_shape %collapsed_124 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_126 = tensor.expand_shape %arg52 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %158 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_125, %expanded_126 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_127 = tensor.collapse_shape %158 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %159 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg170 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %160 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%159 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_128 = tensor.expand_shape %arg169 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_129 = tensor.expand_shape %160 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_127, %expanded_128 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_129 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_130 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_130 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_131 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %expanded_131 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %142 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_132 = tensor.expand_shape %166 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_133 = tensor.expand_shape %arg55 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %167 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_132, %expanded_133 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_134 = tensor.collapse_shape %167 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg172 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %169 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%168 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_135 = tensor.expand_shape %arg171 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_136 = tensor.expand_shape %169 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_134, %expanded_135 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_136 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_137 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %expanded_137 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_138 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %expanded_138 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %174 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_139 = tensor.pad %174 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_140 = tensor.collapse_shape %arg58 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %175 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %collapsed_140 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg174 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %177 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%176 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_141 = tensor.expand_shape %arg173 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_142 = tensor.expand_shape %177 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %expanded_141 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_142 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_143 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %expanded_143 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_144 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %expanded_144 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_145 = tensor.expand_shape %181 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_146 = linalg.transpose ins(%expanded_145 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_147 = tensor.collapse_shape %transposed_146 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_148 = tensor.expand_shape %collapsed_147 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_149 = tensor.expand_shape %arg61 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %182 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_148, %expanded_149 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_150 = tensor.collapse_shape %182 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %183 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg176 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%183 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_151 = tensor.expand_shape %arg175 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_152 = tensor.expand_shape %184 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_150, %expanded_151 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %expanded_152 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_153 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %expanded_153 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_154 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %expanded_154 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %166 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_155 = tensor.expand_shape %190 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_156 = tensor.expand_shape %arg64 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %191 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_155, %expanded_156 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_157 = tensor.collapse_shape %191 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg178 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %193 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%192 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_158 = tensor.expand_shape %arg177 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_159 = tensor.expand_shape %193 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_157, %expanded_158 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %expanded_159 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_160 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %expanded_160 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_161 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %expanded_161 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_162 = tensor.pad %198 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_163 = tensor.collapse_shape %arg67 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %199 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_162, %collapsed_163 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %200 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg180 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%200 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_164 = tensor.expand_shape %arg179 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_165 = tensor.expand_shape %201 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %expanded_164 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_165 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_166 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %expanded_166 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_167 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %expanded_167 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_168 = tensor.expand_shape %205 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_169 = linalg.transpose ins(%expanded_168 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_170 = tensor.collapse_shape %transposed_169 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_171 = tensor.expand_shape %collapsed_170 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_172 = tensor.expand_shape %arg70 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %206 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_171, %expanded_172 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_173 = tensor.collapse_shape %206 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %207 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg182 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%207 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_174 = tensor.expand_shape %arg181 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_175 = tensor.expand_shape %208 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_173, %expanded_174 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209, %expanded_175 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_176 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_176 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_177 = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %expanded_177 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %190 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_178 = tensor.expand_shape %214 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_179 = tensor.expand_shape %arg73 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %215 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_178, %expanded_179 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_180 = tensor.collapse_shape %215 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %216 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg184 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%216 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_181 = tensor.expand_shape %arg183 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_182 = tensor.expand_shape %217 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_180, %expanded_181 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %219 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %expanded_182 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_183 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %expanded_183 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_184 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %expanded_184 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_185 = tensor.pad %222 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_186 = tensor.collapse_shape %arg76 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %223 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_185, %collapsed_186 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %224 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg186 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %225 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%224 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_187 = tensor.expand_shape %arg185 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_188 = tensor.expand_shape %225 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %expanded_187 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %227 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %expanded_188 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_189 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %expanded_189 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_190 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %expanded_190 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_191 = tensor.expand_shape %229 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_192 = linalg.transpose ins(%expanded_191 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_193 = tensor.collapse_shape %transposed_192 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_194 = tensor.expand_shape %collapsed_193 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_195 = tensor.expand_shape %arg79 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %230 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_194, %expanded_195 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_196 = tensor.collapse_shape %230 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %231 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg188 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %232 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%231 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_197 = tensor.expand_shape %arg187 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_198 = tensor.expand_shape %232 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_196, %expanded_197 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %expanded_198 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_199 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %expanded_199 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_200 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %expanded_200 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %238 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %214 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_201 = tensor.expand_shape %238 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_202 = tensor.expand_shape %arg82 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %239 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_201, %expanded_202 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_203 = tensor.collapse_shape %239 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg190 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%240 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_204 = tensor.expand_shape %arg189 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_205 = tensor.expand_shape %241 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_203, %expanded_204 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %expanded_205 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_206 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %expanded_206 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_207 = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %expanded_207 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_208 = tensor.pad %246 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_209 = tensor.collapse_shape %arg85 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %247 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_208, %collapsed_209 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %248 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg192 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %249 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%248 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_210 = tensor.expand_shape %arg191 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_211 = tensor.expand_shape %249 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %250 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %expanded_210 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %expanded_211 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_212 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %expanded_212 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_213 = tensor.expand_shape %arg87 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %expanded_213 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_214 = tensor.expand_shape %253 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_215 = linalg.transpose ins(%expanded_214 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_216 = tensor.collapse_shape %transposed_215 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_217 = tensor.expand_shape %collapsed_216 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_218 = tensor.expand_shape %arg88 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %254 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_217, %expanded_218 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_219 = tensor.collapse_shape %254 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %255 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg194 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %256 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%255 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_220 = tensor.expand_shape %arg193 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_221 = tensor.expand_shape %256 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_219, %expanded_220 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %258 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %expanded_221 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_222 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %expanded_222 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_223 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %expanded_223 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %238 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_224 = tensor.expand_shape %262 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_225 = tensor.expand_shape %arg91 [[0, 1], [2], [3], [4]] output_shape [3, 40, 160, 1, 1] : tensor<120x160x1x1xf32> into tensor<3x40x160x1x1xf32>
    %263 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_224, %expanded_225 : tensor<10x3x160x56x56xf32>, tensor<3x40x160x1x1xf32>) outs(%104 : tensor<10x3x40x56x56xf32>) -> tensor<10x3x40x56x56xf32>
    %collapsed_226 = tensor.collapse_shape %263 [[0], [1, 2], [3], [4]] : tensor<10x3x40x56x56xf32> into tensor<10x120x56x56xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg196 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %265 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%264 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_227 = tensor.expand_shape %arg195 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_228 = tensor.expand_shape %265 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_226, %expanded_227 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %267 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %expanded_228 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_229 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %expanded_229 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_230 = tensor.expand_shape %arg93 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %expanded_230 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<10x120x56x56xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x120x56x56xf32>
    %padded_231 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x120x56x56xf32> to tensor<10x120x58x58xf32>
    %collapsed_232 = tensor.collapse_shape %arg94 [[0, 1], [2], [3]] : tensor<120x1x3x3xf32> into tensor<120x3x3xf32>
    %271 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_231, %collapsed_232 : tensor<10x120x58x58xf32>, tensor<120x3x3xf32>) outs(%114 : tensor<10x120x56x56xf32>) -> tensor<10x120x56x56xf32>
    %272 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg198 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<120xf32>
    %273 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%272 : tensor<120xf32>) outs(%106 : tensor<120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<120xf32>
    %expanded_233 = tensor.expand_shape %arg197 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %expanded_234 = tensor.expand_shape %273 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %expanded_233 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %275 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %expanded_234 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_235 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %expanded_235 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_236 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [120, 1, 1] : tensor<120xf32> into tensor<120x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %expanded_236 : tensor<10x120x56x56xf32>, tensor<120x1x1xf32>) outs(%103 : tensor<10x120x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x120x56x56xf32>
    %expanded_237 = tensor.expand_shape %277 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %transposed_238 = linalg.transpose ins(%expanded_237 : tensor<10x3x40x56x56xf32>) outs(%122 : tensor<10x40x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_239 = tensor.collapse_shape %transposed_238 [[0], [1, 2], [3], [4]] : tensor<10x40x3x56x56xf32> into tensor<10x120x56x56xf32>
    %expanded_240 = tensor.expand_shape %collapsed_239 [[0], [1, 2], [3], [4]] output_shape [10, 3, 40, 56, 56] : tensor<10x120x56x56xf32> into tensor<10x3x40x56x56xf32>
    %expanded_241 = tensor.expand_shape %arg97 [[0, 1], [2], [3], [4]] output_shape [3, 160, 40, 1, 1] : tensor<480x40x1x1xf32> into tensor<3x160x40x1x1xf32>
    %278 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_240, %expanded_241 : tensor<10x3x40x56x56xf32>, tensor<3x160x40x1x1xf32>) outs(%124 : tensor<10x3x160x56x56xf32>) -> tensor<10x3x160x56x56xf32>
    %collapsed_242 = tensor.collapse_shape %278 [[0], [1, 2], [3], [4]] : tensor<10x3x160x56x56xf32> into tensor<10x480x56x56xf32>
    %279 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg200 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<480xf32>
    %280 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%279 : tensor<480xf32>) outs(%126 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<480xf32>
    %expanded_243 = tensor.expand_shape %arg199 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_244 = tensor.expand_shape %280 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_242, %expanded_243 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %expanded_244 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_245 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %expanded_245 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_246 = tensor.expand_shape %arg99 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %expanded_246 : tensor<10x480x56x56xf32>, tensor<480x1x1xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %285 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x480x56x56xf32>
    %286 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %262 : tensor<10x480x56x56xf32>, tensor<10x480x56x56xf32>) outs(%123 : tensor<10x480x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x480x56x56xf32>
    %expanded_247 = tensor.expand_shape %286 [[0], [1, 2], [3], [4]] output_shape [10, 3, 160, 56, 56] : tensor<10x480x56x56xf32> into tensor<10x3x160x56x56xf32>
    %expanded_248 = tensor.expand_shape %arg100 [[0, 1], [2], [3], [4]] output_shape [3, 80, 160, 1, 1] : tensor<240x160x1x1xf32> into tensor<3x80x160x1x1xf32>
    %287 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_247, %expanded_248 : tensor<10x3x160x56x56xf32>, tensor<3x80x160x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_249 = tensor.collapse_shape %287 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %288 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg202 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %289 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%288 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_250 = tensor.expand_shape %arg201 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_251 = tensor.expand_shape %289 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_249, %expanded_250 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %expanded_251 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_252 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %expanded_252 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_253 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %expanded_253 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %padded_254 = tensor.pad %294 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %collapsed_255 = tensor.collapse_shape %arg103 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %295 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_254, %collapsed_255 : tensor<10x240x58x58xf32>, tensor<240x3x3xf32>) outs(%46 : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %296 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg204 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %297 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%296 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_256 = tensor.expand_shape %arg203 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_257 = tensor.expand_shape %297 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %expanded_256 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %expanded_257 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_258 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %expanded_258 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_259 = tensor.expand_shape %arg105 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %expanded_259 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_260 = tensor.expand_shape %301 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %302 = tensor.empty() : tensor<10x80x3x56x56xf32>
    %transposed_261 = linalg.transpose ins(%expanded_260 : tensor<10x3x80x56x56xf32>) outs(%302 : tensor<10x80x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_262 = tensor.collapse_shape %transposed_261 [[0], [1, 2], [3], [4]] : tensor<10x80x3x56x56xf32> into tensor<10x240x56x56xf32>
    %303 = tensor.empty() : tensor<10x960x56x56xf32>
    %expanded_263 = tensor.expand_shape %collapsed_262 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_264 = tensor.expand_shape %arg106 [[0, 1], [2], [3], [4]] output_shape [3, 320, 80, 1, 1] : tensor<960x80x1x1xf32> into tensor<3x320x80x1x1xf32>
    %expanded_265 = tensor.expand_shape %303 [[0], [1, 2], [3], [4]] output_shape [10, 3, 320, 56, 56] : tensor<10x960x56x56xf32> into tensor<10x3x320x56x56xf32>
    %304 = linalg.fill ins(%cst : f32) outs(%expanded_265 : tensor<10x3x320x56x56xf32>) -> tensor<10x3x320x56x56xf32>
    %305 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_263, %expanded_264 : tensor<10x3x80x56x56xf32>, tensor<3x320x80x1x1xf32>) outs(%304 : tensor<10x3x320x56x56xf32>) -> tensor<10x3x320x56x56xf32>
    %collapsed_266 = tensor.collapse_shape %305 [[0], [1, 2], [3], [4]] : tensor<10x3x320x56x56xf32> into tensor<10x960x56x56xf32>
    %306 = tensor.empty() : tensor<960xf32>
    %307 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg206 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<960xf32>
    %308 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%307 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<960xf32>
    %expanded_267 = tensor.expand_shape %arg205 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_268 = tensor.expand_shape %308 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %309 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_266, %expanded_267 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %310 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %expanded_268 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_269 = tensor.expand_shape %arg107 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %expanded_269 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_270 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %expanded_270 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x960x56x56xf32>
    %314 = linalg.fill ins(%cst : f32) outs(%303 : tensor<10x960x56x56xf32>) -> tensor<10x960x56x56xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %arg109 : tensor<10x480x56x56xf32>, tensor<960x480x1x1xf32>) outs(%314 : tensor<10x960x56x56xf32>) -> tensor<10x960x56x56xf32>
    %316 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg208 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<960xf32>
    %317 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%316 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<960xf32>
    %expanded_271 = tensor.expand_shape %arg207 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_272 = tensor.expand_shape %317 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %expanded_271 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %expanded_272 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_273 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %expanded_273 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_274 = tensor.expand_shape %arg111 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %expanded_274 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %321 : tensor<10x960x56x56xf32>, tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_275 = tensor.expand_shape %322 [[0], [1, 2], [3], [4]] output_shape [10, 3, 320, 56, 56] : tensor<10x960x56x56xf32> into tensor<10x3x320x56x56xf32>
    %expanded_276 = tensor.expand_shape %arg112 [[0, 1], [2], [3], [4]] output_shape [3, 80, 320, 1, 1] : tensor<240x320x1x1xf32> into tensor<3x80x320x1x1xf32>
    %323 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_275, %expanded_276 : tensor<10x3x320x56x56xf32>, tensor<3x80x320x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_277 = tensor.collapse_shape %323 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg210 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %325 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%324 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_278 = tensor.expand_shape %arg209 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_279 = tensor.expand_shape %325 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_277, %expanded_278 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %expanded_279 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_280 = tensor.expand_shape %arg113 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %expanded_280 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_281 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %expanded_281 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %padded_282 = tensor.pad %330 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %collapsed_283 = tensor.collapse_shape %arg115 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %331 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_282, %collapsed_283 : tensor<10x240x58x58xf32>, tensor<240x3x3xf32>) outs(%46 : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %332 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg212 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %333 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%332 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_284 = tensor.expand_shape %arg211 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_285 = tensor.expand_shape %333 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %expanded_284 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %335 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %expanded_285 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_286 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %expanded_286 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_287 = tensor.expand_shape %arg117 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %337 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %expanded_287 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_288 = tensor.expand_shape %337 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %transposed_289 = linalg.transpose ins(%expanded_288 : tensor<10x3x80x56x56xf32>) outs(%302 : tensor<10x80x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_290 = tensor.collapse_shape %transposed_289 [[0], [1, 2], [3], [4]] : tensor<10x80x3x56x56xf32> into tensor<10x240x56x56xf32>
    %expanded_291 = tensor.expand_shape %collapsed_290 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_292 = tensor.expand_shape %arg118 [[0, 1], [2], [3], [4]] output_shape [3, 320, 80, 1, 1] : tensor<960x80x1x1xf32> into tensor<3x320x80x1x1xf32>
    %338 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_291, %expanded_292 : tensor<10x3x80x56x56xf32>, tensor<3x320x80x1x1xf32>) outs(%304 : tensor<10x3x320x56x56xf32>) -> tensor<10x3x320x56x56xf32>
    %collapsed_293 = tensor.collapse_shape %338 [[0], [1, 2], [3], [4]] : tensor<10x3x320x56x56xf32> into tensor<10x960x56x56xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg214 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<960xf32>
    %340 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%339 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<960xf32>
    %expanded_294 = tensor.expand_shape %arg213 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_295 = tensor.expand_shape %340 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_293, %expanded_294 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %expanded_295 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_296 = tensor.expand_shape %arg119 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %expanded_296 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_297 = tensor.expand_shape %arg120 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %expanded_297 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %345 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x960x56x56xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345, %322 : tensor<10x960x56x56xf32>, tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_298 = tensor.expand_shape %346 [[0], [1, 2], [3], [4]] output_shape [10, 3, 320, 56, 56] : tensor<10x960x56x56xf32> into tensor<10x3x320x56x56xf32>
    %expanded_299 = tensor.expand_shape %arg121 [[0, 1], [2], [3], [4]] output_shape [3, 80, 320, 1, 1] : tensor<240x320x1x1xf32> into tensor<3x80x320x1x1xf32>
    %347 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_298, %expanded_299 : tensor<10x3x320x56x56xf32>, tensor<3x80x320x1x1xf32>) outs(%36 : tensor<10x3x80x56x56xf32>) -> tensor<10x3x80x56x56xf32>
    %collapsed_300 = tensor.collapse_shape %347 [[0], [1, 2], [3], [4]] : tensor<10x3x80x56x56xf32> into tensor<10x240x56x56xf32>
    %348 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg216 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %349 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%348 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_301 = tensor.expand_shape %arg215 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_302 = tensor.expand_shape %349 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_300, %expanded_301 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %expanded_302 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_303 = tensor.expand_shape %arg122 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %expanded_303 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_304 = tensor.expand_shape %arg123 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %expanded_304 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %354 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<10x240x56x56xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x240x56x56xf32>
    %padded_305 = tensor.pad %354 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg223: index, %arg224: index, %arg225: index, %arg226: index):
      tensor.yield %cst : f32
    } : tensor<10x240x56x56xf32> to tensor<10x240x58x58xf32>
    %collapsed_306 = tensor.collapse_shape %arg124 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %355 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_305, %collapsed_306 : tensor<10x240x58x58xf32>, tensor<240x3x3xf32>) outs(%46 : tensor<10x240x56x56xf32>) -> tensor<10x240x56x56xf32>
    %356 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg218 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<240xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%356 : tensor<240xf32>) outs(%38 : tensor<240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<240xf32>
    %expanded_307 = tensor.expand_shape %arg217 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %expanded_308 = tensor.expand_shape %357 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %expanded_307 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %expanded_308 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_309 = tensor.expand_shape %arg125 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %expanded_309 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_310 = tensor.expand_shape %arg126 [[0, 1, 2]] output_shape [240, 1, 1] : tensor<240xf32> into tensor<240x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %expanded_310 : tensor<10x240x56x56xf32>, tensor<240x1x1xf32>) outs(%35 : tensor<10x240x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x240x56x56xf32>
    %expanded_311 = tensor.expand_shape %361 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %transposed_312 = linalg.transpose ins(%expanded_311 : tensor<10x3x80x56x56xf32>) outs(%302 : tensor<10x80x3x56x56xf32>) permutation = [0, 2, 1, 3, 4] 
    %collapsed_313 = tensor.collapse_shape %transposed_312 [[0], [1, 2], [3], [4]] : tensor<10x80x3x56x56xf32> into tensor<10x240x56x56xf32>
    %expanded_314 = tensor.expand_shape %collapsed_313 [[0], [1, 2], [3], [4]] output_shape [10, 3, 80, 56, 56] : tensor<10x240x56x56xf32> into tensor<10x3x80x56x56xf32>
    %expanded_315 = tensor.expand_shape %arg127 [[0, 1], [2], [3], [4]] output_shape [3, 320, 80, 1, 1] : tensor<960x80x1x1xf32> into tensor<3x320x80x1x1xf32>
    %362 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_314, %expanded_315 : tensor<10x3x80x56x56xf32>, tensor<3x320x80x1x1xf32>) outs(%304 : tensor<10x3x320x56x56xf32>) -> tensor<10x3x320x56x56xf32>
    %collapsed_316 = tensor.collapse_shape %362 [[0], [1, 2], [3], [4]] : tensor<10x3x320x56x56xf32> into tensor<10x960x56x56xf32>
    %363 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg220 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<960xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%363 : tensor<960xf32>) outs(%306 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<960xf32>
    %expanded_317 = tensor.expand_shape %arg219 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_318 = tensor.expand_shape %364 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %365 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%collapsed_316, %expanded_317 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %366 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %expanded_318 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_319 = tensor.expand_shape %arg128 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %expanded_319 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %expanded_320 = tensor.expand_shape %arg129 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %expanded_320 : tensor<10x960x56x56xf32>, tensor<960x1x1xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x960x56x56xf32>
    %370 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %346 : tensor<10x960x56x56xf32>, tensor<10x960x56x56xf32>) outs(%303 : tensor<10x960x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x960x56x56xf32>
    %371 = tensor.empty() : tensor<10x1024x56x56xf32>
    %372 = linalg.fill ins(%cst : f32) outs(%371 : tensor<10x1024x56x56xf32>) -> tensor<10x1024x56x56xf32>
    %373 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %arg130 : tensor<10x960x56x56xf32>, tensor<1024x960x1x1xf32>) outs(%372 : tensor<10x1024x56x56xf32>) -> tensor<10x1024x56x56xf32>
    %374 = tensor.empty() : tensor<1024xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg222 : tensor<1024xf32>) outs(%374 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.truncf %cst_1 : f64 to f32
      %393 = arith.addf %in, %392 : f32
      linalg.yield %393 : f32
    } -> tensor<1024xf32>
    %376 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%375 : tensor<1024xf32>) outs(%374 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = math.rsqrt %in : f32
      linalg.yield %392 : f32
    } -> tensor<1024xf32>
    %expanded_321 = tensor.expand_shape %arg221 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_322 = tensor.expand_shape %376 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %expanded_321 : tensor<10x1024x56x56xf32>, tensor<1024x1x1xf32>) outs(%371 : tensor<10x1024x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.subf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1024x56x56xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %expanded_322 : tensor<10x1024x56x56xf32>, tensor<1024x1x1xf32>) outs(%371 : tensor<10x1024x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1024x56x56xf32>
    %expanded_323 = tensor.expand_shape %arg131 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %expanded_323 : tensor<10x1024x56x56xf32>, tensor<1024x1x1xf32>) outs(%371 : tensor<10x1024x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.mulf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1024x56x56xf32>
    %expanded_324 = tensor.expand_shape %arg132 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %expanded_324 : tensor<10x1024x56x56xf32>, tensor<1024x1x1xf32>) outs(%371 : tensor<10x1024x56x56xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1024x56x56xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<10x1024x56x56xf32>) outs(%371 : tensor<10x1024x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst : f32
      %393 = arith.select %392, %in, %cst : f32
      linalg.yield %393 : f32
    } -> tensor<10x1024x56x56xf32>
    %382 = tensor.empty() : tensor<10x1024x1x1xf32>
    %383 = linalg.fill ins(%cst : f32) outs(%382 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %384 = tensor.empty() : tensor<56x56xf32>
    %385 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<56> : vector<2xi64>} ins(%381, %384 : tensor<10x1024x56x56xf32>, tensor<56x56xf32>) outs(%383 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<10x1024x1x1xf32>) outs(%382 : tensor<10x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_2 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1024x1x1xf32>
    %collapsed_325 = tensor.collapse_shape %386 [[0], [1, 2, 3]] : tensor<10x1024x1x1xf32> into tensor<10x1024xf32>
    %387 = tensor.empty() : tensor<1024x1000xf32>
    %transposed_326 = linalg.transpose ins(%arg133 : tensor<1000x1024xf32>) outs(%387 : tensor<1024x1000xf32>) permutation = [1, 0] 
    %388 = tensor.empty() : tensor<10x1000xf32>
    %389 = linalg.fill ins(%cst : f32) outs(%388 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %390 = linalg.matmul ins(%collapsed_325, %transposed_326 : tensor<10x1024xf32>, tensor<1024x1000xf32>) outs(%389 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%390, %arg134 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%388 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_327: f32, %out: f32):
      %392 = arith.addf %in, %in_327 : f32
      linalg.yield %392 : f32
    } -> tensor<10x1000xf32>
    return %391 : tensor<10x1000xf32>
  }
}
