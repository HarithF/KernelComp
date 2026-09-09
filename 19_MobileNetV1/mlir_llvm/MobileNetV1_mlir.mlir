#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @MobileNetV1(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<32x3x3x3xf32>, %arg2: tensor<32xf32>, %arg3: tensor<32xf32>, %arg4: tensor<32x1x3x3xf32>, %arg5: tensor<32xf32>, %arg6: tensor<32xf32>, %arg7: tensor<64x32x1x1xf32>, %arg8: tensor<64xf32>, %arg9: tensor<64xf32>, %arg10: tensor<64x1x3x3xf32>, %arg11: tensor<64xf32>, %arg12: tensor<64xf32>, %arg13: tensor<128x64x1x1xf32>, %arg14: tensor<128xf32>, %arg15: tensor<128xf32>, %arg16: tensor<128x1x3x3xf32>, %arg17: tensor<128xf32>, %arg18: tensor<128xf32>, %arg19: tensor<128x128x1x1xf32>, %arg20: tensor<128xf32>, %arg21: tensor<128xf32>, %arg22: tensor<128x1x3x3xf32>, %arg23: tensor<128xf32>, %arg24: tensor<128xf32>, %arg25: tensor<256x128x1x1xf32>, %arg26: tensor<256xf32>, %arg27: tensor<256xf32>, %arg28: tensor<256x1x3x3xf32>, %arg29: tensor<256xf32>, %arg30: tensor<256xf32>, %arg31: tensor<256x256x1x1xf32>, %arg32: tensor<256xf32>, %arg33: tensor<256xf32>, %arg34: tensor<256x1x3x3xf32>, %arg35: tensor<256xf32>, %arg36: tensor<256xf32>, %arg37: tensor<512x256x1x1xf32>, %arg38: tensor<512xf32>, %arg39: tensor<512xf32>, %arg40: tensor<512x1x3x3xf32>, %arg41: tensor<512xf32>, %arg42: tensor<512xf32>, %arg43: tensor<512x512x1x1xf32>, %arg44: tensor<512xf32>, %arg45: tensor<512xf32>, %arg46: tensor<512x1x3x3xf32>, %arg47: tensor<512xf32>, %arg48: tensor<512xf32>, %arg49: tensor<512x512x1x1xf32>, %arg50: tensor<512xf32>, %arg51: tensor<512xf32>, %arg52: tensor<512x1x3x3xf32>, %arg53: tensor<512xf32>, %arg54: tensor<512xf32>, %arg55: tensor<512x512x1x1xf32>, %arg56: tensor<512xf32>, %arg57: tensor<512xf32>, %arg58: tensor<512x1x3x3xf32>, %arg59: tensor<512xf32>, %arg60: tensor<512xf32>, %arg61: tensor<512x512x1x1xf32>, %arg62: tensor<512xf32>, %arg63: tensor<512xf32>, %arg64: tensor<512x1x3x3xf32>, %arg65: tensor<512xf32>, %arg66: tensor<512xf32>, %arg67: tensor<512x512x1x1xf32>, %arg68: tensor<512xf32>, %arg69: tensor<512xf32>, %arg70: tensor<512x1x3x3xf32>, %arg71: tensor<512xf32>, %arg72: tensor<512xf32>, %arg73: tensor<1024x512x1x1xf32>, %arg74: tensor<1024xf32>, %arg75: tensor<1024xf32>, %arg76: tensor<1024x1x3x3xf32>, %arg77: tensor<1024xf32>, %arg78: tensor<1024xf32>, %arg79: tensor<1024x1024x1x1xf32>, %arg80: tensor<1024xf32>, %arg81: tensor<1024xf32>, %arg82: tensor<1000x1024xf32>, %arg83: tensor<1000xf32>, %arg84: tensor<32xf32>, %arg85: tensor<32xf32>, %arg86: tensor<32xf32>, %arg87: tensor<32xf32>, %arg88: tensor<64xf32>, %arg89: tensor<64xf32>, %arg90: tensor<64xf32>, %arg91: tensor<64xf32>, %arg92: tensor<128xf32>, %arg93: tensor<128xf32>, %arg94: tensor<128xf32>, %arg95: tensor<128xf32>, %arg96: tensor<128xf32>, %arg97: tensor<128xf32>, %arg98: tensor<128xf32>, %arg99: tensor<128xf32>, %arg100: tensor<256xf32>, %arg101: tensor<256xf32>, %arg102: tensor<256xf32>, %arg103: tensor<256xf32>, %arg104: tensor<256xf32>, %arg105: tensor<256xf32>, %arg106: tensor<256xf32>, %arg107: tensor<256xf32>, %arg108: tensor<512xf32>, %arg109: tensor<512xf32>, %arg110: tensor<512xf32>, %arg111: tensor<512xf32>, %arg112: tensor<512xf32>, %arg113: tensor<512xf32>, %arg114: tensor<512xf32>, %arg115: tensor<512xf32>, %arg116: tensor<512xf32>, %arg117: tensor<512xf32>, %arg118: tensor<512xf32>, %arg119: tensor<512xf32>, %arg120: tensor<512xf32>, %arg121: tensor<512xf32>, %arg122: tensor<512xf32>, %arg123: tensor<512xf32>, %arg124: tensor<512xf32>, %arg125: tensor<512xf32>, %arg126: tensor<512xf32>, %arg127: tensor<512xf32>, %arg128: tensor<512xf32>, %arg129: tensor<512xf32>, %arg130: tensor<512xf32>, %arg131: tensor<512xf32>, %arg132: tensor<1024xf32>, %arg133: tensor<1024xf32>, %arg134: tensor<1024xf32>, %arg135: tensor<1024xf32>, %arg136: tensor<1024xf32>, %arg137: tensor<1024xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e-05 : f64
    %cst_1 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x32x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %3 = tensor.empty() : tensor<32xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg85 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<32xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<32xf32>
    %expanded = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_2 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_2 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_3 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_3 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_4 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_4 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x32x112x112xf32>
    %padded_5 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x32x112x112xf32> to tensor<10x32x114x114xf32>
    %collapsed = tensor.collapse_shape %arg4 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %11 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_5, %collapsed : tensor<10x32x114x114xf32>, tensor<32x3x3xf32>) outs(%1 : tensor<10x32x112x112xf32>) -> tensor<10x32x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg87 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<32xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%12 : tensor<32xf32>) outs(%3 : tensor<32xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<32xf32>
    %expanded_6 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %expanded_7 = tensor.expand_shape %13 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %expanded_6 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %expanded_7 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_8 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %expanded_8 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %expanded_9 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [32, 1, 1] : tensor<32xf32> into tensor<32x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_9 : tensor<10x32x112x112xf32>, tensor<32x1x1xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x32x112x112xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<10x32x112x112xf32>) outs(%0 : tensor<10x32x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x32x112x112xf32>
    %19 = tensor.empty() : tensor<10x64x112x112xf32>
    %20 = linalg.fill ins(%cst : f32) outs(%19 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%18, %arg7 : tensor<10x32x112x112xf32>, tensor<64x32x1x1xf32>) outs(%20 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %22 = tensor.empty() : tensor<64xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg89 : tensor<64xf32>) outs(%22 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%23 : tensor<64xf32>) outs(%22 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %expanded_10 = tensor.expand_shape %arg88 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_11 = tensor.expand_shape %24 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %25 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %expanded_10 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%19 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x112x112xf32>
    %26 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %expanded_11 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%19 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_12 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %expanded_12 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%19 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_13 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_13 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%19 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x112x112xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<10x64x112x112xf32>) outs(%19 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x64x112x112xf32>
    %padded_14 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %30 = tensor.empty() : tensor<10x64x56x56xf32>
    %31 = linalg.fill ins(%cst : f32) outs(%30 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %collapsed_15 = tensor.collapse_shape %arg10 [[0, 1], [2], [3]] : tensor<64x1x3x3xf32> into tensor<64x3x3xf32>
    %32 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_14, %collapsed_15 : tensor<10x64x114x114xf32>, tensor<64x3x3xf32>) outs(%31 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg91 : tensor<64xf32>) outs(%22 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<64xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%33 : tensor<64xf32>) outs(%22 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<64xf32>
    %expanded_16 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_17 = tensor.expand_shape %34 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %35 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %expanded_16 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%30 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %expanded_17 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%30 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_18 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_18 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%30 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_19 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_19 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%30 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x64x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<10x64x56x56xf32>) outs(%30 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x64x56x56xf32>
    %40 = tensor.empty() : tensor<10x128x56x56xf32>
    %41 = linalg.fill ins(%cst : f32) outs(%40 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%39, %arg13 : tensor<10x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%41 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %43 = tensor.empty() : tensor<128xf32>
    %44 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg93 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%44 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %expanded_20 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_21 = tensor.expand_shape %45 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %expanded_20 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_21 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_22 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_22 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_23 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %expanded_23 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<10x128x56x56xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x128x56x56xf32>
    %padded_24 = tensor.pad %50 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %collapsed_25 = tensor.collapse_shape %arg16 [[0, 1], [2], [3]] : tensor<128x1x3x3xf32> into tensor<128x3x3xf32>
    %51 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_24, %collapsed_25 : tensor<10x128x58x58xf32>, tensor<128x3x3xf32>) outs(%41 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg95 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%52 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %expanded_26 = tensor.expand_shape %arg94 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_27 = tensor.expand_shape %53 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %expanded_26 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %expanded_27 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_28 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %expanded_28 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_29 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_29 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57 : tensor<10x128x56x56xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x128x56x56xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %arg19 : tensor<10x128x56x56xf32>, tensor<128x128x1x1xf32>) outs(%41 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg97 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%60 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %expanded_30 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_31 = tensor.expand_shape %61 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %expanded_30 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %expanded_31 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_32 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %expanded_32 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_33 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %expanded_33 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x56x56xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<10x128x56x56xf32>) outs(%40 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x128x56x56xf32>
    %padded_34 = tensor.pad %66 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %67 = tensor.empty() : tensor<10x128x28x28xf32>
    %68 = linalg.fill ins(%cst : f32) outs(%67 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %collapsed_35 = tensor.collapse_shape %arg22 [[0, 1], [2], [3]] : tensor<128x1x3x3xf32> into tensor<128x3x3xf32>
    %69 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_34, %collapsed_35 : tensor<10x128x58x58xf32>, tensor<128x3x3xf32>) outs(%68 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %70 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg99 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<128xf32>
    %71 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%70 : tensor<128xf32>) outs(%43 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<128xf32>
    %expanded_36 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_37 = tensor.expand_shape %71 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %expanded_36 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%67 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x28x28xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %expanded_37 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%67 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_38 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %expanded_38 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%67 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_39 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %expanded_39 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%67 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x128x28x28xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<10x128x28x28xf32>) outs(%67 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x128x28x28xf32>
    %77 = tensor.empty() : tensor<10x256x28x28xf32>
    %78 = linalg.fill ins(%cst : f32) outs(%77 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %arg25 : tensor<10x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%78 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %80 = tensor.empty() : tensor<256xf32>
    %81 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg101 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %82 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%81 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %expanded_40 = tensor.expand_shape %arg100 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_41 = tensor.expand_shape %82 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_40 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %expanded_41 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_42 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %expanded_42 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_43 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %expanded_43 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<10x256x28x28xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x256x28x28xf32>
    %padded_44 = tensor.pad %87 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %collapsed_45 = tensor.collapse_shape %arg28 [[0, 1], [2], [3]] : tensor<256x1x3x3xf32> into tensor<256x3x3xf32>
    %88 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_44, %collapsed_45 : tensor<10x256x30x30xf32>, tensor<256x3x3xf32>) outs(%78 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg103 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%89 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %expanded_46 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_47 = tensor.expand_shape %90 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_46 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %expanded_47 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_48 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_48 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_49 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %94 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %expanded_49 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<10x256x28x28xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x256x28x28xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%95, %arg31 : tensor<10x256x28x28xf32>, tensor<256x256x1x1xf32>) outs(%78 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg105 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %98 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%97 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %expanded_50 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_51 = tensor.expand_shape %98 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %expanded_50 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %expanded_51 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_52 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %expanded_52 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_53 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %expanded_53 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x28x28xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102 : tensor<10x256x28x28xf32>) outs(%77 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x256x28x28xf32>
    %padded_54 = tensor.pad %103 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %104 = tensor.empty() : tensor<10x256x14x14xf32>
    %105 = linalg.fill ins(%cst : f32) outs(%104 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %collapsed_55 = tensor.collapse_shape %arg34 [[0, 1], [2], [3]] : tensor<256x1x3x3xf32> into tensor<256x3x3xf32>
    %106 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_54, %collapsed_55 : tensor<10x256x30x30xf32>, tensor<256x3x3xf32>) outs(%105 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %107 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg107 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<256xf32>
    %108 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%107 : tensor<256xf32>) outs(%80 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<256xf32>
    %expanded_56 = tensor.expand_shape %arg106 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_57 = tensor.expand_shape %108 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %expanded_56 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%104 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x14x14xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %expanded_57 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%104 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_58 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %expanded_58 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%104 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_59 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %112 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %expanded_59 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%104 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x256x14x14xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<10x256x14x14xf32>) outs(%104 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x256x14x14xf32>
    %114 = tensor.empty() : tensor<10x512x14x14xf32>
    %115 = linalg.fill ins(%cst : f32) outs(%114 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%113, %arg37 : tensor<10x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %117 = tensor.empty() : tensor<512xf32>
    %118 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg109 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %119 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%118 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_60 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_61 = tensor.expand_shape %119 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %expanded_60 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %expanded_61 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_62 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %expanded_62 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_63 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %expanded_63 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_64 = tensor.pad %124 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %collapsed_65 = tensor.collapse_shape %arg40 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %125 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_64, %collapsed_65 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %126 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg111 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%126 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_66 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_67 = tensor.expand_shape %127 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %expanded_66 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %expanded_67 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_68 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_68 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_69 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %expanded_69 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %133 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%132, %arg43 : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg113 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %135 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%134 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_70 = tensor.expand_shape %arg112 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_71 = tensor.expand_shape %135 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %expanded_70 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %expanded_71 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_72 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %expanded_72 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_73 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %expanded_73 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_74 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %collapsed_75 = tensor.collapse_shape %arg46 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %collapsed_75 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %142 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg115 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%142 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_76 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_77 = tensor.expand_shape %143 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %expanded_76 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %expanded_77 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_78 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %expanded_78 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_79 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_79 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%148, %arg49 : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg117 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%150 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_80 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_81 = tensor.expand_shape %151 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %expanded_80 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_81 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_82 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_82 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_83 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_83 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_84 = tensor.pad %156 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %collapsed_85 = tensor.collapse_shape %arg52 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %157 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_84, %collapsed_85 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg119 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %159 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%158 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_86 = tensor.expand_shape %arg118 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_87 = tensor.expand_shape %159 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %expanded_86 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %expanded_87 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_88 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_88 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_89 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_89 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%164, %arg55 : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %166 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg121 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%166 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_90 = tensor.expand_shape %arg120 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_91 = tensor.expand_shape %167 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %expanded_90 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %expanded_91 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_92 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %expanded_92 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_93 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_93 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_94 = tensor.pad %172 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %collapsed_95 = tensor.collapse_shape %arg58 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %173 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_94, %collapsed_95 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %174 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg123 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%174 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_96 = tensor.expand_shape %arg122 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_97 = tensor.expand_shape %175 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %expanded_96 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %expanded_97 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_98 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_98 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_99 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_99 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %arg61 : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %182 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg125 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %183 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%182 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_100 = tensor.expand_shape %arg124 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_101 = tensor.expand_shape %183 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %expanded_100 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %expanded_101 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_102 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %expanded_102 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_103 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %expanded_103 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_104 = tensor.pad %188 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %collapsed_105 = tensor.collapse_shape %arg64 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %189 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %collapsed_105 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg127 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%190 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_106 = tensor.expand_shape %arg126 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_107 = tensor.expand_shape %191 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %expanded_106 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %expanded_107 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_108 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %expanded_108 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_109 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %expanded_109 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %arg67 : tensor<10x512x14x14xf32>, tensor<512x512x1x1xf32>) outs(%115 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg129 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %199 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%198 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_110 = tensor.expand_shape %arg128 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_111 = tensor.expand_shape %199 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %expanded_110 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %expanded_111 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_112 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %expanded_112 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_113 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_113 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x14x14xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203 : tensor<10x512x14x14xf32>) outs(%114 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_114 = tensor.pad %204 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %205 = tensor.empty() : tensor<10x512x7x7xf32>
    %206 = linalg.fill ins(%cst : f32) outs(%205 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %collapsed_115 = tensor.collapse_shape %arg70 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %207 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_114, %collapsed_115 : tensor<10x512x16x16xf32>, tensor<512x3x3xf32>) outs(%206 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg131 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<512xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%208 : tensor<512xf32>) outs(%117 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<512xf32>
    %expanded_116 = tensor.expand_shape %arg130 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_117 = tensor.expand_shape %209 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %expanded_116 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%205 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x7x7xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_117 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%205 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_118 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %expanded_118 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%205 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_119 = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %expanded_119 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%205 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x512x7x7xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<10x512x7x7xf32>) outs(%205 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x512x7x7xf32>
    %215 = tensor.empty() : tensor<10x1024x7x7xf32>
    %216 = linalg.fill ins(%cst : f32) outs(%215 : tensor<10x1024x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %217 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%214, %arg73 : tensor<10x512x7x7xf32>, tensor<1024x512x1x1xf32>) outs(%216 : tensor<10x1024x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %218 = tensor.empty() : tensor<1024xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg133 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<1024xf32>
    %220 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%219 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<1024xf32>
    %expanded_120 = tensor.expand_shape %arg132 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_121 = tensor.expand_shape %220 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %expanded_120 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %expanded_121 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_122 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %expanded_122 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_123 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %expanded_123 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<10x1024x7x7xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x1024x7x7xf32>
    %padded_124 = tensor.pad %225 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg138: index, %arg139: index, %arg140: index, %arg141: index):
      tensor.yield %cst : f32
    } : tensor<10x1024x7x7xf32> to tensor<10x1024x9x9xf32>
    %collapsed_125 = tensor.collapse_shape %arg76 [[0, 1], [2], [3]] : tensor<1024x1x3x3xf32> into tensor<1024x3x3xf32>
    %226 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_124, %collapsed_125 : tensor<10x1024x9x9xf32>, tensor<1024x3x3xf32>) outs(%216 : tensor<10x1024x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %227 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg135 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<1024xf32>
    %228 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%227 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<1024xf32>
    %expanded_126 = tensor.expand_shape %arg134 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_127 = tensor.expand_shape %228 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %expanded_126 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %expanded_127 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_128 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %expanded_128 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_129 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %expanded_129 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<10x1024x7x7xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x1024x7x7xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %arg79 : tensor<10x1024x7x7xf32>, tensor<1024x1024x1x1xf32>) outs(%216 : tensor<10x1024x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %235 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg137 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.truncf %cst_0 : f64 to f32
      %253 = arith.addf %in, %252 : f32
      linalg.yield %253 : f32
    } -> tensor<1024xf32>
    %236 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%235 : tensor<1024xf32>) outs(%218 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = math.rsqrt %in : f32
      linalg.yield %252 : f32
    } -> tensor<1024xf32>
    %expanded_130 = tensor.expand_shape %arg136 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_131 = tensor.expand_shape %236 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %expanded_130 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.subf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %238 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %expanded_131 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_132 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %expanded_132 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.mulf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %expanded_133 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239, %expanded_133 : tensor<10x1024x7x7xf32>, tensor<1024x1x1xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x7x7xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<10x1024x7x7xf32>) outs(%215 : tensor<10x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.cmpf ugt, %in, %cst : f32
      %253 = arith.select %252, %in, %cst : f32
      linalg.yield %253 : f32
    } -> tensor<10x1024x7x7xf32>
    %242 = tensor.empty() : tensor<10x1024x1x1xf32>
    %243 = linalg.fill ins(%cst : f32) outs(%242 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %244 = tensor.empty() : tensor<7x7xf32>
    %245 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%241, %244 : tensor<10x1024x7x7xf32>, tensor<7x7xf32>) outs(%243 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<10x1024x1x1xf32>) outs(%242 : tensor<10x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %252 = arith.divf %in, %cst_1 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1024x1x1xf32>
    %collapsed_134 = tensor.collapse_shape %246 [[0], [1, 2, 3]] : tensor<10x1024x1x1xf32> into tensor<10x1024xf32>
    %247 = tensor.empty() : tensor<1024x1000xf32>
    %transposed = linalg.transpose ins(%arg82 : tensor<1000x1024xf32>) outs(%247 : tensor<1024x1000xf32>) permutation = [1, 0] 
    %248 = tensor.empty() : tensor<10x1000xf32>
    %249 = linalg.fill ins(%cst : f32) outs(%248 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %250 = linalg.matmul ins(%collapsed_134, %transposed : tensor<10x1024xf32>, tensor<1024x1000xf32>) outs(%249 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %251 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%250, %arg83 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%248 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_135: f32, %out: f32):
      %252 = arith.addf %in, %in_135 : f32
      linalg.yield %252 : f32
    } -> tensor<10x1000xf32>
    return %251 : tensor<10x1000xf32>
  }
}
