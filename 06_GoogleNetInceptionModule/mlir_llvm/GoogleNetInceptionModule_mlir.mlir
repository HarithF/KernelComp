module {
  func.func @GoogleNetInceptionModule(%arg0: tensor<10x480x224x224xf32>, %arg1: tensor<192x480x1x1xf32>, %arg2: tensor<192xf32>, %arg3: tensor<96x480x1x1xf32>, %arg4: tensor<96xf32>, %arg5: tensor<208x96x3x3xf32>, %arg6: tensor<208xf32>, %arg7: tensor<16x480x1x1xf32>, %arg8: tensor<16xf32>, %arg9: tensor<48x16x5x5xf32>, %arg10: tensor<48xf32>, %arg11: tensor<64x480x1x1xf32>, %arg12: tensor<64xf32>) -> tensor<10x512x224x224xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %0 = tensor.empty() : tensor<10x192x224x224xf32>
    %broadcasted = linalg.broadcast ins(%arg2 : tensor<192xf32>) outs(%0 : tensor<10x192x224x224xf32>) dimensions = [0, 2, 3] 
    %1 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg1 : tensor<10x480x224x224xf32>, tensor<192x480x1x1xf32>) outs(%broadcasted : tensor<10x192x224x224xf32>) -> tensor<10x192x224x224xf32>
    %2 = tensor.empty() : tensor<10x96x224x224xf32>
    %broadcasted_1 = linalg.broadcast ins(%arg4 : tensor<96xf32>) outs(%2 : tensor<10x96x224x224xf32>) dimensions = [0, 2, 3] 
    %3 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg3 : tensor<10x480x224x224xf32>, tensor<96x480x1x1xf32>) outs(%broadcasted_1 : tensor<10x96x224x224xf32>) -> tensor<10x96x224x224xf32>
    %padded = tensor.pad %3 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index):
      tensor.yield %cst : f32
    } : tensor<10x96x224x224xf32> to tensor<10x96x226x226xf32>
    %4 = tensor.empty() : tensor<10x208x224x224xf32>
    %broadcasted_2 = linalg.broadcast ins(%arg6 : tensor<208xf32>) outs(%4 : tensor<10x208x224x224xf32>) dimensions = [0, 2, 3] 
    %5 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %arg5 : tensor<10x96x226x226xf32>, tensor<208x96x3x3xf32>) outs(%broadcasted_2 : tensor<10x208x224x224xf32>) -> tensor<10x208x224x224xf32>
    %6 = tensor.empty() : tensor<10x16x224x224xf32>
    %broadcasted_3 = linalg.broadcast ins(%arg8 : tensor<16xf32>) outs(%6 : tensor<10x16x224x224xf32>) dimensions = [0, 2, 3] 
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg0, %arg7 : tensor<10x480x224x224xf32>, tensor<16x480x1x1xf32>) outs(%broadcasted_3 : tensor<10x16x224x224xf32>) -> tensor<10x16x224x224xf32>
    %padded_4 = tensor.pad %7 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index):
      tensor.yield %cst : f32
    } : tensor<10x16x224x224xf32> to tensor<10x16x228x228xf32>
    %8 = tensor.empty() : tensor<10x48x224x224xf32>
    %broadcasted_5 = linalg.broadcast ins(%arg10 : tensor<48xf32>) outs(%8 : tensor<10x48x224x224xf32>) dimensions = [0, 2, 3] 
    %9 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_4, %arg9 : tensor<10x16x228x228xf32>, tensor<48x16x5x5xf32>) outs(%broadcasted_5 : tensor<10x48x224x224xf32>) -> tensor<10x48x224x224xf32>
    %padded_6 = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg13: index, %arg14: index, %arg15: index, %arg16: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x480x224x224xf32> to tensor<10x480x226x226xf32>
    %10 = tensor.empty() : tensor<10x480x224x224xf32>
    %11 = linalg.fill ins(%cst_0 : f32) outs(%10 : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %12 = tensor.empty() : tensor<3x3xf32>
    %13 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_6, %12 : tensor<10x480x226x226xf32>, tensor<3x3xf32>) outs(%11 : tensor<10x480x224x224xf32>) -> tensor<10x480x224x224xf32>
    %14 = tensor.empty() : tensor<10x64x224x224xf32>
    %broadcasted_7 = linalg.broadcast ins(%arg12 : tensor<64xf32>) outs(%14 : tensor<10x64x224x224xf32>) dimensions = [0, 2, 3] 
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%13, %arg11 : tensor<10x480x224x224xf32>, tensor<64x480x1x1xf32>) outs(%broadcasted_7 : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %concat = tensor.concat dim(1) %1, %5, %9, %15 : (tensor<10x192x224x224xf32>, tensor<10x208x224x224xf32>, tensor<10x48x224x224xf32>, tensor<10x64x224x224xf32>) -> tensor<10x512x224x224xf32>
    return %concat : tensor<10x512x224x224xf32>
  }
}
