#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
module {
  func.func @SqueezeNetFireModule(%arg0: tensor<128x3x256x256xf32>, %arg1: tensor<6x3x1x1xf32>, %arg2: tensor<6xf32>, %arg3: tensor<64x6x1x1xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64x6x3x3xf32>, %arg6: tensor<64xf32>) -> tensor<128x128x256x256xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<128x6x256x256xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<6xf32>) outs(%0 : tensor<128x6x256x256xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg1 : tensor<128x3x256x256xf32>, tensor<6x3x1x1xf32>) outs(%broadcasted : tensor<128x6x256x256xf32>) -> tensor<128x6x256x256xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<128x6x256x256xf32>) outs(%0 : tensor<128x6x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %8 = arith.cmpf ugt, %in, %cst : f32
      %9 = arith.select %8, %in, %cst : f32
      linalg.yield %9 : f32
    } -> tensor<128x6x256x256xf32>
    %3 = tensor.empty() : tensor<128x64x256x256xf32>
    %broadcasted_0 = linalg.broadcast ins(%arg4 : tensor<64xf32>) outs(%3 : tensor<128x64x256x256xf32>) dimensions = [0, 2, 3] 
    %4 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%2, %arg3 : tensor<128x6x256x256xf32>, tensor<64x6x1x1xf32>) outs(%broadcasted_0 : tensor<128x64x256x256xf32>) -> tensor<128x64x256x256xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<128x64x256x256xf32>) outs(%3 : tensor<128x64x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %8 = arith.cmpf ugt, %in, %cst : f32
      %9 = arith.select %8, %in, %cst : f32
      linalg.yield %9 : f32
    } -> tensor<128x64x256x256xf32>
    %padded = tensor.pad %2 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg7: index, %arg8: index, %arg9: index, %arg10: index):
      tensor.yield %cst : f32
    } : tensor<128x6x256x256xf32> to tensor<128x6x258x258xf32>
    %broadcasted_1 = linalg.broadcast ins(%arg6 : tensor<64xf32>) outs(%3 : tensor<128x64x256x256xf32>) dimensions = [0, 2, 3] 
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg5 : tensor<128x6x258x258xf32>, tensor<64x6x3x3xf32>) outs(%broadcasted_1 : tensor<128x64x256x256xf32>) -> tensor<128x64x256x256xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<128x64x256x256xf32>) outs(%3 : tensor<128x64x256x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %8 = arith.cmpf ugt, %in, %cst : f32
      %9 = arith.select %8, %in, %cst : f32
      linalg.yield %9 : f32
    } -> tensor<128x64x256x256xf32>
    %concat = tensor.concat dim(1) %5, %7 : (tensor<128x64x256x256xf32>, tensor<128x64x256x256xf32>) -> tensor<128x128x256x256xf32>
    return %concat : tensor<128x128x256x256xf32>
  }
}
