#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @VGG19(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<64x3x3x3xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64x64x3x3xf32>, %arg4: tensor<64xf32>, %arg5: tensor<128x64x3x3xf32>, %arg6: tensor<128xf32>, %arg7: tensor<128x128x3x3xf32>, %arg8: tensor<128xf32>, %arg9: tensor<256x128x3x3xf32>, %arg10: tensor<256xf32>, %arg11: tensor<256x256x3x3xf32>, %arg12: tensor<256xf32>, %arg13: tensor<256x256x3x3xf32>, %arg14: tensor<256xf32>, %arg15: tensor<256x256x3x3xf32>, %arg16: tensor<256xf32>, %arg17: tensor<512x256x3x3xf32>, %arg18: tensor<512xf32>, %arg19: tensor<512x512x3x3xf32>, %arg20: tensor<512xf32>, %arg21: tensor<512x512x3x3xf32>, %arg22: tensor<512xf32>, %arg23: tensor<512x512x3x3xf32>, %arg24: tensor<512xf32>, %arg25: tensor<512x512x3x3xf32>, %arg26: tensor<512xf32>, %arg27: tensor<512x512x3x3xf32>, %arg28: tensor<512xf32>, %arg29: tensor<512x512x3x3xf32>, %arg30: tensor<512xf32>, %arg31: tensor<512x512x3x3xf32>, %arg32: tensor<512xf32>, %arg33: tensor<4096x25088xf32>, %arg34: tensor<4096xf32>, %arg35: tensor<4096x4096xf32>, %arg36: tensor<4096xf32>, %arg37: tensor<1000x4096xf32>, %arg38: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %0 = tensor.empty() : tensor<10x64x224x224xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<64xf32>) outs(%0 : tensor<10x64x224x224xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x226x226xf32>, tensor<64x3x3x3xf32>) outs(%broadcasted : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<10x64x224x224xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %2 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %broadcasted_2 = linalg.broadcast ins(%arg4 : tensor<64xf32>) outs(%0 : tensor<10x64x224x224xf32>) dimensions = [0, 2, 3] 
    %3 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1, %arg3 : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>) outs(%broadcasted_2 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3 : tensor<10x64x224x224xf32>) outs(%0 : tensor<10x64x224x224xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x64x224x224xf32>
    %5 = tensor.empty() : tensor<10x64x112x112xf32>
    %6 = linalg.fill ins(%cst_0 : f32) outs(%5 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %7 = tensor.empty() : tensor<2x2xf32>
    %8 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%4, %7 : tensor<10x64x224x224xf32>, tensor<2x2xf32>) outs(%6 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %padded_3 = tensor.pad %8 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %9 = tensor.empty() : tensor<10x128x112x112xf32>
    %broadcasted_4 = linalg.broadcast ins(%arg6 : tensor<128xf32>) outs(%9 : tensor<10x128x112x112xf32>) dimensions = [0, 2, 3] 
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_3, %arg5 : tensor<10x64x114x114xf32>, tensor<128x64x3x3xf32>) outs(%broadcasted_4 : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<10x128x112x112xf32>) outs(%9 : tensor<10x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x128x112x112xf32>
    %padded_5 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x128x112x112xf32> to tensor<10x128x114x114xf32>
    %broadcasted_6 = linalg.broadcast ins(%arg8 : tensor<128xf32>) outs(%9 : tensor<10x128x112x112xf32>) dimensions = [0, 2, 3] 
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_5, %arg7 : tensor<10x128x114x114xf32>, tensor<128x128x3x3xf32>) outs(%broadcasted_6 : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<10x128x112x112xf32>) outs(%9 : tensor<10x128x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x128x112x112xf32>
    %14 = tensor.empty() : tensor<10x128x56x56xf32>
    %15 = linalg.fill ins(%cst_0 : f32) outs(%14 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %16 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%13, %7 : tensor<10x128x112x112xf32>, tensor<2x2xf32>) outs(%15 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %padded_7 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %17 = tensor.empty() : tensor<10x256x56x56xf32>
    %broadcasted_8 = linalg.broadcast ins(%arg10 : tensor<256xf32>) outs(%17 : tensor<10x256x56x56xf32>) dimensions = [0, 2, 3] 
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_7, %arg9 : tensor<10x128x58x58xf32>, tensor<256x128x3x3xf32>) outs(%broadcasted_8 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<10x256x56x56xf32>) outs(%17 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x256x56x56xf32>
    %padded_9 = tensor.pad %19 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %broadcasted_10 = linalg.broadcast ins(%arg12 : tensor<256xf32>) outs(%17 : tensor<10x256x56x56xf32>) dimensions = [0, 2, 3] 
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_9, %arg11 : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%broadcasted_10 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<10x256x56x56xf32>) outs(%17 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x256x56x56xf32>
    %padded_11 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %broadcasted_12 = linalg.broadcast ins(%arg14 : tensor<256xf32>) outs(%17 : tensor<10x256x56x56xf32>) dimensions = [0, 2, 3] 
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_11, %arg13 : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%broadcasted_12 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<10x256x56x56xf32>) outs(%17 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x256x56x56xf32>
    %padded_13 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %broadcasted_14 = linalg.broadcast ins(%arg16 : tensor<256xf32>) outs(%17 : tensor<10x256x56x56xf32>) dimensions = [0, 2, 3] 
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_13, %arg15 : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%broadcasted_14 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<10x256x56x56xf32>) outs(%17 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x256x56x56xf32>
    %26 = tensor.empty() : tensor<10x256x28x28xf32>
    %27 = linalg.fill ins(%cst_0 : f32) outs(%26 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %28 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%25, %7 : tensor<10x256x56x56xf32>, tensor<2x2xf32>) outs(%27 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %padded_15 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %29 = tensor.empty() : tensor<10x512x28x28xf32>
    %broadcasted_16 = linalg.broadcast ins(%arg18 : tensor<512xf32>) outs(%29 : tensor<10x512x28x28xf32>) dimensions = [0, 2, 3] 
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_15, %arg17 : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>) outs(%broadcasted_16 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<10x512x28x28xf32>) outs(%29 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x28x28xf32>
    %padded_17 = tensor.pad %31 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %broadcasted_18 = linalg.broadcast ins(%arg20 : tensor<512xf32>) outs(%29 : tensor<10x512x28x28xf32>) dimensions = [0, 2, 3] 
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_17, %arg19 : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_18 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %33 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<10x512x28x28xf32>) outs(%29 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x28x28xf32>
    %padded_19 = tensor.pad %33 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %broadcasted_20 = linalg.broadcast ins(%arg22 : tensor<512xf32>) outs(%29 : tensor<10x512x28x28xf32>) dimensions = [0, 2, 3] 
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_19, %arg21 : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_20 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %35 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<10x512x28x28xf32>) outs(%29 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x28x28xf32>
    %padded_21 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %broadcasted_22 = linalg.broadcast ins(%arg24 : tensor<512xf32>) outs(%29 : tensor<10x512x28x28xf32>) dimensions = [0, 2, 3] 
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_21, %arg23 : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_22 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<10x512x28x28xf32>) outs(%29 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x28x28xf32>
    %38 = tensor.empty() : tensor<10x512x14x14xf32>
    %39 = linalg.fill ins(%cst_0 : f32) outs(%38 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %40 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%37, %7 : tensor<10x512x28x28xf32>, tensor<2x2xf32>) outs(%39 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %padded_23 = tensor.pad %40 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %broadcasted_24 = linalg.broadcast ins(%arg26 : tensor<512xf32>) outs(%38 : tensor<10x512x14x14xf32>) dimensions = [0, 2, 3] 
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_23, %arg25 : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_24 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %42 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<10x512x14x14xf32>) outs(%38 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_25 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %broadcasted_26 = linalg.broadcast ins(%arg28 : tensor<512xf32>) outs(%38 : tensor<10x512x14x14xf32>) dimensions = [0, 2, 3] 
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_25, %arg27 : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_26 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %44 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<10x512x14x14xf32>) outs(%38 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_27 = tensor.pad %44 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %broadcasted_28 = linalg.broadcast ins(%arg30 : tensor<512xf32>) outs(%38 : tensor<10x512x14x14xf32>) dimensions = [0, 2, 3] 
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_27, %arg29 : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_28 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45 : tensor<10x512x14x14xf32>) outs(%38 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_29 = tensor.pad %46 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg39: index, %arg40: index, %arg41: index, %arg42: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %broadcasted_30 = linalg.broadcast ins(%arg32 : tensor<512xf32>) outs(%38 : tensor<10x512x14x14xf32>) dimensions = [0, 2, 3] 
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_29, %arg31 : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%broadcasted_30 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %48 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<10x512x14x14xf32>) outs(%38 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x512x14x14xf32>
    %49 = tensor.empty() : tensor<10x512x7x7xf32>
    %50 = linalg.fill ins(%cst_0 : f32) outs(%49 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %51 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%48, %7 : tensor<10x512x14x14xf32>, tensor<2x2xf32>) outs(%50 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %collapsed = tensor.collapse_shape %51 [[0], [1, 2, 3]] : tensor<10x512x7x7xf32> into tensor<10x25088xf32>
    %52 = tensor.empty() : tensor<25088x4096xf32>
    %transposed = linalg.transpose ins(%arg33 : tensor<4096x25088xf32>) outs(%52 : tensor<25088x4096xf32>) permutation = [1, 0] 
    %53 = tensor.empty() : tensor<10x4096xf32>
    %54 = linalg.fill ins(%cst : f32) outs(%53 : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %55 = linalg.matmul ins(%collapsed, %transposed : tensor<10x25088xf32>, tensor<25088x4096xf32>) outs(%54 : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%55, %arg34 : tensor<10x4096xf32>, tensor<4096xf32>) outs(%53 : tensor<10x4096xf32>) {
    ^bb0(%in: f32, %in_33: f32, %out: f32):
      %67 = arith.addf %in, %in_33 : f32
      linalg.yield %67 : f32
    } -> tensor<10x4096xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%56 : tensor<10x4096xf32>) outs(%53 : tensor<10x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x4096xf32>
    %58 = tensor.empty() : tensor<4096x4096xf32>
    %transposed_31 = linalg.transpose ins(%arg35 : tensor<4096x4096xf32>) outs(%58 : tensor<4096x4096xf32>) permutation = [1, 0] 
    %59 = linalg.matmul ins(%57, %transposed_31 : tensor<10x4096xf32>, tensor<4096x4096xf32>) outs(%54 : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%59, %arg36 : tensor<10x4096xf32>, tensor<4096xf32>) outs(%53 : tensor<10x4096xf32>) {
    ^bb0(%in: f32, %in_33: f32, %out: f32):
      %67 = arith.addf %in, %in_33 : f32
      linalg.yield %67 : f32
    } -> tensor<10x4096xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%60 : tensor<10x4096xf32>) outs(%53 : tensor<10x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %67 = arith.cmpf ugt, %in, %cst : f32
      %68 = arith.select %67, %in, %cst : f32
      linalg.yield %68 : f32
    } -> tensor<10x4096xf32>
    %62 = tensor.empty() : tensor<4096x1000xf32>
    %transposed_32 = linalg.transpose ins(%arg37 : tensor<1000x4096xf32>) outs(%62 : tensor<4096x1000xf32>) permutation = [1, 0] 
    %63 = tensor.empty() : tensor<10x1000xf32>
    %64 = linalg.fill ins(%cst : f32) outs(%63 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %65 = linalg.matmul ins(%61, %transposed_32 : tensor<10x4096xf32>, tensor<4096x1000xf32>) outs(%64 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%65, %arg38 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%63 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_33: f32, %out: f32):
      %67 = arith.addf %in, %in_33 : f32
      linalg.yield %67 : f32
    } -> tensor<10x1000xf32>
    return %66 : tensor<10x1000xf32>
  }
}
