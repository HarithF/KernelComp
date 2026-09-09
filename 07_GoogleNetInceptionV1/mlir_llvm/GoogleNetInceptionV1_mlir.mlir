#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @GoogleNetInceptionV1(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<64x3x7x7xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64x64x1x1xf32>, %arg4: tensor<64xf32>, %arg5: tensor<192x64x3x3xf32>, %arg6: tensor<192xf32>, %arg7: tensor<64x192x1x1xf32>, %arg8: tensor<64xf32>, %arg9: tensor<96x192x1x1xf32>, %arg10: tensor<96xf32>, %arg11: tensor<128x96x3x3xf32>, %arg12: tensor<128xf32>, %arg13: tensor<16x192x1x1xf32>, %arg14: tensor<16xf32>, %arg15: tensor<32x16x5x5xf32>, %arg16: tensor<32xf32>, %arg17: tensor<32x192x1x1xf32>, %arg18: tensor<32xf32>, %arg19: tensor<128x256x1x1xf32>, %arg20: tensor<128xf32>, %arg21: tensor<128x256x1x1xf32>, %arg22: tensor<128xf32>, %arg23: tensor<192x128x3x3xf32>, %arg24: tensor<192xf32>, %arg25: tensor<32x256x1x1xf32>, %arg26: tensor<32xf32>, %arg27: tensor<96x32x5x5xf32>, %arg28: tensor<96xf32>, %arg29: tensor<64x256x1x1xf32>, %arg30: tensor<64xf32>, %arg31: tensor<192x480x1x1xf32>, %arg32: tensor<192xf32>, %arg33: tensor<96x480x1x1xf32>, %arg34: tensor<96xf32>, %arg35: tensor<208x96x3x3xf32>, %arg36: tensor<208xf32>, %arg37: tensor<16x480x1x1xf32>, %arg38: tensor<16xf32>, %arg39: tensor<48x16x5x5xf32>, %arg40: tensor<48xf32>, %arg41: tensor<64x480x1x1xf32>, %arg42: tensor<64xf32>, %arg43: tensor<160x512x1x1xf32>, %arg44: tensor<160xf32>, %arg45: tensor<112x512x1x1xf32>, %arg46: tensor<112xf32>, %arg47: tensor<224x112x3x3xf32>, %arg48: tensor<224xf32>, %arg49: tensor<24x512x1x1xf32>, %arg50: tensor<24xf32>, %arg51: tensor<64x24x5x5xf32>, %arg52: tensor<64xf32>, %arg53: tensor<64x512x1x1xf32>, %arg54: tensor<64xf32>, %arg55: tensor<128x512x1x1xf32>, %arg56: tensor<128xf32>, %arg57: tensor<128x512x1x1xf32>, %arg58: tensor<128xf32>, %arg59: tensor<256x128x3x3xf32>, %arg60: tensor<256xf32>, %arg61: tensor<24x512x1x1xf32>, %arg62: tensor<24xf32>, %arg63: tensor<64x24x5x5xf32>, %arg64: tensor<64xf32>, %arg65: tensor<64x512x1x1xf32>, %arg66: tensor<64xf32>, %arg67: tensor<112x512x1x1xf32>, %arg68: tensor<112xf32>, %arg69: tensor<144x512x1x1xf32>, %arg70: tensor<144xf32>, %arg71: tensor<288x144x3x3xf32>, %arg72: tensor<288xf32>, %arg73: tensor<32x512x1x1xf32>, %arg74: tensor<32xf32>, %arg75: tensor<64x32x5x5xf32>, %arg76: tensor<64xf32>, %arg77: tensor<64x512x1x1xf32>, %arg78: tensor<64xf32>, %arg79: tensor<256x528x1x1xf32>, %arg80: tensor<256xf32>, %arg81: tensor<160x528x1x1xf32>, %arg82: tensor<160xf32>, %arg83: tensor<320x160x3x3xf32>, %arg84: tensor<320xf32>, %arg85: tensor<32x528x1x1xf32>, %arg86: tensor<32xf32>, %arg87: tensor<128x32x5x5xf32>, %arg88: tensor<128xf32>, %arg89: tensor<128x528x1x1xf32>, %arg90: tensor<128xf32>, %arg91: tensor<256x832x1x1xf32>, %arg92: tensor<256xf32>, %arg93: tensor<160x832x1x1xf32>, %arg94: tensor<160xf32>, %arg95: tensor<320x160x3x3xf32>, %arg96: tensor<320xf32>, %arg97: tensor<32x832x1x1xf32>, %arg98: tensor<32xf32>, %arg99: tensor<128x32x5x5xf32>, %arg100: tensor<128xf32>, %arg101: tensor<128x832x1x1xf32>, %arg102: tensor<128xf32>, %arg103: tensor<384x832x1x1xf32>, %arg104: tensor<384xf32>, %arg105: tensor<192x832x1x1xf32>, %arg106: tensor<192xf32>, %arg107: tensor<384x192x3x3xf32>, %arg108: tensor<384xf32>, %arg109: tensor<48x832x1x1xf32>, %arg110: tensor<48xf32>, %arg111: tensor<128x48x5x5xf32>, %arg112: tensor<128xf32>, %arg113: tensor<128x832x1x1xf32>, %arg114: tensor<128xf32>, %arg115: tensor<1000x1024xf32>, %arg116: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x230x230xf32>
    %0 = tensor.empty() : tensor<10x64x112x112xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<64xf32>) outs(%0 : tensor<10x64x112x112xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%broadcasted : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<10x64x112x112xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %129 = arith.cmpf ugt, %in, %cst : f32
      %130 = arith.select %129, %in, %cst : f32
      linalg.yield %130 : f32
    } -> tensor<10x64x112x112xf32>
    %padded_2 = tensor.pad %2 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %3 = tensor.empty() : tensor<10x64x56x56xf32>
    %4 = linalg.fill ins(%cst_0 : f32) outs(%3 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %5 = tensor.empty() : tensor<3x3xf32>
    %6 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_2, %5 : tensor<10x64x114x114xf32>, tensor<3x3xf32>) outs(%4 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %broadcasted_3 = linalg.broadcast ins(%arg4 : tensor<64xf32>) outs(%3 : tensor<10x64x56x56xf32>) dimensions = [0, 2, 3] 
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%6, %arg3 : tensor<10x64x56x56xf32>, tensor<64x64x1x1xf32>) outs(%broadcasted_3 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<10x64x56x56xf32>) outs(%3 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %129 = arith.cmpf ugt, %in, %cst : f32
      %130 = arith.select %129, %in, %cst : f32
      linalg.yield %130 : f32
    } -> tensor<10x64x56x56xf32>
    %padded_4 = tensor.pad %8 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %9 = tensor.empty() : tensor<10x192x56x56xf32>
    %broadcasted_5 = linalg.broadcast ins(%arg6 : tensor<192xf32>) outs(%9 : tensor<10x192x56x56xf32>) dimensions = [0, 2, 3] 
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_4, %arg5 : tensor<10x64x58x58xf32>, tensor<192x64x3x3xf32>) outs(%broadcasted_5 : tensor<10x192x56x56xf32>) -> tensor<10x192x56x56xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<10x192x56x56xf32>) outs(%9 : tensor<10x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %129 = arith.cmpf ugt, %in, %cst : f32
      %130 = arith.select %129, %in, %cst : f32
      linalg.yield %130 : f32
    } -> tensor<10x192x56x56xf32>
    %padded_6 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x192x56x56xf32> to tensor<10x192x58x58xf32>
    %12 = tensor.empty() : tensor<10x192x28x28xf32>
    %13 = linalg.fill ins(%cst_0 : f32) outs(%12 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_6, %5 : tensor<10x192x58x58xf32>, tensor<3x3xf32>) outs(%13 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %15 = tensor.empty() : tensor<10x64x28x28xf32>
    %broadcasted_7 = linalg.broadcast ins(%arg8 : tensor<64xf32>) outs(%15 : tensor<10x64x28x28xf32>) dimensions = [0, 2, 3] 
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg7 : tensor<10x192x28x28xf32>, tensor<64x192x1x1xf32>) outs(%broadcasted_7 : tensor<10x64x28x28xf32>) -> tensor<10x64x28x28xf32>
    %17 = tensor.empty() : tensor<10x96x28x28xf32>
    %broadcasted_8 = linalg.broadcast ins(%arg10 : tensor<96xf32>) outs(%17 : tensor<10x96x28x28xf32>) dimensions = [0, 2, 3] 
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg9 : tensor<10x192x28x28xf32>, tensor<96x192x1x1xf32>) outs(%broadcasted_8 : tensor<10x96x28x28xf32>) -> tensor<10x96x28x28xf32>
    %padded_9 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x96x28x28xf32> to tensor<10x96x30x30xf32>
    %19 = tensor.empty() : tensor<10x128x28x28xf32>
    %broadcasted_10 = linalg.broadcast ins(%arg12 : tensor<128xf32>) outs(%19 : tensor<10x128x28x28xf32>) dimensions = [0, 2, 3] 
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_9, %arg11 : tensor<10x96x30x30xf32>, tensor<128x96x3x3xf32>) outs(%broadcasted_10 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %21 = tensor.empty() : tensor<10x16x28x28xf32>
    %broadcasted_11 = linalg.broadcast ins(%arg14 : tensor<16xf32>) outs(%21 : tensor<10x16x28x28xf32>) dimensions = [0, 2, 3] 
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg13 : tensor<10x192x28x28xf32>, tensor<16x192x1x1xf32>) outs(%broadcasted_11 : tensor<10x16x28x28xf32>) -> tensor<10x16x28x28xf32>
    %padded_12 = tensor.pad %22 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x16x28x28xf32> to tensor<10x16x32x32xf32>
    %23 = tensor.empty() : tensor<10x32x28x28xf32>
    %broadcasted_13 = linalg.broadcast ins(%arg16 : tensor<32xf32>) outs(%23 : tensor<10x32x28x28xf32>) dimensions = [0, 2, 3] 
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_12, %arg15 : tensor<10x16x32x32xf32>, tensor<32x16x5x5xf32>) outs(%broadcasted_13 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %padded_14 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %25 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_14, %5 : tensor<10x192x30x30xf32>, tensor<3x3xf32>) outs(%13 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %broadcasted_15 = linalg.broadcast ins(%arg18 : tensor<32xf32>) outs(%23 : tensor<10x32x28x28xf32>) dimensions = [0, 2, 3] 
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%25, %arg17 : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>) outs(%broadcasted_15 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %concat = tensor.concat dim(1) %16, %20, %24, %26 : (tensor<10x64x28x28xf32>, tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x256x28x28xf32>
    %broadcasted_16 = linalg.broadcast ins(%arg20 : tensor<128xf32>) outs(%19 : tensor<10x128x28x28xf32>) dimensions = [0, 2, 3] 
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat, %arg19 : tensor<10x256x28x28xf32>, tensor<128x256x1x1xf32>) outs(%broadcasted_16 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %broadcasted_17 = linalg.broadcast ins(%arg22 : tensor<128xf32>) outs(%19 : tensor<10x128x28x28xf32>) dimensions = [0, 2, 3] 
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat, %arg21 : tensor<10x256x28x28xf32>, tensor<128x256x1x1xf32>) outs(%broadcasted_17 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %padded_18 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %broadcasted_19 = linalg.broadcast ins(%arg24 : tensor<192xf32>) outs(%12 : tensor<10x192x28x28xf32>) dimensions = [0, 2, 3] 
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_18, %arg23 : tensor<10x128x30x30xf32>, tensor<192x128x3x3xf32>) outs(%broadcasted_19 : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %broadcasted_20 = linalg.broadcast ins(%arg26 : tensor<32xf32>) outs(%23 : tensor<10x32x28x28xf32>) dimensions = [0, 2, 3] 
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat, %arg25 : tensor<10x256x28x28xf32>, tensor<32x256x1x1xf32>) outs(%broadcasted_20 : tensor<10x32x28x28xf32>) -> tensor<10x32x28x28xf32>
    %padded_21 = tensor.pad %30 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x32x28x28xf32> to tensor<10x32x32x32xf32>
    %broadcasted_22 = linalg.broadcast ins(%arg28 : tensor<96xf32>) outs(%17 : tensor<10x96x28x28xf32>) dimensions = [0, 2, 3] 
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_21, %arg27 : tensor<10x32x32x32xf32>, tensor<96x32x5x5xf32>) outs(%broadcasted_22 : tensor<10x96x28x28xf32>) -> tensor<10x96x28x28xf32>
    %padded_23 = tensor.pad %concat low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %32 = tensor.empty() : tensor<10x256x28x28xf32>
    %33 = linalg.fill ins(%cst_0 : f32) outs(%32 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %34 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %5 : tensor<10x256x30x30xf32>, tensor<3x3xf32>) outs(%33 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %broadcasted_24 = linalg.broadcast ins(%arg30 : tensor<64xf32>) outs(%15 : tensor<10x64x28x28xf32>) dimensions = [0, 2, 3] 
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %arg29 : tensor<10x256x28x28xf32>, tensor<64x256x1x1xf32>) outs(%broadcasted_24 : tensor<10x64x28x28xf32>) -> tensor<10x64x28x28xf32>
    %concat_25 = tensor.concat dim(1) %27, %29, %31, %35 : (tensor<10x128x28x28xf32>, tensor<10x192x28x28xf32>, tensor<10x96x28x28xf32>, tensor<10x64x28x28xf32>) -> tensor<10x480x28x28xf32>
    %padded_26 = tensor.pad %concat_25 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x480x28x28xf32> to tensor<10x480x30x30xf32>
    %36 = tensor.empty() : tensor<10x480x14x14xf32>
    %37 = linalg.fill ins(%cst_0 : f32) outs(%36 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %38 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_26, %5 : tensor<10x480x30x30xf32>, tensor<3x3xf32>) outs(%37 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %39 = tensor.empty() : tensor<10x192x14x14xf32>
    %broadcasted_27 = linalg.broadcast ins(%arg32 : tensor<192xf32>) outs(%39 : tensor<10x192x14x14xf32>) dimensions = [0, 2, 3] 
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %arg31 : tensor<10x480x14x14xf32>, tensor<192x480x1x1xf32>) outs(%broadcasted_27 : tensor<10x192x14x14xf32>) -> tensor<10x192x14x14xf32>
    %41 = tensor.empty() : tensor<10x96x14x14xf32>
    %broadcasted_28 = linalg.broadcast ins(%arg34 : tensor<96xf32>) outs(%41 : tensor<10x96x14x14xf32>) dimensions = [0, 2, 3] 
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %arg33 : tensor<10x480x14x14xf32>, tensor<96x480x1x1xf32>) outs(%broadcasted_28 : tensor<10x96x14x14xf32>) -> tensor<10x96x14x14xf32>
    %padded_29 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x96x14x14xf32> to tensor<10x96x16x16xf32>
    %43 = tensor.empty() : tensor<10x208x14x14xf32>
    %broadcasted_30 = linalg.broadcast ins(%arg36 : tensor<208xf32>) outs(%43 : tensor<10x208x14x14xf32>) dimensions = [0, 2, 3] 
    %44 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %arg35 : tensor<10x96x16x16xf32>, tensor<208x96x3x3xf32>) outs(%broadcasted_30 : tensor<10x208x14x14xf32>) -> tensor<10x208x14x14xf32>
    %45 = tensor.empty() : tensor<10x16x14x14xf32>
    %broadcasted_31 = linalg.broadcast ins(%arg38 : tensor<16xf32>) outs(%45 : tensor<10x16x14x14xf32>) dimensions = [0, 2, 3] 
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%38, %arg37 : tensor<10x480x14x14xf32>, tensor<16x480x1x1xf32>) outs(%broadcasted_31 : tensor<10x16x14x14xf32>) -> tensor<10x16x14x14xf32>
    %padded_32 = tensor.pad %46 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x16x14x14xf32> to tensor<10x16x18x18xf32>
    %47 = tensor.empty() : tensor<10x48x14x14xf32>
    %broadcasted_33 = linalg.broadcast ins(%arg40 : tensor<48xf32>) outs(%47 : tensor<10x48x14x14xf32>) dimensions = [0, 2, 3] 
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_32, %arg39 : tensor<10x16x18x18xf32>, tensor<48x16x5x5xf32>) outs(%broadcasted_33 : tensor<10x48x14x14xf32>) -> tensor<10x48x14x14xf32>
    %padded_34 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %49 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_34, %5 : tensor<10x480x16x16xf32>, tensor<3x3xf32>) outs(%37 : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %50 = tensor.empty() : tensor<10x64x14x14xf32>
    %broadcasted_35 = linalg.broadcast ins(%arg42 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %arg41 : tensor<10x480x14x14xf32>, tensor<64x480x1x1xf32>) outs(%broadcasted_35 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %concat_36 = tensor.concat dim(1) %40, %44, %48, %51 : (tensor<10x192x14x14xf32>, tensor<10x208x14x14xf32>, tensor<10x48x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %52 = tensor.empty() : tensor<10x160x14x14xf32>
    %broadcasted_37 = linalg.broadcast ins(%arg44 : tensor<160xf32>) outs(%52 : tensor<10x160x14x14xf32>) dimensions = [0, 2, 3] 
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_36, %arg43 : tensor<10x512x14x14xf32>, tensor<160x512x1x1xf32>) outs(%broadcasted_37 : tensor<10x160x14x14xf32>) -> tensor<10x160x14x14xf32>
    %54 = tensor.empty() : tensor<10x112x14x14xf32>
    %broadcasted_38 = linalg.broadcast ins(%arg46 : tensor<112xf32>) outs(%54 : tensor<10x112x14x14xf32>) dimensions = [0, 2, 3] 
    %55 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_36, %arg45 : tensor<10x512x14x14xf32>, tensor<112x512x1x1xf32>) outs(%broadcasted_38 : tensor<10x112x14x14xf32>) -> tensor<10x112x14x14xf32>
    %padded_39 = tensor.pad %55 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x112x14x14xf32> to tensor<10x112x16x16xf32>
    %56 = tensor.empty() : tensor<10x224x14x14xf32>
    %broadcasted_40 = linalg.broadcast ins(%arg48 : tensor<224xf32>) outs(%56 : tensor<10x224x14x14xf32>) dimensions = [0, 2, 3] 
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_39, %arg47 : tensor<10x112x16x16xf32>, tensor<224x112x3x3xf32>) outs(%broadcasted_40 : tensor<10x224x14x14xf32>) -> tensor<10x224x14x14xf32>
    %58 = tensor.empty() : tensor<10x24x14x14xf32>
    %broadcasted_41 = linalg.broadcast ins(%arg50 : tensor<24xf32>) outs(%58 : tensor<10x24x14x14xf32>) dimensions = [0, 2, 3] 
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_36, %arg49 : tensor<10x512x14x14xf32>, tensor<24x512x1x1xf32>) outs(%broadcasted_41 : tensor<10x24x14x14xf32>) -> tensor<10x24x14x14xf32>
    %padded_42 = tensor.pad %59 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x24x14x14xf32> to tensor<10x24x18x18xf32>
    %broadcasted_43 = linalg.broadcast ins(%arg52 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_42, %arg51 : tensor<10x24x18x18xf32>, tensor<64x24x5x5xf32>) outs(%broadcasted_43 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %padded_44 = tensor.pad %concat_36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %61 = tensor.empty() : tensor<10x512x14x14xf32>
    %62 = linalg.fill ins(%cst_0 : f32) outs(%61 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %63 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_44, %5 : tensor<10x512x16x16xf32>, tensor<3x3xf32>) outs(%62 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %broadcasted_45 = linalg.broadcast ins(%arg54 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %arg53 : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>) outs(%broadcasted_45 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %concat_46 = tensor.concat dim(1) %53, %57, %60, %64 : (tensor<10x160x14x14xf32>, tensor<10x224x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %65 = tensor.empty() : tensor<10x128x14x14xf32>
    %broadcasted_47 = linalg.broadcast ins(%arg56 : tensor<128xf32>) outs(%65 : tensor<10x128x14x14xf32>) dimensions = [0, 2, 3] 
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_46, %arg55 : tensor<10x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%broadcasted_47 : tensor<10x128x14x14xf32>) -> tensor<10x128x14x14xf32>
    %broadcasted_48 = linalg.broadcast ins(%arg58 : tensor<128xf32>) outs(%65 : tensor<10x128x14x14xf32>) dimensions = [0, 2, 3] 
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_46, %arg57 : tensor<10x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%broadcasted_48 : tensor<10x128x14x14xf32>) -> tensor<10x128x14x14xf32>
    %padded_49 = tensor.pad %67 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x128x14x14xf32> to tensor<10x128x16x16xf32>
    %68 = tensor.empty() : tensor<10x256x14x14xf32>
    %broadcasted_50 = linalg.broadcast ins(%arg60 : tensor<256xf32>) outs(%68 : tensor<10x256x14x14xf32>) dimensions = [0, 2, 3] 
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_49, %arg59 : tensor<10x128x16x16xf32>, tensor<256x128x3x3xf32>) outs(%broadcasted_50 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %broadcasted_51 = linalg.broadcast ins(%arg62 : tensor<24xf32>) outs(%58 : tensor<10x24x14x14xf32>) dimensions = [0, 2, 3] 
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_46, %arg61 : tensor<10x512x14x14xf32>, tensor<24x512x1x1xf32>) outs(%broadcasted_51 : tensor<10x24x14x14xf32>) -> tensor<10x24x14x14xf32>
    %padded_52 = tensor.pad %70 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x24x14x14xf32> to tensor<10x24x18x18xf32>
    %broadcasted_53 = linalg.broadcast ins(%arg64 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_52, %arg63 : tensor<10x24x18x18xf32>, tensor<64x24x5x5xf32>) outs(%broadcasted_53 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %padded_54 = tensor.pad %concat_46 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %72 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_54, %5 : tensor<10x512x16x16xf32>, tensor<3x3xf32>) outs(%62 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %broadcasted_55 = linalg.broadcast ins(%arg66 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %arg65 : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>) outs(%broadcasted_55 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %concat_56 = tensor.concat dim(1) %66, %69, %71, %73 : (tensor<10x128x14x14xf32>, tensor<10x256x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %broadcasted_57 = linalg.broadcast ins(%arg68 : tensor<112xf32>) outs(%54 : tensor<10x112x14x14xf32>) dimensions = [0, 2, 3] 
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_56, %arg67 : tensor<10x512x14x14xf32>, tensor<112x512x1x1xf32>) outs(%broadcasted_57 : tensor<10x112x14x14xf32>) -> tensor<10x112x14x14xf32>
    %75 = tensor.empty() : tensor<10x144x14x14xf32>
    %broadcasted_58 = linalg.broadcast ins(%arg70 : tensor<144xf32>) outs(%75 : tensor<10x144x14x14xf32>) dimensions = [0, 2, 3] 
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_56, %arg69 : tensor<10x512x14x14xf32>, tensor<144x512x1x1xf32>) outs(%broadcasted_58 : tensor<10x144x14x14xf32>) -> tensor<10x144x14x14xf32>
    %padded_59 = tensor.pad %76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x144x14x14xf32> to tensor<10x144x16x16xf32>
    %77 = tensor.empty() : tensor<10x288x14x14xf32>
    %broadcasted_60 = linalg.broadcast ins(%arg72 : tensor<288xf32>) outs(%77 : tensor<10x288x14x14xf32>) dimensions = [0, 2, 3] 
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_59, %arg71 : tensor<10x144x16x16xf32>, tensor<288x144x3x3xf32>) outs(%broadcasted_60 : tensor<10x288x14x14xf32>) -> tensor<10x288x14x14xf32>
    %79 = tensor.empty() : tensor<10x32x14x14xf32>
    %broadcasted_61 = linalg.broadcast ins(%arg74 : tensor<32xf32>) outs(%79 : tensor<10x32x14x14xf32>) dimensions = [0, 2, 3] 
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_56, %arg73 : tensor<10x512x14x14xf32>, tensor<32x512x1x1xf32>) outs(%broadcasted_61 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %padded_62 = tensor.pad %80 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x32x14x14xf32> to tensor<10x32x18x18xf32>
    %broadcasted_63 = linalg.broadcast ins(%arg76 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %81 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_62, %arg75 : tensor<10x32x18x18xf32>, tensor<64x32x5x5xf32>) outs(%broadcasted_63 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %padded_64 = tensor.pad %concat_56 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %82 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_64, %5 : tensor<10x512x16x16xf32>, tensor<3x3xf32>) outs(%62 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %broadcasted_65 = linalg.broadcast ins(%arg78 : tensor<64xf32>) outs(%50 : tensor<10x64x14x14xf32>) dimensions = [0, 2, 3] 
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %arg77 : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>) outs(%broadcasted_65 : tensor<10x64x14x14xf32>) -> tensor<10x64x14x14xf32>
    %concat_66 = tensor.concat dim(1) %74, %78, %81, %83 : (tensor<10x112x14x14xf32>, tensor<10x288x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x528x14x14xf32>
    %broadcasted_67 = linalg.broadcast ins(%arg80 : tensor<256xf32>) outs(%68 : tensor<10x256x14x14xf32>) dimensions = [0, 2, 3] 
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_66, %arg79 : tensor<10x528x14x14xf32>, tensor<256x528x1x1xf32>) outs(%broadcasted_67 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %broadcasted_68 = linalg.broadcast ins(%arg82 : tensor<160xf32>) outs(%52 : tensor<10x160x14x14xf32>) dimensions = [0, 2, 3] 
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_66, %arg81 : tensor<10x528x14x14xf32>, tensor<160x528x1x1xf32>) outs(%broadcasted_68 : tensor<10x160x14x14xf32>) -> tensor<10x160x14x14xf32>
    %padded_69 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x160x14x14xf32> to tensor<10x160x16x16xf32>
    %86 = tensor.empty() : tensor<10x320x14x14xf32>
    %broadcasted_70 = linalg.broadcast ins(%arg84 : tensor<320xf32>) outs(%86 : tensor<10x320x14x14xf32>) dimensions = [0, 2, 3] 
    %87 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_69, %arg83 : tensor<10x160x16x16xf32>, tensor<320x160x3x3xf32>) outs(%broadcasted_70 : tensor<10x320x14x14xf32>) -> tensor<10x320x14x14xf32>
    %broadcasted_71 = linalg.broadcast ins(%arg86 : tensor<32xf32>) outs(%79 : tensor<10x32x14x14xf32>) dimensions = [0, 2, 3] 
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_66, %arg85 : tensor<10x528x14x14xf32>, tensor<32x528x1x1xf32>) outs(%broadcasted_71 : tensor<10x32x14x14xf32>) -> tensor<10x32x14x14xf32>
    %padded_72 = tensor.pad %88 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x32x14x14xf32> to tensor<10x32x18x18xf32>
    %broadcasted_73 = linalg.broadcast ins(%arg88 : tensor<128xf32>) outs(%65 : tensor<10x128x14x14xf32>) dimensions = [0, 2, 3] 
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_72, %arg87 : tensor<10x32x18x18xf32>, tensor<128x32x5x5xf32>) outs(%broadcasted_73 : tensor<10x128x14x14xf32>) -> tensor<10x128x14x14xf32>
    %padded_74 = tensor.pad %concat_66 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x528x14x14xf32> to tensor<10x528x16x16xf32>
    %90 = tensor.empty() : tensor<10x528x14x14xf32>
    %91 = linalg.fill ins(%cst_0 : f32) outs(%90 : tensor<10x528x14x14xf32>) -> tensor<10x528x14x14xf32>
    %92 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_74, %5 : tensor<10x528x16x16xf32>, tensor<3x3xf32>) outs(%91 : tensor<10x528x14x14xf32>) -> tensor<10x528x14x14xf32>
    %broadcasted_75 = linalg.broadcast ins(%arg90 : tensor<128xf32>) outs(%65 : tensor<10x128x14x14xf32>) dimensions = [0, 2, 3] 
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %arg89 : tensor<10x528x14x14xf32>, tensor<128x528x1x1xf32>) outs(%broadcasted_75 : tensor<10x128x14x14xf32>) -> tensor<10x128x14x14xf32>
    %concat_76 = tensor.concat dim(1) %84, %87, %89, %93 : (tensor<10x256x14x14xf32>, tensor<10x320x14x14xf32>, tensor<10x128x14x14xf32>, tensor<10x128x14x14xf32>) -> tensor<10x832x14x14xf32>
    %padded_77 = tensor.pad %concat_76 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x832x14x14xf32> to tensor<10x832x16x16xf32>
    %94 = tensor.empty() : tensor<10x832x7x7xf32>
    %95 = linalg.fill ins(%cst_0 : f32) outs(%94 : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %96 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_77, %5 : tensor<10x832x16x16xf32>, tensor<3x3xf32>) outs(%95 : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %97 = tensor.empty() : tensor<10x256x7x7xf32>
    %broadcasted_78 = linalg.broadcast ins(%arg92 : tensor<256xf32>) outs(%97 : tensor<10x256x7x7xf32>) dimensions = [0, 2, 3] 
    %98 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%96, %arg91 : tensor<10x832x7x7xf32>, tensor<256x832x1x1xf32>) outs(%broadcasted_78 : tensor<10x256x7x7xf32>) -> tensor<10x256x7x7xf32>
    %99 = tensor.empty() : tensor<10x160x7x7xf32>
    %broadcasted_79 = linalg.broadcast ins(%arg94 : tensor<160xf32>) outs(%99 : tensor<10x160x7x7xf32>) dimensions = [0, 2, 3] 
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%96, %arg93 : tensor<10x832x7x7xf32>, tensor<160x832x1x1xf32>) outs(%broadcasted_79 : tensor<10x160x7x7xf32>) -> tensor<10x160x7x7xf32>
    %padded_80 = tensor.pad %100 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x160x7x7xf32> to tensor<10x160x9x9xf32>
    %101 = tensor.empty() : tensor<10x320x7x7xf32>
    %broadcasted_81 = linalg.broadcast ins(%arg96 : tensor<320xf32>) outs(%101 : tensor<10x320x7x7xf32>) dimensions = [0, 2, 3] 
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_80, %arg95 : tensor<10x160x9x9xf32>, tensor<320x160x3x3xf32>) outs(%broadcasted_81 : tensor<10x320x7x7xf32>) -> tensor<10x320x7x7xf32>
    %103 = tensor.empty() : tensor<10x32x7x7xf32>
    %broadcasted_82 = linalg.broadcast ins(%arg98 : tensor<32xf32>) outs(%103 : tensor<10x32x7x7xf32>) dimensions = [0, 2, 3] 
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%96, %arg97 : tensor<10x832x7x7xf32>, tensor<32x832x1x1xf32>) outs(%broadcasted_82 : tensor<10x32x7x7xf32>) -> tensor<10x32x7x7xf32>
    %padded_83 = tensor.pad %104 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x32x7x7xf32> to tensor<10x32x11x11xf32>
    %105 = tensor.empty() : tensor<10x128x7x7xf32>
    %broadcasted_84 = linalg.broadcast ins(%arg100 : tensor<128xf32>) outs(%105 : tensor<10x128x7x7xf32>) dimensions = [0, 2, 3] 
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_83, %arg99 : tensor<10x32x11x11xf32>, tensor<128x32x5x5xf32>) outs(%broadcasted_84 : tensor<10x128x7x7xf32>) -> tensor<10x128x7x7xf32>
    %padded_85 = tensor.pad %96 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %107 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_85, %5 : tensor<10x832x9x9xf32>, tensor<3x3xf32>) outs(%95 : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %broadcasted_86 = linalg.broadcast ins(%arg102 : tensor<128xf32>) outs(%105 : tensor<10x128x7x7xf32>) dimensions = [0, 2, 3] 
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %arg101 : tensor<10x832x7x7xf32>, tensor<128x832x1x1xf32>) outs(%broadcasted_86 : tensor<10x128x7x7xf32>) -> tensor<10x128x7x7xf32>
    %concat_87 = tensor.concat dim(1) %98, %102, %106, %108 : (tensor<10x256x7x7xf32>, tensor<10x320x7x7xf32>, tensor<10x128x7x7xf32>, tensor<10x128x7x7xf32>) -> tensor<10x832x7x7xf32>
    %109 = tensor.empty() : tensor<10x384x7x7xf32>
    %broadcasted_88 = linalg.broadcast ins(%arg104 : tensor<384xf32>) outs(%109 : tensor<10x384x7x7xf32>) dimensions = [0, 2, 3] 
    %110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_87, %arg103 : tensor<10x832x7x7xf32>, tensor<384x832x1x1xf32>) outs(%broadcasted_88 : tensor<10x384x7x7xf32>) -> tensor<10x384x7x7xf32>
    %111 = tensor.empty() : tensor<10x192x7x7xf32>
    %broadcasted_89 = linalg.broadcast ins(%arg106 : tensor<192xf32>) outs(%111 : tensor<10x192x7x7xf32>) dimensions = [0, 2, 3] 
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_87, %arg105 : tensor<10x832x7x7xf32>, tensor<192x832x1x1xf32>) outs(%broadcasted_89 : tensor<10x192x7x7xf32>) -> tensor<10x192x7x7xf32>
    %padded_90 = tensor.pad %112 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x192x7x7xf32> to tensor<10x192x9x9xf32>
    %broadcasted_91 = linalg.broadcast ins(%arg108 : tensor<384xf32>) outs(%109 : tensor<10x384x7x7xf32>) dimensions = [0, 2, 3] 
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_90, %arg107 : tensor<10x192x9x9xf32>, tensor<384x192x3x3xf32>) outs(%broadcasted_91 : tensor<10x384x7x7xf32>) -> tensor<10x384x7x7xf32>
    %114 = tensor.empty() : tensor<10x48x7x7xf32>
    %broadcasted_92 = linalg.broadcast ins(%arg110 : tensor<48xf32>) outs(%114 : tensor<10x48x7x7xf32>) dimensions = [0, 2, 3] 
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_87, %arg109 : tensor<10x832x7x7xf32>, tensor<48x832x1x1xf32>) outs(%broadcasted_92 : tensor<10x48x7x7xf32>) -> tensor<10x48x7x7xf32>
    %padded_93 = tensor.pad %115 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst : f32
    } : tensor<10x48x7x7xf32> to tensor<10x48x11x11xf32>
    %broadcasted_94 = linalg.broadcast ins(%arg112 : tensor<128xf32>) outs(%105 : tensor<10x128x7x7xf32>) dimensions = [0, 2, 3] 
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_93, %arg111 : tensor<10x48x11x11xf32>, tensor<128x48x5x5xf32>) outs(%broadcasted_94 : tensor<10x128x7x7xf32>) -> tensor<10x128x7x7xf32>
    %padded_95 = tensor.pad %concat_87 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg117: index, %arg118: index, %arg119: index, %arg120: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %117 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_95, %5 : tensor<10x832x9x9xf32>, tensor<3x3xf32>) outs(%95 : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %broadcasted_96 = linalg.broadcast ins(%arg114 : tensor<128xf32>) outs(%105 : tensor<10x128x7x7xf32>) dimensions = [0, 2, 3] 
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %arg113 : tensor<10x832x7x7xf32>, tensor<128x832x1x1xf32>) outs(%broadcasted_96 : tensor<10x128x7x7xf32>) -> tensor<10x128x7x7xf32>
    %concat_97 = tensor.concat dim(1) %110, %113, %116, %118 : (tensor<10x384x7x7xf32>, tensor<10x384x7x7xf32>, tensor<10x128x7x7xf32>, tensor<10x128x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %119 = tensor.empty() : tensor<10x1024x1x1xf32>
    %120 = linalg.fill ins(%cst : f32) outs(%119 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %121 = tensor.empty() : tensor<7x7xf32>
    %122 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%concat_97, %121 : tensor<10x1024x7x7xf32>, tensor<7x7xf32>) outs(%120 : tensor<10x1024x1x1xf32>) -> tensor<10x1024x1x1xf32>
    %123 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<10x1024x1x1xf32>) outs(%119 : tensor<10x1024x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %129 = arith.divf %in, %cst_1 : f32
      linalg.yield %129 : f32
    } -> tensor<10x1024x1x1xf32>
    %collapsed = tensor.collapse_shape %123 [[0], [1, 2, 3]] : tensor<10x1024x1x1xf32> into tensor<10x1024xf32>
    %124 = tensor.empty() : tensor<1024x1000xf32>
    %transposed = linalg.transpose ins(%arg115 : tensor<1000x1024xf32>) outs(%124 : tensor<1024x1000xf32>) permutation = [1, 0] 
    %125 = tensor.empty() : tensor<10x1000xf32>
    %126 = linalg.fill ins(%cst : f32) outs(%125 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %127 = linalg.matmul ins(%collapsed, %transposed : tensor<10x1024xf32>, tensor<1024x1000xf32>) outs(%126 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%127, %arg116 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%125 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_98: f32, %out: f32):
      %129 = arith.addf %in, %in_98 : f32
      linalg.yield %129 : f32
    } -> tensor<10x1000xf32>
    return %128 : tensor<10x1000xf32>
  }
}
