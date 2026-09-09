#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @ResNet18(%arg0: tensor<2x3x224x224xf32>, %arg1: tensor<64x3x7x7xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64x64x3x3xf32>, %arg5: tensor<64xf32>, %arg6: tensor<64xf32>, %arg7: tensor<64x64x3x3xf32>, %arg8: tensor<64xf32>, %arg9: tensor<64xf32>, %arg10: tensor<64x64x3x3xf32>, %arg11: tensor<64xf32>, %arg12: tensor<64xf32>, %arg13: tensor<64x64x3x3xf32>, %arg14: tensor<64xf32>, %arg15: tensor<64xf32>, %arg16: tensor<128x64x3x3xf32>, %arg17: tensor<128xf32>, %arg18: tensor<128xf32>, %arg19: tensor<128x128x3x3xf32>, %arg20: tensor<128xf32>, %arg21: tensor<128xf32>, %arg22: tensor<128x64x1x1xf32>, %arg23: tensor<128xf32>, %arg24: tensor<128xf32>, %arg25: tensor<128x128x3x3xf32>, %arg26: tensor<128xf32>, %arg27: tensor<128xf32>, %arg28: tensor<128x128x3x3xf32>, %arg29: tensor<128xf32>, %arg30: tensor<128xf32>, %arg31: tensor<256x128x3x3xf32>, %arg32: tensor<256xf32>, %arg33: tensor<256xf32>, %arg34: tensor<256x256x3x3xf32>, %arg35: tensor<256xf32>, %arg36: tensor<256xf32>, %arg37: tensor<256x128x1x1xf32>, %arg38: tensor<256xf32>, %arg39: tensor<256xf32>, %arg40: tensor<256x256x3x3xf32>, %arg41: tensor<256xf32>, %arg42: tensor<256xf32>, %arg43: tensor<256x256x3x3xf32>, %arg44: tensor<256xf32>, %arg45: tensor<256xf32>, %arg46: tensor<512x256x3x3xf32>, %arg47: tensor<512xf32>, %arg48: tensor<512xf32>, %arg49: tensor<512x512x3x3xf32>, %arg50: tensor<512xf32>, %arg51: tensor<512xf32>, %arg52: tensor<512x256x1x1xf32>, %arg53: tensor<512xf32>, %arg54: tensor<512xf32>, %arg55: tensor<512x512x3x3xf32>, %arg56: tensor<512xf32>, %arg57: tensor<512xf32>, %arg58: tensor<512x512x3x3xf32>, %arg59: tensor<512xf32>, %arg60: tensor<512xf32>, %arg61: tensor<1000x512xf32>, %arg62: tensor<1000xf32>, %arg63: tensor<64xf32>, %arg64: tensor<64xf32>, %arg65: tensor<64xf32>, %arg66: tensor<64xf32>, %arg67: tensor<64xf32>, %arg68: tensor<64xf32>, %arg69: tensor<64xf32>, %arg70: tensor<64xf32>, %arg71: tensor<64xf32>, %arg72: tensor<64xf32>, %arg73: tensor<128xf32>, %arg74: tensor<128xf32>, %arg75: tensor<128xf32>, %arg76: tensor<128xf32>, %arg77: tensor<128xf32>, %arg78: tensor<128xf32>, %arg79: tensor<128xf32>, %arg80: tensor<128xf32>, %arg81: tensor<128xf32>, %arg82: tensor<128xf32>, %arg83: tensor<256xf32>, %arg84: tensor<256xf32>, %arg85: tensor<256xf32>, %arg86: tensor<256xf32>, %arg87: tensor<256xf32>, %arg88: tensor<256xf32>, %arg89: tensor<256xf32>, %arg90: tensor<256xf32>, %arg91: tensor<256xf32>, %arg92: tensor<256xf32>, %arg93: tensor<512xf32>, %arg94: tensor<512xf32>, %arg95: tensor<512xf32>, %arg96: tensor<512xf32>, %arg97: tensor<512xf32>, %arg98: tensor<512xf32>, %arg99: tensor<512xf32>, %arg100: tensor<512xf32>, %arg101: tensor<512xf32>, %arg102: tensor<512xf32>) -> tensor<2x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e-05 : f64
    %cst_2 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x3x224x224xf32> to tensor<2x3x230x230xf32>
    %0 = tensor.empty() : tensor<2x64x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<2x64x112x112xf32>) -> tensor<2x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<2x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<2x64x112x112xf32>) -> tensor<2x64x112x112xf32>
    %3 = tensor.empty() : tensor<64xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg64 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<64xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_3 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<2x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<2x64x112x112xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_3 : tensor<2x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<2x64x112x112xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x112x112xf32>
    %expanded_4 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_4 : tensor<2x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<2x64x112x112xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_5 : tensor<2x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<2x64x112x112xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<2x64x112x112xf32>) outs(%0 : tensor<2x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x64x112x112xf32>
    %padded_6 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst_0 : f32
    } : tensor<2x64x112x112xf32> to tensor<2x64x114x114xf32>
    %11 = tensor.empty() : tensor<2x64x56x56xf32>
    %12 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_6, %13 : tensor<2x64x114x114xf32>, tensor<3x3xf32>) outs(%12 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %padded_7 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %15 = linalg.fill ins(%cst : f32) outs(%11 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_7, %arg4 : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %17 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg66 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<64xf32>
    %18 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%17 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<64xf32>
    %expanded_8 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_9 = tensor.expand_shape %18 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_8 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %expanded_9 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_10 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %expanded_10 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_11 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %expanded_11 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x64x56x56xf32>
    %padded_12 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_12, %arg7 : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg68 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<64xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%25 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<64xf32>
    %expanded_13 = tensor.expand_shape %arg67 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_14 = tensor.expand_shape %26 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %expanded_13 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_14 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_15 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_15 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_16 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_16 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %14 : tensor<2x64x56x56xf32>, tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x64x56x56xf32>
    %padded_17 = tensor.pad %32 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %33 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_17, %arg10 : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg70 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<64xf32>
    %35 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%34 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<64xf32>
    %expanded_18 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_19 = tensor.expand_shape %35 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %expanded_18 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %expanded_19 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_20 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %expanded_20 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_21 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %expanded_21 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x64x56x56xf32>
    %padded_22 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_22, %arg13 : tensor<2x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<2x64x56x56xf32>) -> tensor<2x64x56x56xf32>
    %42 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg72 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<64xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%42 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<64xf32>
    %expanded_23 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_24 = tensor.expand_shape %43 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %expanded_23 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %expanded_24 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_25 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %expanded_25 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %expanded_26 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_26 : tensor<2x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %32 : tensor<2x64x56x56xf32>, tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x64x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<2x64x56x56xf32>) outs(%11 : tensor<2x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x64x56x56xf32>
    %padded_27 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x64x56x56xf32> to tensor<2x64x58x58xf32>
    %50 = tensor.empty() : tensor<2x128x28x28xf32>
    %51 = linalg.fill ins(%cst : f32) outs(%50 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_27, %arg16 : tensor<2x64x58x58xf32>, tensor<128x64x3x3xf32>) outs(%51 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %53 = tensor.empty() : tensor<128xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg74 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<128xf32>
    %55 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%54 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<128xf32>
    %expanded_28 = tensor.expand_shape %arg73 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_29 = tensor.expand_shape %55 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %expanded_28 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_29 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_30 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %expanded_30 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_31 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %expanded_31 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x128x28x28xf32>
    %padded_32 = tensor.pad %60 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %61 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %arg19 : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %62 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg76 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<128xf32>
    %63 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%62 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<128xf32>
    %expanded_33 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_34 = tensor.expand_shape %63 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %expanded_33 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %expanded_34 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_35 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %expanded_35 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_36 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %expanded_36 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%49, %arg22 : tensor<2x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%51 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg78 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<128xf32>
    %70 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%69 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<128xf32>
    %expanded_37 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_38 = tensor.expand_shape %70 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %expanded_37 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %expanded_38 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_39 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %expanded_39 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_40 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %expanded_40 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %74 : tensor<2x128x28x28xf32>, tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x128x28x28xf32>
    %padded_41 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %arg25 : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg80 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<128xf32>
    %79 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%78 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<128xf32>
    %expanded_42 = tensor.expand_shape %arg79 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_43 = tensor.expand_shape %79 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %expanded_42 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_43 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_44 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %expanded_44 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_45 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %expanded_45 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x128x28x28xf32>
    %padded_46 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_46, %arg28 : tensor<2x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<2x128x28x28xf32>) -> tensor<2x128x28x28xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg82 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<128xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%86 : tensor<128xf32>) outs(%53 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<128xf32>
    %expanded_47 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_48 = tensor.expand_shape %87 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %expanded_47 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_48 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_49 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %expanded_49 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %expanded_50 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %expanded_50 : tensor<2x128x28x28xf32>, tensor<128x1x1xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %76 : tensor<2x128x28x28xf32>, tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x128x28x28xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<2x128x28x28xf32>) outs(%50 : tensor<2x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x128x28x28xf32>
    %padded_51 = tensor.pad %93 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x128x28x28xf32> to tensor<2x128x30x30xf32>
    %94 = tensor.empty() : tensor<2x256x14x14xf32>
    %95 = linalg.fill ins(%cst : f32) outs(%94 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_51, %arg31 : tensor<2x128x30x30xf32>, tensor<256x128x3x3xf32>) outs(%95 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %97 = tensor.empty() : tensor<256xf32>
    %98 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg84 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<256xf32>
    %99 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%98 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<256xf32>
    %expanded_52 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_53 = tensor.expand_shape %99 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %expanded_52 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %expanded_53 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_54 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %expanded_54 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_55 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %expanded_55 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103 : tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x256x14x14xf32>
    %padded_56 = tensor.pad %104 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_56, %arg34 : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%95 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %106 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg86 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<256xf32>
    %107 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%106 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<256xf32>
    %expanded_57 = tensor.expand_shape %arg85 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_58 = tensor.expand_shape %107 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %expanded_57 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %expanded_58 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_59 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %expanded_59 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_60 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %expanded_60 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%93, %arg37 : tensor<2x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%95 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %113 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg88 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<256xf32>
    %114 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%113 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<256xf32>
    %expanded_61 = tensor.expand_shape %arg87 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_62 = tensor.expand_shape %114 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %expanded_61 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %expanded_62 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_63 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %expanded_63 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_64 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %expanded_64 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %118 : tensor<2x256x14x14xf32>, tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x256x14x14xf32>
    %padded_65 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_65, %arg40 : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%95 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %122 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg90 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<256xf32>
    %123 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%122 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<256xf32>
    %expanded_66 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_67 = tensor.expand_shape %123 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %expanded_66 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_67 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_68 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %expanded_68 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_69 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %expanded_69 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x256x14x14xf32>
    %padded_70 = tensor.pad %128 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_70, %arg43 : tensor<2x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%95 : tensor<2x256x14x14xf32>) -> tensor<2x256x14x14xf32>
    %130 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg92 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<256xf32>
    %131 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%130 : tensor<256xf32>) outs(%97 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<256xf32>
    %expanded_71 = tensor.expand_shape %arg91 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_72 = tensor.expand_shape %131 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_71 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %133 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %expanded_72 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_73 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %expanded_73 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %expanded_74 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %expanded_74 : tensor<2x256x14x14xf32>, tensor<256x1x1xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %120 : tensor<2x256x14x14xf32>, tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x256x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<2x256x14x14xf32>) outs(%94 : tensor<2x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x256x14x14xf32>
    %padded_75 = tensor.pad %137 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x256x14x14xf32> to tensor<2x256x16x16xf32>
    %138 = tensor.empty() : tensor<2x512x7x7xf32>
    %139 = linalg.fill ins(%cst : f32) outs(%138 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_75, %arg46 : tensor<2x256x16x16xf32>, tensor<512x256x3x3xf32>) outs(%139 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %141 = tensor.empty() : tensor<512xf32>
    %142 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg94 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<512xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%142 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<512xf32>
    %expanded_76 = tensor.expand_shape %arg93 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_77 = tensor.expand_shape %143 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %expanded_76 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %expanded_77 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_78 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %expanded_78 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_79 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_79 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x512x7x7xf32>
    %padded_80 = tensor.pad %148 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %arg49 : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%139 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg96 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<512xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%150 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<512xf32>
    %expanded_81 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_82 = tensor.expand_shape %151 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %expanded_81 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_82 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_83 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_83 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_84 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_84 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%137, %arg52 : tensor<2x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%139 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %157 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg98 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<512xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%157 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<512xf32>
    %expanded_85 = tensor.expand_shape %arg97 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_86 = tensor.expand_shape %158 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %expanded_85 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %expanded_86 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_87 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %expanded_87 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_88 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_88 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %162 : tensor<2x512x7x7xf32>, tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x512x7x7xf32>
    %padded_89 = tensor.pad %164 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_89, %arg55 : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%139 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %166 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg100 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<512xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%166 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<512xf32>
    %expanded_90 = tensor.expand_shape %arg99 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_91 = tensor.expand_shape %167 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %expanded_90 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %expanded_91 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_92 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %expanded_92 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_93 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_93 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x512x7x7xf32>
    %padded_94 = tensor.pad %172 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg103: index, %arg104: index, %arg105: index, %arg106: index):
      tensor.yield %cst : f32
    } : tensor<2x512x7x7xf32> to tensor<2x512x9x9xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_94, %arg58 : tensor<2x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%139 : tensor<2x512x7x7xf32>) -> tensor<2x512x7x7xf32>
    %174 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg102 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.truncf %cst_1 : f64 to f32
      %193 = arith.addf %in, %192 : f32
      linalg.yield %193 : f32
    } -> tensor<512xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%174 : tensor<512xf32>) outs(%141 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = math.rsqrt %in : f32
      linalg.yield %192 : f32
    } -> tensor<512xf32>
    %expanded_95 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_96 = tensor.expand_shape %175 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %expanded_95 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.subf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %expanded_96 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_97 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_97 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.mulf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %expanded_98 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_98 : tensor<2x512x7x7xf32>, tensor<512x1x1xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %164 : tensor<2x512x7x7xf32>, tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x7x7xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<2x512x7x7xf32>) outs(%138 : tensor<2x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.cmpf ugt, %in, %cst : f32
      %193 = arith.select %192, %in, %cst : f32
      linalg.yield %193 : f32
    } -> tensor<2x512x7x7xf32>
    %182 = tensor.empty() : tensor<2x512x1x1xf32>
    %183 = linalg.fill ins(%cst : f32) outs(%182 : tensor<2x512x1x1xf32>) -> tensor<2x512x1x1xf32>
    %184 = tensor.empty() : tensor<7x7xf32>
    %185 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%181, %184 : tensor<2x512x7x7xf32>, tensor<7x7xf32>) outs(%183 : tensor<2x512x1x1xf32>) -> tensor<2x512x1x1xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<2x512x1x1xf32>) outs(%182 : tensor<2x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %192 = arith.divf %in, %cst_2 : f32
      linalg.yield %192 : f32
    } -> tensor<2x512x1x1xf32>
    %collapsed = tensor.collapse_shape %186 [[0], [1, 2, 3]] : tensor<2x512x1x1xf32> into tensor<2x512xf32>
    %187 = tensor.empty() : tensor<512x1000xf32>
    %transposed = linalg.transpose ins(%arg61 : tensor<1000x512xf32>) outs(%187 : tensor<512x1000xf32>) permutation = [1, 0] 
    %188 = tensor.empty() : tensor<2x1000xf32>
    %189 = linalg.fill ins(%cst : f32) outs(%188 : tensor<2x1000xf32>) -> tensor<2x1000xf32>
    %190 = linalg.matmul ins(%collapsed, %transposed : tensor<2x512xf32>, tensor<512x1000xf32>) outs(%189 : tensor<2x1000xf32>) -> tensor<2x1000xf32>
    %191 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%190, %arg62 : tensor<2x1000xf32>, tensor<1000xf32>) outs(%188 : tensor<2x1000xf32>) {
    ^bb0(%in: f32, %in_99: f32, %out: f32):
      %192 = arith.addf %in, %in_99 : f32
      linalg.yield %192 : f32
    } -> tensor<2x1000xf32>
    return %191 : tensor<2x1000xf32>
  }
}
