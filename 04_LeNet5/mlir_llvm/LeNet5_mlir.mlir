#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @LeNet5(%arg0: tensor<4096x1x32x32xf32>, %arg1: tensor<6x1x5x5xf32>, %arg2: tensor<6xf32>, %arg3: tensor<16x6x5x5xf32>, %arg4: tensor<16xf32>, %arg5: tensor<120x400xf32>, %arg6: tensor<120xf32>, %arg7: tensor<84x120xf32>, %arg8: tensor<84xf32>, %arg9: tensor<20x84xf32>, %arg10: tensor<20xf32>) -> tensor<4096x20xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %0 = tensor.empty() : tensor<4096x6x28x28xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<6xf32>) outs(%0 : tensor<4096x6x28x28xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg1 : tensor<4096x1x32x32xf32>, tensor<6x1x5x5xf32>) outs(%broadcasted : tensor<4096x6x28x28xf32>) -> tensor<4096x6x28x28xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<4096x6x28x28xf32>) outs(%0 : tensor<4096x6x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %30 = arith.cmpf ugt, %in, %cst : f32
      %31 = arith.select %30, %in, %cst : f32
      linalg.yield %31 : f32
    } -> tensor<4096x6x28x28xf32>
    %3 = tensor.empty() : tensor<4096x6x14x14xf32>
    %4 = linalg.fill ins(%cst_0 : f32) outs(%3 : tensor<4096x6x14x14xf32>) -> tensor<4096x6x14x14xf32>
    %5 = tensor.empty() : tensor<2x2xf32>
    %6 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%2, %5 : tensor<4096x6x28x28xf32>, tensor<2x2xf32>) outs(%4 : tensor<4096x6x14x14xf32>) -> tensor<4096x6x14x14xf32>
    %7 = tensor.empty() : tensor<4096x16x10x10xf32>
    %broadcasted_1 = linalg.broadcast ins(%arg4 : tensor<16xf32>) outs(%7 : tensor<4096x16x10x10xf32>) dimensions = [0, 2, 3] 
    %8 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%6, %arg3 : tensor<4096x6x14x14xf32>, tensor<16x6x5x5xf32>) outs(%broadcasted_1 : tensor<4096x16x10x10xf32>) -> tensor<4096x16x10x10xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<4096x16x10x10xf32>) outs(%7 : tensor<4096x16x10x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %30 = arith.cmpf ugt, %in, %cst : f32
      %31 = arith.select %30, %in, %cst : f32
      linalg.yield %31 : f32
    } -> tensor<4096x16x10x10xf32>
    %10 = tensor.empty() : tensor<4096x16x5x5xf32>
    %11 = linalg.fill ins(%cst_0 : f32) outs(%10 : tensor<4096x16x5x5xf32>) -> tensor<4096x16x5x5xf32>
    %12 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%9, %5 : tensor<4096x16x10x10xf32>, tensor<2x2xf32>) outs(%11 : tensor<4096x16x5x5xf32>) -> tensor<4096x16x5x5xf32>
    %collapsed = tensor.collapse_shape %12 [[0], [1, 2, 3]] : tensor<4096x16x5x5xf32> into tensor<4096x400xf32>
    %13 = tensor.empty() : tensor<400x120xf32>
    %transposed = linalg.transpose ins(%arg5 : tensor<120x400xf32>) outs(%13 : tensor<400x120xf32>) permutation = [1, 0] 
    %14 = tensor.empty() : tensor<4096x120xf32>
    %15 = linalg.fill ins(%cst : f32) outs(%14 : tensor<4096x120xf32>) -> tensor<4096x120xf32>
    %16 = linalg.matmul ins(%collapsed, %transposed : tensor<4096x400xf32>, tensor<400x120xf32>) outs(%15 : tensor<4096x120xf32>) -> tensor<4096x120xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%16, %arg6 : tensor<4096x120xf32>, tensor<120xf32>) outs(%14 : tensor<4096x120xf32>) {
    ^bb0(%in: f32, %in_4: f32, %out: f32):
      %30 = arith.addf %in, %in_4 : f32
      linalg.yield %30 : f32
    } -> tensor<4096x120xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%17 : tensor<4096x120xf32>) outs(%14 : tensor<4096x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %30 = arith.cmpf ugt, %in, %cst : f32
      %31 = arith.select %30, %in, %cst : f32
      linalg.yield %31 : f32
    } -> tensor<4096x120xf32>
    %19 = tensor.empty() : tensor<120x84xf32>
    %transposed_2 = linalg.transpose ins(%arg7 : tensor<84x120xf32>) outs(%19 : tensor<120x84xf32>) permutation = [1, 0] 
    %20 = tensor.empty() : tensor<4096x84xf32>
    %21 = linalg.fill ins(%cst : f32) outs(%20 : tensor<4096x84xf32>) -> tensor<4096x84xf32>
    %22 = linalg.matmul ins(%18, %transposed_2 : tensor<4096x120xf32>, tensor<120x84xf32>) outs(%21 : tensor<4096x84xf32>) -> tensor<4096x84xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%22, %arg8 : tensor<4096x84xf32>, tensor<84xf32>) outs(%20 : tensor<4096x84xf32>) {
    ^bb0(%in: f32, %in_4: f32, %out: f32):
      %30 = arith.addf %in, %in_4 : f32
      linalg.yield %30 : f32
    } -> tensor<4096x84xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%23 : tensor<4096x84xf32>) outs(%20 : tensor<4096x84xf32>) {
    ^bb0(%in: f32, %out: f32):
      %30 = arith.cmpf ugt, %in, %cst : f32
      %31 = arith.select %30, %in, %cst : f32
      linalg.yield %31 : f32
    } -> tensor<4096x84xf32>
    %25 = tensor.empty() : tensor<84x20xf32>
    %transposed_3 = linalg.transpose ins(%arg9 : tensor<20x84xf32>) outs(%25 : tensor<84x20xf32>) permutation = [1, 0] 
    %26 = tensor.empty() : tensor<4096x20xf32>
    %27 = linalg.fill ins(%cst : f32) outs(%26 : tensor<4096x20xf32>) -> tensor<4096x20xf32>
    %28 = linalg.matmul ins(%24, %transposed_3 : tensor<4096x84xf32>, tensor<84x20xf32>) outs(%27 : tensor<4096x20xf32>) -> tensor<4096x20xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%28, %arg10 : tensor<4096x20xf32>, tensor<20xf32>) outs(%26 : tensor<4096x20xf32>) {
    ^bb0(%in: f32, %in_4: f32, %out: f32):
      %30 = arith.addf %in, %in_4 : f32
      linalg.yield %30 : f32
    } -> tensor<4096x20xf32>
    return %29 : tensor<4096x20xf32>
  }
}
