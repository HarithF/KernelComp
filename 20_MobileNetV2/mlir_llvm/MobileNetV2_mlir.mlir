#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1, d2, d3) -> ()>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @MobileNetV2(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<32x3x3x3xf32>, %arg2: tensor<32xf32>, %arg3: tensor<32xf32>, %arg4: tensor<32x1x3x3xf32>, %arg5: tensor<32xf32>, %arg6: tensor<32xf32>, %arg7: tensor<16x32x1x1xf32>, %arg8: tensor<16xf32>, %arg9: tensor<16xf32>, %arg10: tensor<96x16x1x1xf32>, %arg11: tensor<96xf32>, %arg12: tensor<96xf32>, %arg13: tensor<96x1x3x3xf32>, %arg14: tensor<96xf32>, %arg15: tensor<96xf32>, %arg16: tensor<24x96x1x1xf32>, %arg17: tensor<24xf32>, %arg18: tensor<24xf32>, %arg19: tensor<144x24x1x1xf32>, %arg20: tensor<144xf32>, %arg21: tensor<144xf32>, %arg22: tensor<144x1x3x3xf32>, %arg23: tensor<144xf32>, %arg24: tensor<144xf32>, %arg25: tensor<24x144x1x1xf32>, %arg26: tensor<24xf32>, %arg27: tensor<24xf32>, %arg28: tensor<144x24x1x1xf32>, %arg29: tensor<144xf32>, %arg30: tensor<144xf32>, %arg31: tensor<144x1x3x3xf32>, %arg32: tensor<144xf32>, %arg33: tensor<144xf32>, %arg34: tensor<32x144x1x1xf32>, %arg35: tensor<32xf32>, %arg36: tensor<32xf32>, %arg37: tensor<192x32x1x1xf32>, %arg38: tensor<192xf32>, %arg39: tensor<192xf32>, %arg40: tensor<192x1x3x3xf32>, %arg41: tensor<192xf32>, %arg42: tensor<192xf32>, %arg43: tensor<32x192x1x1xf32>, %arg44: tensor<32xf32>, %arg45: tensor<32xf32>, %arg46: tensor<192x32x1x1xf32>, %arg47: tensor<192xf32>, %arg48: tensor<192xf32>, %arg49: tensor<192x1x3x3xf32>, %arg50: tensor<192xf32>, %arg51: tensor<192xf32>, %arg52: tensor<32x192x1x1xf32>, %arg53: tensor<32xf32>, %arg54: tensor<32xf32>, %arg55: tensor<192x32x1x1xf32>, %arg56: tensor<192xf32>, %arg57: tensor<192xf32>, %arg58: tensor<192x1x3x3xf32>, %arg59: tensor<192xf32>, %arg60: tensor<192xf32>, %arg61: tensor<64x192x1x1xf32>, %arg62: tensor<64xf32>, %arg63: tensor<64xf32>, %arg64: tensor<384x64x1x1xf32>, %arg65: tensor<384xf32>, %arg66: tensor<384xf32>, %arg67: tensor<384x1x3x3xf32>, %arg68: tensor<384xf32>, %arg69: tensor<384xf32>, %arg70: tensor<64x384x1x1xf32>, %arg71: tensor<64xf32>, %arg72: tensor<64xf32>, %arg73: tensor<384x64x1x1xf32>, %arg74: tensor<384xf32>, %arg75: tensor<384xf32>, %arg76: tensor<384x1x3x3xf32>, %arg77: tensor<384xf32>, %arg78: tensor<384xf32>, %arg79: tensor<64x384x1x1xf32>, %arg80: tensor<64xf32>, %arg81: tensor<64xf32>, %arg82: tensor<384x64x1x1xf32>, %arg83: tensor<384xf32>, %arg84: tensor<384xf32>, %arg85: tensor<384x1x3x3xf32>, %arg86: tensor<384xf32>, %arg87: tensor<384xf32>, %arg88: tensor<64x384x1x1xf32>, %arg89: tensor<64xf32>, %arg90: tensor<64xf32>, %arg91: tensor<384x64x1x1xf32>, %arg92: tensor<384xf32>, %arg93: tensor<384xf32>, %arg94: tensor<384x1x3x3xf32>, %arg95: tensor<384xf32>, %arg96: tensor<384xf32>, %arg97: tensor<96x384x1x1xf32>, %arg98: tensor<96xf32>, %arg99: tensor<96xf32>, %arg100: tensor<576x96x1x1xf32>, %arg101: tensor<576xf32>, %arg102: tensor<576xf32>, %arg103: tensor<576x1x3x3xf32>, %arg104: tensor<576xf32>, %arg105: tensor<576xf32>, %arg106: tensor<96x576x1x1xf32>, %arg107: tensor<96xf32>, %arg108: tensor<96xf32>, %arg109: tensor<576x96x1x1xf32>, %arg110: tensor<576xf32>, %arg111: tensor<576xf32>, %arg112: tensor<576x1x3x3xf32>, %arg113: tensor<576xf32>, %arg114: tensor<576xf32>, %arg115: tensor<96x576x1x1xf32>, %arg116: tensor<96xf32>, %arg117: tensor<96xf32>, %arg118: tensor<576x96x1x1xf32>, %arg119: tensor<576xf32>, %arg120: tensor<576xf32>, %arg121: tensor<576x1x3x3xf32>, %arg122: tensor<576xf32>, %arg123: tensor<576xf32>, %arg124: tensor<160x576x1x1xf32>, %arg125: tensor<160xf32>, %arg126: tensor<160xf32>, %arg127: tensor<960x160x1x1xf32>, %arg128: tensor<960xf32>, %arg129: tensor<960xf32>, %arg130: tensor<960x1x3x3xf32>, %arg131: tensor<960xf32>, %arg132: tensor<960xf32>, %arg133: tensor<160x960x1x1xf32>, %arg134: tensor<160xf32>, %arg135: tensor<160xf32>, %arg136: tensor<960x160x1x1xf32>, %arg137: tensor<960xf32>, %arg138: tensor<960xf32>, %arg139: tensor<960x1x3x3xf32>, %arg140: tensor<960xf32>, %arg141: tensor<960xf32>, %arg142: tensor<160x960x1x1xf32>, %arg143: tensor<160xf32>, %arg144: tensor<160xf32>, %arg145: tensor<960x160x1x1xf32>, %arg146: tensor<960xf32>, %arg147: tensor<960xf32>, %arg148: tensor<960x1x3x3xf32>, %arg149: tensor<960xf32>, %arg150: tensor<960xf32>, %arg151: tensor<320x960x1x1xf32>, %arg152: tensor<320xf32>, %arg153: tensor<320xf32>, %arg154: tensor<1280x320x1x1xf32>, %arg155: tensor<1280xf32>, %arg156: tensor<1280xf32>, %arg157: tensor<1000x1280xf32>, %arg158: tensor<1000xf32>, %arg159: tensor<32xf32>, %arg160: tensor<32xf32>, %arg161: tensor<32xf32>, %arg162: tensor<32xf32>, %arg163: tensor<16xf32>, %arg164: tensor<16xf32>, %arg165: tensor<96xf32>, %arg166: tensor<96xf32>, %arg167: tensor<96xf32>, %arg168: tensor<96xf32>, %arg169: tensor<24xf32>, %arg170: tensor<24xf32>, %arg171: tensor<144xf32>, %arg172: tensor<144xf32>, %arg173: tensor<144xf32>, %arg174: tensor<144xf32>, %arg175: tensor<24xf32>, %arg176: tensor<24xf32>, %arg177: tensor<144xf32>, %arg178: tensor<144xf32>, %arg179: tensor<144xf32>, %arg180: tensor<144xf32>, %arg181: tensor<32xf32>, %arg182: tensor<32xf32>, %arg183: tensor<192xf32>, %arg184: tensor<192xf32>, %arg185: tensor<192xf32>, %arg186: tensor<192xf32>, %arg187: tensor<32xf32>, %arg188: tensor<32xf32>, %arg189: tensor<192xf32>, %arg190: tensor<192xf32>, %arg191: tensor<192xf32>, %arg192: tensor<192xf32>, %arg193: tensor<32xf32>, %arg194: tensor<32xf32>, %arg195: tensor<192xf32>, %arg196: tensor<192xf32>, %arg197: tensor<192xf32>, %arg198: tensor<192xf32>, %arg199: tensor<64xf32>, %arg200: tensor<64xf32>, %arg201: tensor<384xf32>, %arg202: tensor<384xf32>, %arg203: tensor<384xf32>, %arg204: tensor<384xf32>, %arg205: tensor<64xf32>, %arg206: tensor<64xf32>, %arg207: tensor<384xf32>, %arg208: tensor<384xf32>, %arg209: tensor<384xf32>, %arg210: tensor<384xf32>, %arg211: tensor<64xf32>, %arg212: tensor<64xf32>, %arg213: tensor<384xf32>, %arg214: tensor<384xf32>, %arg215: tensor<384xf32>, %arg216: tensor<384xf32>, %arg217: tensor<64xf32>, %arg218: tensor<64xf32>, %arg219: tensor<384xf32>, %arg220: tensor<384xf32>, %arg221: tensor<384xf32>, %arg222: tensor<384xf32>, %arg223: tensor<96xf32>, %arg224: tensor<96xf32>, %arg225: tensor<576xf32>, %arg226: tensor<576xf32>, %arg227: tensor<576xf32>, %arg228: tensor<576xf32>, %arg229: tensor<96xf32>, %arg230: tensor<96xf32>, %arg231: tensor<576xf32>, %arg232: tensor<576xf32>, %arg233: tensor<576xf32>, %arg234: tensor<576xf32>, %arg235: tensor<96xf32>, %arg236: tensor<96xf32>, %arg237: tensor<576xf32>, %arg238: tensor<576xf32>, %arg239: tensor<576xf32>, %arg240: tensor<576xf32>, %arg241: tensor<160xf32>, %arg242: tensor<160xf32>, %arg243: tensor<960xf32>, %arg244: tensor<960xf32>, %arg245: tensor<960xf32>, %arg246: tensor<960xf32>, %arg247: tensor<160xf32>, %arg248: tensor<160xf32>, %arg249: tensor<960xf32>, %arg250: tensor<960xf32>, %arg251: tensor<960xf32>, %arg252: tensor<960xf32>, %arg253: tensor<160xf32>, %arg254: tensor<160xf32>, %arg255: tensor<960xf32>, %arg256: tensor<960xf32>, %arg257: tensor<960xf32>, %arg258: tensor<960xf32>, %arg259: tensor<320xf32>, %arg260: tensor<320xf32>, %arg261: tensor<1280xf32>, %arg262: tensor<1280xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant dense<6.000000e+00> : tensor<f32>
    %cst_1 = arith.constant dense<0.000000e+00> : tensor<f32>
    %cst_2 = arith.constant 1.000000e-05 : f64
    %cst_3 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x32x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %3 = tensor.empty() : tensor<32xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg160 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<32xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg159 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_4 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_6 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_6 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %cst_1 : tensor<10x32x112x112xf32>, tensor<f32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x32x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %10 : tensor<f32>, tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x32x112x112xf32>
    %padded_7 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %collapsed = tensor.collapse_shape %arg4 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %12 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_7, %collapsed : tensor<10x32x114x114xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg162 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<32xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%13 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<32xf32>
    %expanded_8 = tensor.expand_shape %arg161 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_9 = tensor.expand_shape %14 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %expanded_8 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_9 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_10 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_10 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_11 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %expanded_11 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x112x112xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_1 : tensor<10x32x112x112xf32>, tensor<f32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x32x112x112xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %19 : tensor<f32>, tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x32x112x112xf32>
    %21 = tensor.empty() : tensor<10x16x112x112xf32>
    %22 = linalg.fill ins(%cst : f32) outs(%21 : tensor<10x16x112x112xf32>) -> tensor<10x16x112x112xf32>
    %23 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %arg7 : tensor<10x32x112x112xf32>, tensor<16x32x1x1xf32>) outs(%22 : tensor<10x16x112x112xf32>) -> tensor<10x16x112x112xf32>
    %24 = tensor.empty() : tensor<16xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg164 : tensor<16xf32>) outs(%24 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<16xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%25 : tensor<16xf32>) outs(%24 : tensor<16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<16xf32>
    %expanded_12 = tensor.expand_shape %arg163 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %expanded_13 = tensor.expand_shape %26 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %expanded_12 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%21 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x16x112x112xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_13 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%21 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x16x112x112xf32>
    %expanded_14 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_14 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%21 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x16x112x112xf32>
    %expanded_15 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [16, 1, 1] : tensor<16xf32> into tensor<16x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_15 : tensor<10x16x112x112xf32>, tensor<16x1x1xf32>) outs(%21 : tensor<10x16x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x16x112x112xf32>
    %31 = tensor.empty() : tensor<10x96x112x112xf32>
    %32 = linalg.fill ins(%cst : f32) outs(%31 : tensor<10x96x112x112xf32>) -> tensor<10x96x112x112xf32>
    %33 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %arg10 : tensor<10x16x112x112xf32>, tensor<96x16x1x1xf32>) outs(%32 : tensor<10x96x112x112xf32>) -> tensor<10x96x112x112xf32>
    %34 = tensor.empty() : tensor<96xf32>
    %35 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg166 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<96xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%35 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<96xf32>
    %expanded_16 = tensor.expand_shape %arg165 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_17 = tensor.expand_shape %36 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %expanded_16 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x112x112xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_17 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x112x112xf32>
    %expanded_18 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %expanded_18 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x112x112xf32>
    %expanded_19 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %expanded_19 : tensor<10x96x112x112xf32>, tensor<96x1x1xf32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x112x112xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_1 : tensor<10x96x112x112xf32>, tensor<f32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x96x112x112xf32>
    %42 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %41 : tensor<f32>, tensor<10x96x112x112xf32>) outs(%31 : tensor<10x96x112x112xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x96x112x112xf32>
    %padded_20 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x96x112x112xf32> to tensor<10x96x114x114xf32>
    %43 = tensor.empty() : tensor<10x96x56x56xf32>
    %44 = linalg.fill ins(%cst : f32) outs(%43 : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %collapsed_21 = tensor.collapse_shape %arg13 [[0, 1], [2], [3]] : tensor<96x1x3x3xf32> into tensor<96x3x3xf32>
    %45 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_20, %collapsed_21 : tensor<10x96x114x114xf32>, tensor<96x3x3xf32>) outs(%44 : tensor<10x96x56x56xf32>) -> tensor<10x96x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg168 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<96xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%46 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<96xf32>
    %expanded_22 = tensor.expand_shape %arg167 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_23 = tensor.expand_shape %47 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %expanded_22 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %expanded_23 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_24 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %expanded_24 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_25 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_25 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_1 : tensor<10x96x56x56xf32>, tensor<f32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x96x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %52 : tensor<f32>, tensor<10x96x56x56xf32>) outs(%43 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x96x56x56xf32>
    %54 = tensor.empty() : tensor<10x24x56x56xf32>
    %55 = linalg.fill ins(%cst : f32) outs(%54 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%53, %arg16 : tensor<10x96x56x56xf32>, tensor<24x96x1x1xf32>) outs(%55 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %57 = tensor.empty() : tensor<24xf32>
    %58 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg170 : tensor<24xf32>) outs(%57 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<24xf32>
    %59 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%58 : tensor<24xf32>) outs(%57 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<24xf32>
    %expanded_26 = tensor.expand_shape %arg169 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_27 = tensor.expand_shape %59 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_26 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %expanded_27 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %expanded_28 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_29 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %expanded_29 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %64 = tensor.empty() : tensor<10x144x56x56xf32>
    %65 = linalg.fill ins(%cst : f32) outs(%64 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %arg19 : tensor<10x24x56x56xf32>, tensor<144x24x1x1xf32>) outs(%65 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %67 = tensor.empty() : tensor<144xf32>
    %68 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg172 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<144xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%68 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<144xf32>
    %expanded_30 = tensor.expand_shape %arg171 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_31 = tensor.expand_shape %69 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %expanded_30 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %expanded_31 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_32 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %expanded_32 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_33 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %expanded_33 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %75 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %74 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %padded_34 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %collapsed_35 = tensor.collapse_shape %arg22 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %76 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %collapsed_35 : tensor<10x144x58x58xf32>, tensor<144x3x3xf32>) outs(%65 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg174 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<144xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%77 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<144xf32>
    %expanded_36 = tensor.expand_shape %arg173 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_37 = tensor.expand_shape %78 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %expanded_36 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_37 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_38 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_38 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_39 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %expanded_39 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %84 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %83 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %arg25 : tensor<10x144x56x56xf32>, tensor<24x144x1x1xf32>) outs(%55 : tensor<10x24x56x56xf32>) -> tensor<10x24x56x56xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg176 : tensor<24xf32>) outs(%57 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<24xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%86 : tensor<24xf32>) outs(%57 : tensor<24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<24xf32>
    %expanded_40 = tensor.expand_shape %arg175 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %expanded_41 = tensor.expand_shape %87 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %expanded_40 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_41 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_42 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %expanded_42 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %expanded_43 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [24, 1, 1] : tensor<24xf32> into tensor<24x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %expanded_43 : tensor<10x24x56x56xf32>, tensor<24x1x1xf32>) outs(%54 : tensor<10x24x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x24x56x56xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %arg28 : tensor<10x24x56x56xf32>, tensor<144x24x1x1xf32>) outs(%65 : tensor<10x144x56x56xf32>) -> tensor<10x144x56x56xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg178 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<144xf32>
    %94 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%93 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<144xf32>
    %expanded_44 = tensor.expand_shape %arg177 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_45 = tensor.expand_shape %94 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_44 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %expanded_45 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_46 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %expanded_46 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %expanded_47 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %expanded_47 : tensor<10x144x56x56xf32>, tensor<144x1x1xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x56x56xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %cst_1 : tensor<10x144x56x56xf32>, tensor<f32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %99 : tensor<f32>, tensor<10x144x56x56xf32>) outs(%64 : tensor<10x144x56x56xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x56x56xf32>
    %padded_48 = tensor.pad %100 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x144x56x56xf32> to tensor<10x144x58x58xf32>
    %101 = tensor.empty() : tensor<10x144x28x28xf32>
    %102 = linalg.fill ins(%cst : f32) outs(%101 : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %collapsed_49 = tensor.collapse_shape %arg31 [[0, 1], [2], [3]] : tensor<144x1x3x3xf32> into tensor<144x3x3xf32>
    %103 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_48, %collapsed_49 : tensor<10x144x58x58xf32>, tensor<144x3x3xf32>) outs(%102 : tensor<10x144x28x28xf32>) -> tensor<10x144x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg180 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<144xf32>
    %105 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%104 : tensor<144xf32>) outs(%67 : tensor<144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<144xf32>
    %expanded_50 = tensor.expand_shape %arg179 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %expanded_51 = tensor.expand_shape %105 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %expanded_50 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x28x28xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %expanded_51 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x28x28xf32>
    %expanded_52 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %expanded_52 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x28x28xf32>
    %expanded_53 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [144, 1, 1] : tensor<144xf32> into tensor<144x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %expanded_53 : tensor<10x144x28x28xf32>, tensor<144x1x1xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x144x28x28xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_1 : tensor<10x144x28x28xf32>, tensor<f32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %110 : tensor<f32>, tensor<10x144x28x28xf32>) outs(%101 : tensor<10x144x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x144x28x28xf32>
    %112 = tensor.empty() : tensor<10x32x28x28xf32>
    %113 = linalg.fill ins(%cst : f32) outs(%112 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %arg34 : tensor<10x144x28x28xf32>, tensor<32x144x1x1xf32>) outs(%113 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg182 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<32xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%115 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<32xf32>
    %expanded_54 = tensor.expand_shape %arg181 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_55 = tensor.expand_shape %116 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %expanded_54 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %expanded_55 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_56 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %expanded_56 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_57 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %expanded_57 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %121 = tensor.empty() : tensor<10x192x28x28xf32>
    %122 = linalg.fill ins(%cst : f32) outs(%121 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %arg37 : tensor<10x32x28x28xf32>, tensor<192x32x1x1xf32>) outs(%122 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %124 = tensor.empty() : tensor<192xf32>
    %125 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg184 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %126 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%125 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_58 = tensor.expand_shape %arg183 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_59 = tensor.expand_shape %126 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %expanded_58 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %expanded_59 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_60 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %expanded_60 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_61 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_61 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %cst_1 : tensor<10x192x28x28xf32>, tensor<f32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %131 : tensor<f32>, tensor<10x192x28x28xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %padded_62 = tensor.pad %132 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %collapsed_63 = tensor.collapse_shape %arg40 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %133 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_62, %collapsed_63 : tensor<10x192x30x30xf32>, tensor<192x3x3xf32>) outs(%122 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg186 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%134 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_64 = tensor.expand_shape %arg185 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_65 = tensor.expand_shape %135 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %expanded_64 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %expanded_65 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_66 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %expanded_66 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_67 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %expanded_67 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %cst_1 : tensor<10x192x28x28xf32>, tensor<f32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %140 : tensor<f32>, tensor<10x192x28x28xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %142 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%141, %arg43 : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>) outs(%113 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg188 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<32xf32>
    %144 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%143 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<32xf32>
    %expanded_68 = tensor.expand_shape %arg187 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_69 = tensor.expand_shape %144 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %expanded_68 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %expanded_69 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_70 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_70 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_71 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %expanded_71 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%148, %arg46 : tensor<10x32x28x28xf32>, tensor<192x32x1x1xf32>) outs(%122 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg190 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%150 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_72 = tensor.expand_shape %arg189 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_73 = tensor.expand_shape %151 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %expanded_72 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_73 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_74 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_74 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_75 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_75 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_1 : tensor<10x192x28x28xf32>, tensor<f32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %157 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %156 : tensor<f32>, tensor<10x192x28x28xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %padded_76 = tensor.pad %157 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %collapsed_77 = tensor.collapse_shape %arg49 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %158 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_76, %collapsed_77 : tensor<10x192x30x30xf32>, tensor<192x3x3xf32>) outs(%122 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %159 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg192 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %160 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%159 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_78 = tensor.expand_shape %arg191 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_79 = tensor.expand_shape %160 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %expanded_78 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_79 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_80 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_80 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_81 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %expanded_81 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_1 : tensor<10x192x28x28xf32>, tensor<f32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %166 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %165 : tensor<f32>, tensor<10x192x28x28xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %arg52 : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>) outs(%113 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg194 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<32xf32>
    %169 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%168 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<32xf32>
    %expanded_82 = tensor.expand_shape %arg193 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_83 = tensor.expand_shape %169 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %expanded_82 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_83 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_84 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %expanded_84 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %expanded_85 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %expanded_85 : tensor<10x32x28x28xf32>, tensor<32x1x1xf32>) outs(%112 : tensor<10x32x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x32x28x28xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%173, %arg55 : tensor<10x32x28x28xf32>, tensor<192x32x1x1xf32>) outs(%122 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg196 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%175 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_86 = tensor.expand_shape %arg195 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_87 = tensor.expand_shape %176 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %expanded_86 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_87 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_88 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_88 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_89 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %expanded_89 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst_1 : tensor<10x192x28x28xf32>, tensor<f32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %181 : tensor<f32>, tensor<10x192x28x28xf32>) outs(%121 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x28x28xf32>
    %padded_90 = tensor.pad %182 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %183 = tensor.empty() : tensor<10x192x14x14xf32>
    %184 = linalg.fill ins(%cst : f32) outs(%183 : tensor<10x192x14x14xf32>) -> tensor<10x192x14x14xf32>
    %collapsed_91 = tensor.collapse_shape %arg58 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %185 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_90, %collapsed_91 : tensor<10x192x30x30xf32>, tensor<192x3x3xf32>) outs(%184 : tensor<10x192x14x14xf32>) -> tensor<10x192x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg198 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<192xf32>
    %187 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%186 : tensor<192xf32>) outs(%124 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<192xf32>
    %expanded_92 = tensor.expand_shape %arg197 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_93 = tensor.expand_shape %187 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %expanded_92 : tensor<10x192x14x14xf32>, tensor<192x1x1xf32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %expanded_93 : tensor<10x192x14x14xf32>, tensor<192x1x1xf32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x14x14xf32>
    %expanded_94 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %expanded_94 : tensor<10x192x14x14xf32>, tensor<192x1x1xf32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x14x14xf32>
    %expanded_95 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190, %expanded_95 : tensor<10x192x14x14xf32>, tensor<192x1x1xf32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x192x14x14xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_1 : tensor<10x192x14x14xf32>, tensor<f32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %192 : tensor<f32>, tensor<10x192x14x14xf32>) outs(%183 : tensor<10x192x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x192x14x14xf32>
    %194 = tensor.empty() : tensor<10x64x14x14xf32>
    %195 = linalg.fill ins(%cst : f32) outs(%194 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %arg61 : tensor<10x192x14x14xf32>, tensor<64x192x1x1xf32>) outs(%195 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %197 = tensor.empty() : tensor<64xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg200 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<64xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%198 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<64xf32>
    %expanded_96 = tensor.expand_shape %arg199 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_97 = tensor.expand_shape %199 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %expanded_96 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %expanded_97 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_98 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %expanded_98 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_99 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_99 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %204 = tensor.empty() : tensor<10x384x14x14xf32>
    %205 = linalg.fill ins(%cst : f32) outs(%204 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %arg64 : tensor<10x64x14x14xf32>, tensor<384x64x1x1xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %207 = tensor.empty() : tensor<384xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg202 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%208 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_100 = tensor.expand_shape %arg201 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_101 = tensor.expand_shape %209 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %expanded_100 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_101 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_102 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %expanded_102 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_103 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %expanded_103 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %215 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %214 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %padded_104 = tensor.pad %215 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %collapsed_105 = tensor.collapse_shape %arg67 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %216 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<10x384x16x16xf32>, tensor<384x3x3xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg204 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %218 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%217 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_106 = tensor.expand_shape %arg203 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_107 = tensor.expand_shape %218 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %expanded_106 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %expanded_107 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_108 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %expanded_108 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_109 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %expanded_109 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %223 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%224, %arg70 : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg206 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<64xf32>
    %227 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%226 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<64xf32>
    %expanded_110 = tensor.expand_shape %arg205 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_111 = tensor.expand_shape %227 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %expanded_110 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %expanded_111 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_112 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %expanded_112 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_113 = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %expanded_113 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %232 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %arg73 : tensor<10x64x14x14xf32>, tensor<384x64x1x1xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg208 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %234 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%233 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_114 = tensor.expand_shape %arg207 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_115 = tensor.expand_shape %234 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %expanded_114 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %expanded_115 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_116 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %expanded_116 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_117 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %expanded_117 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %239 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %padded_118 = tensor.pad %240 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %collapsed_119 = tensor.collapse_shape %arg76 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %241 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_118, %collapsed_119 : tensor<10x384x16x16xf32>, tensor<384x3x3xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %242 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg210 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %243 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%242 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_120 = tensor.expand_shape %arg209 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_121 = tensor.expand_shape %243 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %expanded_120 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %expanded_121 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_122 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %expanded_122 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_123 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %expanded_123 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %248 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %250 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%249, %arg79 : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg212 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<64xf32>
    %252 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%251 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<64xf32>
    %expanded_124 = tensor.expand_shape %arg211 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_125 = tensor.expand_shape %252 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %expanded_124 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %expanded_125 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_126 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %expanded_126 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_127 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %expanded_127 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %arg82 : tensor<10x64x14x14xf32>, tensor<384x64x1x1xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg214 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %259 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%258 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_128 = tensor.expand_shape %arg213 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_129 = tensor.expand_shape %259 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %expanded_128 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %expanded_129 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_130 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %expanded_130 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_131 = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %expanded_131 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %264 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %padded_132 = tensor.pad %265 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %collapsed_133 = tensor.collapse_shape %arg85 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %266 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_132, %collapsed_133 : tensor<10x384x16x16xf32>, tensor<384x3x3xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %267 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg216 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %268 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%267 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_134 = tensor.expand_shape %arg215 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_135 = tensor.expand_shape %268 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %expanded_134 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269, %expanded_135 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_136 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %expanded_136 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_137 = tensor.expand_shape %arg87 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %expanded_137 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %273 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %275 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%274, %arg88 : tensor<10x384x14x14xf32>, tensor<64x384x1x1xf32>) outs(%195 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg218 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<64xf32>
    %277 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%276 : tensor<64xf32>) outs(%197 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<64xf32>
    %expanded_138 = tensor.expand_shape %arg217 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_139 = tensor.expand_shape %277 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %expanded_138 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %expanded_139 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_140 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %expanded_140 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %expanded_141 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %expanded_141 : tensor<10x64x14x14xf32>, tensor<64x1x1xf32>) outs(%194 : tensor<10x64x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x64x14x14xf32>
    %282 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %arg91 : tensor<10x64x14x14xf32>, tensor<384x64x1x1xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg220 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %284 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%283 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_142 = tensor.expand_shape %arg219 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_143 = tensor.expand_shape %284 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %expanded_142 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %286 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %expanded_143 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_144 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %expanded_144 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_145 = tensor.expand_shape %arg93 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %expanded_145 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %289 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %padded_146 = tensor.pad %290 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %collapsed_147 = tensor.collapse_shape %arg94 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %291 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_146, %collapsed_147 : tensor<10x384x16x16xf32>, tensor<384x3x3xf32>) outs(%205 : tensor<10x384x14x14xf32>) -> tensor<10x384x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg222 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<384xf32>
    %293 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%292 : tensor<384xf32>) outs(%207 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<384xf32>
    %expanded_148 = tensor.expand_shape %arg221 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_149 = tensor.expand_shape %293 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %expanded_148 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %expanded_149 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_150 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %expanded_150 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_151 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %297 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %expanded_151 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x384x14x14xf32>
    %298 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_1 : tensor<10x384x14x14xf32>, tensor<f32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %298 : tensor<f32>, tensor<10x384x14x14xf32>) outs(%204 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x384x14x14xf32>
    %300 = tensor.empty() : tensor<10x96x14x14xf32>
    %301 = linalg.fill ins(%cst : f32) outs(%300 : tensor<10x96x14x14xf32>) -> tensor<10x96x14x14xf32>
    %302 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%299, %arg97 : tensor<10x384x14x14xf32>, tensor<96x384x1x1xf32>) outs(%301 : tensor<10x96x14x14xf32>) -> tensor<10x96x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg224 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<96xf32>
    %304 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%303 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<96xf32>
    %expanded_152 = tensor.expand_shape %arg223 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_153 = tensor.expand_shape %304 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %expanded_152 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %expanded_153 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_154 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %expanded_154 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_155 = tensor.expand_shape %arg99 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %expanded_155 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %309 = tensor.empty() : tensor<10x576x14x14xf32>
    %310 = linalg.fill ins(%cst : f32) outs(%309 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%308, %arg100 : tensor<10x96x14x14xf32>, tensor<576x96x1x1xf32>) outs(%310 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %312 = tensor.empty() : tensor<576xf32>
    %313 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg226 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %314 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%313 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_156 = tensor.expand_shape %arg225 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_157 = tensor.expand_shape %314 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %expanded_156 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %expanded_157 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_158 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %317 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %expanded_158 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_159 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %expanded_159 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_1 : tensor<10x576x14x14xf32>, tensor<f32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %319 : tensor<f32>, tensor<10x576x14x14xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %padded_160 = tensor.pad %320 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %collapsed_161 = tensor.collapse_shape %arg103 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %321 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_160, %collapsed_161 : tensor<10x576x16x16xf32>, tensor<576x3x3xf32>) outs(%310 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg228 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %323 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%322 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_162 = tensor.expand_shape %arg227 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_163 = tensor.expand_shape %323 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %expanded_162 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %expanded_163 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_164 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %expanded_164 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_165 = tensor.expand_shape %arg105 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %expanded_165 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_1 : tensor<10x576x14x14xf32>, tensor<f32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %328 : tensor<f32>, tensor<10x576x14x14xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%329, %arg106 : tensor<10x576x14x14xf32>, tensor<96x576x1x1xf32>) outs(%301 : tensor<10x96x14x14xf32>) -> tensor<10x96x14x14xf32>
    %331 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg230 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<96xf32>
    %332 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%331 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<96xf32>
    %expanded_166 = tensor.expand_shape %arg229 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_167 = tensor.expand_shape %332 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %expanded_166 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %expanded_167 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_168 = tensor.expand_shape %arg107 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %expanded_168 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_169 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %expanded_169 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %arg109 : tensor<10x96x14x14xf32>, tensor<576x96x1x1xf32>) outs(%310 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %338 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg232 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%338 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_170 = tensor.expand_shape %arg231 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_171 = tensor.expand_shape %339 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %expanded_170 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %expanded_171 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_172 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %expanded_172 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_173 = tensor.expand_shape %arg111 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %expanded_173 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_1 : tensor<10x576x14x14xf32>, tensor<f32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %344 : tensor<f32>, tensor<10x576x14x14xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %padded_174 = tensor.pad %345 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %collapsed_175 = tensor.collapse_shape %arg112 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %346 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_174, %collapsed_175 : tensor<10x576x16x16xf32>, tensor<576x3x3xf32>) outs(%310 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %347 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg234 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %348 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%347 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_176 = tensor.expand_shape %arg233 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_177 = tensor.expand_shape %348 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %expanded_176 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %expanded_177 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_178 = tensor.expand_shape %arg113 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %expanded_178 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_179 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %expanded_179 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_1 : tensor<10x576x14x14xf32>, tensor<f32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %354 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %353 : tensor<f32>, tensor<10x576x14x14xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %arg115 : tensor<10x576x14x14xf32>, tensor<96x576x1x1xf32>) outs(%301 : tensor<10x96x14x14xf32>) -> tensor<10x96x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg236 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<96xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%356 : tensor<96xf32>) outs(%34 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<96xf32>
    %expanded_180 = tensor.expand_shape %arg235 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_181 = tensor.expand_shape %357 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %expanded_180 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %expanded_181 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_182 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %expanded_182 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %expanded_183 = tensor.expand_shape %arg117 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %expanded_183 : tensor<10x96x14x14xf32>, tensor<96x1x1xf32>) outs(%300 : tensor<10x96x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x96x14x14xf32>
    %362 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%361, %arg118 : tensor<10x96x14x14xf32>, tensor<576x96x1x1xf32>) outs(%310 : tensor<10x576x14x14xf32>) -> tensor<10x576x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg238 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%363 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_184 = tensor.expand_shape %arg237 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_185 = tensor.expand_shape %364 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %365 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362, %expanded_184 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %366 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %expanded_185 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_186 = tensor.expand_shape %arg119 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %expanded_186 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_187 = tensor.expand_shape %arg120 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %expanded_187 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %cst_1 : tensor<10x576x14x14xf32>, tensor<f32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %369 : tensor<f32>, tensor<10x576x14x14xf32>) outs(%309 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x14x14xf32>
    %padded_188 = tensor.pad %370 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %371 = tensor.empty() : tensor<10x576x7x7xf32>
    %372 = linalg.fill ins(%cst : f32) outs(%371 : tensor<10x576x7x7xf32>) -> tensor<10x576x7x7xf32>
    %collapsed_189 = tensor.collapse_shape %arg121 [[0, 1], [2], [3]] : tensor<576x1x3x3xf32> into tensor<576x3x3xf32>
    %373 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_188, %collapsed_189 : tensor<10x576x16x16xf32>, tensor<576x3x3xf32>) outs(%372 : tensor<10x576x7x7xf32>) -> tensor<10x576x7x7xf32>
    %374 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg240 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<576xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%374 : tensor<576xf32>) outs(%312 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<576xf32>
    %expanded_190 = tensor.expand_shape %arg239 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_191 = tensor.expand_shape %375 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %expanded_190 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x7x7xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %expanded_191 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x7x7xf32>
    %expanded_192 = tensor.expand_shape %arg122 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %expanded_192 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x7x7xf32>
    %expanded_193 = tensor.expand_shape %arg123 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %expanded_193 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x576x7x7xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %cst_1 : tensor<10x576x7x7xf32>, tensor<f32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x7x7xf32>
    %381 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %380 : tensor<f32>, tensor<10x576x7x7xf32>) outs(%371 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x576x7x7xf32>
    %382 = tensor.empty() : tensor<10x160x7x7xf32>
    %383 = linalg.fill ins(%cst : f32) outs(%382 : tensor<10x160x7x7xf32>) -> tensor<10x160x7x7xf32>
    %384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%381, %arg124 : tensor<10x576x7x7xf32>, tensor<160x576x1x1xf32>) outs(%383 : tensor<10x160x7x7xf32>) -> tensor<10x160x7x7xf32>
    %385 = tensor.empty() : tensor<160xf32>
    %386 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg242 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<160xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%386 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<160xf32>
    %expanded_194 = tensor.expand_shape %arg241 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_195 = tensor.expand_shape %387 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %expanded_194 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %389 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %expanded_195 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_196 = tensor.expand_shape %arg125 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %expanded_196 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_197 = tensor.expand_shape %arg126 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %expanded_197 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %392 = tensor.empty() : tensor<10x960x7x7xf32>
    %393 = linalg.fill ins(%cst : f32) outs(%392 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %arg127 : tensor<10x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %395 = tensor.empty() : tensor<960xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg244 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %397 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%396 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_198 = tensor.expand_shape %arg243 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_199 = tensor.expand_shape %397 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %expanded_198 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %expanded_199 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_200 = tensor.expand_shape %arg128 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %expanded_200 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_201 = tensor.expand_shape %arg129 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400, %expanded_201 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %402 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %403 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %402 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %padded_202 = tensor.pad %403 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %collapsed_203 = tensor.collapse_shape %arg130 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %404 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_202, %collapsed_203 : tensor<10x960x9x9xf32>, tensor<960x3x3xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %405 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg246 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %406 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%405 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_204 = tensor.expand_shape %arg245 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_205 = tensor.expand_shape %406 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %407 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %expanded_204 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %expanded_205 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_206 = tensor.expand_shape %arg131 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %expanded_206 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_207 = tensor.expand_shape %arg132 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %expanded_207 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %411 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %arg133 : tensor<10x960x7x7xf32>, tensor<160x960x1x1xf32>) outs(%383 : tensor<10x160x7x7xf32>) -> tensor<10x160x7x7xf32>
    %414 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg248 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<160xf32>
    %415 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%414 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<160xf32>
    %expanded_208 = tensor.expand_shape %arg247 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_209 = tensor.expand_shape %415 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %expanded_208 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %expanded_209 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_210 = tensor.expand_shape %arg134 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %expanded_210 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_211 = tensor.expand_shape %arg135 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %expanded_211 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %420 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%419, %arg136 : tensor<10x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %421 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg250 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %422 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%421 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_212 = tensor.expand_shape %arg249 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_213 = tensor.expand_shape %422 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %423 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %expanded_212 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423, %expanded_213 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_214 = tensor.expand_shape %arg137 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %expanded_214 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_215 = tensor.expand_shape %arg138 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %expanded_215 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %428 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %427 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %padded_216 = tensor.pad %428 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %collapsed_217 = tensor.collapse_shape %arg139 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %429 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_216, %collapsed_217 : tensor<10x960x9x9xf32>, tensor<960x3x3xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %430 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg252 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %431 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%430 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_218 = tensor.expand_shape %arg251 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_219 = tensor.expand_shape %431 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %expanded_218 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %expanded_219 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_220 = tensor.expand_shape %arg140 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %expanded_220 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_221 = tensor.expand_shape %arg141 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %expanded_221 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %437 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %436 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %arg142 : tensor<10x960x7x7xf32>, tensor<160x960x1x1xf32>) outs(%383 : tensor<10x160x7x7xf32>) -> tensor<10x160x7x7xf32>
    %439 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg254 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<160xf32>
    %440 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%439 : tensor<160xf32>) outs(%385 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<160xf32>
    %expanded_222 = tensor.expand_shape %arg253 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_223 = tensor.expand_shape %440 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %expanded_222 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %expanded_223 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_224 = tensor.expand_shape %arg143 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %expanded_224 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %expanded_225 = tensor.expand_shape %arg144 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %expanded_225 : tensor<10x160x7x7xf32>, tensor<160x1x1xf32>) outs(%382 : tensor<10x160x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x160x7x7xf32>
    %445 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%444, %arg145 : tensor<10x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %446 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg256 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %447 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%446 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_226 = tensor.expand_shape %arg255 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_227 = tensor.expand_shape %447 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445, %expanded_226 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %expanded_227 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_228 = tensor.expand_shape %arg146 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %expanded_228 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_229 = tensor.expand_shape %arg147 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %expanded_229 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %453 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %452 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %padded_230 = tensor.pad %453 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg263: index, %arg264: index, %arg265: index, %arg266: index):
      tensor.yield %cst : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %collapsed_231 = tensor.collapse_shape %arg148 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %454 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_230, %collapsed_231 : tensor<10x960x9x9xf32>, tensor<960x3x3xf32>) outs(%393 : tensor<10x960x7x7xf32>) -> tensor<10x960x7x7xf32>
    %455 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg258 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<960xf32>
    %456 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%455 : tensor<960xf32>) outs(%395 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<960xf32>
    %expanded_232 = tensor.expand_shape %arg257 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_233 = tensor.expand_shape %456 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %expanded_232 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %expanded_233 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_234 = tensor.expand_shape %arg149 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %expanded_234 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_235 = tensor.expand_shape %arg150 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459, %expanded_235 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x960x7x7xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %cst_1 : tensor<10x960x7x7xf32>, tensor<f32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %461 : tensor<f32>, tensor<10x960x7x7xf32>) outs(%392 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x960x7x7xf32>
    %463 = tensor.empty() : tensor<10x320x7x7xf32>
    %464 = linalg.fill ins(%cst : f32) outs(%463 : tensor<10x320x7x7xf32>) -> tensor<10x320x7x7xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%462, %arg151 : tensor<10x960x7x7xf32>, tensor<320x960x1x1xf32>) outs(%464 : tensor<10x320x7x7xf32>) -> tensor<10x320x7x7xf32>
    %466 = tensor.empty() : tensor<320xf32>
    %467 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg260 : tensor<320xf32>) outs(%466 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<320xf32>
    %468 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%467 : tensor<320xf32>) outs(%466 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<320xf32>
    %expanded_236 = tensor.expand_shape %arg259 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %expanded_237 = tensor.expand_shape %468 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465, %expanded_236 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%463 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x320x7x7xf32>
    %470 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %expanded_237 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%463 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x320x7x7xf32>
    %expanded_238 = tensor.expand_shape %arg152 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %expanded_238 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%463 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x320x7x7xf32>
    %expanded_239 = tensor.expand_shape %arg153 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %472 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %expanded_239 : tensor<10x320x7x7xf32>, tensor<320x1x1xf32>) outs(%463 : tensor<10x320x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x320x7x7xf32>
    %473 = tensor.empty() : tensor<10x1280x7x7xf32>
    %474 = linalg.fill ins(%cst : f32) outs(%473 : tensor<10x1280x7x7xf32>) -> tensor<10x1280x7x7xf32>
    %475 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%472, %arg154 : tensor<10x320x7x7xf32>, tensor<1280x320x1x1xf32>) outs(%474 : tensor<10x1280x7x7xf32>) -> tensor<10x1280x7x7xf32>
    %476 = tensor.empty() : tensor<1280xf32>
    %477 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg262 : tensor<1280xf32>) outs(%476 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.truncf %cst_2 : f64 to f32
      %496 = arith.addf %in, %495 : f32
      linalg.yield %496 : f32
    } -> tensor<1280xf32>
    %478 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%477 : tensor<1280xf32>) outs(%476 : tensor<1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = math.rsqrt %in : f32
      linalg.yield %495 : f32
    } -> tensor<1280xf32>
    %expanded_240 = tensor.expand_shape %arg261 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %expanded_241 = tensor.expand_shape %478 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %479 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %expanded_240 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.subf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1280x7x7xf32>
    %480 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479, %expanded_241 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1280x7x7xf32>
    %expanded_242 = tensor.expand_shape %arg155 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %expanded_242 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.mulf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1280x7x7xf32>
    %expanded_243 = tensor.expand_shape %arg156 [[0, 1, 2]] output_shape [1280, 1, 1] : tensor<1280xf32> into tensor<1280x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %expanded_243 : tensor<10x1280x7x7xf32>, tensor<1280x1x1xf32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1280x7x7xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %cst_1 : tensor<10x1280x7x7xf32>, tensor<f32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf ogt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x1280x7x7xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0, %483 : tensor<f32>, tensor<10x1280x7x7xf32>) outs(%473 : tensor<10x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.cmpf olt, %in, %in_245 : f32
      %496 = arith.select %495, %in, %in_245 : f32
      linalg.yield %496 : f32
    } -> tensor<10x1280x7x7xf32>
    %485 = tensor.empty() : tensor<10x1280x1x1xf32>
    %486 = linalg.fill ins(%cst : f32) outs(%485 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %487 = tensor.empty() : tensor<7x7xf32>
    %488 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%484, %487 : tensor<10x1280x7x7xf32>, tensor<7x7xf32>) outs(%486 : tensor<10x1280x1x1xf32>) -> tensor<10x1280x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<10x1280x1x1xf32>) outs(%485 : tensor<10x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %495 = arith.divf %in, %cst_3 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1280x1x1xf32>
    %collapsed_244 = tensor.collapse_shape %489 [[0], [1, 2, 3]] : tensor<10x1280x1x1xf32> into tensor<10x1280xf32>
    %490 = tensor.empty() : tensor<1280x1000xf32>
    %transposed = linalg.transpose ins(%arg157 : tensor<1000x1280xf32>) outs(%490 : tensor<1280x1000xf32>) permutation = [1, 0] 
    %491 = tensor.empty() : tensor<10x1000xf32>
    %492 = linalg.fill ins(%cst : f32) outs(%491 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %493 = linalg.matmul ins(%collapsed_244, %transposed : tensor<10x1280xf32>, tensor<1280x1000xf32>) outs(%492 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %494 = linalg.generic {indexing_maps = [#map4, #map5, #map4], iterator_types = ["parallel", "parallel"]} ins(%493, %arg158 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%491 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_245: f32, %out: f32):
      %495 = arith.addf %in, %in_245 : f32
      linalg.yield %495 : f32
    } -> tensor<10x1000xf32>
    return %494 : tensor<10x1000xf32>
  }
}
