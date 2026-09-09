#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @DenseNet121(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<64x3x7x7xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64xf32>, %arg6: tensor<32x64x3x3xf32>, %arg7: tensor<96xf32>, %arg8: tensor<96xf32>, %arg9: tensor<32x96x3x3xf32>, %arg10: tensor<128xf32>, %arg11: tensor<128xf32>, %arg12: tensor<32x128x3x3xf32>, %arg13: tensor<160xf32>, %arg14: tensor<160xf32>, %arg15: tensor<32x160x3x3xf32>, %arg16: tensor<192xf32>, %arg17: tensor<192xf32>, %arg18: tensor<32x192x3x3xf32>, %arg19: tensor<224xf32>, %arg20: tensor<224xf32>, %arg21: tensor<32x224x3x3xf32>, %arg22: tensor<128xf32>, %arg23: tensor<128xf32>, %arg24: tensor<32x128x3x3xf32>, %arg25: tensor<160xf32>, %arg26: tensor<160xf32>, %arg27: tensor<32x160x3x3xf32>, %arg28: tensor<192xf32>, %arg29: tensor<192xf32>, %arg30: tensor<32x192x3x3xf32>, %arg31: tensor<224xf32>, %arg32: tensor<224xf32>, %arg33: tensor<32x224x3x3xf32>, %arg34: tensor<256xf32>, %arg35: tensor<256xf32>, %arg36: tensor<32x256x3x3xf32>, %arg37: tensor<288xf32>, %arg38: tensor<288xf32>, %arg39: tensor<32x288x3x3xf32>, %arg40: tensor<320xf32>, %arg41: tensor<320xf32>, %arg42: tensor<32x320x3x3xf32>, %arg43: tensor<352xf32>, %arg44: tensor<352xf32>, %arg45: tensor<32x352x3x3xf32>, %arg46: tensor<384xf32>, %arg47: tensor<384xf32>, %arg48: tensor<32x384x3x3xf32>, %arg49: tensor<416xf32>, %arg50: tensor<416xf32>, %arg51: tensor<32x416x3x3xf32>, %arg52: tensor<448xf32>, %arg53: tensor<448xf32>, %arg54: tensor<32x448x3x3xf32>, %arg55: tensor<480xf32>, %arg56: tensor<480xf32>, %arg57: tensor<32x480x3x3xf32>, %arg58: tensor<256xf32>, %arg59: tensor<256xf32>, %arg60: tensor<32x256x3x3xf32>, %arg61: tensor<288xf32>, %arg62: tensor<288xf32>, %arg63: tensor<32x288x3x3xf32>, %arg64: tensor<320xf32>, %arg65: tensor<320xf32>, %arg66: tensor<32x320x3x3xf32>, %arg67: tensor<352xf32>, %arg68: tensor<352xf32>, %arg69: tensor<32x352x3x3xf32>, %arg70: tensor<384xf32>, %arg71: tensor<384xf32>, %arg72: tensor<32x384x3x3xf32>, %arg73: tensor<416xf32>, %arg74: tensor<416xf32>, %arg75: tensor<32x416x3x3xf32>, %arg76: tensor<448xf32>, %arg77: tensor<448xf32>, %arg78: tensor<32x448x3x3xf32>, %arg79: tensor<480xf32>, %arg80: tensor<480xf32>, %arg81: tensor<32x480x3x3xf32>, %arg82: tensor<512xf32>, %arg83: tensor<512xf32>, %arg84: tensor<32x512x3x3xf32>, %arg85: tensor<544xf32>, %arg86: tensor<544xf32>, %arg87: tensor<32x544x3x3xf32>, %arg88: tensor<576xf32>, %arg89: tensor<576xf32>, %arg90: tensor<32x576x3x3xf32>, %arg91: tensor<608xf32>, %arg92: tensor<608xf32>, %arg93: tensor<32x608x3x3xf32>, %arg94: tensor<640xf32>, %arg95: tensor<640xf32>, %arg96: tensor<32x640x3x3xf32>, %arg97: tensor<672xf32>, %arg98: tensor<672xf32>, %arg99: tensor<32x672x3x3xf32>, %arg100: tensor<704xf32>, %arg101: tensor<704xf32>, %arg102: tensor<32x704x3x3xf32>, %arg103: tensor<736xf32>, %arg104: tensor<736xf32>, %arg105: tensor<32x736x3x3xf32>, %arg106: tensor<768xf32>, %arg107: tensor<768xf32>, %arg108: tensor<32x768x3x3xf32>, %arg109: tensor<800xf32>, %arg110: tensor<800xf32>, %arg111: tensor<32x800x3x3xf32>, %arg112: tensor<832xf32>, %arg113: tensor<832xf32>, %arg114: tensor<32x832x3x3xf32>, %arg115: tensor<864xf32>, %arg116: tensor<864xf32>, %arg117: tensor<32x864x3x3xf32>, %arg118: tensor<896xf32>, %arg119: tensor<896xf32>, %arg120: tensor<32x896x3x3xf32>, %arg121: tensor<928xf32>, %arg122: tensor<928xf32>, %arg123: tensor<32x928x3x3xf32>, %arg124: tensor<960xf32>, %arg125: tensor<960xf32>, %arg126: tensor<32x960x3x3xf32>, %arg127: tensor<992xf32>, %arg128: tensor<992xf32>, %arg129: tensor<32x992x3x3xf32>, %arg130: tensor<512xf32>, %arg131: tensor<512xf32>, %arg132: tensor<32x512x3x3xf32>, %arg133: tensor<544xf32>, %arg134: tensor<544xf32>, %arg135: tensor<32x544x3x3xf32>, %arg136: tensor<576xf32>, %arg137: tensor<576xf32>, %arg138: tensor<32x576x3x3xf32>, %arg139: tensor<608xf32>, %arg140: tensor<608xf32>, %arg141: tensor<32x608x3x3xf32>, %arg142: tensor<640xf32>, %arg143: tensor<640xf32>, %arg144: tensor<32x640x3x3xf32>, %arg145: tensor<672xf32>, %arg146: tensor<672xf32>, %arg147: tensor<32x672x3x3xf32>, %arg148: tensor<704xf32>, %arg149: tensor<704xf32>, %arg150: tensor<32x704x3x3xf32>, %arg151: tensor<736xf32>, %arg152: tensor<736xf32>, %arg153: tensor<32x736x3x3xf32>, %arg154: tensor<768xf32>, %arg155: tensor<768xf32>, %arg156: tensor<32x768x3x3xf32>, %arg157: tensor<800xf32>, %arg158: tensor<800xf32>, %arg159: tensor<32x800x3x3xf32>, %arg160: tensor<832xf32>, %arg161: tensor<832xf32>, %arg162: tensor<32x832x3x3xf32>, %arg163: tensor<864xf32>, %arg164: tensor<864xf32>, %arg165: tensor<32x864x3x3xf32>, %arg166: tensor<896xf32>, %arg167: tensor<896xf32>, %arg168: tensor<32x896x3x3xf32>, %arg169: tensor<928xf32>, %arg170: tensor<928xf32>, %arg171: tensor<32x928x3x3xf32>, %arg172: tensor<960xf32>, %arg173: tensor<960xf32>, %arg174: tensor<32x960x3x3xf32>, %arg175: tensor<992xf32>, %arg176: tensor<992xf32>, %arg177: tensor<32x992x3x3xf32>, %arg178: tensor<256xf32>, %arg179: tensor<256xf32>, %arg180: tensor<128x256x1x1xf32>, %arg181: tensor<512xf32>, %arg182: tensor<512xf32>, %arg183: tensor<256x512x1x1xf32>, %arg184: tensor<1024xf32>, %arg185: tensor<1024xf32>, %arg186: tensor<512x1024x1x1xf32>, %arg187: tensor<1024xf32>, %arg188: tensor<1024xf32>, %arg189: tensor<10x1024xf32>, %arg190: tensor<10xf32>, %arg191: tensor<64xf32>, %arg192: tensor<64xf32>, %arg193: tensor<64xf32>, %arg194: tensor<64xf32>, %arg195: tensor<96xf32>, %arg196: tensor<96xf32>, %arg197: tensor<128xf32>, %arg198: tensor<128xf32>, %arg199: tensor<160xf32>, %arg200: tensor<160xf32>, %arg201: tensor<192xf32>, %arg202: tensor<192xf32>, %arg203: tensor<224xf32>, %arg204: tensor<224xf32>, %arg205: tensor<128xf32>, %arg206: tensor<128xf32>, %arg207: tensor<160xf32>, %arg208: tensor<160xf32>, %arg209: tensor<192xf32>, %arg210: tensor<192xf32>, %arg211: tensor<224xf32>, %arg212: tensor<224xf32>, %arg213: tensor<256xf32>, %arg214: tensor<256xf32>, %arg215: tensor<288xf32>, %arg216: tensor<288xf32>, %arg217: tensor<320xf32>, %arg218: tensor<320xf32>, %arg219: tensor<352xf32>, %arg220: tensor<352xf32>, %arg221: tensor<384xf32>, %arg222: tensor<384xf32>, %arg223: tensor<416xf32>, %arg224: tensor<416xf32>, %arg225: tensor<448xf32>, %arg226: tensor<448xf32>, %arg227: tensor<480xf32>, %arg228: tensor<480xf32>, %arg229: tensor<256xf32>, %arg230: tensor<256xf32>, %arg231: tensor<288xf32>, %arg232: tensor<288xf32>, %arg233: tensor<320xf32>, %arg234: tensor<320xf32>, %arg235: tensor<352xf32>, %arg236: tensor<352xf32>, %arg237: tensor<384xf32>, %arg238: tensor<384xf32>, %arg239: tensor<416xf32>, %arg240: tensor<416xf32>, %arg241: tensor<448xf32>, %arg242: tensor<448xf32>, %arg243: tensor<480xf32>, %arg244: tensor<480xf32>, %arg245: tensor<512xf32>, %arg246: tensor<512xf32>, %arg247: tensor<544xf32>, %arg248: tensor<544xf32>, %arg249: tensor<576xf32>, %arg250: tensor<576xf32>, %arg251: tensor<608xf32>, %arg252: tensor<608xf32>, %arg253: tensor<640xf32>, %arg254: tensor<640xf32>, %arg255: tensor<672xf32>, %arg256: tensor<672xf32>, %arg257: tensor<704xf32>, %arg258: tensor<704xf32>, %arg259: tensor<736xf32>, %arg260: tensor<736xf32>, %arg261: tensor<768xf32>, %arg262: tensor<768xf32>, %arg263: tensor<800xf32>, %arg264: tensor<800xf32>, %arg265: tensor<832xf32>, %arg266: tensor<832xf32>, %arg267: tensor<864xf32>, %arg268: tensor<864xf32>, %arg269: tensor<896xf32>, %arg270: tensor<896xf32>, %arg271: tensor<928xf32>, %arg272: tensor<928xf32>, %arg273: tensor<960xf32>, %arg274: tensor<960xf32>, %arg275: tensor<992xf32>, %arg276: tensor<992xf32>, %arg277: tensor<512xf32>, %arg278: tensor<512xf32>, %arg279: tensor<544xf32>, %arg280: tensor<544xf32>, %arg281: tensor<576xf32>, %arg282: tensor<576xf32>, %arg283: tensor<608xf32>, %arg284: tensor<608xf32>, %arg285: tensor<640xf32>, %arg286: tensor<640xf32>, %arg287: tensor<672xf32>, %arg288: tensor<672xf32>, %arg289: tensor<704xf32>, %arg290: tensor<704xf32>, %arg291: tensor<736xf32>, %arg292: tensor<736xf32>, %arg293: tensor<768xf32>, %arg294: tensor<768xf32>, %arg295: tensor<800xf32>, %arg296: tensor<800xf32>, %arg297: tensor<832xf32>, %arg298: tensor<832xf32>, %arg299: tensor<864xf32>, %arg300: tensor<864xf32>, %arg301: tensor<896xf32>, %arg302: tensor<896xf32>, %arg303: tensor<928xf32>, %arg304: tensor<928xf32>, %arg305: tensor<960xf32>, %arg306: tensor<960xf32>, %arg307: tensor<992xf32>, %arg308: tensor<992xf32>, %arg309: tensor<256xf32>, %arg310: tensor<256xf32>, %arg311: tensor<512xf32>, %arg312: tensor<512xf32>, %arg313: tensor<1024xf32>, %arg314: tensor<1024xf32>, %arg315: tensor<1024xf32>, %arg316: tensor<1024xf32>) -> tensor<10x10xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e-05 : f64
    %cst_2 = arith.constant 4.000000e+00 : f32
    %cst_3 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x230x230xf32>
    %0 = tensor.empty() : tensor<10x64x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %3 = tensor.empty() : tensor<64xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg192 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<64xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg191 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_4 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_4 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_5 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_6 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_6 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x64x112x112xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x64x112x112xf32>
    %padded_7 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %11 = tensor.empty() : tensor<10x64x56x56xf32>
    %12 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_7, %13 : tensor<10x64x114x114xf32>, tensor<3x3xf32>) outs(%12 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg194 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<64xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%15 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<64xf32>
    %expanded_8 = tensor.expand_shape %arg193 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_9 = tensor.expand_shape %16 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_8 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x56x56xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %expanded_9 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_10 = tensor.expand_shape %arg4 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %expanded_10 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_11 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %expanded_11 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x64x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x64x56x56xf32>
    %padded_12 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %22 = tensor.empty() : tensor<10x32x56x56xf32>
    %23 = linalg.fill ins(%cst : f32) outs(%22 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_12, %arg6 : tensor<10x64x58x58xf32>, tensor<32x64x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat = tensor.concat dim(1) %14, %24 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x96x56x56xf32>
    %25 = tensor.empty() : tensor<96xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg196 : tensor<96xf32>) outs(%25 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<96xf32>
    %27 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%26 : tensor<96xf32>) outs(%25 : tensor<96xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<96xf32>
    %expanded_13 = tensor.expand_shape %arg195 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %expanded_14 = tensor.expand_shape %27 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %28 = tensor.empty() : tensor<10x96x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat, %expanded_13 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%28 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x96x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_14 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%28 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_15 = tensor.expand_shape %arg7 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %expanded_15 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%28 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x96x56x56xf32>
    %expanded_16 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [96, 1, 1] : tensor<96xf32> into tensor<96x1x1xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %expanded_16 : tensor<10x96x56x56xf32>, tensor<96x1x1xf32>) outs(%28 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x96x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<10x96x56x56xf32>) outs(%28 : tensor<10x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x96x56x56xf32>
    %padded_17 = tensor.pad %33 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x96x56x56xf32> to tensor<10x96x58x58xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_17, %arg9 : tensor<10x96x58x58xf32>, tensor<32x96x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat_18 = tensor.concat dim(1) %14, %24, %34 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x128x56x56xf32>
    %35 = tensor.empty() : tensor<128xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg198 : tensor<128xf32>) outs(%35 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<128xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%36 : tensor<128xf32>) outs(%35 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<128xf32>
    %expanded_19 = tensor.expand_shape %arg197 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_20 = tensor.expand_shape %37 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %38 = tensor.empty() : tensor<10x128x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_18, %expanded_19 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%38 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %expanded_20 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%38 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_21 = tensor.expand_shape %arg10 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %expanded_21 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%38 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_22 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %expanded_22 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%38 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<10x128x56x56xf32>) outs(%38 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x128x56x56xf32>
    %padded_23 = tensor.pad %43 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %arg12 : tensor<10x128x58x58xf32>, tensor<32x128x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat_24 = tensor.concat dim(1) %14, %24, %34, %44 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x160x56x56xf32>
    %45 = tensor.empty() : tensor<160xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg200 : tensor<160xf32>) outs(%45 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<160xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%46 : tensor<160xf32>) outs(%45 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<160xf32>
    %expanded_25 = tensor.expand_shape %arg199 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_26 = tensor.expand_shape %47 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %48 = tensor.empty() : tensor<10x160x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_24, %expanded_25 : tensor<10x160x56x56xf32>, tensor<160x1x1xf32>) outs(%48 : tensor<10x160x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x56x56xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %expanded_26 : tensor<10x160x56x56xf32>, tensor<160x1x1xf32>) outs(%48 : tensor<10x160x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x56x56xf32>
    %expanded_27 = tensor.expand_shape %arg13 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %51 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %expanded_27 : tensor<10x160x56x56xf32>, tensor<160x1x1xf32>) outs(%48 : tensor<10x160x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %52 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %expanded_28 : tensor<10x160x56x56xf32>, tensor<160x1x1xf32>) outs(%48 : tensor<10x160x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x56x56xf32>
    %53 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<10x160x56x56xf32>) outs(%48 : tensor<10x160x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x160x56x56xf32>
    %padded_29 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x160x56x56xf32> to tensor<10x160x58x58xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %arg15 : tensor<10x160x58x58xf32>, tensor<32x160x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat_30 = tensor.concat dim(1) %14, %24, %34, %44, %54 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x192x56x56xf32>
    %55 = tensor.empty() : tensor<192xf32>
    %56 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg202 : tensor<192xf32>) outs(%55 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<192xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%56 : tensor<192xf32>) outs(%55 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<192xf32>
    %expanded_31 = tensor.expand_shape %arg201 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_32 = tensor.expand_shape %57 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %58 = tensor.empty() : tensor<10x192x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_30, %expanded_31 : tensor<10x192x56x56xf32>, tensor<192x1x1xf32>) outs(%58 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %expanded_32 : tensor<10x192x56x56xf32>, tensor<192x1x1xf32>) outs(%58 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x56x56xf32>
    %expanded_33 = tensor.expand_shape %arg16 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %expanded_33 : tensor<10x192x56x56xf32>, tensor<192x1x1xf32>) outs(%58 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x56x56xf32>
    %expanded_34 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %expanded_34 : tensor<10x192x56x56xf32>, tensor<192x1x1xf32>) outs(%58 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x56x56xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<10x192x56x56xf32>) outs(%58 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x192x56x56xf32>
    %padded_35 = tensor.pad %63 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x192x56x56xf32> to tensor<10x192x58x58xf32>
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_35, %arg18 : tensor<10x192x58x58xf32>, tensor<32x192x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat_36 = tensor.concat dim(1) %14, %24, %34, %44, %54, %64 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x224x56x56xf32>
    %65 = tensor.empty() : tensor<224xf32>
    %66 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg204 : tensor<224xf32>) outs(%65 : tensor<224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<224xf32>
    %67 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%66 : tensor<224xf32>) outs(%65 : tensor<224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<224xf32>
    %expanded_37 = tensor.expand_shape %arg203 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %expanded_38 = tensor.expand_shape %67 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %68 = tensor.empty() : tensor<10x224x56x56xf32>
    %69 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_36, %expanded_37 : tensor<10x224x56x56xf32>, tensor<224x1x1xf32>) outs(%68 : tensor<10x224x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x56x56xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %expanded_38 : tensor<10x224x56x56xf32>, tensor<224x1x1xf32>) outs(%68 : tensor<10x224x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x56x56xf32>
    %expanded_39 = tensor.expand_shape %arg19 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %expanded_39 : tensor<10x224x56x56xf32>, tensor<224x1x1xf32>) outs(%68 : tensor<10x224x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x56x56xf32>
    %expanded_40 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %expanded_40 : tensor<10x224x56x56xf32>, tensor<224x1x1xf32>) outs(%68 : tensor<10x224x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x56x56xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72 : tensor<10x224x56x56xf32>) outs(%68 : tensor<10x224x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x224x56x56xf32>
    %padded_41 = tensor.pad %73 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x224x56x56xf32> to tensor<10x224x58x58xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %arg21 : tensor<10x224x58x58xf32>, tensor<32x224x3x3xf32>) outs(%23 : tensor<10x32x56x56xf32>) -> tensor<10x32x56x56xf32>
    %concat_42 = tensor.concat dim(1) %14, %24, %34, %44, %54, %64, %74 : (tensor<10x64x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>, tensor<10x32x56x56xf32>) -> tensor<10x256x56x56xf32>
    %75 = tensor.empty() : tensor<256xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg310 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<256xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%76 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<256xf32>
    %expanded_43 = tensor.expand_shape %arg309 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_44 = tensor.expand_shape %77 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %78 = tensor.empty() : tensor<10x256x56x56xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_42, %expanded_43 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%78 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_44 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%78 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_45 = tensor.expand_shape %arg178 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_45 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%78 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_46 = tensor.expand_shape %arg179 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %expanded_46 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%78 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x56x56xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<10x256x56x56xf32>) outs(%78 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x256x56x56xf32>
    %84 = linalg.fill ins(%cst : f32) outs(%38 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%83, %arg180 : tensor<10x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%84 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %86 = tensor.empty() : tensor<10x128x28x28xf32>
    %87 = linalg.fill ins(%cst : f32) outs(%86 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %88 = tensor.empty() : tensor<2x2xf32>
    %89 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%85, %88 : tensor<10x128x56x56xf32>, tensor<2x2xf32>) outs(%87 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89 : tensor<10x128x28x28xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.divf %in, %cst_2 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg206 : tensor<128xf32>) outs(%35 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<128xf32>
    %92 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%91 : tensor<128xf32>) outs(%35 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<128xf32>
    %expanded_47 = tensor.expand_shape %arg205 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_48 = tensor.expand_shape %92 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %expanded_47 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x28x28xf32>
    %94 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %expanded_48 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_49 = tensor.expand_shape %arg22 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %expanded_49 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_50 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %expanded_50 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x128x28x28xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<10x128x28x28xf32>) outs(%86 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x128x28x28xf32>
    %padded_51 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %98 = tensor.empty() : tensor<10x32x28x28xf32>
    %99 = linalg.fill ins(%cst : f32) outs(%98 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_51, %arg24 : tensor<10x128x30x30xf32>, tensor<32x128x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_52 = tensor.concat dim(1) %90, %100 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x160x28x28xf32>
    %101 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg208 : tensor<160xf32>) outs(%45 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<160xf32>
    %102 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%101 : tensor<160xf32>) outs(%45 : tensor<160xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<160xf32>
    %expanded_53 = tensor.expand_shape %arg207 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %expanded_54 = tensor.expand_shape %102 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %103 = tensor.empty() : tensor<10x160x28x28xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_52, %expanded_53 : tensor<10x160x28x28xf32>, tensor<160x1x1xf32>) outs(%103 : tensor<10x160x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x28x28xf32>
    %105 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %expanded_54 : tensor<10x160x28x28xf32>, tensor<160x1x1xf32>) outs(%103 : tensor<10x160x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x28x28xf32>
    %expanded_55 = tensor.expand_shape %arg25 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %expanded_55 : tensor<10x160x28x28xf32>, tensor<160x1x1xf32>) outs(%103 : tensor<10x160x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x28x28xf32>
    %expanded_56 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [160, 1, 1] : tensor<160xf32> into tensor<160x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %expanded_56 : tensor<10x160x28x28xf32>, tensor<160x1x1xf32>) outs(%103 : tensor<10x160x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x160x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<10x160x28x28xf32>) outs(%103 : tensor<10x160x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x160x28x28xf32>
    %padded_57 = tensor.pad %108 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x160x28x28xf32> to tensor<10x160x30x30xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_57, %arg27 : tensor<10x160x30x30xf32>, tensor<32x160x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_58 = tensor.concat dim(1) %90, %100, %109 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x192x28x28xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg210 : tensor<192xf32>) outs(%55 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<192xf32>
    %111 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%110 : tensor<192xf32>) outs(%55 : tensor<192xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<192xf32>
    %expanded_59 = tensor.expand_shape %arg209 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %expanded_60 = tensor.expand_shape %111 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %112 = tensor.empty() : tensor<10x192x28x28xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_58, %expanded_59 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%112 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x28x28xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %expanded_60 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%112 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_61 = tensor.expand_shape %arg28 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %expanded_61 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%112 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x28x28xf32>
    %expanded_62 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [192, 1, 1] : tensor<192xf32> into tensor<192x1x1xf32>
    %116 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %expanded_62 : tensor<10x192x28x28xf32>, tensor<192x1x1xf32>) outs(%112 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x192x28x28xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<10x192x28x28xf32>) outs(%112 : tensor<10x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x192x28x28xf32>
    %padded_63 = tensor.pad %117 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_63, %arg30 : tensor<10x192x30x30xf32>, tensor<32x192x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_64 = tensor.concat dim(1) %90, %100, %109, %118 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x224x28x28xf32>
    %119 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg212 : tensor<224xf32>) outs(%65 : tensor<224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<224xf32>
    %120 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%119 : tensor<224xf32>) outs(%65 : tensor<224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<224xf32>
    %expanded_65 = tensor.expand_shape %arg211 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %expanded_66 = tensor.expand_shape %120 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %121 = tensor.empty() : tensor<10x224x28x28xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_64, %expanded_65 : tensor<10x224x28x28xf32>, tensor<224x1x1xf32>) outs(%121 : tensor<10x224x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %expanded_66 : tensor<10x224x28x28xf32>, tensor<224x1x1xf32>) outs(%121 : tensor<10x224x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x28x28xf32>
    %expanded_67 = tensor.expand_shape %arg31 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %expanded_67 : tensor<10x224x28x28xf32>, tensor<224x1x1xf32>) outs(%121 : tensor<10x224x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x28x28xf32>
    %expanded_68 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [224, 1, 1] : tensor<224xf32> into tensor<224x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_68 : tensor<10x224x28x28xf32>, tensor<224x1x1xf32>) outs(%121 : tensor<10x224x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x224x28x28xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<10x224x28x28xf32>) outs(%121 : tensor<10x224x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x224x28x28xf32>
    %padded_69 = tensor.pad %126 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x224x28x28xf32> to tensor<10x224x30x30xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_69, %arg33 : tensor<10x224x30x30xf32>, tensor<32x224x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_70 = tensor.concat dim(1) %90, %100, %109, %118, %127 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x256x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg214 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<256xf32>
    %129 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%128 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<256xf32>
    %expanded_71 = tensor.expand_shape %arg213 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_72 = tensor.expand_shape %129 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %130 = tensor.empty() : tensor<10x256x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_70, %expanded_71 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %expanded_72 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_73 = tensor.expand_shape %arg34 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %expanded_73 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_74 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %expanded_74 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%130 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x28x28xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<10x256x28x28xf32>) outs(%130 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x256x28x28xf32>
    %padded_75 = tensor.pad %135 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %136 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_75, %arg36 : tensor<10x256x30x30xf32>, tensor<32x256x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_76 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x288x28x28xf32>
    %137 = tensor.empty() : tensor<288xf32>
    %138 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg216 : tensor<288xf32>) outs(%137 : tensor<288xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<288xf32>
    %139 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%138 : tensor<288xf32>) outs(%137 : tensor<288xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<288xf32>
    %expanded_77 = tensor.expand_shape %arg215 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %expanded_78 = tensor.expand_shape %139 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %140 = tensor.empty() : tensor<10x288x28x28xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_76, %expanded_77 : tensor<10x288x28x28xf32>, tensor<288x1x1xf32>) outs(%140 : tensor<10x288x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %expanded_78 : tensor<10x288x28x28xf32>, tensor<288x1x1xf32>) outs(%140 : tensor<10x288x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x28x28xf32>
    %expanded_79 = tensor.expand_shape %arg37 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %expanded_79 : tensor<10x288x28x28xf32>, tensor<288x1x1xf32>) outs(%140 : tensor<10x288x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x28x28xf32>
    %expanded_80 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %expanded_80 : tensor<10x288x28x28xf32>, tensor<288x1x1xf32>) outs(%140 : tensor<10x288x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x28x28xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<10x288x28x28xf32>) outs(%140 : tensor<10x288x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x288x28x28xf32>
    %padded_81 = tensor.pad %145 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x288x28x28xf32> to tensor<10x288x30x30xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_81, %arg39 : tensor<10x288x30x30xf32>, tensor<32x288x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_82 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x320x28x28xf32>
    %147 = tensor.empty() : tensor<320xf32>
    %148 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg218 : tensor<320xf32>) outs(%147 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<320xf32>
    %149 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%148 : tensor<320xf32>) outs(%147 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<320xf32>
    %expanded_83 = tensor.expand_shape %arg217 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %expanded_84 = tensor.expand_shape %149 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %150 = tensor.empty() : tensor<10x320x28x28xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_82, %expanded_83 : tensor<10x320x28x28xf32>, tensor<320x1x1xf32>) outs(%150 : tensor<10x320x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x28x28xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %expanded_84 : tensor<10x320x28x28xf32>, tensor<320x1x1xf32>) outs(%150 : tensor<10x320x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x28x28xf32>
    %expanded_85 = tensor.expand_shape %arg40 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_85 : tensor<10x320x28x28xf32>, tensor<320x1x1xf32>) outs(%150 : tensor<10x320x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x28x28xf32>
    %expanded_86 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_86 : tensor<10x320x28x28xf32>, tensor<320x1x1xf32>) outs(%150 : tensor<10x320x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x28x28xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<10x320x28x28xf32>) outs(%150 : tensor<10x320x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x320x28x28xf32>
    %padded_87 = tensor.pad %155 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x320x28x28xf32> to tensor<10x320x30x30xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_87, %arg42 : tensor<10x320x30x30xf32>, tensor<32x320x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_88 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x352x28x28xf32>
    %157 = tensor.empty() : tensor<352xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg220 : tensor<352xf32>) outs(%157 : tensor<352xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<352xf32>
    %159 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%158 : tensor<352xf32>) outs(%157 : tensor<352xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<352xf32>
    %expanded_89 = tensor.expand_shape %arg219 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %expanded_90 = tensor.expand_shape %159 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %160 = tensor.empty() : tensor<10x352x28x28xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_88, %expanded_89 : tensor<10x352x28x28xf32>, tensor<352x1x1xf32>) outs(%160 : tensor<10x352x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x28x28xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_90 : tensor<10x352x28x28xf32>, tensor<352x1x1xf32>) outs(%160 : tensor<10x352x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x28x28xf32>
    %expanded_91 = tensor.expand_shape %arg43 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_91 : tensor<10x352x28x28xf32>, tensor<352x1x1xf32>) outs(%160 : tensor<10x352x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x28x28xf32>
    %expanded_92 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %expanded_92 : tensor<10x352x28x28xf32>, tensor<352x1x1xf32>) outs(%160 : tensor<10x352x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<10x352x28x28xf32>) outs(%160 : tensor<10x352x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x352x28x28xf32>
    %padded_93 = tensor.pad %165 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x352x28x28xf32> to tensor<10x352x30x30xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_93, %arg45 : tensor<10x352x30x30xf32>, tensor<32x352x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_94 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156, %166 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x384x28x28xf32>
    %167 = tensor.empty() : tensor<384xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg222 : tensor<384xf32>) outs(%167 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<384xf32>
    %169 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%168 : tensor<384xf32>) outs(%167 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<384xf32>
    %expanded_95 = tensor.expand_shape %arg221 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_96 = tensor.expand_shape %169 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %170 = tensor.empty() : tensor<10x384x28x28xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_94, %expanded_95 : tensor<10x384x28x28xf32>, tensor<384x1x1xf32>) outs(%170 : tensor<10x384x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x28x28xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %expanded_96 : tensor<10x384x28x28xf32>, tensor<384x1x1xf32>) outs(%170 : tensor<10x384x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x28x28xf32>
    %expanded_97 = tensor.expand_shape %arg46 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %expanded_97 : tensor<10x384x28x28xf32>, tensor<384x1x1xf32>) outs(%170 : tensor<10x384x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x28x28xf32>
    %expanded_98 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %174 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %expanded_98 : tensor<10x384x28x28xf32>, tensor<384x1x1xf32>) outs(%170 : tensor<10x384x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x28x28xf32>
    %175 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<10x384x28x28xf32>) outs(%170 : tensor<10x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x384x28x28xf32>
    %padded_99 = tensor.pad %175 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x384x28x28xf32> to tensor<10x384x30x30xf32>
    %176 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_99, %arg48 : tensor<10x384x30x30xf32>, tensor<32x384x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_100 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156, %166, %176 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x416x28x28xf32>
    %177 = tensor.empty() : tensor<416xf32>
    %178 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg224 : tensor<416xf32>) outs(%177 : tensor<416xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<416xf32>
    %179 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%178 : tensor<416xf32>) outs(%177 : tensor<416xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<416xf32>
    %expanded_101 = tensor.expand_shape %arg223 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %expanded_102 = tensor.expand_shape %179 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %180 = tensor.empty() : tensor<10x416x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_100, %expanded_101 : tensor<10x416x28x28xf32>, tensor<416x1x1xf32>) outs(%180 : tensor<10x416x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %expanded_102 : tensor<10x416x28x28xf32>, tensor<416x1x1xf32>) outs(%180 : tensor<10x416x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x28x28xf32>
    %expanded_103 = tensor.expand_shape %arg49 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %expanded_103 : tensor<10x416x28x28xf32>, tensor<416x1x1xf32>) outs(%180 : tensor<10x416x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x28x28xf32>
    %expanded_104 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %expanded_104 : tensor<10x416x28x28xf32>, tensor<416x1x1xf32>) outs(%180 : tensor<10x416x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x28x28xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<10x416x28x28xf32>) outs(%180 : tensor<10x416x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x416x28x28xf32>
    %padded_105 = tensor.pad %185 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x416x28x28xf32> to tensor<10x416x30x30xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_105, %arg51 : tensor<10x416x30x30xf32>, tensor<32x416x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_106 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156, %166, %176, %186 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x448x28x28xf32>
    %187 = tensor.empty() : tensor<448xf32>
    %188 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg226 : tensor<448xf32>) outs(%187 : tensor<448xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<448xf32>
    %189 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%188 : tensor<448xf32>) outs(%187 : tensor<448xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<448xf32>
    %expanded_107 = tensor.expand_shape %arg225 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %expanded_108 = tensor.expand_shape %189 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %190 = tensor.empty() : tensor<10x448x28x28xf32>
    %191 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_106, %expanded_107 : tensor<10x448x28x28xf32>, tensor<448x1x1xf32>) outs(%190 : tensor<10x448x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x28x28xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %expanded_108 : tensor<10x448x28x28xf32>, tensor<448x1x1xf32>) outs(%190 : tensor<10x448x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x28x28xf32>
    %expanded_109 = tensor.expand_shape %arg52 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %expanded_109 : tensor<10x448x28x28xf32>, tensor<448x1x1xf32>) outs(%190 : tensor<10x448x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x28x28xf32>
    %expanded_110 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %expanded_110 : tensor<10x448x28x28xf32>, tensor<448x1x1xf32>) outs(%190 : tensor<10x448x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x28x28xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<10x448x28x28xf32>) outs(%190 : tensor<10x448x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x448x28x28xf32>
    %padded_111 = tensor.pad %195 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x448x28x28xf32> to tensor<10x448x30x30xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_111, %arg54 : tensor<10x448x30x30xf32>, tensor<32x448x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_112 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156, %166, %176, %186, %196 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x480x28x28xf32>
    %197 = tensor.empty() : tensor<480xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg228 : tensor<480xf32>) outs(%197 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<480xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%198 : tensor<480xf32>) outs(%197 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<480xf32>
    %expanded_113 = tensor.expand_shape %arg227 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_114 = tensor.expand_shape %199 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %200 = tensor.empty() : tensor<10x480x28x28xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_112, %expanded_113 : tensor<10x480x28x28xf32>, tensor<480x1x1xf32>) outs(%200 : tensor<10x480x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x28x28xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %expanded_114 : tensor<10x480x28x28xf32>, tensor<480x1x1xf32>) outs(%200 : tensor<10x480x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x28x28xf32>
    %expanded_115 = tensor.expand_shape %arg55 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_115 : tensor<10x480x28x28xf32>, tensor<480x1x1xf32>) outs(%200 : tensor<10x480x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x28x28xf32>
    %expanded_116 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %expanded_116 : tensor<10x480x28x28xf32>, tensor<480x1x1xf32>) outs(%200 : tensor<10x480x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x28x28xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<10x480x28x28xf32>) outs(%200 : tensor<10x480x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x480x28x28xf32>
    %padded_117 = tensor.pad %205 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x480x28x28xf32> to tensor<10x480x30x30xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_117, %arg57 : tensor<10x480x30x30xf32>, tensor<32x480x3x3xf32>) outs(%99 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat_118 = tensor.concat dim(1) %90, %100, %109, %118, %127, %136, %146, %156, %166, %176, %186, %196, %206 : (tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x512x28x28xf32>
    %207 = tensor.empty() : tensor<512xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg312 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<512xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%208 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<512xf32>
    %expanded_119 = tensor.expand_shape %arg311 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_120 = tensor.expand_shape %209 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %210 = tensor.empty() : tensor<10x512x28x28xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_118, %expanded_119 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%210 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x28x28xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %expanded_120 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%210 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_121 = tensor.expand_shape %arg181 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %expanded_121 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%210 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_122 = tensor.expand_shape %arg182 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %expanded_122 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%210 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<10x512x28x28xf32>) outs(%210 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x512x28x28xf32>
    %216 = linalg.fill ins(%cst : f32) outs(%130 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %217 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %arg183 : tensor<10x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%216 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %218 = tensor.empty() : tensor<10x256x14x14xf32>
    %219 = linalg.fill ins(%cst : f32) outs(%218 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %220 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%217, %88 : tensor<10x256x28x28xf32>, tensor<2x2xf32>) outs(%219 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<10x256x14x14xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.divf %in, %cst_2 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x14x14xf32>
    %222 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg230 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<256xf32>
    %223 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%222 : tensor<256xf32>) outs(%75 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<256xf32>
    %expanded_123 = tensor.expand_shape %arg229 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_124 = tensor.expand_shape %223 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %expanded_123 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %expanded_124 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_125 = tensor.expand_shape %arg58 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %expanded_125 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_126 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %expanded_126 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x256x14x14xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<10x256x14x14xf32>) outs(%218 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_127 = tensor.pad %228 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %229 = tensor.empty() : tensor<10x32x14x14xf32>
    %230 = linalg.fill ins(%cst : f32) outs(%229 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %arg60 : tensor<10x256x16x16xf32>, tensor<32x256x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_128 = tensor.concat dim(1) %221, %231 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x288x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg232 : tensor<288xf32>) outs(%137 : tensor<288xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<288xf32>
    %233 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%232 : tensor<288xf32>) outs(%137 : tensor<288xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<288xf32>
    %expanded_129 = tensor.expand_shape %arg231 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %expanded_130 = tensor.expand_shape %233 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %234 = tensor.empty() : tensor<10x288x14x14xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_128, %expanded_129 : tensor<10x288x14x14xf32>, tensor<288x1x1xf32>) outs(%234 : tensor<10x288x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %expanded_130 : tensor<10x288x14x14xf32>, tensor<288x1x1xf32>) outs(%234 : tensor<10x288x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x14x14xf32>
    %expanded_131 = tensor.expand_shape %arg61 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %expanded_131 : tensor<10x288x14x14xf32>, tensor<288x1x1xf32>) outs(%234 : tensor<10x288x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x14x14xf32>
    %expanded_132 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [288, 1, 1] : tensor<288xf32> into tensor<288x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %expanded_132 : tensor<10x288x14x14xf32>, tensor<288x1x1xf32>) outs(%234 : tensor<10x288x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x288x14x14xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238 : tensor<10x288x14x14xf32>) outs(%234 : tensor<10x288x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x288x14x14xf32>
    %padded_133 = tensor.pad %239 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x288x14x14xf32> to tensor<10x288x16x16xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_133, %arg63 : tensor<10x288x16x16xf32>, tensor<32x288x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_134 = tensor.concat dim(1) %221, %231, %240 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x320x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg234 : tensor<320xf32>) outs(%147 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<320xf32>
    %242 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%241 : tensor<320xf32>) outs(%147 : tensor<320xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<320xf32>
    %expanded_135 = tensor.expand_shape %arg233 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %expanded_136 = tensor.expand_shape %242 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %243 = tensor.empty() : tensor<10x320x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_134, %expanded_135 : tensor<10x320x14x14xf32>, tensor<320x1x1xf32>) outs(%243 : tensor<10x320x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %expanded_136 : tensor<10x320x14x14xf32>, tensor<320x1x1xf32>) outs(%243 : tensor<10x320x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x14x14xf32>
    %expanded_137 = tensor.expand_shape %arg64 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %expanded_137 : tensor<10x320x14x14xf32>, tensor<320x1x1xf32>) outs(%243 : tensor<10x320x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x14x14xf32>
    %expanded_138 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [320, 1, 1] : tensor<320xf32> into tensor<320x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %expanded_138 : tensor<10x320x14x14xf32>, tensor<320x1x1xf32>) outs(%243 : tensor<10x320x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x320x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<10x320x14x14xf32>) outs(%243 : tensor<10x320x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x320x14x14xf32>
    %padded_139 = tensor.pad %248 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x320x14x14xf32> to tensor<10x320x16x16xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_139, %arg66 : tensor<10x320x16x16xf32>, tensor<32x320x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_140 = tensor.concat dim(1) %221, %231, %240, %249 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x352x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg236 : tensor<352xf32>) outs(%157 : tensor<352xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<352xf32>
    %251 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%250 : tensor<352xf32>) outs(%157 : tensor<352xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<352xf32>
    %expanded_141 = tensor.expand_shape %arg235 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %expanded_142 = tensor.expand_shape %251 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %252 = tensor.empty() : tensor<10x352x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_140, %expanded_141 : tensor<10x352x14x14xf32>, tensor<352x1x1xf32>) outs(%252 : tensor<10x352x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %expanded_142 : tensor<10x352x14x14xf32>, tensor<352x1x1xf32>) outs(%252 : tensor<10x352x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x14x14xf32>
    %expanded_143 = tensor.expand_shape %arg67 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %expanded_143 : tensor<10x352x14x14xf32>, tensor<352x1x1xf32>) outs(%252 : tensor<10x352x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x14x14xf32>
    %expanded_144 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [352, 1, 1] : tensor<352xf32> into tensor<352x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %expanded_144 : tensor<10x352x14x14xf32>, tensor<352x1x1xf32>) outs(%252 : tensor<10x352x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x352x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<10x352x14x14xf32>) outs(%252 : tensor<10x352x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x352x14x14xf32>
    %padded_145 = tensor.pad %257 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x352x14x14xf32> to tensor<10x352x16x16xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_145, %arg69 : tensor<10x352x16x16xf32>, tensor<32x352x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_146 = tensor.concat dim(1) %221, %231, %240, %249, %258 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x384x14x14xf32>
    %259 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg238 : tensor<384xf32>) outs(%167 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<384xf32>
    %260 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%259 : tensor<384xf32>) outs(%167 : tensor<384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<384xf32>
    %expanded_147 = tensor.expand_shape %arg237 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %expanded_148 = tensor.expand_shape %260 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %261 = tensor.empty() : tensor<10x384x14x14xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_146, %expanded_147 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%261 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %expanded_148 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%261 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_149 = tensor.expand_shape %arg70 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %expanded_149 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%261 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x14x14xf32>
    %expanded_150 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [384, 1, 1] : tensor<384xf32> into tensor<384x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %expanded_150 : tensor<10x384x14x14xf32>, tensor<384x1x1xf32>) outs(%261 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x384x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<10x384x14x14xf32>) outs(%261 : tensor<10x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x384x14x14xf32>
    %padded_151 = tensor.pad %266 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x384x14x14xf32> to tensor<10x384x16x16xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_151, %arg72 : tensor<10x384x16x16xf32>, tensor<32x384x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_152 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x416x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg240 : tensor<416xf32>) outs(%177 : tensor<416xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<416xf32>
    %269 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%268 : tensor<416xf32>) outs(%177 : tensor<416xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<416xf32>
    %expanded_153 = tensor.expand_shape %arg239 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %expanded_154 = tensor.expand_shape %269 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %270 = tensor.empty() : tensor<10x416x14x14xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_152, %expanded_153 : tensor<10x416x14x14xf32>, tensor<416x1x1xf32>) outs(%270 : tensor<10x416x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %expanded_154 : tensor<10x416x14x14xf32>, tensor<416x1x1xf32>) outs(%270 : tensor<10x416x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x14x14xf32>
    %expanded_155 = tensor.expand_shape %arg73 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %expanded_155 : tensor<10x416x14x14xf32>, tensor<416x1x1xf32>) outs(%270 : tensor<10x416x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x14x14xf32>
    %expanded_156 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [416, 1, 1] : tensor<416xf32> into tensor<416x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %expanded_156 : tensor<10x416x14x14xf32>, tensor<416x1x1xf32>) outs(%270 : tensor<10x416x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x416x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<10x416x14x14xf32>) outs(%270 : tensor<10x416x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x416x14x14xf32>
    %padded_157 = tensor.pad %275 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x416x14x14xf32> to tensor<10x416x16x16xf32>
    %276 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_157, %arg75 : tensor<10x416x16x16xf32>, tensor<32x416x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_158 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x448x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg242 : tensor<448xf32>) outs(%187 : tensor<448xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<448xf32>
    %278 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%277 : tensor<448xf32>) outs(%187 : tensor<448xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<448xf32>
    %expanded_159 = tensor.expand_shape %arg241 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %expanded_160 = tensor.expand_shape %278 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %279 = tensor.empty() : tensor<10x448x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_158, %expanded_159 : tensor<10x448x14x14xf32>, tensor<448x1x1xf32>) outs(%279 : tensor<10x448x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %expanded_160 : tensor<10x448x14x14xf32>, tensor<448x1x1xf32>) outs(%279 : tensor<10x448x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x14x14xf32>
    %expanded_161 = tensor.expand_shape %arg76 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %expanded_161 : tensor<10x448x14x14xf32>, tensor<448x1x1xf32>) outs(%279 : tensor<10x448x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x14x14xf32>
    %expanded_162 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [448, 1, 1] : tensor<448xf32> into tensor<448x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %expanded_162 : tensor<10x448x14x14xf32>, tensor<448x1x1xf32>) outs(%279 : tensor<10x448x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x448x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<10x448x14x14xf32>) outs(%279 : tensor<10x448x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x448x14x14xf32>
    %padded_163 = tensor.pad %284 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x448x14x14xf32> to tensor<10x448x16x16xf32>
    %285 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_163, %arg78 : tensor<10x448x16x16xf32>, tensor<32x448x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_164 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x480x14x14xf32>
    %286 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg244 : tensor<480xf32>) outs(%197 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<480xf32>
    %287 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%286 : tensor<480xf32>) outs(%197 : tensor<480xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<480xf32>
    %expanded_165 = tensor.expand_shape %arg243 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %expanded_166 = tensor.expand_shape %287 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %288 = tensor.empty() : tensor<10x480x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_164, %expanded_165 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%288 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %expanded_166 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%288 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_167 = tensor.expand_shape %arg79 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290, %expanded_167 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%288 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x14x14xf32>
    %expanded_168 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [480, 1, 1] : tensor<480xf32> into tensor<480x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %expanded_168 : tensor<10x480x14x14xf32>, tensor<480x1x1xf32>) outs(%288 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x480x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<10x480x14x14xf32>) outs(%288 : tensor<10x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x480x14x14xf32>
    %padded_169 = tensor.pad %293 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_169, %arg81 : tensor<10x480x16x16xf32>, tensor<32x480x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_170 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x512x14x14xf32>
    %295 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg246 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<512xf32>
    %296 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%295 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<512xf32>
    %expanded_171 = tensor.expand_shape %arg245 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_172 = tensor.expand_shape %296 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %297 = tensor.empty() : tensor<10x512x14x14xf32>
    %298 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_170, %expanded_171 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%297 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %expanded_172 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%297 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_173 = tensor.expand_shape %arg82 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %expanded_173 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%297 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_174 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %expanded_174 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%297 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x14x14xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<10x512x14x14xf32>) outs(%297 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_175 = tensor.pad %302 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %303 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_175, %arg84 : tensor<10x512x16x16xf32>, tensor<32x512x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_176 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x544x14x14xf32>
    %304 = tensor.empty() : tensor<544xf32>
    %305 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg248 : tensor<544xf32>) outs(%304 : tensor<544xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<544xf32>
    %306 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%305 : tensor<544xf32>) outs(%304 : tensor<544xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<544xf32>
    %expanded_177 = tensor.expand_shape %arg247 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %expanded_178 = tensor.expand_shape %306 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %307 = tensor.empty() : tensor<10x544x14x14xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_176, %expanded_177 : tensor<10x544x14x14xf32>, tensor<544x1x1xf32>) outs(%307 : tensor<10x544x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x14x14xf32>
    %309 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %expanded_178 : tensor<10x544x14x14xf32>, tensor<544x1x1xf32>) outs(%307 : tensor<10x544x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x14x14xf32>
    %expanded_179 = tensor.expand_shape %arg85 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %expanded_179 : tensor<10x544x14x14xf32>, tensor<544x1x1xf32>) outs(%307 : tensor<10x544x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x14x14xf32>
    %expanded_180 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %expanded_180 : tensor<10x544x14x14xf32>, tensor<544x1x1xf32>) outs(%307 : tensor<10x544x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<10x544x14x14xf32>) outs(%307 : tensor<10x544x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x544x14x14xf32>
    %padded_181 = tensor.pad %312 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x544x14x14xf32> to tensor<10x544x16x16xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_181, %arg87 : tensor<10x544x16x16xf32>, tensor<32x544x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_182 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x576x14x14xf32>
    %314 = tensor.empty() : tensor<576xf32>
    %315 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg250 : tensor<576xf32>) outs(%314 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<576xf32>
    %316 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%315 : tensor<576xf32>) outs(%314 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<576xf32>
    %expanded_183 = tensor.expand_shape %arg249 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_184 = tensor.expand_shape %316 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %317 = tensor.empty() : tensor<10x576x14x14xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_182, %expanded_183 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%317 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x14x14xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %expanded_184 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%317 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_185 = tensor.expand_shape %arg88 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %expanded_185 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%317 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x14x14xf32>
    %expanded_186 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320, %expanded_186 : tensor<10x576x14x14xf32>, tensor<576x1x1xf32>) outs(%317 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<10x576x14x14xf32>) outs(%317 : tensor<10x576x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x576x14x14xf32>
    %padded_187 = tensor.pad %322 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x576x14x14xf32> to tensor<10x576x16x16xf32>
    %323 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_187, %arg90 : tensor<10x576x16x16xf32>, tensor<32x576x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_188 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x608x14x14xf32>
    %324 = tensor.empty() : tensor<608xf32>
    %325 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg252 : tensor<608xf32>) outs(%324 : tensor<608xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<608xf32>
    %326 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%325 : tensor<608xf32>) outs(%324 : tensor<608xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<608xf32>
    %expanded_189 = tensor.expand_shape %arg251 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %expanded_190 = tensor.expand_shape %326 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %327 = tensor.empty() : tensor<10x608x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_188, %expanded_189 : tensor<10x608x14x14xf32>, tensor<608x1x1xf32>) outs(%327 : tensor<10x608x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %expanded_190 : tensor<10x608x14x14xf32>, tensor<608x1x1xf32>) outs(%327 : tensor<10x608x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x14x14xf32>
    %expanded_191 = tensor.expand_shape %arg91 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329, %expanded_191 : tensor<10x608x14x14xf32>, tensor<608x1x1xf32>) outs(%327 : tensor<10x608x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x14x14xf32>
    %expanded_192 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %expanded_192 : tensor<10x608x14x14xf32>, tensor<608x1x1xf32>) outs(%327 : tensor<10x608x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<10x608x14x14xf32>) outs(%327 : tensor<10x608x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x608x14x14xf32>
    %padded_193 = tensor.pad %332 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x608x14x14xf32> to tensor<10x608x16x16xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_193, %arg93 : tensor<10x608x16x16xf32>, tensor<32x608x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_194 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x640x14x14xf32>
    %334 = tensor.empty() : tensor<640xf32>
    %335 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg254 : tensor<640xf32>) outs(%334 : tensor<640xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<640xf32>
    %336 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%335 : tensor<640xf32>) outs(%334 : tensor<640xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<640xf32>
    %expanded_195 = tensor.expand_shape %arg253 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %expanded_196 = tensor.expand_shape %336 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %337 = tensor.empty() : tensor<10x640x14x14xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_194, %expanded_195 : tensor<10x640x14x14xf32>, tensor<640x1x1xf32>) outs(%337 : tensor<10x640x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x14x14xf32>
    %339 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %expanded_196 : tensor<10x640x14x14xf32>, tensor<640x1x1xf32>) outs(%337 : tensor<10x640x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x14x14xf32>
    %expanded_197 = tensor.expand_shape %arg94 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %340 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %expanded_197 : tensor<10x640x14x14xf32>, tensor<640x1x1xf32>) outs(%337 : tensor<10x640x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x14x14xf32>
    %expanded_198 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %expanded_198 : tensor<10x640x14x14xf32>, tensor<640x1x1xf32>) outs(%337 : tensor<10x640x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<10x640x14x14xf32>) outs(%337 : tensor<10x640x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x640x14x14xf32>
    %padded_199 = tensor.pad %342 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x640x14x14xf32> to tensor<10x640x16x16xf32>
    %343 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_199, %arg96 : tensor<10x640x16x16xf32>, tensor<32x640x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_200 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x672x14x14xf32>
    %344 = tensor.empty() : tensor<672xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg256 : tensor<672xf32>) outs(%344 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<672xf32>
    %346 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%345 : tensor<672xf32>) outs(%344 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<672xf32>
    %expanded_201 = tensor.expand_shape %arg255 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_202 = tensor.expand_shape %346 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %347 = tensor.empty() : tensor<10x672x14x14xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_200, %expanded_201 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%347 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %expanded_202 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%347 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_203 = tensor.expand_shape %arg97 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %expanded_203 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%347 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x14x14xf32>
    %expanded_204 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %expanded_204 : tensor<10x672x14x14xf32>, tensor<672x1x1xf32>) outs(%347 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x14x14xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<10x672x14x14xf32>) outs(%347 : tensor<10x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x672x14x14xf32>
    %padded_205 = tensor.pad %352 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x672x14x14xf32> to tensor<10x672x16x16xf32>
    %353 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %arg99 : tensor<10x672x16x16xf32>, tensor<32x672x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_206 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x704x14x14xf32>
    %354 = tensor.empty() : tensor<704xf32>
    %355 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg258 : tensor<704xf32>) outs(%354 : tensor<704xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<704xf32>
    %356 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%355 : tensor<704xf32>) outs(%354 : tensor<704xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<704xf32>
    %expanded_207 = tensor.expand_shape %arg257 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %expanded_208 = tensor.expand_shape %356 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %357 = tensor.empty() : tensor<10x704x14x14xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_206, %expanded_207 : tensor<10x704x14x14xf32>, tensor<704x1x1xf32>) outs(%357 : tensor<10x704x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %expanded_208 : tensor<10x704x14x14xf32>, tensor<704x1x1xf32>) outs(%357 : tensor<10x704x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x14x14xf32>
    %expanded_209 = tensor.expand_shape %arg100 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %expanded_209 : tensor<10x704x14x14xf32>, tensor<704x1x1xf32>) outs(%357 : tensor<10x704x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x14x14xf32>
    %expanded_210 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %expanded_210 : tensor<10x704x14x14xf32>, tensor<704x1x1xf32>) outs(%357 : tensor<10x704x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<10x704x14x14xf32>) outs(%357 : tensor<10x704x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x704x14x14xf32>
    %padded_211 = tensor.pad %362 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x704x14x14xf32> to tensor<10x704x16x16xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_211, %arg102 : tensor<10x704x16x16xf32>, tensor<32x704x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_212 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x736x14x14xf32>
    %364 = tensor.empty() : tensor<736xf32>
    %365 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg260 : tensor<736xf32>) outs(%364 : tensor<736xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<736xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%365 : tensor<736xf32>) outs(%364 : tensor<736xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<736xf32>
    %expanded_213 = tensor.expand_shape %arg259 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %expanded_214 = tensor.expand_shape %366 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %367 = tensor.empty() : tensor<10x736x14x14xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_212, %expanded_213 : tensor<10x736x14x14xf32>, tensor<736x1x1xf32>) outs(%367 : tensor<10x736x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %expanded_214 : tensor<10x736x14x14xf32>, tensor<736x1x1xf32>) outs(%367 : tensor<10x736x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x14x14xf32>
    %expanded_215 = tensor.expand_shape %arg103 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %expanded_215 : tensor<10x736x14x14xf32>, tensor<736x1x1xf32>) outs(%367 : tensor<10x736x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x14x14xf32>
    %expanded_216 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370, %expanded_216 : tensor<10x736x14x14xf32>, tensor<736x1x1xf32>) outs(%367 : tensor<10x736x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<10x736x14x14xf32>) outs(%367 : tensor<10x736x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x736x14x14xf32>
    %padded_217 = tensor.pad %372 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x736x14x14xf32> to tensor<10x736x16x16xf32>
    %373 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_217, %arg105 : tensor<10x736x16x16xf32>, tensor<32x736x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_218 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x768x14x14xf32>
    %374 = tensor.empty() : tensor<768xf32>
    %375 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg262 : tensor<768xf32>) outs(%374 : tensor<768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<768xf32>
    %376 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%375 : tensor<768xf32>) outs(%374 : tensor<768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<768xf32>
    %expanded_219 = tensor.expand_shape %arg261 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %expanded_220 = tensor.expand_shape %376 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %377 = tensor.empty() : tensor<10x768x14x14xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_218, %expanded_219 : tensor<10x768x14x14xf32>, tensor<768x1x1xf32>) outs(%377 : tensor<10x768x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %expanded_220 : tensor<10x768x14x14xf32>, tensor<768x1x1xf32>) outs(%377 : tensor<10x768x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x14x14xf32>
    %expanded_221 = tensor.expand_shape %arg106 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379, %expanded_221 : tensor<10x768x14x14xf32>, tensor<768x1x1xf32>) outs(%377 : tensor<10x768x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x14x14xf32>
    %expanded_222 = tensor.expand_shape %arg107 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %expanded_222 : tensor<10x768x14x14xf32>, tensor<768x1x1xf32>) outs(%377 : tensor<10x768x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x14x14xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<10x768x14x14xf32>) outs(%377 : tensor<10x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x768x14x14xf32>
    %padded_223 = tensor.pad %382 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x768x14x14xf32> to tensor<10x768x16x16xf32>
    %383 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_223, %arg108 : tensor<10x768x16x16xf32>, tensor<32x768x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_224 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x800x14x14xf32>
    %384 = tensor.empty() : tensor<800xf32>
    %385 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg264 : tensor<800xf32>) outs(%384 : tensor<800xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<800xf32>
    %386 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%385 : tensor<800xf32>) outs(%384 : tensor<800xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<800xf32>
    %expanded_225 = tensor.expand_shape %arg263 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %expanded_226 = tensor.expand_shape %386 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %387 = tensor.empty() : tensor<10x800x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_224, %expanded_225 : tensor<10x800x14x14xf32>, tensor<800x1x1xf32>) outs(%387 : tensor<10x800x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %expanded_226 : tensor<10x800x14x14xf32>, tensor<800x1x1xf32>) outs(%387 : tensor<10x800x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x14x14xf32>
    %expanded_227 = tensor.expand_shape %arg109 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %expanded_227 : tensor<10x800x14x14xf32>, tensor<800x1x1xf32>) outs(%387 : tensor<10x800x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x14x14xf32>
    %expanded_228 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %expanded_228 : tensor<10x800x14x14xf32>, tensor<800x1x1xf32>) outs(%387 : tensor<10x800x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<10x800x14x14xf32>) outs(%387 : tensor<10x800x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x800x14x14xf32>
    %padded_229 = tensor.pad %392 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x800x14x14xf32> to tensor<10x800x16x16xf32>
    %393 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_229, %arg111 : tensor<10x800x16x16xf32>, tensor<32x800x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_230 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x832x14x14xf32>
    %394 = tensor.empty() : tensor<832xf32>
    %395 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg266 : tensor<832xf32>) outs(%394 : tensor<832xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<832xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%395 : tensor<832xf32>) outs(%394 : tensor<832xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<832xf32>
    %expanded_231 = tensor.expand_shape %arg265 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %expanded_232 = tensor.expand_shape %396 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %397 = tensor.empty() : tensor<10x832x14x14xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_230, %expanded_231 : tensor<10x832x14x14xf32>, tensor<832x1x1xf32>) outs(%397 : tensor<10x832x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x14x14xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %expanded_232 : tensor<10x832x14x14xf32>, tensor<832x1x1xf32>) outs(%397 : tensor<10x832x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x14x14xf32>
    %expanded_233 = tensor.expand_shape %arg112 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %expanded_233 : tensor<10x832x14x14xf32>, tensor<832x1x1xf32>) outs(%397 : tensor<10x832x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x14x14xf32>
    %expanded_234 = tensor.expand_shape %arg113 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400, %expanded_234 : tensor<10x832x14x14xf32>, tensor<832x1x1xf32>) outs(%397 : tensor<10x832x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x14x14xf32>
    %402 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401 : tensor<10x832x14x14xf32>) outs(%397 : tensor<10x832x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x832x14x14xf32>
    %padded_235 = tensor.pad %402 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x832x14x14xf32> to tensor<10x832x16x16xf32>
    %403 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_235, %arg114 : tensor<10x832x16x16xf32>, tensor<32x832x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_236 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x864x14x14xf32>
    %404 = tensor.empty() : tensor<864xf32>
    %405 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg268 : tensor<864xf32>) outs(%404 : tensor<864xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<864xf32>
    %406 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%405 : tensor<864xf32>) outs(%404 : tensor<864xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<864xf32>
    %expanded_237 = tensor.expand_shape %arg267 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %expanded_238 = tensor.expand_shape %406 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %407 = tensor.empty() : tensor<10x864x14x14xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_236, %expanded_237 : tensor<10x864x14x14xf32>, tensor<864x1x1xf32>) outs(%407 : tensor<10x864x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %expanded_238 : tensor<10x864x14x14xf32>, tensor<864x1x1xf32>) outs(%407 : tensor<10x864x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x14x14xf32>
    %expanded_239 = tensor.expand_shape %arg115 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %expanded_239 : tensor<10x864x14x14xf32>, tensor<864x1x1xf32>) outs(%407 : tensor<10x864x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x14x14xf32>
    %expanded_240 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %expanded_240 : tensor<10x864x14x14xf32>, tensor<864x1x1xf32>) outs(%407 : tensor<10x864x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<10x864x14x14xf32>) outs(%407 : tensor<10x864x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x864x14x14xf32>
    %padded_241 = tensor.pad %412 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x864x14x14xf32> to tensor<10x864x16x16xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_241, %arg117 : tensor<10x864x16x16xf32>, tensor<32x864x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_242 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403, %413 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x896x14x14xf32>
    %414 = tensor.empty() : tensor<896xf32>
    %415 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg270 : tensor<896xf32>) outs(%414 : tensor<896xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<896xf32>
    %416 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%415 : tensor<896xf32>) outs(%414 : tensor<896xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<896xf32>
    %expanded_243 = tensor.expand_shape %arg269 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %expanded_244 = tensor.expand_shape %416 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %417 = tensor.empty() : tensor<10x896x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_242, %expanded_243 : tensor<10x896x14x14xf32>, tensor<896x1x1xf32>) outs(%417 : tensor<10x896x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %expanded_244 : tensor<10x896x14x14xf32>, tensor<896x1x1xf32>) outs(%417 : tensor<10x896x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x14x14xf32>
    %expanded_245 = tensor.expand_shape %arg118 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419, %expanded_245 : tensor<10x896x14x14xf32>, tensor<896x1x1xf32>) outs(%417 : tensor<10x896x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x14x14xf32>
    %expanded_246 = tensor.expand_shape %arg119 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %expanded_246 : tensor<10x896x14x14xf32>, tensor<896x1x1xf32>) outs(%417 : tensor<10x896x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x14x14xf32>
    %422 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<10x896x14x14xf32>) outs(%417 : tensor<10x896x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x896x14x14xf32>
    %padded_247 = tensor.pad %422 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x896x14x14xf32> to tensor<10x896x16x16xf32>
    %423 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_247, %arg120 : tensor<10x896x16x16xf32>, tensor<32x896x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_248 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403, %413, %423 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x928x14x14xf32>
    %424 = tensor.empty() : tensor<928xf32>
    %425 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg272 : tensor<928xf32>) outs(%424 : tensor<928xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<928xf32>
    %426 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%425 : tensor<928xf32>) outs(%424 : tensor<928xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<928xf32>
    %expanded_249 = tensor.expand_shape %arg271 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %expanded_250 = tensor.expand_shape %426 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %427 = tensor.empty() : tensor<10x928x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_248, %expanded_249 : tensor<10x928x14x14xf32>, tensor<928x1x1xf32>) outs(%427 : tensor<10x928x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %expanded_250 : tensor<10x928x14x14xf32>, tensor<928x1x1xf32>) outs(%427 : tensor<10x928x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x14x14xf32>
    %expanded_251 = tensor.expand_shape %arg121 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %430 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429, %expanded_251 : tensor<10x928x14x14xf32>, tensor<928x1x1xf32>) outs(%427 : tensor<10x928x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x14x14xf32>
    %expanded_252 = tensor.expand_shape %arg122 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %431 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %expanded_252 : tensor<10x928x14x14xf32>, tensor<928x1x1xf32>) outs(%427 : tensor<10x928x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x14x14xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<10x928x14x14xf32>) outs(%427 : tensor<10x928x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x928x14x14xf32>
    %padded_253 = tensor.pad %432 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x928x14x14xf32> to tensor<10x928x16x16xf32>
    %433 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_253, %arg123 : tensor<10x928x16x16xf32>, tensor<32x928x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_254 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403, %413, %423, %433 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x960x14x14xf32>
    %434 = tensor.empty() : tensor<960xf32>
    %435 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg274 : tensor<960xf32>) outs(%434 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<960xf32>
    %436 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%435 : tensor<960xf32>) outs(%434 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<960xf32>
    %expanded_255 = tensor.expand_shape %arg273 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_256 = tensor.expand_shape %436 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %437 = tensor.empty() : tensor<10x960x14x14xf32>
    %438 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_254, %expanded_255 : tensor<10x960x14x14xf32>, tensor<960x1x1xf32>) outs(%437 : tensor<10x960x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x14x14xf32>
    %439 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %expanded_256 : tensor<10x960x14x14xf32>, tensor<960x1x1xf32>) outs(%437 : tensor<10x960x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x14x14xf32>
    %expanded_257 = tensor.expand_shape %arg124 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %expanded_257 : tensor<10x960x14x14xf32>, tensor<960x1x1xf32>) outs(%437 : tensor<10x960x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x14x14xf32>
    %expanded_258 = tensor.expand_shape %arg125 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440, %expanded_258 : tensor<10x960x14x14xf32>, tensor<960x1x1xf32>) outs(%437 : tensor<10x960x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x14x14xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<10x960x14x14xf32>) outs(%437 : tensor<10x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x960x14x14xf32>
    %padded_259 = tensor.pad %442 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x960x14x14xf32> to tensor<10x960x16x16xf32>
    %443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_259, %arg126 : tensor<10x960x16x16xf32>, tensor<32x960x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_260 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403, %413, %423, %433, %443 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x992x14x14xf32>
    %444 = tensor.empty() : tensor<992xf32>
    %445 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg276 : tensor<992xf32>) outs(%444 : tensor<992xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<992xf32>
    %446 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%445 : tensor<992xf32>) outs(%444 : tensor<992xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<992xf32>
    %expanded_261 = tensor.expand_shape %arg275 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %expanded_262 = tensor.expand_shape %446 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %447 = tensor.empty() : tensor<10x992x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_260, %expanded_261 : tensor<10x992x14x14xf32>, tensor<992x1x1xf32>) outs(%447 : tensor<10x992x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x14x14xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %expanded_262 : tensor<10x992x14x14xf32>, tensor<992x1x1xf32>) outs(%447 : tensor<10x992x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x14x14xf32>
    %expanded_263 = tensor.expand_shape %arg127 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %expanded_263 : tensor<10x992x14x14xf32>, tensor<992x1x1xf32>) outs(%447 : tensor<10x992x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x14x14xf32>
    %expanded_264 = tensor.expand_shape %arg128 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %expanded_264 : tensor<10x992x14x14xf32>, tensor<992x1x1xf32>) outs(%447 : tensor<10x992x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<10x992x14x14xf32>) outs(%447 : tensor<10x992x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x992x14x14xf32>
    %padded_265 = tensor.pad %452 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x992x14x14xf32> to tensor<10x992x16x16xf32>
    %453 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_265, %arg129 : tensor<10x992x16x16xf32>, tensor<32x992x3x3xf32>) outs(%230 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %concat_266 = tensor.concat dim(1) %221, %231, %240, %249, %258, %267, %276, %285, %294, %303, %313, %323, %333, %343, %353, %363, %373, %383, %393, %403, %413, %423, %433, %443, %453 : (tensor<10x256x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>, tensor<10x32x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %454 = tensor.empty() : tensor<1024xf32>
    %455 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg314 : tensor<1024xf32>) outs(%454 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<1024xf32>
    %456 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%455 : tensor<1024xf32>) outs(%454 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<1024xf32>
    %expanded_267 = tensor.expand_shape %arg313 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_268 = tensor.expand_shape %456 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %457 = tensor.empty() : tensor<10x1024x14x14xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_266, %expanded_267 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%457 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x14x14xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %expanded_268 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%457 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_269 = tensor.expand_shape %arg184 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459, %expanded_269 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%457 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_270 = tensor.expand_shape %arg185 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %expanded_270 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%457 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x14x14xf32>
    %462 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<10x1024x14x14xf32>) outs(%457 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x1024x14x14xf32>
    %463 = linalg.fill ins(%cst : f32) outs(%297 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %464 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%462, %arg186 : tensor<10x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%463 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %465 = tensor.empty() : tensor<10x512x7x7xf32>
    %466 = linalg.fill ins(%cst : f32) outs(%465 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %467 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%464, %88 : tensor<10x512x14x14xf32>, tensor<2x2xf32>) outs(%466 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467 : tensor<10x512x7x7xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.divf %in, %cst_2 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x7x7xf32>
    %469 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg278 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<512xf32>
    %470 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%469 : tensor<512xf32>) outs(%207 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<512xf32>
    %expanded_271 = tensor.expand_shape %arg277 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_272 = tensor.expand_shape %470 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %expanded_271 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x7x7xf32>
    %472 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %expanded_272 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_273 = tensor.expand_shape %arg130 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %473 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %expanded_273 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_274 = tensor.expand_shape %arg131 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %expanded_274 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x512x7x7xf32>
    %475 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474 : tensor<10x512x7x7xf32>) outs(%465 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x512x7x7xf32>
    %padded_275 = tensor.pad %475 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x512x7x7xf32> to tensor<10x512x9x9xf32>
    %476 = tensor.empty() : tensor<10x32x7x7xf32>
    %477 = linalg.fill ins(%cst : f32) outs(%476 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %478 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_275, %arg132 : tensor<10x512x9x9xf32>, tensor<32x512x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_276 = tensor.concat dim(1) %468, %478 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x544x7x7xf32>
    %479 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg280 : tensor<544xf32>) outs(%304 : tensor<544xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<544xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%479 : tensor<544xf32>) outs(%304 : tensor<544xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<544xf32>
    %expanded_277 = tensor.expand_shape %arg279 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %expanded_278 = tensor.expand_shape %480 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %481 = tensor.empty() : tensor<10x544x7x7xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_276, %expanded_277 : tensor<10x544x7x7xf32>, tensor<544x1x1xf32>) outs(%481 : tensor<10x544x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x7x7xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %expanded_278 : tensor<10x544x7x7xf32>, tensor<544x1x1xf32>) outs(%481 : tensor<10x544x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x7x7xf32>
    %expanded_279 = tensor.expand_shape %arg133 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %expanded_279 : tensor<10x544x7x7xf32>, tensor<544x1x1xf32>) outs(%481 : tensor<10x544x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x7x7xf32>
    %expanded_280 = tensor.expand_shape %arg134 [[0, 1, 2]] output_shape [544, 1, 1] : tensor<544xf32> into tensor<544x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %expanded_280 : tensor<10x544x7x7xf32>, tensor<544x1x1xf32>) outs(%481 : tensor<10x544x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x544x7x7xf32>
    %486 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485 : tensor<10x544x7x7xf32>) outs(%481 : tensor<10x544x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x544x7x7xf32>
    %padded_281 = tensor.pad %486 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x544x7x7xf32> to tensor<10x544x9x9xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_281, %arg135 : tensor<10x544x9x9xf32>, tensor<32x544x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_282 = tensor.concat dim(1) %468, %478, %487 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x576x7x7xf32>
    %488 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg282 : tensor<576xf32>) outs(%314 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<576xf32>
    %489 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%488 : tensor<576xf32>) outs(%314 : tensor<576xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<576xf32>
    %expanded_283 = tensor.expand_shape %arg281 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %expanded_284 = tensor.expand_shape %489 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %490 = tensor.empty() : tensor<10x576x7x7xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_282, %expanded_283 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%490 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x7x7xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %expanded_284 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%490 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x7x7xf32>
    %expanded_285 = tensor.expand_shape %arg136 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %expanded_285 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%490 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x7x7xf32>
    %expanded_286 = tensor.expand_shape %arg137 [[0, 1, 2]] output_shape [576, 1, 1] : tensor<576xf32> into tensor<576x1x1xf32>
    %494 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %expanded_286 : tensor<10x576x7x7xf32>, tensor<576x1x1xf32>) outs(%490 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x576x7x7xf32>
    %495 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494 : tensor<10x576x7x7xf32>) outs(%490 : tensor<10x576x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x576x7x7xf32>
    %padded_287 = tensor.pad %495 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x576x7x7xf32> to tensor<10x576x9x9xf32>
    %496 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_287, %arg138 : tensor<10x576x9x9xf32>, tensor<32x576x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_288 = tensor.concat dim(1) %468, %478, %487, %496 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x608x7x7xf32>
    %497 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg284 : tensor<608xf32>) outs(%324 : tensor<608xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<608xf32>
    %498 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%497 : tensor<608xf32>) outs(%324 : tensor<608xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<608xf32>
    %expanded_289 = tensor.expand_shape %arg283 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %expanded_290 = tensor.expand_shape %498 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %499 = tensor.empty() : tensor<10x608x7x7xf32>
    %500 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_288, %expanded_289 : tensor<10x608x7x7xf32>, tensor<608x1x1xf32>) outs(%499 : tensor<10x608x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x7x7xf32>
    %501 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500, %expanded_290 : tensor<10x608x7x7xf32>, tensor<608x1x1xf32>) outs(%499 : tensor<10x608x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x7x7xf32>
    %expanded_291 = tensor.expand_shape %arg139 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %expanded_291 : tensor<10x608x7x7xf32>, tensor<608x1x1xf32>) outs(%499 : tensor<10x608x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x7x7xf32>
    %expanded_292 = tensor.expand_shape %arg140 [[0, 1, 2]] output_shape [608, 1, 1] : tensor<608xf32> into tensor<608x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502, %expanded_292 : tensor<10x608x7x7xf32>, tensor<608x1x1xf32>) outs(%499 : tensor<10x608x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x608x7x7xf32>
    %504 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<10x608x7x7xf32>) outs(%499 : tensor<10x608x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x608x7x7xf32>
    %padded_293 = tensor.pad %504 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x608x7x7xf32> to tensor<10x608x9x9xf32>
    %505 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_293, %arg141 : tensor<10x608x9x9xf32>, tensor<32x608x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_294 = tensor.concat dim(1) %468, %478, %487, %496, %505 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x640x7x7xf32>
    %506 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg286 : tensor<640xf32>) outs(%334 : tensor<640xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<640xf32>
    %507 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%506 : tensor<640xf32>) outs(%334 : tensor<640xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<640xf32>
    %expanded_295 = tensor.expand_shape %arg285 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %expanded_296 = tensor.expand_shape %507 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %508 = tensor.empty() : tensor<10x640x7x7xf32>
    %509 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_294, %expanded_295 : tensor<10x640x7x7xf32>, tensor<640x1x1xf32>) outs(%508 : tensor<10x640x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x7x7xf32>
    %510 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %expanded_296 : tensor<10x640x7x7xf32>, tensor<640x1x1xf32>) outs(%508 : tensor<10x640x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x7x7xf32>
    %expanded_297 = tensor.expand_shape %arg142 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %expanded_297 : tensor<10x640x7x7xf32>, tensor<640x1x1xf32>) outs(%508 : tensor<10x640x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x7x7xf32>
    %expanded_298 = tensor.expand_shape %arg143 [[0, 1, 2]] output_shape [640, 1, 1] : tensor<640xf32> into tensor<640x1x1xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %expanded_298 : tensor<10x640x7x7xf32>, tensor<640x1x1xf32>) outs(%508 : tensor<10x640x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x640x7x7xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512 : tensor<10x640x7x7xf32>) outs(%508 : tensor<10x640x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x640x7x7xf32>
    %padded_299 = tensor.pad %513 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x640x7x7xf32> to tensor<10x640x9x9xf32>
    %514 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_299, %arg144 : tensor<10x640x9x9xf32>, tensor<32x640x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_300 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x672x7x7xf32>
    %515 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg288 : tensor<672xf32>) outs(%344 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<672xf32>
    %516 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%515 : tensor<672xf32>) outs(%344 : tensor<672xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<672xf32>
    %expanded_301 = tensor.expand_shape %arg287 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %expanded_302 = tensor.expand_shape %516 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %517 = tensor.empty() : tensor<10x672x7x7xf32>
    %518 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_300, %expanded_301 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%517 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x7x7xf32>
    %519 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %expanded_302 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%517 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x7x7xf32>
    %expanded_303 = tensor.expand_shape %arg145 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %expanded_303 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%517 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x7x7xf32>
    %expanded_304 = tensor.expand_shape %arg146 [[0, 1, 2]] output_shape [672, 1, 1] : tensor<672xf32> into tensor<672x1x1xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %expanded_304 : tensor<10x672x7x7xf32>, tensor<672x1x1xf32>) outs(%517 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x672x7x7xf32>
    %522 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<10x672x7x7xf32>) outs(%517 : tensor<10x672x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x672x7x7xf32>
    %padded_305 = tensor.pad %522 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x672x7x7xf32> to tensor<10x672x9x9xf32>
    %523 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_305, %arg147 : tensor<10x672x9x9xf32>, tensor<32x672x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_306 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x704x7x7xf32>
    %524 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg290 : tensor<704xf32>) outs(%354 : tensor<704xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<704xf32>
    %525 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%524 : tensor<704xf32>) outs(%354 : tensor<704xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<704xf32>
    %expanded_307 = tensor.expand_shape %arg289 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %expanded_308 = tensor.expand_shape %525 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %526 = tensor.empty() : tensor<10x704x7x7xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_306, %expanded_307 : tensor<10x704x7x7xf32>, tensor<704x1x1xf32>) outs(%526 : tensor<10x704x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x7x7xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %expanded_308 : tensor<10x704x7x7xf32>, tensor<704x1x1xf32>) outs(%526 : tensor<10x704x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x7x7xf32>
    %expanded_309 = tensor.expand_shape %arg148 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %529 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528, %expanded_309 : tensor<10x704x7x7xf32>, tensor<704x1x1xf32>) outs(%526 : tensor<10x704x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x7x7xf32>
    %expanded_310 = tensor.expand_shape %arg149 [[0, 1, 2]] output_shape [704, 1, 1] : tensor<704xf32> into tensor<704x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %expanded_310 : tensor<10x704x7x7xf32>, tensor<704x1x1xf32>) outs(%526 : tensor<10x704x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x704x7x7xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<10x704x7x7xf32>) outs(%526 : tensor<10x704x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x704x7x7xf32>
    %padded_311 = tensor.pad %531 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x704x7x7xf32> to tensor<10x704x9x9xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_311, %arg150 : tensor<10x704x9x9xf32>, tensor<32x704x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_312 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x736x7x7xf32>
    %533 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg292 : tensor<736xf32>) outs(%364 : tensor<736xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<736xf32>
    %534 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%533 : tensor<736xf32>) outs(%364 : tensor<736xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<736xf32>
    %expanded_313 = tensor.expand_shape %arg291 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %expanded_314 = tensor.expand_shape %534 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %535 = tensor.empty() : tensor<10x736x7x7xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_312, %expanded_313 : tensor<10x736x7x7xf32>, tensor<736x1x1xf32>) outs(%535 : tensor<10x736x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x7x7xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %expanded_314 : tensor<10x736x7x7xf32>, tensor<736x1x1xf32>) outs(%535 : tensor<10x736x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x7x7xf32>
    %expanded_315 = tensor.expand_shape %arg151 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %538 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %expanded_315 : tensor<10x736x7x7xf32>, tensor<736x1x1xf32>) outs(%535 : tensor<10x736x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x7x7xf32>
    %expanded_316 = tensor.expand_shape %arg152 [[0, 1, 2]] output_shape [736, 1, 1] : tensor<736xf32> into tensor<736x1x1xf32>
    %539 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %expanded_316 : tensor<10x736x7x7xf32>, tensor<736x1x1xf32>) outs(%535 : tensor<10x736x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x736x7x7xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<10x736x7x7xf32>) outs(%535 : tensor<10x736x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x736x7x7xf32>
    %padded_317 = tensor.pad %540 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x736x7x7xf32> to tensor<10x736x9x9xf32>
    %541 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_317, %arg153 : tensor<10x736x9x9xf32>, tensor<32x736x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_318 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x768x7x7xf32>
    %542 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg294 : tensor<768xf32>) outs(%374 : tensor<768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<768xf32>
    %543 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%542 : tensor<768xf32>) outs(%374 : tensor<768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<768xf32>
    %expanded_319 = tensor.expand_shape %arg293 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %expanded_320 = tensor.expand_shape %543 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %544 = tensor.empty() : tensor<10x768x7x7xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_318, %expanded_319 : tensor<10x768x7x7xf32>, tensor<768x1x1xf32>) outs(%544 : tensor<10x768x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x7x7xf32>
    %546 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545, %expanded_320 : tensor<10x768x7x7xf32>, tensor<768x1x1xf32>) outs(%544 : tensor<10x768x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x7x7xf32>
    %expanded_321 = tensor.expand_shape %arg154 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %expanded_321 : tensor<10x768x7x7xf32>, tensor<768x1x1xf32>) outs(%544 : tensor<10x768x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x7x7xf32>
    %expanded_322 = tensor.expand_shape %arg155 [[0, 1, 2]] output_shape [768, 1, 1] : tensor<768xf32> into tensor<768x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547, %expanded_322 : tensor<10x768x7x7xf32>, tensor<768x1x1xf32>) outs(%544 : tensor<10x768x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x768x7x7xf32>
    %549 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<10x768x7x7xf32>) outs(%544 : tensor<10x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x768x7x7xf32>
    %padded_323 = tensor.pad %549 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x768x7x7xf32> to tensor<10x768x9x9xf32>
    %550 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_323, %arg156 : tensor<10x768x9x9xf32>, tensor<32x768x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_324 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x800x7x7xf32>
    %551 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg296 : tensor<800xf32>) outs(%384 : tensor<800xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<800xf32>
    %552 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%551 : tensor<800xf32>) outs(%384 : tensor<800xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<800xf32>
    %expanded_325 = tensor.expand_shape %arg295 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %expanded_326 = tensor.expand_shape %552 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %553 = tensor.empty() : tensor<10x800x7x7xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_324, %expanded_325 : tensor<10x800x7x7xf32>, tensor<800x1x1xf32>) outs(%553 : tensor<10x800x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x7x7xf32>
    %555 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %expanded_326 : tensor<10x800x7x7xf32>, tensor<800x1x1xf32>) outs(%553 : tensor<10x800x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x7x7xf32>
    %expanded_327 = tensor.expand_shape %arg157 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %556 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %expanded_327 : tensor<10x800x7x7xf32>, tensor<800x1x1xf32>) outs(%553 : tensor<10x800x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x7x7xf32>
    %expanded_328 = tensor.expand_shape %arg158 [[0, 1, 2]] output_shape [800, 1, 1] : tensor<800xf32> into tensor<800x1x1xf32>
    %557 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %expanded_328 : tensor<10x800x7x7xf32>, tensor<800x1x1xf32>) outs(%553 : tensor<10x800x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x800x7x7xf32>
    %558 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<10x800x7x7xf32>) outs(%553 : tensor<10x800x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x800x7x7xf32>
    %padded_329 = tensor.pad %558 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x800x7x7xf32> to tensor<10x800x9x9xf32>
    %559 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_329, %arg159 : tensor<10x800x9x9xf32>, tensor<32x800x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_330 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x832x7x7xf32>
    %560 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg298 : tensor<832xf32>) outs(%394 : tensor<832xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<832xf32>
    %561 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%560 : tensor<832xf32>) outs(%394 : tensor<832xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<832xf32>
    %expanded_331 = tensor.expand_shape %arg297 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %expanded_332 = tensor.expand_shape %561 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %562 = tensor.empty() : tensor<10x832x7x7xf32>
    %563 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_330, %expanded_331 : tensor<10x832x7x7xf32>, tensor<832x1x1xf32>) outs(%562 : tensor<10x832x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x7x7xf32>
    %564 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %expanded_332 : tensor<10x832x7x7xf32>, tensor<832x1x1xf32>) outs(%562 : tensor<10x832x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x7x7xf32>
    %expanded_333 = tensor.expand_shape %arg160 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564, %expanded_333 : tensor<10x832x7x7xf32>, tensor<832x1x1xf32>) outs(%562 : tensor<10x832x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x7x7xf32>
    %expanded_334 = tensor.expand_shape %arg161 [[0, 1, 2]] output_shape [832, 1, 1] : tensor<832xf32> into tensor<832x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565, %expanded_334 : tensor<10x832x7x7xf32>, tensor<832x1x1xf32>) outs(%562 : tensor<10x832x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x832x7x7xf32>
    %567 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566 : tensor<10x832x7x7xf32>) outs(%562 : tensor<10x832x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x832x7x7xf32>
    %padded_335 = tensor.pad %567 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %568 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_335, %arg162 : tensor<10x832x9x9xf32>, tensor<32x832x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_336 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x864x7x7xf32>
    %569 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg300 : tensor<864xf32>) outs(%404 : tensor<864xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<864xf32>
    %570 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%569 : tensor<864xf32>) outs(%404 : tensor<864xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<864xf32>
    %expanded_337 = tensor.expand_shape %arg299 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %expanded_338 = tensor.expand_shape %570 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %571 = tensor.empty() : tensor<10x864x7x7xf32>
    %572 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_336, %expanded_337 : tensor<10x864x7x7xf32>, tensor<864x1x1xf32>) outs(%571 : tensor<10x864x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x7x7xf32>
    %573 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %expanded_338 : tensor<10x864x7x7xf32>, tensor<864x1x1xf32>) outs(%571 : tensor<10x864x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x7x7xf32>
    %expanded_339 = tensor.expand_shape %arg163 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %574 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %expanded_339 : tensor<10x864x7x7xf32>, tensor<864x1x1xf32>) outs(%571 : tensor<10x864x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x7x7xf32>
    %expanded_340 = tensor.expand_shape %arg164 [[0, 1, 2]] output_shape [864, 1, 1] : tensor<864xf32> into tensor<864x1x1xf32>
    %575 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %expanded_340 : tensor<10x864x7x7xf32>, tensor<864x1x1xf32>) outs(%571 : tensor<10x864x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x864x7x7xf32>
    %576 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575 : tensor<10x864x7x7xf32>) outs(%571 : tensor<10x864x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x864x7x7xf32>
    %padded_341 = tensor.pad %576 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x864x7x7xf32> to tensor<10x864x9x9xf32>
    %577 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_341, %arg165 : tensor<10x864x9x9xf32>, tensor<32x864x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_342 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568, %577 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x896x7x7xf32>
    %578 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg302 : tensor<896xf32>) outs(%414 : tensor<896xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<896xf32>
    %579 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%578 : tensor<896xf32>) outs(%414 : tensor<896xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<896xf32>
    %expanded_343 = tensor.expand_shape %arg301 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %expanded_344 = tensor.expand_shape %579 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %580 = tensor.empty() : tensor<10x896x7x7xf32>
    %581 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_342, %expanded_343 : tensor<10x896x7x7xf32>, tensor<896x1x1xf32>) outs(%580 : tensor<10x896x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x7x7xf32>
    %582 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %expanded_344 : tensor<10x896x7x7xf32>, tensor<896x1x1xf32>) outs(%580 : tensor<10x896x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x7x7xf32>
    %expanded_345 = tensor.expand_shape %arg166 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %expanded_345 : tensor<10x896x7x7xf32>, tensor<896x1x1xf32>) outs(%580 : tensor<10x896x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x7x7xf32>
    %expanded_346 = tensor.expand_shape %arg167 [[0, 1, 2]] output_shape [896, 1, 1] : tensor<896xf32> into tensor<896x1x1xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %expanded_346 : tensor<10x896x7x7xf32>, tensor<896x1x1xf32>) outs(%580 : tensor<10x896x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x896x7x7xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<10x896x7x7xf32>) outs(%580 : tensor<10x896x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x896x7x7xf32>
    %padded_347 = tensor.pad %585 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x896x7x7xf32> to tensor<10x896x9x9xf32>
    %586 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_347, %arg168 : tensor<10x896x9x9xf32>, tensor<32x896x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_348 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568, %577, %586 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x928x7x7xf32>
    %587 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg304 : tensor<928xf32>) outs(%424 : tensor<928xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<928xf32>
    %588 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%587 : tensor<928xf32>) outs(%424 : tensor<928xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<928xf32>
    %expanded_349 = tensor.expand_shape %arg303 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %expanded_350 = tensor.expand_shape %588 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %589 = tensor.empty() : tensor<10x928x7x7xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_348, %expanded_349 : tensor<10x928x7x7xf32>, tensor<928x1x1xf32>) outs(%589 : tensor<10x928x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x7x7xf32>
    %591 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590, %expanded_350 : tensor<10x928x7x7xf32>, tensor<928x1x1xf32>) outs(%589 : tensor<10x928x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x7x7xf32>
    %expanded_351 = tensor.expand_shape %arg169 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %expanded_351 : tensor<10x928x7x7xf32>, tensor<928x1x1xf32>) outs(%589 : tensor<10x928x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x7x7xf32>
    %expanded_352 = tensor.expand_shape %arg170 [[0, 1, 2]] output_shape [928, 1, 1] : tensor<928xf32> into tensor<928x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %expanded_352 : tensor<10x928x7x7xf32>, tensor<928x1x1xf32>) outs(%589 : tensor<10x928x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x928x7x7xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593 : tensor<10x928x7x7xf32>) outs(%589 : tensor<10x928x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x928x7x7xf32>
    %padded_353 = tensor.pad %594 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x928x7x7xf32> to tensor<10x928x9x9xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_353, %arg171 : tensor<10x928x9x9xf32>, tensor<32x928x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_354 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568, %577, %586, %595 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x960x7x7xf32>
    %596 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg306 : tensor<960xf32>) outs(%434 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<960xf32>
    %597 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%596 : tensor<960xf32>) outs(%434 : tensor<960xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<960xf32>
    %expanded_355 = tensor.expand_shape %arg305 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %expanded_356 = tensor.expand_shape %597 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %598 = tensor.empty() : tensor<10x960x7x7xf32>
    %599 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_354, %expanded_355 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%598 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x7x7xf32>
    %600 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %expanded_356 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%598 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_357 = tensor.expand_shape %arg172 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %expanded_357 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%598 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x7x7xf32>
    %expanded_358 = tensor.expand_shape %arg173 [[0, 1, 2]] output_shape [960, 1, 1] : tensor<960xf32> into tensor<960x1x1xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %expanded_358 : tensor<10x960x7x7xf32>, tensor<960x1x1xf32>) outs(%598 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x960x7x7xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<10x960x7x7xf32>) outs(%598 : tensor<10x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x960x7x7xf32>
    %padded_359 = tensor.pad %603 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x960x7x7xf32> to tensor<10x960x9x9xf32>
    %604 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_359, %arg174 : tensor<10x960x9x9xf32>, tensor<32x960x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_360 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568, %577, %586, %595, %604 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x992x7x7xf32>
    %605 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg308 : tensor<992xf32>) outs(%444 : tensor<992xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<992xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%605 : tensor<992xf32>) outs(%444 : tensor<992xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<992xf32>
    %expanded_361 = tensor.expand_shape %arg307 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %expanded_362 = tensor.expand_shape %606 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %607 = tensor.empty() : tensor<10x992x7x7xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_360, %expanded_361 : tensor<10x992x7x7xf32>, tensor<992x1x1xf32>) outs(%607 : tensor<10x992x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x7x7xf32>
    %609 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608, %expanded_362 : tensor<10x992x7x7xf32>, tensor<992x1x1xf32>) outs(%607 : tensor<10x992x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x7x7xf32>
    %expanded_363 = tensor.expand_shape %arg175 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %expanded_363 : tensor<10x992x7x7xf32>, tensor<992x1x1xf32>) outs(%607 : tensor<10x992x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x7x7xf32>
    %expanded_364 = tensor.expand_shape %arg176 [[0, 1, 2]] output_shape [992, 1, 1] : tensor<992xf32> into tensor<992x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %expanded_364 : tensor<10x992x7x7xf32>, tensor<992x1x1xf32>) outs(%607 : tensor<10x992x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x992x7x7xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<10x992x7x7xf32>) outs(%607 : tensor<10x992x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x992x7x7xf32>
    %padded_365 = tensor.pad %612 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg317: index, %arg318: index, %arg319: index, %arg320: index):
      tensor.yield %cst : f32
    } : tensor<10x992x7x7xf32> to tensor<10x992x9x9xf32>
    %613 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_365, %arg177 : tensor<10x992x9x9xf32>, tensor<32x992x3x3xf32>) outs(%477 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %concat_366 = tensor.concat dim(1) %468, %478, %487, %496, %505, %514, %523, %532, %541, %550, %559, %568, %577, %586, %595, %604, %613 : (tensor<10x512x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>, tensor<10x32x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %614 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg316 : tensor<1024xf32>) outs(%454 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.truncf %cst_1 : f64 to f32
      %633 = arith.addf %in, %632 : f32
      linalg.yield %633 : f32
    } -> tensor<1024xf32>
    %615 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%614 : tensor<1024xf32>) outs(%454 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = math.rsqrt %in : f32
      linalg.yield %632 : f32
    } -> tensor<1024xf32>
    %expanded_367 = tensor.expand_shape %arg315 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_368 = tensor.expand_shape %615 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %616 = tensor.empty() : tensor<10x1024x7x7xf32>
    %617 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%concat_366, %expanded_367 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%616 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.subf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x7x7xf32>
    %618 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %expanded_368 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%616 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_369 = tensor.expand_shape %arg187 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %expanded_369 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%616 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.mulf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_370 = tensor.expand_shape %arg188 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %620 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %expanded_370 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%616 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x7x7xf32>
    %621 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<10x1024x7x7xf32>) outs(%616 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.cmpf ugt, %in, %cst : f32
      %633 = arith.select %632, %in, %cst : f32
      linalg.yield %633 : f32
    } -> tensor<10x1024x7x7xf32>
    %622 = tensor.empty() : tensor<10x1024x1x1xf32>
    %623 = linalg.fill ins(%cst : f32) outs(%622 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %624 = tensor.empty() : tensor<7x7xf32>
    %625 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%621, %624 : tensor<10x1024x7x7xf32>, tensor<7x7xf32>) outs(%623 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %626 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625 : tensor<10x1024x1x1xf32>) outs(%622 : tensor<10x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %632 = arith.divf %in, %cst_3 : f32
      linalg.yield %632 : f32
    } -> tensor<10x1024x1x1xf32>
    %collapsed = tensor.collapse_shape %626 [[0], [1, 2, 3]] : tensor<10x1024x1x1xf32> into tensor<10x1024xf32>
    %627 = tensor.empty() : tensor<1024x10xf32>
    %transposed = linalg.transpose ins(%arg189 : tensor<10x1024xf32>) outs(%627 : tensor<1024x10xf32>) permutation = [1, 0] 
    %628 = tensor.empty() : tensor<10x10xf32>
    %629 = linalg.fill ins(%cst : f32) outs(%628 : tensor<10x10xf32>) -> tensor<10x10xf32>
    %630 = linalg.matmul ins(%collapsed, %transposed : tensor<10x1024xf32>, tensor<1024x10xf32>) outs(%629 : tensor<10x10xf32>) -> tensor<10x10xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%630, %arg190 : tensor<10x10xf32>, tensor<10xf32>) outs(%628 : tensor<10x10xf32>) {
    ^bb0(%in: f32, %in_371: f32, %out: f32):
      %632 = arith.addf %in, %in_371 : f32
      linalg.yield %632 : f32
    } -> tensor<10x10xf32>
    return %631 : tensor<10x10xf32>
  }
}
