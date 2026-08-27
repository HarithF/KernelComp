#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @AlexNet(%arg0: tensor<1024x3x224x224xf32>, %arg1: tensor<96x3x11x11xf32>, %arg2: tensor<96xf32>, %arg3: tensor<256x96x5x5xf32>, %arg4: tensor<256xf32>, %arg5: tensor<384x256x3x3xf32>, %arg6: tensor<384xf32>, %arg7: tensor<384x384x3x3xf32>, %arg8: tensor<384xf32>, %arg9: tensor<256x384x3x3xf32>, %arg10: tensor<256xf32>, %arg11: tensor<4096x9216xf32>, %arg12: tensor<4096xf32>, %arg13: tensor<4096x4096xf32>, %arg14: tensor<4096xf32>, %arg15: tensor<1000x4096xf32>, %arg16: tensor<1000xf32>) -> tensor<1024x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %padded = tensor.pad %arg0 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg17: index, %arg18: index, %arg19: index, %arg20: index):
      tensor.yield %cst : f32
    } : tensor<1024x3x224x224xf32> to tensor<1024x3x228x228xf32>
    %0 = tensor.empty() : tensor<1024x96x55x55xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<96xf32>) outs(%0 : tensor<1024x96x55x55xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%padded, %arg1 : tensor<1024x3x228x228xf32>, tensor<96x3x11x11xf32>) outs(%broadcasted : tensor<1024x96x55x55xf32>) -> tensor<1024x96x55x55xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<1024x96x55x55xf32>) outs(%0 : tensor<1024x96x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x96x55x55xf32>
    %3 = tensor.empty() : tensor<1024x96x27x27xf32>
    %4 = linalg.fill ins(%cst_0 : f32) outs(%3 : tensor<1024x96x27x27xf32>) -> tensor<1024x96x27x27xf32>
    %5 = tensor.empty() : tensor<3x3xf32>
    %6 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%2, %5 : tensor<1024x96x55x55xf32>, tensor<3x3xf32>) outs(%4 : tensor<1024x96x27x27xf32>) -> tensor<1024x96x27x27xf32>
    %padded_1 = tensor.pad %6 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg17: index, %arg18: index, %arg19: index, %arg20: index):
      tensor.yield %cst : f32
    } : tensor<1024x96x27x27xf32> to tensor<1024x96x31x31xf32>
    %7 = tensor.empty() : tensor<1024x256x27x27xf32>
    %broadcasted_2 = linalg.broadcast ins(%arg4 : tensor<256xf32>) outs(%7 : tensor<1024x256x27x27xf32>) dimensions = [0, 2, 3] 
    %8 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1, %arg3 : tensor<1024x96x31x31xf32>, tensor<256x96x5x5xf32>) outs(%broadcasted_2 : tensor<1024x256x27x27xf32>) -> tensor<1024x256x27x27xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1024x256x27x27xf32>) outs(%7 : tensor<1024x256x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x256x27x27xf32>
    %10 = tensor.empty() : tensor<1024x256x13x13xf32>
    %11 = linalg.fill ins(%cst_0 : f32) outs(%10 : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %12 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%9, %5 : tensor<1024x256x27x27xf32>, tensor<3x3xf32>) outs(%11 : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %padded_3 = tensor.pad %12 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg17: index, %arg18: index, %arg19: index, %arg20: index):
      tensor.yield %cst : f32
    } : tensor<1024x256x13x13xf32> to tensor<1024x256x15x15xf32>
    %13 = tensor.empty() : tensor<1024x384x13x13xf32>
    %broadcasted_4 = linalg.broadcast ins(%arg6 : tensor<384xf32>) outs(%13 : tensor<1024x384x13x13xf32>) dimensions = [0, 2, 3] 
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_3, %arg5 : tensor<1024x256x15x15xf32>, tensor<384x256x3x3xf32>) outs(%broadcasted_4 : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1024x384x13x13xf32>) outs(%13 : tensor<1024x384x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x384x13x13xf32>
    %padded_5 = tensor.pad %15 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg17: index, %arg18: index, %arg19: index, %arg20: index):
      tensor.yield %cst : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %broadcasted_6 = linalg.broadcast ins(%arg8 : tensor<384xf32>) outs(%13 : tensor<1024x384x13x13xf32>) dimensions = [0, 2, 3] 
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_5, %arg7 : tensor<1024x384x15x15xf32>, tensor<384x384x3x3xf32>) outs(%broadcasted_6 : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %17 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1024x384x13x13xf32>) outs(%13 : tensor<1024x384x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x384x13x13xf32>
    %padded_7 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg17: index, %arg18: index, %arg19: index, %arg20: index):
      tensor.yield %cst : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %broadcasted_8 = linalg.broadcast ins(%arg10 : tensor<256xf32>) outs(%10 : tensor<1024x256x13x13xf32>) dimensions = [0, 2, 3] 
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_7, %arg9 : tensor<1024x384x15x15xf32>, tensor<256x384x3x3xf32>) outs(%broadcasted_8 : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1024x256x13x13xf32>) outs(%10 : tensor<1024x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x256x13x13xf32>
    %20 = tensor.empty() : tensor<1024x256x6x6xf32>
    %21 = linalg.fill ins(%cst_0 : f32) outs(%20 : tensor<1024x256x6x6xf32>) -> tensor<1024x256x6x6xf32>
    %22 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%19, %5 : tensor<1024x256x13x13xf32>, tensor<3x3xf32>) outs(%21 : tensor<1024x256x6x6xf32>) -> tensor<1024x256x6x6xf32>
    %collapsed = tensor.collapse_shape %22 [[0], [1, 2, 3]] : tensor<1024x256x6x6xf32> into tensor<1024x9216xf32>
    %23 = tensor.empty() : tensor<9216x4096xf32>
    %transposed = linalg.transpose ins(%arg11 : tensor<4096x9216xf32>) outs(%23 : tensor<9216x4096xf32>) permutation = [1, 0] 
    %24 = tensor.empty() : tensor<1024x4096xf32>
    %25 = linalg.fill ins(%cst : f32) outs(%24 : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %26 = linalg.matmul ins(%collapsed, %transposed : tensor<1024x9216xf32>, tensor<9216x4096xf32>) outs(%25 : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%26, %arg12 : tensor<1024x4096xf32>, tensor<4096xf32>) outs(%24 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %in_11: f32, %out: f32):
      %38 = arith.addf %in, %in_11 : f32
      linalg.yield %38 : f32
    } -> tensor<1024x4096xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%27 : tensor<1024x4096xf32>) outs(%24 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x4096xf32>
    %29 = tensor.empty() : tensor<4096x4096xf32>
    %transposed_9 = linalg.transpose ins(%arg13 : tensor<4096x4096xf32>) outs(%29 : tensor<4096x4096xf32>) permutation = [1, 0] 
    %30 = linalg.matmul ins(%28, %transposed_9 : tensor<1024x4096xf32>, tensor<4096x4096xf32>) outs(%25 : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%30, %arg14 : tensor<1024x4096xf32>, tensor<4096xf32>) outs(%24 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %in_11: f32, %out: f32):
      %38 = arith.addf %in, %in_11 : f32
      linalg.yield %38 : f32
    } -> tensor<1024x4096xf32>
    %32 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%31 : tensor<1024x4096xf32>) outs(%24 : tensor<1024x4096xf32>) {
    ^bb0(%in: f32, %out: f32):
      %38 = arith.cmpf ugt, %in, %cst : f32
      %39 = arith.select %38, %in, %cst : f32
      linalg.yield %39 : f32
    } -> tensor<1024x4096xf32>
    %33 = tensor.empty() : tensor<4096x1000xf32>
    %transposed_10 = linalg.transpose ins(%arg15 : tensor<1000x4096xf32>) outs(%33 : tensor<4096x1000xf32>) permutation = [1, 0] 
    %34 = tensor.empty() : tensor<1024x1000xf32>
    %35 = linalg.fill ins(%cst : f32) outs(%34 : tensor<1024x1000xf32>) -> tensor<1024x1000xf32>
    %36 = linalg.matmul ins(%32, %transposed_10 : tensor<1024x4096xf32>, tensor<4096x1000xf32>) outs(%35 : tensor<1024x1000xf32>) -> tensor<1024x1000xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%36, %arg16 : tensor<1024x1000xf32>, tensor<1000xf32>) outs(%34 : tensor<1024x1000xf32>) {
    ^bb0(%in: f32, %in_11: f32, %out: f32):
      %38 = arith.addf %in, %in_11 : f32
      linalg.yield %38 : f32
    } -> tensor<1024x1000xf32>
    return %37 : tensor<1024x1000xf32>
  }
}
