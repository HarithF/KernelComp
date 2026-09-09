module {
  func.func public @GoogleNetInceptionV1(%l_self_modules_conv1_parameters_weight_: tensor<64x3x7x7xf32>, %l_self_modules_conv1_parameters_bias_: tensor<64xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_conv2_parameters_weight_: tensor<64x64xf32>, %l_self_modules_conv2_parameters_bias_: tensor<64xf32>, %l_self_modules_conv3_parameters_weight_: tensor<192x64x3x3xf32>, %l_self_modules_conv3_parameters_bias_: tensor<192xf32>, %l_self_modules_inception3a_modules_branch1x1_parameters_weight_: tensor<64x192xf32>, %l_self_modules_inception3a_modules_branch1x1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_weight_: tensor<96x192xf32>, %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_inception3a_modules_branch3x3_modules_1_parameters_weight_: tensor<128x96x3x3xf32>, %l_self_modules_inception3a_modules_branch3x3_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_weight_: tensor<16x192xf32>, %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_bias_: tensor<16xf32>, %l_self_modules_inception3a_modules_branch5x5_modules_1_parameters_weight_: tensor<32x16x5x5xf32>, %l_self_modules_inception3a_modules_branch5x5_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_weight_: tensor<32x192xf32>, %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_inception3b_modules_branch1x1_parameters_weight_: tensor<128x256xf32>, %l_self_modules_inception3b_modules_branch1x1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_weight_: tensor<128x256xf32>, %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_inception3b_modules_branch3x3_modules_1_parameters_weight_: tensor<192x128x3x3xf32>, %l_self_modules_inception3b_modules_branch3x3_modules_1_parameters_bias_: tensor<192xf32>, %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_weight_: tensor<32x256xf32>, %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_inception3b_modules_branch5x5_modules_1_parameters_weight_: tensor<96x32x5x5xf32>, %l_self_modules_inception3b_modules_branch5x5_modules_1_parameters_bias_: tensor<96xf32>, %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_weight_: tensor<64x256xf32>, %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4a_modules_branch1x1_parameters_weight_: tensor<192x480xf32>, %l_self_modules_inception4a_modules_branch1x1_parameters_bias_: tensor<192xf32>, %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_weight_: tensor<96x480xf32>, %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_bias_: tensor<96xf32>, %l_self_modules_inception4a_modules_branch3x3_modules_1_parameters_weight_: tensor<208x96x3x3xf32>, %l_self_modules_inception4a_modules_branch3x3_modules_1_parameters_bias_: tensor<208xf32>, %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_weight_: tensor<16x480xf32>, %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_bias_: tensor<16xf32>, %l_self_modules_inception4a_modules_branch5x5_modules_1_parameters_weight_: tensor<48x16x5x5xf32>, %l_self_modules_inception4a_modules_branch5x5_modules_1_parameters_bias_: tensor<48xf32>, %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_weight_: tensor<64x480xf32>, %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4b_modules_branch1x1_parameters_weight_: tensor<160x512xf32>, %l_self_modules_inception4b_modules_branch1x1_parameters_bias_: tensor<160xf32>, %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_weight_: tensor<112x512xf32>, %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_bias_: tensor<112xf32>, %l_self_modules_inception4b_modules_branch3x3_modules_1_parameters_weight_: tensor<224x112x3x3xf32>, %l_self_modules_inception4b_modules_branch3x3_modules_1_parameters_bias_: tensor<224xf32>, %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_weight_: tensor<24x512xf32>, %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_bias_: tensor<24xf32>, %l_self_modules_inception4b_modules_branch5x5_modules_1_parameters_weight_: tensor<64x24x5x5xf32>, %l_self_modules_inception4b_modules_branch5x5_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_weight_: tensor<64x512xf32>, %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4c_modules_branch1x1_parameters_weight_: tensor<128x512xf32>, %l_self_modules_inception4c_modules_branch1x1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_weight_: tensor<128x512xf32>, %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_bias_: tensor<128xf32>, %l_self_modules_inception4c_modules_branch3x3_modules_1_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_inception4c_modules_branch3x3_modules_1_parameters_bias_: tensor<256xf32>, %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_weight_: tensor<24x512xf32>, %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_bias_: tensor<24xf32>, %l_self_modules_inception4c_modules_branch5x5_modules_1_parameters_weight_: tensor<64x24x5x5xf32>, %l_self_modules_inception4c_modules_branch5x5_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_weight_: tensor<64x512xf32>, %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4d_modules_branch1x1_parameters_weight_: tensor<112x512xf32>, %l_self_modules_inception4d_modules_branch1x1_parameters_bias_: tensor<112xf32>, %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_weight_: tensor<144x512xf32>, %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_bias_: tensor<144xf32>, %l_self_modules_inception4d_modules_branch3x3_modules_1_parameters_weight_: tensor<288x144x3x3xf32>, %l_self_modules_inception4d_modules_branch3x3_modules_1_parameters_bias_: tensor<288xf32>, %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_weight_: tensor<32x512xf32>, %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_inception4d_modules_branch5x5_modules_1_parameters_weight_: tensor<64x32x5x5xf32>, %l_self_modules_inception4d_modules_branch5x5_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_weight_: tensor<64x512xf32>, %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_bias_: tensor<64xf32>, %l_self_modules_inception4e_modules_branch1x1_parameters_weight_: tensor<256x528xf32>, %l_self_modules_inception4e_modules_branch1x1_parameters_bias_: tensor<256xf32>, %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_weight_: tensor<160x528xf32>, %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_bias_: tensor<160xf32>, %l_self_modules_inception4e_modules_branch3x3_modules_1_parameters_weight_: tensor<320x160x3x3xf32>, %l_self_modules_inception4e_modules_branch3x3_modules_1_parameters_bias_: tensor<320xf32>, %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_weight_: tensor<32x528xf32>, %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_inception4e_modules_branch5x5_modules_1_parameters_weight_: tensor<128x32x5x5xf32>, %l_self_modules_inception4e_modules_branch5x5_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_weight_: tensor<128x528xf32>, %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception5a_modules_branch1x1_parameters_weight_: tensor<256x832xf32>, %l_self_modules_inception5a_modules_branch1x1_parameters_bias_: tensor<256xf32>, %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_weight_: tensor<160x832xf32>, %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_bias_: tensor<160xf32>, %l_self_modules_inception5a_modules_branch3x3_modules_1_parameters_weight_: tensor<320x160x3x3xf32>, %l_self_modules_inception5a_modules_branch3x3_modules_1_parameters_bias_: tensor<320xf32>, %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_weight_: tensor<32x832xf32>, %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_bias_: tensor<32xf32>, %l_self_modules_inception5a_modules_branch5x5_modules_1_parameters_weight_: tensor<128x32x5x5xf32>, %l_self_modules_inception5a_modules_branch5x5_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_weight_: tensor<128x832xf32>, %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception5b_modules_branch1x1_parameters_weight_: tensor<384x832xf32>, %l_self_modules_inception5b_modules_branch1x1_parameters_bias_: tensor<384xf32>, %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_weight_: tensor<192x832xf32>, %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_bias_: tensor<192xf32>, %l_self_modules_inception5b_modules_branch3x3_modules_1_parameters_weight_: tensor<384x192x3x3xf32>, %l_self_modules_inception5b_modules_branch3x3_modules_1_parameters_bias_: tensor<384xf32>, %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_weight_: tensor<48x832xf32>, %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_bias_: tensor<48xf32>, %l_self_modules_inception5b_modules_branch5x5_modules_1_parameters_weight_: tensor<128x48x5x5xf32>, %l_self_modules_inception5b_modules_branch5x5_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_weight_: tensor<128x832xf32>, %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_bias_: tensor<128xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x1024xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 3, 3] high[0, 0, 3, 3] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x230x230xf32>
    %v4.empty = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x64x112x1x112xf32>) -> tensor<10x64x112x1x112xf32>
    %v4.shape = tensor.empty() : tensor<112x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v4.shape : tensor<10x3x230x230xf32>, tensor<64x3x7x7xf32>, tensor<112x1xf32>)
      outs(%v4.buf : tensor<10x64x112x1x112xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %v4.post = tensor.empty() : tensor<10x64x112x1x112xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %l_self_modules_conv1_parameters_bias_ : tensor<10x64x112x1x112xf32>, tensor<64xf32>)
      outs(%v4.post : tensor<10x64x112x1x112xf32>) {
        ^bb0(%acc_12: f32, %in_11: f32, %post_13: f32):
          %v14 = arith.addf %acc_12, %in_11 : f32
          %v15 = arith.maxnumf %init, %v14 : f32
          linalg.yield %v15 : f32
      }
    -> tensor<10x64x112x1x112xf32>
    %relu.buf = tensor.empty() : tensor<10x64x112x112xf32>
    %relu.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.post.out : tensor<10x64x112x1x112xf32>)
      outs(%relu.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_16: f32, %acc_17: f32):
          linalg.yield %in_16 : f32
      }
    -> tensor<10x64x112x112xf32>
    %init_1 = arith.constant 0xFF800000 : f32
    %padded_1 = tensor.pad %relu.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i18: index, %pad_i19: index, %pad_i20: index, %pad_i21: index):
        tensor.yield %init_1 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %x.empty = tensor.empty() : tensor<10x64x56x56xf32>
    %x.buf = linalg.fill ins(%init_1 : f32) outs(%x.empty : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %x.shape = tensor.empty() : tensor<3x3xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_1, %x.shape : tensor<10x64x114x114xf32>, tensor<3x3xf32>)
      outs(%x.buf : tensor<10x64x56x56xf32>) {
        ^bb0(%in_23: f32, %shape_22: f32, %acc_24: f32):
          %v25 = arith.maxnumf %acc_24, %in_23 : f32
          linalg.yield %v25 : f32
      }
    -> tensor<10x64x56x56xf32>
    %l_self_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv2_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 64, 1, 1] : tensor<64x64xf32> into tensor<64x64x1x1xf32>
    %v26.empty = tensor.empty() : tensor<10x64x56x1x56xf32>
    %v26.buf = linalg.fill ins(%init : f32) outs(%v26.empty : tensor<10x64x56x1x56xf32>) -> tensor<10x64x56x1x56xf32>
    %v26.shape = tensor.empty() : tensor<56x1xf32>
    %v26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x.buf.out, %l_self_modules_conv2_parameters_weight_.expanded, %v26.shape : tensor<10x64x56x56xf32>, tensor<64x64x1x1xf32>, tensor<56x1xf32>)
      outs(%v26.buf : tensor<10x64x56x1x56xf32>) {
        ^bb0(%in_28: f32, %in_29: f32, %shape_27: f32, %acc_30: f32):
          %v31 = arith.mulf %in_28, %in_29 : f32
          %v32 = arith.addf %v31, %acc_30 : f32
          linalg.yield %v32 : f32
      }
    -> tensor<10x64x56x1x56xf32>
    %v26.post = tensor.empty() : tensor<10x64x56x1x56xf32>
    %v26.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v26.buf.out, %l_self_modules_conv2_parameters_bias_ : tensor<10x64x56x1x56xf32>, tensor<64xf32>)
      outs(%v26.post : tensor<10x64x56x1x56xf32>) {
        ^bb0(%acc_34: f32, %in_33: f32, %post_35: f32):
          %v36 = arith.addf %acc_34, %in_33 : f32
          %v37 = arith.maxnumf %init, %v36 : f32
          linalg.yield %v37 : f32
      }
    -> tensor<10x64x56x1x56xf32>
    %x_1.buf = tensor.empty() : tensor<10x64x56x56xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v26.post.out : tensor<10x64x56x1x56xf32>)
      outs(%x_1.buf : tensor<10x64x56x56xf32>) {
        ^bb0(%in_38: f32, %acc_39: f32):
          linalg.yield %in_38 : f32
      }
    -> tensor<10x64x56x56xf32>
    %padded_2 = tensor.pad %x_1.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i40: index, %pad_i41: index, %pad_i42: index, %pad_i43: index):
        tensor.yield %init : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %v44.empty = tensor.empty() : tensor<10x192x56x1x56xf32>
    %v44.buf = linalg.fill ins(%init : f32) outs(%v44.empty : tensor<10x192x56x1x56xf32>) -> tensor<10x192x56x1x56xf32>
    %v44.shape = tensor.empty() : tensor<56x1xf32>
    %v44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_conv3_parameters_weight_, %v44.shape : tensor<10x64x58x58xf32>, tensor<192x64x3x3xf32>, tensor<56x1xf32>)
      outs(%v44.buf : tensor<10x192x56x1x56xf32>) {
        ^bb0(%in_46: f32, %in_47: f32, %shape_45: f32, %acc_48: f32):
          %v49 = arith.mulf %in_46, %in_47 : f32
          %v50 = arith.addf %v49, %acc_48 : f32
          linalg.yield %v50 : f32
      }
    -> tensor<10x192x56x1x56xf32>
    %v44.post = tensor.empty() : tensor<10x192x56x1x56xf32>
    %v44.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v44.buf.out, %l_self_modules_conv3_parameters_bias_ : tensor<10x192x56x1x56xf32>, tensor<192xf32>)
      outs(%v44.post : tensor<10x192x56x1x56xf32>) {
        ^bb0(%acc_52: f32, %in_51: f32, %post_53: f32):
          %v54 = arith.addf %acc_52, %in_51 : f32
          %v55 = arith.maxnumf %init, %v54 : f32
          linalg.yield %v55 : f32
      }
    -> tensor<10x192x56x1x56xf32>
    %relu_2.buf = tensor.empty() : tensor<10x192x56x56xf32>
    %relu_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v44.post.out : tensor<10x192x56x1x56xf32>)
      outs(%relu_2.buf : tensor<10x192x56x56xf32>) {
        ^bb0(%in_56: f32, %acc_57: f32):
          linalg.yield %in_56 : f32
      }
    -> tensor<10x192x56x56xf32>
    %padded_3 = tensor.pad %relu_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i58: index, %pad_i59: index, %pad_i60: index, %pad_i61: index):
        tensor.yield %init_1 : f32
    } : tensor<10x192x56x56xf32> to tensor<10x192x58x58xf32>
    %x_2.empty = tensor.empty() : tensor<10x192x28x28xf32>
    %x_2.buf = linalg.fill ins(%init_1 : f32) outs(%x_2.empty : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %x_2.shape = tensor.empty() : tensor<3x3xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_3, %x_2.shape : tensor<10x192x58x58xf32>, tensor<3x3xf32>)
      outs(%x_2.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_63: f32, %shape_62: f32, %acc_64: f32):
          %v65 = arith.maxnumf %acc_64, %in_63 : f32
          linalg.yield %v65 : f32
      }
    -> tensor<10x192x28x28xf32>
    %l_self_modules_inception3a_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3a_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 192, 1, 1] : tensor<64x192xf32> into tensor<64x192x1x1xf32>
    %v66.empty = tensor.empty() : tensor<10x64x28x1x28xf32>
    %v66.buf = linalg.fill ins(%init : f32) outs(%v66.empty : tensor<10x64x28x1x28xf32>) -> tensor<10x64x28x1x28xf32>
    %v66.shape = tensor.empty() : tensor<28x1xf32>
    %v66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_2.buf.out, %l_self_modules_inception3a_modules_branch1x1_parameters_weight_.expanded, %v66.shape : tensor<10x192x28x28xf32>, tensor<64x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v66.buf : tensor<10x64x28x1x28xf32>) {
        ^bb0(%in_68: f32, %in_69: f32, %shape_67: f32, %acc_70: f32):
          %v71 = arith.mulf %in_68, %in_69 : f32
          %v72 = arith.addf %v71, %acc_70 : f32
          linalg.yield %v72 : f32
      }
    -> tensor<10x64x28x1x28xf32>
    %v66.post = tensor.empty() : tensor<10x64x28x1x28xf32>
    %v66.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v66.buf.out, %l_self_modules_inception3a_modules_branch1x1_parameters_bias_ : tensor<10x64x28x1x28xf32>, tensor<64xf32>)
      outs(%v66.post : tensor<10x64x28x1x28xf32>) {
        ^bb0(%acc_74: f32, %in_73: f32, %post_75: f32):
          %v76 = arith.addf %acc_74, %in_73 : f32
          linalg.yield %v76 : f32
      }
    -> tensor<10x64x28x1x28xf32>
    %branch1x1.buf = tensor.empty() : tensor<10x64x28x28xf32>
    %branch1x1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v66.post.out : tensor<10x64x28x1x28xf32>)
      outs(%branch1x1.buf : tensor<10x64x28x28xf32>) {
        ^bb0(%in_77: f32, %acc_78: f32):
          linalg.yield %in_77 : f32
      }
    -> tensor<10x64x28x28xf32>
    %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 192, 1, 1] : tensor<96x192xf32> into tensor<96x192x1x1xf32>
    %v79.empty = tensor.empty() : tensor<10x96x28x1x28xf32>
    %v79.buf = linalg.fill ins(%init : f32) outs(%v79.empty : tensor<10x96x28x1x28xf32>) -> tensor<10x96x28x1x28xf32>
    %v79.shape = tensor.empty() : tensor<28x1xf32>
    %v79.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_2.buf.out, %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_weight_.expanded, %v79.shape : tensor<10x192x28x28xf32>, tensor<96x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v79.buf : tensor<10x96x28x1x28xf32>) {
        ^bb0(%in_81: f32, %in_82: f32, %shape_80: f32, %acc_83: f32):
          %v84 = arith.mulf %in_81, %in_82 : f32
          %v85 = arith.addf %v84, %acc_83 : f32
          linalg.yield %v85 : f32
      }
    -> tensor<10x96x28x1x28xf32>
    %v79.post = tensor.empty() : tensor<10x96x28x1x28xf32>
    %v79.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v79.buf.out, %l_self_modules_inception3a_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x96x28x1x28xf32>, tensor<96xf32>)
      outs(%v79.post : tensor<10x96x28x1x28xf32>) {
        ^bb0(%acc_87: f32, %in_86: f32, %post_88: f32):
          %v89 = arith.addf %acc_87, %in_86 : f32
          linalg.yield %v89 : f32
      }
    -> tensor<10x96x28x1x28xf32>
    %input_1.buf = tensor.empty() : tensor<10x96x28x28xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v79.post.out : tensor<10x96x28x1x28xf32>)
      outs(%input_1.buf : tensor<10x96x28x28xf32>) {
        ^bb0(%in_90: f32, %acc_91: f32):
          linalg.yield %in_90 : f32
      }
    -> tensor<10x96x28x28xf32>
    %padded_4 = tensor.pad %input_1.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i92: index, %pad_i93: index, %pad_i94: index, %pad_i95: index):
        tensor.yield %init : f32
    } : tensor<10x96x28x28xf32> to tensor<10x96x30x30xf32>
    %v96.empty = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v96.buf = linalg.fill ins(%init : f32) outs(%v96.empty : tensor<10x128x28x1x28xf32>) -> tensor<10x128x28x1x28xf32>
    %v96.shape = tensor.empty() : tensor<28x1xf32>
    %v96.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_inception3a_modules_branch3x3_modules_1_parameters_weight_, %v96.shape : tensor<10x96x30x30xf32>, tensor<128x96x3x3xf32>, tensor<28x1xf32>)
      outs(%v96.buf : tensor<10x128x28x1x28xf32>) {
        ^bb0(%in_98: f32, %in_99: f32, %shape_97: f32, %acc_100: f32):
          %v101 = arith.mulf %in_98, %in_99 : f32
          %v102 = arith.addf %v101, %acc_100 : f32
          linalg.yield %v102 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %v96.post = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v96.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v96.buf.out, %l_self_modules_inception3a_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x128x28x1x28xf32>, tensor<128xf32>)
      outs(%v96.post : tensor<10x128x28x1x28xf32>) {
        ^bb0(%acc_104: f32, %in_103: f32, %post_105: f32):
          %v106 = arith.addf %acc_104, %in_103 : f32
          linalg.yield %v106 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %input_2.buf = tensor.empty() : tensor<10x128x28x28xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v96.post.out : tensor<10x128x28x1x28xf32>)
      outs(%input_2.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_107: f32, %acc_108: f32):
          linalg.yield %in_107 : f32
      }
    -> tensor<10x128x28x28xf32>
    %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 192, 1, 1] : tensor<16x192xf32> into tensor<16x192x1x1xf32>
    %v109.empty = tensor.empty() : tensor<10x16x28x1x28xf32>
    %v109.buf = linalg.fill ins(%init : f32) outs(%v109.empty : tensor<10x16x28x1x28xf32>) -> tensor<10x16x28x1x28xf32>
    %v109.shape = tensor.empty() : tensor<28x1xf32>
    %v109.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_2.buf.out, %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_weight_.expanded, %v109.shape : tensor<10x192x28x28xf32>, tensor<16x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v109.buf : tensor<10x16x28x1x28xf32>) {
        ^bb0(%in_111: f32, %in_112: f32, %shape_110: f32, %acc_113: f32):
          %v114 = arith.mulf %in_111, %in_112 : f32
          %v115 = arith.addf %v114, %acc_113 : f32
          linalg.yield %v115 : f32
      }
    -> tensor<10x16x28x1x28xf32>
    %v109.post = tensor.empty() : tensor<10x16x28x1x28xf32>
    %v109.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v109.buf.out, %l_self_modules_inception3a_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x16x28x1x28xf32>, tensor<16xf32>)
      outs(%v109.post : tensor<10x16x28x1x28xf32>) {
        ^bb0(%acc_117: f32, %in_116: f32, %post_118: f32):
          %v119 = arith.addf %acc_117, %in_116 : f32
          linalg.yield %v119 : f32
      }
    -> tensor<10x16x28x1x28xf32>
    %input_3.buf = tensor.empty() : tensor<10x16x28x28xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v109.post.out : tensor<10x16x28x1x28xf32>)
      outs(%input_3.buf : tensor<10x16x28x28xf32>) {
        ^bb0(%in_120: f32, %acc_121: f32):
          linalg.yield %in_120 : f32
      }
    -> tensor<10x16x28x28xf32>
    %padded_5 = tensor.pad %input_3.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i122: index, %pad_i123: index, %pad_i124: index, %pad_i125: index):
        tensor.yield %init : f32
    } : tensor<10x16x28x28xf32> to tensor<10x16x32x32xf32>
    %v126.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v126.buf = linalg.fill ins(%init : f32) outs(%v126.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v126.shape = tensor.empty() : tensor<28x1xf32>
    %v126.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_inception3a_modules_branch5x5_modules_1_parameters_weight_, %v126.shape : tensor<10x16x32x32xf32>, tensor<32x16x5x5xf32>, tensor<28x1xf32>)
      outs(%v126.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_128: f32, %in_129: f32, %shape_127: f32, %acc_130: f32):
          %v131 = arith.mulf %in_128, %in_129 : f32
          %v132 = arith.addf %v131, %acc_130 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v126.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v126.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v126.buf.out, %l_self_modules_inception3a_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>)
      outs(%v126.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_134: f32, %in_133: f32, %post_135: f32):
          %v136 = arith.addf %acc_134, %in_133 : f32
          linalg.yield %v136 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_4.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v126.post.out : tensor<10x32x28x1x28xf32>)
      outs(%input_4.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_137: f32, %acc_138: f32):
          linalg.yield %in_137 : f32
      }
    -> tensor<10x32x28x28xf32>
    %padded_6 = tensor.pad %x_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i139: index, %pad_i140: index, %pad_i141: index, %pad_i142: index):
        tensor.yield %init_1 : f32
    } : tensor<10x192x28x28xf32> to tensor<10x192x30x30xf32>
    %input_5.empty = tensor.empty() : tensor<10x192x28x28xf32>
    %input_5.buf = linalg.fill ins(%init_1 : f32) outs(%input_5.empty : tensor<10x192x28x28xf32>) -> tensor<10x192x28x28xf32>
    %input_5.shape = tensor.empty() : tensor<3x3xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_6, %input_5.shape : tensor<10x192x30x30xf32>, tensor<3x3xf32>)
      outs(%input_5.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_144: f32, %shape_143: f32, %acc_145: f32):
          %v146 = arith.maxnumf %acc_145, %in_144 : f32
          linalg.yield %v146 : f32
      }
    -> tensor<10x192x28x28xf32>
    %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 192, 1, 1] : tensor<32x192xf32> into tensor<32x192x1x1xf32>
    %v147.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v147.buf = linalg.fill ins(%init : f32) outs(%v147.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v147.shape = tensor.empty() : tensor<28x1xf32>
    %v147.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_5.buf.out, %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_weight_.expanded, %v147.shape : tensor<10x192x28x28xf32>, tensor<32x192x1x1xf32>, tensor<28x1xf32>)
      outs(%v147.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_149: f32, %in_150: f32, %shape_148: f32, %acc_151: f32):
          %v152 = arith.mulf %in_149, %in_150 : f32
          %v153 = arith.addf %v152, %acc_151 : f32
          linalg.yield %v153 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v147.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v147.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v147.buf.out, %l_self_modules_inception3a_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>)
      outs(%v147.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_155: f32, %in_154: f32, %post_156: f32):
          %v157 = arith.addf %acc_155, %in_154 : f32
          linalg.yield %v157 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_6.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v147.post.out : tensor<10x32x28x1x28xf32>)
      outs(%input_6.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_158: f32, %acc_159: f32):
          linalg.yield %in_158 : f32
      }
    -> tensor<10x32x28x28xf32>
    %x_3 = tensor.concat dim(1) %branch1x1.buf.out, %input_2.buf.out, %input_4.buf.out, %input_6.buf.out : (tensor<10x64x28x28xf32>, tensor<10x128x28x28xf32>, tensor<10x32x28x28xf32>, tensor<10x32x28x28xf32>) -> tensor<10x256x28x28xf32>
    %l_self_modules_inception3b_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3b_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 256, 1, 1] : tensor<128x256xf32> into tensor<128x256x1x1xf32>
    %v160.empty = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v160.buf = linalg.fill ins(%init : f32) outs(%v160.empty : tensor<10x128x28x1x28xf32>) -> tensor<10x128x28x1x28xf32>
    %v160.shape = tensor.empty() : tensor<28x1xf32>
    %v160.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_3, %l_self_modules_inception3b_modules_branch1x1_parameters_weight_.expanded, %v160.shape : tensor<10x256x28x28xf32>, tensor<128x256x1x1xf32>, tensor<28x1xf32>)
      outs(%v160.buf : tensor<10x128x28x1x28xf32>) {
        ^bb0(%in_162: f32, %in_163: f32, %shape_161: f32, %acc_164: f32):
          %v165 = arith.mulf %in_162, %in_163 : f32
          %v166 = arith.addf %v165, %acc_164 : f32
          linalg.yield %v166 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %v160.post = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v160.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v160.buf.out, %l_self_modules_inception3b_modules_branch1x1_parameters_bias_ : tensor<10x128x28x1x28xf32>, tensor<128xf32>)
      outs(%v160.post : tensor<10x128x28x1x28xf32>) {
        ^bb0(%acc_168: f32, %in_167: f32, %post_169: f32):
          %v170 = arith.addf %acc_168, %in_167 : f32
          linalg.yield %v170 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %branch1x1_1.buf = tensor.empty() : tensor<10x128x28x28xf32>
    %branch1x1_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v160.post.out : tensor<10x128x28x1x28xf32>)
      outs(%branch1x1_1.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_171: f32, %acc_172: f32):
          linalg.yield %in_171 : f32
      }
    -> tensor<10x128x28x28xf32>
    %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 256, 1, 1] : tensor<128x256xf32> into tensor<128x256x1x1xf32>
    %v173.empty = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v173.buf = linalg.fill ins(%init : f32) outs(%v173.empty : tensor<10x128x28x1x28xf32>) -> tensor<10x128x28x1x28xf32>
    %v173.shape = tensor.empty() : tensor<28x1xf32>
    %v173.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_3, %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_weight_.expanded, %v173.shape : tensor<10x256x28x28xf32>, tensor<128x256x1x1xf32>, tensor<28x1xf32>)
      outs(%v173.buf : tensor<10x128x28x1x28xf32>) {
        ^bb0(%in_175: f32, %in_176: f32, %shape_174: f32, %acc_177: f32):
          %v178 = arith.mulf %in_175, %in_176 : f32
          %v179 = arith.addf %v178, %acc_177 : f32
          linalg.yield %v179 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %v173.post = tensor.empty() : tensor<10x128x28x1x28xf32>
    %v173.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v173.buf.out, %l_self_modules_inception3b_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x128x28x1x28xf32>, tensor<128xf32>)
      outs(%v173.post : tensor<10x128x28x1x28xf32>) {
        ^bb0(%acc_181: f32, %in_180: f32, %post_182: f32):
          %v183 = arith.addf %acc_181, %in_180 : f32
          linalg.yield %v183 : f32
      }
    -> tensor<10x128x28x1x28xf32>
    %input_7.buf = tensor.empty() : tensor<10x128x28x28xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v173.post.out : tensor<10x128x28x1x28xf32>)
      outs(%input_7.buf : tensor<10x128x28x28xf32>) {
        ^bb0(%in_184: f32, %acc_185: f32):
          linalg.yield %in_184 : f32
      }
    -> tensor<10x128x28x28xf32>
    %padded_7 = tensor.pad %input_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i186: index, %pad_i187: index, %pad_i188: index, %pad_i189: index):
        tensor.yield %init : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %v190.empty = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v190.buf = linalg.fill ins(%init : f32) outs(%v190.empty : tensor<10x192x28x1x28xf32>) -> tensor<10x192x28x1x28xf32>
    %v190.shape = tensor.empty() : tensor<28x1xf32>
    %v190.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_inception3b_modules_branch3x3_modules_1_parameters_weight_, %v190.shape : tensor<10x128x30x30xf32>, tensor<192x128x3x3xf32>, tensor<28x1xf32>)
      outs(%v190.buf : tensor<10x192x28x1x28xf32>) {
        ^bb0(%in_192: f32, %in_193: f32, %shape_191: f32, %acc_194: f32):
          %v195 = arith.mulf %in_192, %in_193 : f32
          %v196 = arith.addf %v195, %acc_194 : f32
          linalg.yield %v196 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %v190.post = tensor.empty() : tensor<10x192x28x1x28xf32>
    %v190.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v190.buf.out, %l_self_modules_inception3b_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x192x28x1x28xf32>, tensor<192xf32>)
      outs(%v190.post : tensor<10x192x28x1x28xf32>) {
        ^bb0(%acc_198: f32, %in_197: f32, %post_199: f32):
          %v200 = arith.addf %acc_198, %in_197 : f32
          linalg.yield %v200 : f32
      }
    -> tensor<10x192x28x1x28xf32>
    %input_8.buf = tensor.empty() : tensor<10x192x28x28xf32>
    %input_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v190.post.out : tensor<10x192x28x1x28xf32>)
      outs(%input_8.buf : tensor<10x192x28x28xf32>) {
        ^bb0(%in_201: f32, %acc_202: f32):
          linalg.yield %in_201 : f32
      }
    -> tensor<10x192x28x28xf32>
    %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 256, 1, 1] : tensor<32x256xf32> into tensor<32x256x1x1xf32>
    %v203.empty = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v203.buf = linalg.fill ins(%init : f32) outs(%v203.empty : tensor<10x32x28x1x28xf32>) -> tensor<10x32x28x1x28xf32>
    %v203.shape = tensor.empty() : tensor<28x1xf32>
    %v203.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_3, %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_weight_.expanded, %v203.shape : tensor<10x256x28x28xf32>, tensor<32x256x1x1xf32>, tensor<28x1xf32>)
      outs(%v203.buf : tensor<10x32x28x1x28xf32>) {
        ^bb0(%in_205: f32, %in_206: f32, %shape_204: f32, %acc_207: f32):
          %v208 = arith.mulf %in_205, %in_206 : f32
          %v209 = arith.addf %v208, %acc_207 : f32
          linalg.yield %v209 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %v203.post = tensor.empty() : tensor<10x32x28x1x28xf32>
    %v203.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v203.buf.out, %l_self_modules_inception3b_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x32x28x1x28xf32>, tensor<32xf32>)
      outs(%v203.post : tensor<10x32x28x1x28xf32>) {
        ^bb0(%acc_211: f32, %in_210: f32, %post_212: f32):
          %v213 = arith.addf %acc_211, %in_210 : f32
          linalg.yield %v213 : f32
      }
    -> tensor<10x32x28x1x28xf32>
    %input_9.buf = tensor.empty() : tensor<10x32x28x28xf32>
    %input_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v203.post.out : tensor<10x32x28x1x28xf32>)
      outs(%input_9.buf : tensor<10x32x28x28xf32>) {
        ^bb0(%in_214: f32, %acc_215: f32):
          linalg.yield %in_214 : f32
      }
    -> tensor<10x32x28x28xf32>
    %padded_8 = tensor.pad %input_9.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i216: index, %pad_i217: index, %pad_i218: index, %pad_i219: index):
        tensor.yield %init : f32
    } : tensor<10x32x28x28xf32> to tensor<10x32x32x32xf32>
    %v220.empty = tensor.empty() : tensor<10x96x28x1x28xf32>
    %v220.buf = linalg.fill ins(%init : f32) outs(%v220.empty : tensor<10x96x28x1x28xf32>) -> tensor<10x96x28x1x28xf32>
    %v220.shape = tensor.empty() : tensor<28x1xf32>
    %v220.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_inception3b_modules_branch5x5_modules_1_parameters_weight_, %v220.shape : tensor<10x32x32x32xf32>, tensor<96x32x5x5xf32>, tensor<28x1xf32>)
      outs(%v220.buf : tensor<10x96x28x1x28xf32>) {
        ^bb0(%in_222: f32, %in_223: f32, %shape_221: f32, %acc_224: f32):
          %v225 = arith.mulf %in_222, %in_223 : f32
          %v226 = arith.addf %v225, %acc_224 : f32
          linalg.yield %v226 : f32
      }
    -> tensor<10x96x28x1x28xf32>
    %v220.post = tensor.empty() : tensor<10x96x28x1x28xf32>
    %v220.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v220.buf.out, %l_self_modules_inception3b_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x96x28x1x28xf32>, tensor<96xf32>)
      outs(%v220.post : tensor<10x96x28x1x28xf32>) {
        ^bb0(%acc_228: f32, %in_227: f32, %post_229: f32):
          %v230 = arith.addf %acc_228, %in_227 : f32
          linalg.yield %v230 : f32
      }
    -> tensor<10x96x28x1x28xf32>
    %input_10.buf = tensor.empty() : tensor<10x96x28x28xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v220.post.out : tensor<10x96x28x1x28xf32>)
      outs(%input_10.buf : tensor<10x96x28x28xf32>) {
        ^bb0(%in_231: f32, %acc_232: f32):
          linalg.yield %in_231 : f32
      }
    -> tensor<10x96x28x28xf32>
    %padded_9 = tensor.pad %x_3 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i233: index, %pad_i234: index, %pad_i235: index, %pad_i236: index):
        tensor.yield %init_1 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %input_11.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_11.buf = linalg.fill ins(%init_1 : f32) outs(%input_11.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_11.shape = tensor.empty() : tensor<3x3xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_9, %input_11.shape : tensor<10x256x30x30xf32>, tensor<3x3xf32>)
      outs(%input_11.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_238: f32, %shape_237: f32, %acc_239: f32):
          %v240 = arith.maxnumf %acc_239, %in_238 : f32
          linalg.yield %v240 : f32
      }
    -> tensor<10x256x28x28xf32>
    %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 256, 1, 1] : tensor<64x256xf32> into tensor<64x256x1x1xf32>
    %v241.empty = tensor.empty() : tensor<10x64x28x1x28xf32>
    %v241.buf = linalg.fill ins(%init : f32) outs(%v241.empty : tensor<10x64x28x1x28xf32>) -> tensor<10x64x28x1x28xf32>
    %v241.shape = tensor.empty() : tensor<28x1xf32>
    %v241.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_11.buf.out, %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_weight_.expanded, %v241.shape : tensor<10x256x28x28xf32>, tensor<64x256x1x1xf32>, tensor<28x1xf32>)
      outs(%v241.buf : tensor<10x64x28x1x28xf32>) {
        ^bb0(%in_243: f32, %in_244: f32, %shape_242: f32, %acc_245: f32):
          %v246 = arith.mulf %in_243, %in_244 : f32
          %v247 = arith.addf %v246, %acc_245 : f32
          linalg.yield %v247 : f32
      }
    -> tensor<10x64x28x1x28xf32>
    %v241.post = tensor.empty() : tensor<10x64x28x1x28xf32>
    %v241.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v241.buf.out, %l_self_modules_inception3b_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x28x1x28xf32>, tensor<64xf32>)
      outs(%v241.post : tensor<10x64x28x1x28xf32>) {
        ^bb0(%acc_249: f32, %in_248: f32, %post_250: f32):
          %v251 = arith.addf %acc_249, %in_248 : f32
          linalg.yield %v251 : f32
      }
    -> tensor<10x64x28x1x28xf32>
    %input_12.buf = tensor.empty() : tensor<10x64x28x28xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v241.post.out : tensor<10x64x28x1x28xf32>)
      outs(%input_12.buf : tensor<10x64x28x28xf32>) {
        ^bb0(%in_252: f32, %acc_253: f32):
          linalg.yield %in_252 : f32
      }
    -> tensor<10x64x28x28xf32>
    %x_4 = tensor.concat dim(1) %branch1x1_1.buf.out, %input_8.buf.out, %input_10.buf.out, %input_12.buf.out : (tensor<10x128x28x28xf32>, tensor<10x192x28x28xf32>, tensor<10x96x28x28xf32>, tensor<10x64x28x28xf32>) -> tensor<10x480x28x28xf32>
    %padded_10 = tensor.pad %x_4 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i254: index, %pad_i255: index, %pad_i256: index, %pad_i257: index):
        tensor.yield %init_1 : f32
    } : tensor<10x480x28x28xf32> to tensor<10x480x30x30xf32>
    %x_5.empty = tensor.empty() : tensor<10x480x14x14xf32>
    %x_5.buf = linalg.fill ins(%init_1 : f32) outs(%x_5.empty : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %x_5.shape = tensor.empty() : tensor<3x3xf32>
    %x_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_10, %x_5.shape : tensor<10x480x30x30xf32>, tensor<3x3xf32>)
      outs(%x_5.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_259: f32, %shape_258: f32, %acc_260: f32):
          %v261 = arith.maxnumf %acc_260, %in_259 : f32
          linalg.yield %v261 : f32
      }
    -> tensor<10x480x14x14xf32>
    %l_self_modules_inception4a_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4a_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 480, 1, 1] : tensor<192x480xf32> into tensor<192x480x1x1xf32>
    %v262.empty = tensor.empty() : tensor<10x192x7x2x14xf32>
    %v262.buf = linalg.fill ins(%init : f32) outs(%v262.empty : tensor<10x192x7x2x14xf32>) -> tensor<10x192x7x2x14xf32>
    %v262.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_5.buf.out, %l_self_modules_inception4a_modules_branch1x1_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<192x480x1x1xf32>)
      outs(%v262.buf : tensor<10x192x7x2x14xf32>) {
        ^bb0(%in_263: f32, %in_264: f32, %acc_265: f32):
          %v266 = arith.mulf %in_263, %in_264 : f32
          %v267 = arith.addf %v266, %acc_265 : f32
          linalg.yield %v267 : f32
      }
    -> tensor<10x192x7x2x14xf32>
    %v262.post = tensor.empty() : tensor<10x192x7x2x14xf32>
    %v262.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v262.buf.out, %l_self_modules_inception4a_modules_branch1x1_parameters_bias_ : tensor<10x192x7x2x14xf32>, tensor<192xf32>)
      outs(%v262.post : tensor<10x192x7x2x14xf32>) {
        ^bb0(%acc_269: f32, %in_268: f32, %post_270: f32):
          %v271 = arith.addf %acc_269, %in_268 : f32
          linalg.yield %v271 : f32
      }
    -> tensor<10x192x7x2x14xf32>
    %branch1x1_2.buf = tensor.empty() : tensor<10x192x14x14xf32>
    %branch1x1_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v262.post.out : tensor<10x192x7x2x14xf32>)
      outs(%branch1x1_2.buf : tensor<10x192x14x14xf32>) {
        ^bb0(%in_272: f32, %acc_273: f32):
          linalg.yield %in_272 : f32
      }
    -> tensor<10x192x14x14xf32>
    %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 480, 1, 1] : tensor<96x480xf32> into tensor<96x480x1x1xf32>
    %v274.empty = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v274.buf = linalg.fill ins(%init : f32) outs(%v274.empty : tensor<10x96x7x2x14xf32>) -> tensor<10x96x7x2x14xf32>
    %v274.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_5.buf.out, %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<96x480x1x1xf32>)
      outs(%v274.buf : tensor<10x96x7x2x14xf32>) {
        ^bb0(%in_275: f32, %in_276: f32, %acc_277: f32):
          %v278 = arith.mulf %in_275, %in_276 : f32
          %v279 = arith.addf %v278, %acc_277 : f32
          linalg.yield %v279 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %v274.post = tensor.empty() : tensor<10x96x7x2x14xf32>
    %v274.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v274.buf.out, %l_self_modules_inception4a_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x96x7x2x14xf32>, tensor<96xf32>)
      outs(%v274.post : tensor<10x96x7x2x14xf32>) {
        ^bb0(%acc_281: f32, %in_280: f32, %post_282: f32):
          %v283 = arith.addf %acc_281, %in_280 : f32
          linalg.yield %v283 : f32
      }
    -> tensor<10x96x7x2x14xf32>
    %input_13.buf = tensor.empty() : tensor<10x96x14x14xf32>
    %input_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v274.post.out : tensor<10x96x7x2x14xf32>)
      outs(%input_13.buf : tensor<10x96x14x14xf32>) {
        ^bb0(%in_284: f32, %acc_285: f32):
          linalg.yield %in_284 : f32
      }
    -> tensor<10x96x14x14xf32>
    %padded_11 = tensor.pad %input_13.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i286: index, %pad_i287: index, %pad_i288: index, %pad_i289: index):
        tensor.yield %init : f32
    } : tensor<10x96x14x14xf32> to tensor<10x96x16x16xf32>
    %v290.empty = tensor.empty() : tensor<10x208x7x2x14xf32>
    %v290.buf = linalg.fill ins(%init : f32) outs(%v290.empty : tensor<10x208x7x2x14xf32>) -> tensor<10x208x7x2x14xf32>
    %v290.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_inception4a_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x96x16x16xf32>, tensor<208x96x3x3xf32>)
      outs(%v290.buf : tensor<10x208x7x2x14xf32>) {
        ^bb0(%in_291: f32, %in_292: f32, %acc_293: f32):
          %v294 = arith.mulf %in_291, %in_292 : f32
          %v295 = arith.addf %v294, %acc_293 : f32
          linalg.yield %v295 : f32
      }
    -> tensor<10x208x7x2x14xf32>
    %v290.post = tensor.empty() : tensor<10x208x7x2x14xf32>
    %v290.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v290.buf.out, %l_self_modules_inception4a_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x208x7x2x14xf32>, tensor<208xf32>)
      outs(%v290.post : tensor<10x208x7x2x14xf32>) {
        ^bb0(%acc_297: f32, %in_296: f32, %post_298: f32):
          %v299 = arith.addf %acc_297, %in_296 : f32
          linalg.yield %v299 : f32
      }
    -> tensor<10x208x7x2x14xf32>
    %input_14.buf = tensor.empty() : tensor<10x208x14x14xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v290.post.out : tensor<10x208x7x2x14xf32>)
      outs(%input_14.buf : tensor<10x208x14x14xf32>) {
        ^bb0(%in_300: f32, %acc_301: f32):
          linalg.yield %in_300 : f32
      }
    -> tensor<10x208x14x14xf32>
    %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 480, 1, 1] : tensor<16x480xf32> into tensor<16x480x1x1xf32>
    %v302.empty = tensor.empty() : tensor<10x16x7x2x14xf32>
    %v302.buf = linalg.fill ins(%init : f32) outs(%v302.empty : tensor<10x16x7x2x14xf32>) -> tensor<10x16x7x2x14xf32>
    %v302.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_5.buf.out, %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<16x480x1x1xf32>)
      outs(%v302.buf : tensor<10x16x7x2x14xf32>) {
        ^bb0(%in_303: f32, %in_304: f32, %acc_305: f32):
          %v306 = arith.mulf %in_303, %in_304 : f32
          %v307 = arith.addf %v306, %acc_305 : f32
          linalg.yield %v307 : f32
      }
    -> tensor<10x16x7x2x14xf32>
    %v302.post = tensor.empty() : tensor<10x16x7x2x14xf32>
    %v302.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v302.buf.out, %l_self_modules_inception4a_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x16x7x2x14xf32>, tensor<16xf32>)
      outs(%v302.post : tensor<10x16x7x2x14xf32>) {
        ^bb0(%acc_309: f32, %in_308: f32, %post_310: f32):
          %v311 = arith.addf %acc_309, %in_308 : f32
          linalg.yield %v311 : f32
      }
    -> tensor<10x16x7x2x14xf32>
    %input_15.buf = tensor.empty() : tensor<10x16x14x14xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v302.post.out : tensor<10x16x7x2x14xf32>)
      outs(%input_15.buf : tensor<10x16x14x14xf32>) {
        ^bb0(%in_312: f32, %acc_313: f32):
          linalg.yield %in_312 : f32
      }
    -> tensor<10x16x14x14xf32>
    %padded_12 = tensor.pad %input_15.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i314: index, %pad_i315: index, %pad_i316: index, %pad_i317: index):
        tensor.yield %init : f32
    } : tensor<10x16x14x14xf32> to tensor<10x16x18x18xf32>
    %v318.empty = tensor.empty() : tensor<10x48x7x2x14xf32>
    %v318.buf = linalg.fill ins(%init : f32) outs(%v318.empty : tensor<10x48x7x2x14xf32>) -> tensor<10x48x7x2x14xf32>
    %v318.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_inception4a_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x16x18x18xf32>, tensor<48x16x5x5xf32>)
      outs(%v318.buf : tensor<10x48x7x2x14xf32>) {
        ^bb0(%in_319: f32, %in_320: f32, %acc_321: f32):
          %v322 = arith.mulf %in_319, %in_320 : f32
          %v323 = arith.addf %v322, %acc_321 : f32
          linalg.yield %v323 : f32
      }
    -> tensor<10x48x7x2x14xf32>
    %v318.post = tensor.empty() : tensor<10x48x7x2x14xf32>
    %v318.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v318.buf.out, %l_self_modules_inception4a_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x48x7x2x14xf32>, tensor<48xf32>)
      outs(%v318.post : tensor<10x48x7x2x14xf32>) {
        ^bb0(%acc_325: f32, %in_324: f32, %post_326: f32):
          %v327 = arith.addf %acc_325, %in_324 : f32
          linalg.yield %v327 : f32
      }
    -> tensor<10x48x7x2x14xf32>
    %input_16.buf = tensor.empty() : tensor<10x48x14x14xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v318.post.out : tensor<10x48x7x2x14xf32>)
      outs(%input_16.buf : tensor<10x48x14x14xf32>) {
        ^bb0(%in_328: f32, %acc_329: f32):
          linalg.yield %in_328 : f32
      }
    -> tensor<10x48x14x14xf32>
    %padded_13 = tensor.pad %x_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i330: index, %pad_i331: index, %pad_i332: index, %pad_i333: index):
        tensor.yield %init_1 : f32
    } : tensor<10x480x14x14xf32> to tensor<10x480x16x16xf32>
    %input_17.empty = tensor.empty() : tensor<10x480x14x14xf32>
    %input_17.buf = linalg.fill ins(%init_1 : f32) outs(%input_17.empty : tensor<10x480x14x14xf32>) -> tensor<10x480x14x14xf32>
    %input_17.shape = tensor.empty() : tensor<3x3xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_13, %input_17.shape : tensor<10x480x16x16xf32>, tensor<3x3xf32>)
      outs(%input_17.buf : tensor<10x480x14x14xf32>) {
        ^bb0(%in_335: f32, %shape_334: f32, %acc_336: f32):
          %v337 = arith.maxnumf %acc_336, %in_335 : f32
          linalg.yield %v337 : f32
      }
    -> tensor<10x480x14x14xf32>
    %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 480, 1, 1] : tensor<64x480xf32> into tensor<64x480x1x1xf32>
    %v338.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v338.buf = linalg.fill ins(%init : f32) outs(%v338.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v338.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_17.buf.out, %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x480x14x14xf32>, tensor<64x480x1x1xf32>)
      outs(%v338.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_339: f32, %in_340: f32, %acc_341: f32):
          %v342 = arith.mulf %in_339, %in_340 : f32
          %v343 = arith.addf %v342, %acc_341 : f32
          linalg.yield %v343 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v338.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v338.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v338.buf.out, %l_self_modules_inception4a_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v338.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_345: f32, %in_344: f32, %post_346: f32):
          %v347 = arith.addf %acc_345, %in_344 : f32
          linalg.yield %v347 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_18.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v338.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_18.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_348: f32, %acc_349: f32):
          linalg.yield %in_348 : f32
      }
    -> tensor<10x64x14x14xf32>
    %x_6 = tensor.concat dim(1) %branch1x1_2.buf.out, %input_14.buf.out, %input_16.buf.out, %input_18.buf.out : (tensor<10x192x14x14xf32>, tensor<10x208x14x14xf32>, tensor<10x48x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4b_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4b_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 512, 1, 1] : tensor<160x512xf32> into tensor<160x512x1x1xf32>
    %v350.empty = tensor.empty() : tensor<10x160x7x2x14xf32>
    %v350.buf = linalg.fill ins(%init : f32) outs(%v350.empty : tensor<10x160x7x2x14xf32>) -> tensor<10x160x7x2x14xf32>
    %v350.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_6, %l_self_modules_inception4b_modules_branch1x1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<160x512x1x1xf32>)
      outs(%v350.buf : tensor<10x160x7x2x14xf32>) {
        ^bb0(%in_351: f32, %in_352: f32, %acc_353: f32):
          %v354 = arith.mulf %in_351, %in_352 : f32
          %v355 = arith.addf %v354, %acc_353 : f32
          linalg.yield %v355 : f32
      }
    -> tensor<10x160x7x2x14xf32>
    %v350.post = tensor.empty() : tensor<10x160x7x2x14xf32>
    %v350.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v350.buf.out, %l_self_modules_inception4b_modules_branch1x1_parameters_bias_ : tensor<10x160x7x2x14xf32>, tensor<160xf32>)
      outs(%v350.post : tensor<10x160x7x2x14xf32>) {
        ^bb0(%acc_357: f32, %in_356: f32, %post_358: f32):
          %v359 = arith.addf %acc_357, %in_356 : f32
          linalg.yield %v359 : f32
      }
    -> tensor<10x160x7x2x14xf32>
    %branch1x1_3.buf = tensor.empty() : tensor<10x160x14x14xf32>
    %branch1x1_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v350.post.out : tensor<10x160x7x2x14xf32>)
      outs(%branch1x1_3.buf : tensor<10x160x14x14xf32>) {
        ^bb0(%in_360: f32, %acc_361: f32):
          linalg.yield %in_360 : f32
      }
    -> tensor<10x160x14x14xf32>
    %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [112, 512, 1, 1] : tensor<112x512xf32> into tensor<112x512x1x1xf32>
    %v362.empty = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v362.buf = linalg.fill ins(%init : f32) outs(%v362.empty : tensor<10x112x7x2x14xf32>) -> tensor<10x112x7x2x14xf32>
    %v362.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_6, %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<112x512x1x1xf32>)
      outs(%v362.buf : tensor<10x112x7x2x14xf32>) {
        ^bb0(%in_363: f32, %in_364: f32, %acc_365: f32):
          %v366 = arith.mulf %in_363, %in_364 : f32
          %v367 = arith.addf %v366, %acc_365 : f32
          linalg.yield %v367 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %v362.post = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v362.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v362.buf.out, %l_self_modules_inception4b_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x112x7x2x14xf32>, tensor<112xf32>)
      outs(%v362.post : tensor<10x112x7x2x14xf32>) {
        ^bb0(%acc_369: f32, %in_368: f32, %post_370: f32):
          %v371 = arith.addf %acc_369, %in_368 : f32
          linalg.yield %v371 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %input_19.buf = tensor.empty() : tensor<10x112x14x14xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v362.post.out : tensor<10x112x7x2x14xf32>)
      outs(%input_19.buf : tensor<10x112x14x14xf32>) {
        ^bb0(%in_372: f32, %acc_373: f32):
          linalg.yield %in_372 : f32
      }
    -> tensor<10x112x14x14xf32>
    %padded_14 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i374: index, %pad_i375: index, %pad_i376: index, %pad_i377: index):
        tensor.yield %init : f32
    } : tensor<10x112x14x14xf32> to tensor<10x112x16x16xf32>
    %v378.empty = tensor.empty() : tensor<10x224x7x2x14xf32>
    %v378.buf = linalg.fill ins(%init : f32) outs(%v378.empty : tensor<10x224x7x2x14xf32>) -> tensor<10x224x7x2x14xf32>
    %v378.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_inception4b_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x112x16x16xf32>, tensor<224x112x3x3xf32>)
      outs(%v378.buf : tensor<10x224x7x2x14xf32>) {
        ^bb0(%in_379: f32, %in_380: f32, %acc_381: f32):
          %v382 = arith.mulf %in_379, %in_380 : f32
          %v383 = arith.addf %v382, %acc_381 : f32
          linalg.yield %v383 : f32
      }
    -> tensor<10x224x7x2x14xf32>
    %v378.post = tensor.empty() : tensor<10x224x7x2x14xf32>
    %v378.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v378.buf.out, %l_self_modules_inception4b_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x224x7x2x14xf32>, tensor<224xf32>)
      outs(%v378.post : tensor<10x224x7x2x14xf32>) {
        ^bb0(%acc_385: f32, %in_384: f32, %post_386: f32):
          %v387 = arith.addf %acc_385, %in_384 : f32
          linalg.yield %v387 : f32
      }
    -> tensor<10x224x7x2x14xf32>
    %input_20.buf = tensor.empty() : tensor<10x224x14x14xf32>
    %input_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v378.post.out : tensor<10x224x7x2x14xf32>)
      outs(%input_20.buf : tensor<10x224x14x14xf32>) {
        ^bb0(%in_388: f32, %acc_389: f32):
          linalg.yield %in_388 : f32
      }
    -> tensor<10x224x14x14xf32>
    %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 512, 1, 1] : tensor<24x512xf32> into tensor<24x512x1x1xf32>
    %v390.empty = tensor.empty() : tensor<10x24x7x2x14xf32>
    %v390.buf = linalg.fill ins(%init : f32) outs(%v390.empty : tensor<10x24x7x2x14xf32>) -> tensor<10x24x7x2x14xf32>
    %v390.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_6, %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<24x512x1x1xf32>)
      outs(%v390.buf : tensor<10x24x7x2x14xf32>) {
        ^bb0(%in_391: f32, %in_392: f32, %acc_393: f32):
          %v394 = arith.mulf %in_391, %in_392 : f32
          %v395 = arith.addf %v394, %acc_393 : f32
          linalg.yield %v395 : f32
      }
    -> tensor<10x24x7x2x14xf32>
    %v390.post = tensor.empty() : tensor<10x24x7x2x14xf32>
    %v390.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v390.buf.out, %l_self_modules_inception4b_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x24x7x2x14xf32>, tensor<24xf32>)
      outs(%v390.post : tensor<10x24x7x2x14xf32>) {
        ^bb0(%acc_397: f32, %in_396: f32, %post_398: f32):
          %v399 = arith.addf %acc_397, %in_396 : f32
          linalg.yield %v399 : f32
      }
    -> tensor<10x24x7x2x14xf32>
    %input_21.buf = tensor.empty() : tensor<10x24x14x14xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v390.post.out : tensor<10x24x7x2x14xf32>)
      outs(%input_21.buf : tensor<10x24x14x14xf32>) {
        ^bb0(%in_400: f32, %acc_401: f32):
          linalg.yield %in_400 : f32
      }
    -> tensor<10x24x14x14xf32>
    %padded_15 = tensor.pad %input_21.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i402: index, %pad_i403: index, %pad_i404: index, %pad_i405: index):
        tensor.yield %init : f32
    } : tensor<10x24x14x14xf32> to tensor<10x24x18x18xf32>
    %v406.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v406.buf = linalg.fill ins(%init : f32) outs(%v406.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v406.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_inception4b_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x24x18x18xf32>, tensor<64x24x5x5xf32>)
      outs(%v406.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_407: f32, %in_408: f32, %acc_409: f32):
          %v410 = arith.mulf %in_407, %in_408 : f32
          %v411 = arith.addf %v410, %acc_409 : f32
          linalg.yield %v411 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v406.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v406.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v406.buf.out, %l_self_modules_inception4b_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v406.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_413: f32, %in_412: f32, %post_414: f32):
          %v415 = arith.addf %acc_413, %in_412 : f32
          linalg.yield %v415 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_22.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v406.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_22.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_416: f32, %acc_417: f32):
          linalg.yield %in_416 : f32
      }
    -> tensor<10x64x14x14xf32>
    %padded_16 = tensor.pad %x_6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i418: index, %pad_i419: index, %pad_i420: index, %pad_i421: index):
        tensor.yield %init_1 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %input_23.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_23.buf = linalg.fill ins(%init_1 : f32) outs(%input_23.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_23.shape = tensor.empty() : tensor<3x3xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_16, %input_23.shape : tensor<10x512x16x16xf32>, tensor<3x3xf32>)
      outs(%input_23.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_423: f32, %shape_422: f32, %acc_424: f32):
          %v425 = arith.maxnumf %acc_424, %in_423 : f32
          linalg.yield %v425 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 512, 1, 1] : tensor<64x512xf32> into tensor<64x512x1x1xf32>
    %v426.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v426.buf = linalg.fill ins(%init : f32) outs(%v426.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v426.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_23.buf.out, %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>)
      outs(%v426.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_427: f32, %in_428: f32, %acc_429: f32):
          %v430 = arith.mulf %in_427, %in_428 : f32
          %v431 = arith.addf %v430, %acc_429 : f32
          linalg.yield %v431 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v426.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v426.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v426.buf.out, %l_self_modules_inception4b_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v426.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_433: f32, %in_432: f32, %post_434: f32):
          %v435 = arith.addf %acc_433, %in_432 : f32
          linalg.yield %v435 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_24.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v426.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_24.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_436: f32, %acc_437: f32):
          linalg.yield %in_436 : f32
      }
    -> tensor<10x64x14x14xf32>
    %x_7 = tensor.concat dim(1) %branch1x1_3.buf.out, %input_20.buf.out, %input_22.buf.out, %input_24.buf.out : (tensor<10x160x14x14xf32>, tensor<10x224x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4c_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4c_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 512, 1, 1] : tensor<128x512xf32> into tensor<128x512x1x1xf32>
    %v438.empty = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v438.buf = linalg.fill ins(%init : f32) outs(%v438.empty : tensor<10x128x7x2x14xf32>) -> tensor<10x128x7x2x14xf32>
    %v438.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_7, %l_self_modules_inception4c_modules_branch1x1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<128x512x1x1xf32>)
      outs(%v438.buf : tensor<10x128x7x2x14xf32>) {
        ^bb0(%in_439: f32, %in_440: f32, %acc_441: f32):
          %v442 = arith.mulf %in_439, %in_440 : f32
          %v443 = arith.addf %v442, %acc_441 : f32
          linalg.yield %v443 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %v438.post = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v438.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v438.buf.out, %l_self_modules_inception4c_modules_branch1x1_parameters_bias_ : tensor<10x128x7x2x14xf32>, tensor<128xf32>)
      outs(%v438.post : tensor<10x128x7x2x14xf32>) {
        ^bb0(%acc_445: f32, %in_444: f32, %post_446: f32):
          %v447 = arith.addf %acc_445, %in_444 : f32
          linalg.yield %v447 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %branch1x1_4.buf = tensor.empty() : tensor<10x128x14x14xf32>
    %branch1x1_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v438.post.out : tensor<10x128x7x2x14xf32>)
      outs(%branch1x1_4.buf : tensor<10x128x14x14xf32>) {
        ^bb0(%in_448: f32, %acc_449: f32):
          linalg.yield %in_448 : f32
      }
    -> tensor<10x128x14x14xf32>
    %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 512, 1, 1] : tensor<128x512xf32> into tensor<128x512x1x1xf32>
    %v450.empty = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v450.buf = linalg.fill ins(%init : f32) outs(%v450.empty : tensor<10x128x7x2x14xf32>) -> tensor<10x128x7x2x14xf32>
    %v450.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_7, %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<128x512x1x1xf32>)
      outs(%v450.buf : tensor<10x128x7x2x14xf32>) {
        ^bb0(%in_451: f32, %in_452: f32, %acc_453: f32):
          %v454 = arith.mulf %in_451, %in_452 : f32
          %v455 = arith.addf %v454, %acc_453 : f32
          linalg.yield %v455 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %v450.post = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v450.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v450.buf.out, %l_self_modules_inception4c_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x128x7x2x14xf32>, tensor<128xf32>)
      outs(%v450.post : tensor<10x128x7x2x14xf32>) {
        ^bb0(%acc_457: f32, %in_456: f32, %post_458: f32):
          %v459 = arith.addf %acc_457, %in_456 : f32
          linalg.yield %v459 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %input_25.buf = tensor.empty() : tensor<10x128x14x14xf32>
    %input_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v450.post.out : tensor<10x128x7x2x14xf32>)
      outs(%input_25.buf : tensor<10x128x14x14xf32>) {
        ^bb0(%in_460: f32, %acc_461: f32):
          linalg.yield %in_460 : f32
      }
    -> tensor<10x128x14x14xf32>
    %padded_17 = tensor.pad %input_25.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i462: index, %pad_i463: index, %pad_i464: index, %pad_i465: index):
        tensor.yield %init : f32
    } : tensor<10x128x14x14xf32> to tensor<10x128x16x16xf32>
    %v466.empty = tensor.empty() : tensor<10x256x7x2x14xf32>
    %v466.buf = linalg.fill ins(%init : f32) outs(%v466.empty : tensor<10x256x7x2x14xf32>) -> tensor<10x256x7x2x14xf32>
    %v466.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_17, %l_self_modules_inception4c_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x128x16x16xf32>, tensor<256x128x3x3xf32>)
      outs(%v466.buf : tensor<10x256x7x2x14xf32>) {
        ^bb0(%in_467: f32, %in_468: f32, %acc_469: f32):
          %v470 = arith.mulf %in_467, %in_468 : f32
          %v471 = arith.addf %v470, %acc_469 : f32
          linalg.yield %v471 : f32
      }
    -> tensor<10x256x7x2x14xf32>
    %v466.post = tensor.empty() : tensor<10x256x7x2x14xf32>
    %v466.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v466.buf.out, %l_self_modules_inception4c_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x256x7x2x14xf32>, tensor<256xf32>)
      outs(%v466.post : tensor<10x256x7x2x14xf32>) {
        ^bb0(%acc_473: f32, %in_472: f32, %post_474: f32):
          %v475 = arith.addf %acc_473, %in_472 : f32
          linalg.yield %v475 : f32
      }
    -> tensor<10x256x7x2x14xf32>
    %input_26.buf = tensor.empty() : tensor<10x256x14x14xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v466.post.out : tensor<10x256x7x2x14xf32>)
      outs(%input_26.buf : tensor<10x256x14x14xf32>) {
        ^bb0(%in_476: f32, %acc_477: f32):
          linalg.yield %in_476 : f32
      }
    -> tensor<10x256x14x14xf32>
    %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 512, 1, 1] : tensor<24x512xf32> into tensor<24x512x1x1xf32>
    %v478.empty = tensor.empty() : tensor<10x24x7x2x14xf32>
    %v478.buf = linalg.fill ins(%init : f32) outs(%v478.empty : tensor<10x24x7x2x14xf32>) -> tensor<10x24x7x2x14xf32>
    %v478.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_7, %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<24x512x1x1xf32>)
      outs(%v478.buf : tensor<10x24x7x2x14xf32>) {
        ^bb0(%in_479: f32, %in_480: f32, %acc_481: f32):
          %v482 = arith.mulf %in_479, %in_480 : f32
          %v483 = arith.addf %v482, %acc_481 : f32
          linalg.yield %v483 : f32
      }
    -> tensor<10x24x7x2x14xf32>
    %v478.post = tensor.empty() : tensor<10x24x7x2x14xf32>
    %v478.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v478.buf.out, %l_self_modules_inception4c_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x24x7x2x14xf32>, tensor<24xf32>)
      outs(%v478.post : tensor<10x24x7x2x14xf32>) {
        ^bb0(%acc_485: f32, %in_484: f32, %post_486: f32):
          %v487 = arith.addf %acc_485, %in_484 : f32
          linalg.yield %v487 : f32
      }
    -> tensor<10x24x7x2x14xf32>
    %input_27.buf = tensor.empty() : tensor<10x24x14x14xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v478.post.out : tensor<10x24x7x2x14xf32>)
      outs(%input_27.buf : tensor<10x24x14x14xf32>) {
        ^bb0(%in_488: f32, %acc_489: f32):
          linalg.yield %in_488 : f32
      }
    -> tensor<10x24x14x14xf32>
    %padded_18 = tensor.pad %input_27.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i490: index, %pad_i491: index, %pad_i492: index, %pad_i493: index):
        tensor.yield %init : f32
    } : tensor<10x24x14x14xf32> to tensor<10x24x18x18xf32>
    %v494.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v494.buf = linalg.fill ins(%init : f32) outs(%v494.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v494.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_18, %l_self_modules_inception4c_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x24x18x18xf32>, tensor<64x24x5x5xf32>)
      outs(%v494.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_495: f32, %in_496: f32, %acc_497: f32):
          %v498 = arith.mulf %in_495, %in_496 : f32
          %v499 = arith.addf %v498, %acc_497 : f32
          linalg.yield %v499 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v494.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v494.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v494.buf.out, %l_self_modules_inception4c_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v494.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_501: f32, %in_500: f32, %post_502: f32):
          %v503 = arith.addf %acc_501, %in_500 : f32
          linalg.yield %v503 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_28.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v494.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_28.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_504: f32, %acc_505: f32):
          linalg.yield %in_504 : f32
      }
    -> tensor<10x64x14x14xf32>
    %padded_19 = tensor.pad %x_7 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i506: index, %pad_i507: index, %pad_i508: index, %pad_i509: index):
        tensor.yield %init_1 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %input_29.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_29.buf = linalg.fill ins(%init_1 : f32) outs(%input_29.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_29.shape = tensor.empty() : tensor<3x3xf32>
    %input_29.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_19, %input_29.shape : tensor<10x512x16x16xf32>, tensor<3x3xf32>)
      outs(%input_29.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_511: f32, %shape_510: f32, %acc_512: f32):
          %v513 = arith.maxnumf %acc_512, %in_511 : f32
          linalg.yield %v513 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 512, 1, 1] : tensor<64x512xf32> into tensor<64x512x1x1xf32>
    %v514.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v514.buf = linalg.fill ins(%init : f32) outs(%v514.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v514.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_29.buf.out, %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>)
      outs(%v514.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_515: f32, %in_516: f32, %acc_517: f32):
          %v518 = arith.mulf %in_515, %in_516 : f32
          %v519 = arith.addf %v518, %acc_517 : f32
          linalg.yield %v519 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v514.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v514.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v514.buf.out, %l_self_modules_inception4c_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v514.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_521: f32, %in_520: f32, %post_522: f32):
          %v523 = arith.addf %acc_521, %in_520 : f32
          linalg.yield %v523 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_30.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v514.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_30.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_524: f32, %acc_525: f32):
          linalg.yield %in_524 : f32
      }
    -> tensor<10x64x14x14xf32>
    %x_8 = tensor.concat dim(1) %branch1x1_4.buf.out, %input_26.buf.out, %input_28.buf.out, %input_30.buf.out : (tensor<10x128x14x14xf32>, tensor<10x256x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4d_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4d_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [112, 512, 1, 1] : tensor<112x512xf32> into tensor<112x512x1x1xf32>
    %v526.empty = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v526.buf = linalg.fill ins(%init : f32) outs(%v526.empty : tensor<10x112x7x2x14xf32>) -> tensor<10x112x7x2x14xf32>
    %v526.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_8, %l_self_modules_inception4d_modules_branch1x1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<112x512x1x1xf32>)
      outs(%v526.buf : tensor<10x112x7x2x14xf32>) {
        ^bb0(%in_527: f32, %in_528: f32, %acc_529: f32):
          %v530 = arith.mulf %in_527, %in_528 : f32
          %v531 = arith.addf %v530, %acc_529 : f32
          linalg.yield %v531 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %v526.post = tensor.empty() : tensor<10x112x7x2x14xf32>
    %v526.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v526.buf.out, %l_self_modules_inception4d_modules_branch1x1_parameters_bias_ : tensor<10x112x7x2x14xf32>, tensor<112xf32>)
      outs(%v526.post : tensor<10x112x7x2x14xf32>) {
        ^bb0(%acc_533: f32, %in_532: f32, %post_534: f32):
          %v535 = arith.addf %acc_533, %in_532 : f32
          linalg.yield %v535 : f32
      }
    -> tensor<10x112x7x2x14xf32>
    %branch1x1_5.buf = tensor.empty() : tensor<10x112x14x14xf32>
    %branch1x1_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v526.post.out : tensor<10x112x7x2x14xf32>)
      outs(%branch1x1_5.buf : tensor<10x112x14x14xf32>) {
        ^bb0(%in_536: f32, %acc_537: f32):
          linalg.yield %in_536 : f32
      }
    -> tensor<10x112x14x14xf32>
    %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 512, 1, 1] : tensor<144x512xf32> into tensor<144x512x1x1xf32>
    %v538.empty = tensor.empty() : tensor<10x144x7x2x14xf32>
    %v538.buf = linalg.fill ins(%init : f32) outs(%v538.empty : tensor<10x144x7x2x14xf32>) -> tensor<10x144x7x2x14xf32>
    %v538.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_8, %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<144x512x1x1xf32>)
      outs(%v538.buf : tensor<10x144x7x2x14xf32>) {
        ^bb0(%in_539: f32, %in_540: f32, %acc_541: f32):
          %v542 = arith.mulf %in_539, %in_540 : f32
          %v543 = arith.addf %v542, %acc_541 : f32
          linalg.yield %v543 : f32
      }
    -> tensor<10x144x7x2x14xf32>
    %v538.post = tensor.empty() : tensor<10x144x7x2x14xf32>
    %v538.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v538.buf.out, %l_self_modules_inception4d_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x144x7x2x14xf32>, tensor<144xf32>)
      outs(%v538.post : tensor<10x144x7x2x14xf32>) {
        ^bb0(%acc_545: f32, %in_544: f32, %post_546: f32):
          %v547 = arith.addf %acc_545, %in_544 : f32
          linalg.yield %v547 : f32
      }
    -> tensor<10x144x7x2x14xf32>
    %input_31.buf = tensor.empty() : tensor<10x144x14x14xf32>
    %input_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v538.post.out : tensor<10x144x7x2x14xf32>)
      outs(%input_31.buf : tensor<10x144x14x14xf32>) {
        ^bb0(%in_548: f32, %acc_549: f32):
          linalg.yield %in_548 : f32
      }
    -> tensor<10x144x14x14xf32>
    %padded_20 = tensor.pad %input_31.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i550: index, %pad_i551: index, %pad_i552: index, %pad_i553: index):
        tensor.yield %init : f32
    } : tensor<10x144x14x14xf32> to tensor<10x144x16x16xf32>
    %v554.empty = tensor.empty() : tensor<10x288x7x2x14xf32>
    %v554.buf = linalg.fill ins(%init : f32) outs(%v554.empty : tensor<10x288x7x2x14xf32>) -> tensor<10x288x7x2x14xf32>
    %v554.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_20, %l_self_modules_inception4d_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x144x16x16xf32>, tensor<288x144x3x3xf32>)
      outs(%v554.buf : tensor<10x288x7x2x14xf32>) {
        ^bb0(%in_555: f32, %in_556: f32, %acc_557: f32):
          %v558 = arith.mulf %in_555, %in_556 : f32
          %v559 = arith.addf %v558, %acc_557 : f32
          linalg.yield %v559 : f32
      }
    -> tensor<10x288x7x2x14xf32>
    %v554.post = tensor.empty() : tensor<10x288x7x2x14xf32>
    %v554.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v554.buf.out, %l_self_modules_inception4d_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x288x7x2x14xf32>, tensor<288xf32>)
      outs(%v554.post : tensor<10x288x7x2x14xf32>) {
        ^bb0(%acc_561: f32, %in_560: f32, %post_562: f32):
          %v563 = arith.addf %acc_561, %in_560 : f32
          linalg.yield %v563 : f32
      }
    -> tensor<10x288x7x2x14xf32>
    %input_32.buf = tensor.empty() : tensor<10x288x14x14xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v554.post.out : tensor<10x288x7x2x14xf32>)
      outs(%input_32.buf : tensor<10x288x14x14xf32>) {
        ^bb0(%in_564: f32, %acc_565: f32):
          linalg.yield %in_564 : f32
      }
    -> tensor<10x288x14x14xf32>
    %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 512, 1, 1] : tensor<32x512xf32> into tensor<32x512x1x1xf32>
    %v566.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v566.buf = linalg.fill ins(%init : f32) outs(%v566.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v566.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_8, %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<32x512x1x1xf32>)
      outs(%v566.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_567: f32, %in_568: f32, %acc_569: f32):
          %v570 = arith.mulf %in_567, %in_568 : f32
          %v571 = arith.addf %v570, %acc_569 : f32
          linalg.yield %v571 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %v566.post = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v566.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v566.buf.out, %l_self_modules_inception4d_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x32x7x2x14xf32>, tensor<32xf32>)
      outs(%v566.post : tensor<10x32x7x2x14xf32>) {
        ^bb0(%acc_573: f32, %in_572: f32, %post_574: f32):
          %v575 = arith.addf %acc_573, %in_572 : f32
          linalg.yield %v575 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_33.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v566.post.out : tensor<10x32x7x2x14xf32>)
      outs(%input_33.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_576: f32, %acc_577: f32):
          linalg.yield %in_576 : f32
      }
    -> tensor<10x32x14x14xf32>
    %padded_21 = tensor.pad %input_33.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i578: index, %pad_i579: index, %pad_i580: index, %pad_i581: index):
        tensor.yield %init : f32
    } : tensor<10x32x14x14xf32> to tensor<10x32x18x18xf32>
    %v582.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v582.buf = linalg.fill ins(%init : f32) outs(%v582.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v582.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_21, %l_self_modules_inception4d_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x32x18x18xf32>, tensor<64x32x5x5xf32>)
      outs(%v582.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_583: f32, %in_584: f32, %acc_585: f32):
          %v586 = arith.mulf %in_583, %in_584 : f32
          %v587 = arith.addf %v586, %acc_585 : f32
          linalg.yield %v587 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v582.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v582.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v582.buf.out, %l_self_modules_inception4d_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v582.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_589: f32, %in_588: f32, %post_590: f32):
          %v591 = arith.addf %acc_589, %in_588 : f32
          linalg.yield %v591 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_34.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v582.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_34.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_592: f32, %acc_593: f32):
          linalg.yield %in_592 : f32
      }
    -> tensor<10x64x14x14xf32>
    %padded_22 = tensor.pad %x_8 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i594: index, %pad_i595: index, %pad_i596: index, %pad_i597: index):
        tensor.yield %init_1 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %input_35.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_35.buf = linalg.fill ins(%init_1 : f32) outs(%input_35.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_35.shape = tensor.empty() : tensor<3x3xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_22, %input_35.shape : tensor<10x512x16x16xf32>, tensor<3x3xf32>)
      outs(%input_35.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_599: f32, %shape_598: f32, %acc_600: f32):
          %v601 = arith.maxnumf %acc_600, %in_599 : f32
          linalg.yield %v601 : f32
      }
    -> tensor<10x512x14x14xf32>
    %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [64, 512, 1, 1] : tensor<64x512xf32> into tensor<64x512x1x1xf32>
    %v602.empty = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v602.buf = linalg.fill ins(%init : f32) outs(%v602.empty : tensor<10x64x7x2x14xf32>) -> tensor<10x64x7x2x14xf32>
    %v602.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_35.buf.out, %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x512x14x14xf32>, tensor<64x512x1x1xf32>)
      outs(%v602.buf : tensor<10x64x7x2x14xf32>) {
        ^bb0(%in_603: f32, %in_604: f32, %acc_605: f32):
          %v606 = arith.mulf %in_603, %in_604 : f32
          %v607 = arith.addf %v606, %acc_605 : f32
          linalg.yield %v607 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %v602.post = tensor.empty() : tensor<10x64x7x2x14xf32>
    %v602.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v602.buf.out, %l_self_modules_inception4d_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x64x7x2x14xf32>, tensor<64xf32>)
      outs(%v602.post : tensor<10x64x7x2x14xf32>) {
        ^bb0(%acc_609: f32, %in_608: f32, %post_610: f32):
          %v611 = arith.addf %acc_609, %in_608 : f32
          linalg.yield %v611 : f32
      }
    -> tensor<10x64x7x2x14xf32>
    %input_36.buf = tensor.empty() : tensor<10x64x14x14xf32>
    %input_36.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v602.post.out : tensor<10x64x7x2x14xf32>)
      outs(%input_36.buf : tensor<10x64x14x14xf32>) {
        ^bb0(%in_612: f32, %acc_613: f32):
          linalg.yield %in_612 : f32
      }
    -> tensor<10x64x14x14xf32>
    %x_9 = tensor.concat dim(1) %branch1x1_5.buf.out, %input_32.buf.out, %input_34.buf.out, %input_36.buf.out : (tensor<10x112x14x14xf32>, tensor<10x288x14x14xf32>, tensor<10x64x14x14xf32>, tensor<10x64x14x14xf32>) -> tensor<10x528x14x14xf32>
    %l_self_modules_inception4e_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4e_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 528, 1, 1] : tensor<256x528xf32> into tensor<256x528x1x1xf32>
    %v614.empty = tensor.empty() : tensor<10x256x7x2x14xf32>
    %v614.buf = linalg.fill ins(%init : f32) outs(%v614.empty : tensor<10x256x7x2x14xf32>) -> tensor<10x256x7x2x14xf32>
    %v614.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_9, %l_self_modules_inception4e_modules_branch1x1_parameters_weight_.expanded : tensor<10x528x14x14xf32>, tensor<256x528x1x1xf32>)
      outs(%v614.buf : tensor<10x256x7x2x14xf32>) {
        ^bb0(%in_615: f32, %in_616: f32, %acc_617: f32):
          %v618 = arith.mulf %in_615, %in_616 : f32
          %v619 = arith.addf %v618, %acc_617 : f32
          linalg.yield %v619 : f32
      }
    -> tensor<10x256x7x2x14xf32>
    %v614.post = tensor.empty() : tensor<10x256x7x2x14xf32>
    %v614.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v614.buf.out, %l_self_modules_inception4e_modules_branch1x1_parameters_bias_ : tensor<10x256x7x2x14xf32>, tensor<256xf32>)
      outs(%v614.post : tensor<10x256x7x2x14xf32>) {
        ^bb0(%acc_621: f32, %in_620: f32, %post_622: f32):
          %v623 = arith.addf %acc_621, %in_620 : f32
          linalg.yield %v623 : f32
      }
    -> tensor<10x256x7x2x14xf32>
    %branch1x1_6.buf = tensor.empty() : tensor<10x256x14x14xf32>
    %branch1x1_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v614.post.out : tensor<10x256x7x2x14xf32>)
      outs(%branch1x1_6.buf : tensor<10x256x14x14xf32>) {
        ^bb0(%in_624: f32, %acc_625: f32):
          linalg.yield %in_624 : f32
      }
    -> tensor<10x256x14x14xf32>
    %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 528, 1, 1] : tensor<160x528xf32> into tensor<160x528x1x1xf32>
    %v626.empty = tensor.empty() : tensor<10x160x7x2x14xf32>
    %v626.buf = linalg.fill ins(%init : f32) outs(%v626.empty : tensor<10x160x7x2x14xf32>) -> tensor<10x160x7x2x14xf32>
    %v626.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_9, %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_weight_.expanded : tensor<10x528x14x14xf32>, tensor<160x528x1x1xf32>)
      outs(%v626.buf : tensor<10x160x7x2x14xf32>) {
        ^bb0(%in_627: f32, %in_628: f32, %acc_629: f32):
          %v630 = arith.mulf %in_627, %in_628 : f32
          %v631 = arith.addf %v630, %acc_629 : f32
          linalg.yield %v631 : f32
      }
    -> tensor<10x160x7x2x14xf32>
    %v626.post = tensor.empty() : tensor<10x160x7x2x14xf32>
    %v626.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v626.buf.out, %l_self_modules_inception4e_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x160x7x2x14xf32>, tensor<160xf32>)
      outs(%v626.post : tensor<10x160x7x2x14xf32>) {
        ^bb0(%acc_633: f32, %in_632: f32, %post_634: f32):
          %v635 = arith.addf %acc_633, %in_632 : f32
          linalg.yield %v635 : f32
      }
    -> tensor<10x160x7x2x14xf32>
    %input_37.buf = tensor.empty() : tensor<10x160x14x14xf32>
    %input_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v626.post.out : tensor<10x160x7x2x14xf32>)
      outs(%input_37.buf : tensor<10x160x14x14xf32>) {
        ^bb0(%in_636: f32, %acc_637: f32):
          linalg.yield %in_636 : f32
      }
    -> tensor<10x160x14x14xf32>
    %padded_23 = tensor.pad %input_37.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i638: index, %pad_i639: index, %pad_i640: index, %pad_i641: index):
        tensor.yield %init : f32
    } : tensor<10x160x14x14xf32> to tensor<10x160x16x16xf32>
    %v642.empty = tensor.empty() : tensor<10x320x7x2x14xf32>
    %v642.buf = linalg.fill ins(%init : f32) outs(%v642.empty : tensor<10x320x7x2x14xf32>) -> tensor<10x320x7x2x14xf32>
    %v642.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_23, %l_self_modules_inception4e_modules_branch3x3_modules_1_parameters_weight_ : tensor<10x160x16x16xf32>, tensor<320x160x3x3xf32>)
      outs(%v642.buf : tensor<10x320x7x2x14xf32>) {
        ^bb0(%in_643: f32, %in_644: f32, %acc_645: f32):
          %v646 = arith.mulf %in_643, %in_644 : f32
          %v647 = arith.addf %v646, %acc_645 : f32
          linalg.yield %v647 : f32
      }
    -> tensor<10x320x7x2x14xf32>
    %v642.post = tensor.empty() : tensor<10x320x7x2x14xf32>
    %v642.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v642.buf.out, %l_self_modules_inception4e_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x320x7x2x14xf32>, tensor<320xf32>)
      outs(%v642.post : tensor<10x320x7x2x14xf32>) {
        ^bb0(%acc_649: f32, %in_648: f32, %post_650: f32):
          %v651 = arith.addf %acc_649, %in_648 : f32
          linalg.yield %v651 : f32
      }
    -> tensor<10x320x7x2x14xf32>
    %input_38.buf = tensor.empty() : tensor<10x320x14x14xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v642.post.out : tensor<10x320x7x2x14xf32>)
      outs(%input_38.buf : tensor<10x320x14x14xf32>) {
        ^bb0(%in_652: f32, %acc_653: f32):
          linalg.yield %in_652 : f32
      }
    -> tensor<10x320x14x14xf32>
    %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 528, 1, 1] : tensor<32x528xf32> into tensor<32x528x1x1xf32>
    %v654.empty = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v654.buf = linalg.fill ins(%init : f32) outs(%v654.empty : tensor<10x32x7x2x14xf32>) -> tensor<10x32x7x2x14xf32>
    %v654.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_9, %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_weight_.expanded : tensor<10x528x14x14xf32>, tensor<32x528x1x1xf32>)
      outs(%v654.buf : tensor<10x32x7x2x14xf32>) {
        ^bb0(%in_655: f32, %in_656: f32, %acc_657: f32):
          %v658 = arith.mulf %in_655, %in_656 : f32
          %v659 = arith.addf %v658, %acc_657 : f32
          linalg.yield %v659 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %v654.post = tensor.empty() : tensor<10x32x7x2x14xf32>
    %v654.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v654.buf.out, %l_self_modules_inception4e_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x32x7x2x14xf32>, tensor<32xf32>)
      outs(%v654.post : tensor<10x32x7x2x14xf32>) {
        ^bb0(%acc_661: f32, %in_660: f32, %post_662: f32):
          %v663 = arith.addf %acc_661, %in_660 : f32
          linalg.yield %v663 : f32
      }
    -> tensor<10x32x7x2x14xf32>
    %input_39.buf = tensor.empty() : tensor<10x32x14x14xf32>
    %input_39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v654.post.out : tensor<10x32x7x2x14xf32>)
      outs(%input_39.buf : tensor<10x32x14x14xf32>) {
        ^bb0(%in_664: f32, %acc_665: f32):
          linalg.yield %in_664 : f32
      }
    -> tensor<10x32x14x14xf32>
    %padded_24 = tensor.pad %input_39.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i666: index, %pad_i667: index, %pad_i668: index, %pad_i669: index):
        tensor.yield %init : f32
    } : tensor<10x32x14x14xf32> to tensor<10x32x18x18xf32>
    %v670.empty = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v670.buf = linalg.fill ins(%init : f32) outs(%v670.empty : tensor<10x128x7x2x14xf32>) -> tensor<10x128x7x2x14xf32>
    %v670.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_24, %l_self_modules_inception4e_modules_branch5x5_modules_1_parameters_weight_ : tensor<10x32x18x18xf32>, tensor<128x32x5x5xf32>)
      outs(%v670.buf : tensor<10x128x7x2x14xf32>) {
        ^bb0(%in_671: f32, %in_672: f32, %acc_673: f32):
          %v674 = arith.mulf %in_671, %in_672 : f32
          %v675 = arith.addf %v674, %acc_673 : f32
          linalg.yield %v675 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %v670.post = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v670.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v670.buf.out, %l_self_modules_inception4e_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x128x7x2x14xf32>, tensor<128xf32>)
      outs(%v670.post : tensor<10x128x7x2x14xf32>) {
        ^bb0(%acc_677: f32, %in_676: f32, %post_678: f32):
          %v679 = arith.addf %acc_677, %in_676 : f32
          linalg.yield %v679 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %input_40.buf = tensor.empty() : tensor<10x128x14x14xf32>
    %input_40.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v670.post.out : tensor<10x128x7x2x14xf32>)
      outs(%input_40.buf : tensor<10x128x14x14xf32>) {
        ^bb0(%in_680: f32, %acc_681: f32):
          linalg.yield %in_680 : f32
      }
    -> tensor<10x128x14x14xf32>
    %padded_25 = tensor.pad %x_9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i682: index, %pad_i683: index, %pad_i684: index, %pad_i685: index):
        tensor.yield %init_1 : f32
    } : tensor<10x528x14x14xf32> to tensor<10x528x16x16xf32>
    %input_41.empty = tensor.empty() : tensor<10x528x14x14xf32>
    %input_41.buf = linalg.fill ins(%init_1 : f32) outs(%input_41.empty : tensor<10x528x14x14xf32>) -> tensor<10x528x14x14xf32>
    %input_41.shape = tensor.empty() : tensor<3x3xf32>
    %input_41.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_25, %input_41.shape : tensor<10x528x16x16xf32>, tensor<3x3xf32>)
      outs(%input_41.buf : tensor<10x528x14x14xf32>) {
        ^bb0(%in_687: f32, %shape_686: f32, %acc_688: f32):
          %v689 = arith.maxnumf %acc_688, %in_687 : f32
          linalg.yield %v689 : f32
      }
    -> tensor<10x528x14x14xf32>
    %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 528, 1, 1] : tensor<128x528xf32> into tensor<128x528x1x1xf32>
    %v690.empty = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v690.buf = linalg.fill ins(%init : f32) outs(%v690.empty : tensor<10x128x7x2x14xf32>) -> tensor<10x128x7x2x14xf32>
    %v690.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_41.buf.out, %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_weight_.expanded : tensor<10x528x14x14xf32>, tensor<128x528x1x1xf32>)
      outs(%v690.buf : tensor<10x128x7x2x14xf32>) {
        ^bb0(%in_691: f32, %in_692: f32, %acc_693: f32):
          %v694 = arith.mulf %in_691, %in_692 : f32
          %v695 = arith.addf %v694, %acc_693 : f32
          linalg.yield %v695 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %v690.post = tensor.empty() : tensor<10x128x7x2x14xf32>
    %v690.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v690.buf.out, %l_self_modules_inception4e_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x128x7x2x14xf32>, tensor<128xf32>)
      outs(%v690.post : tensor<10x128x7x2x14xf32>) {
        ^bb0(%acc_697: f32, %in_696: f32, %post_698: f32):
          %v699 = arith.addf %acc_697, %in_696 : f32
          linalg.yield %v699 : f32
      }
    -> tensor<10x128x7x2x14xf32>
    %input_42.buf = tensor.empty() : tensor<10x128x14x14xf32>
    %input_42.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v690.post.out : tensor<10x128x7x2x14xf32>)
      outs(%input_42.buf : tensor<10x128x14x14xf32>) {
        ^bb0(%in_700: f32, %acc_701: f32):
          linalg.yield %in_700 : f32
      }
    -> tensor<10x128x14x14xf32>
    %x_10 = tensor.concat dim(1) %branch1x1_6.buf.out, %input_38.buf.out, %input_40.buf.out, %input_42.buf.out : (tensor<10x256x14x14xf32>, tensor<10x320x14x14xf32>, tensor<10x128x14x14xf32>, tensor<10x128x14x14xf32>) -> tensor<10x832x14x14xf32>
    %padded_26 = tensor.pad %x_10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i702: index, %pad_i703: index, %pad_i704: index, %pad_i705: index):
        tensor.yield %init_1 : f32
    } : tensor<10x832x14x14xf32> to tensor<10x832x16x16xf32>
    %x_11.empty = tensor.empty() : tensor<10x832x7x7xf32>
    %x_11.buf = linalg.fill ins(%init_1 : f32) outs(%x_11.empty : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %x_11.shape = tensor.empty() : tensor<3x3xf32>
    %x_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_26, %x_11.shape : tensor<10x832x16x16xf32>, tensor<3x3xf32>)
      outs(%x_11.buf : tensor<10x832x7x7xf32>) {
        ^bb0(%in_707: f32, %shape_706: f32, %acc_708: f32):
          %v709 = arith.maxnumf %acc_708, %in_707 : f32
          linalg.yield %v709 : f32
      }
    -> tensor<10x832x7x7xf32>
    %l_self_modules_inception5a_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5a_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [256, 832, 1, 1] : tensor<256x832xf32> into tensor<256x832x1x1xf32>
    %v710.empty = tensor.empty() : tensor<10x256x7x1x7xf32>
    %v710.buf = linalg.fill ins(%init : f32) outs(%v710.empty : tensor<10x256x7x1x7xf32>) -> tensor<10x256x7x1x7xf32>
    %v710.shape = tensor.empty() : tensor<7x1xf32>
    %v710.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_11.buf.out, %l_self_modules_inception5a_modules_branch1x1_parameters_weight_.expanded, %v710.shape : tensor<10x832x7x7xf32>, tensor<256x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v710.buf : tensor<10x256x7x1x7xf32>) {
        ^bb0(%in_712: f32, %in_713: f32, %shape_711: f32, %acc_714: f32):
          %v715 = arith.mulf %in_712, %in_713 : f32
          %v716 = arith.addf %v715, %acc_714 : f32
          linalg.yield %v716 : f32
      }
    -> tensor<10x256x7x1x7xf32>
    %v710.post = tensor.empty() : tensor<10x256x7x1x7xf32>
    %v710.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v710.buf.out, %l_self_modules_inception5a_modules_branch1x1_parameters_bias_ : tensor<10x256x7x1x7xf32>, tensor<256xf32>)
      outs(%v710.post : tensor<10x256x7x1x7xf32>) {
        ^bb0(%acc_718: f32, %in_717: f32, %post_719: f32):
          %v720 = arith.addf %acc_718, %in_717 : f32
          linalg.yield %v720 : f32
      }
    -> tensor<10x256x7x1x7xf32>
    %branch1x1_7.buf = tensor.empty() : tensor<10x256x7x7xf32>
    %branch1x1_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v710.post.out : tensor<10x256x7x1x7xf32>)
      outs(%branch1x1_7.buf : tensor<10x256x7x7xf32>) {
        ^bb0(%in_721: f32, %acc_722: f32):
          linalg.yield %in_721 : f32
      }
    -> tensor<10x256x7x7xf32>
    %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [160, 832, 1, 1] : tensor<160x832xf32> into tensor<160x832x1x1xf32>
    %v723.empty = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v723.buf = linalg.fill ins(%init : f32) outs(%v723.empty : tensor<10x160x7x1x7xf32>) -> tensor<10x160x7x1x7xf32>
    %v723.shape = tensor.empty() : tensor<7x1xf32>
    %v723.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_11.buf.out, %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_weight_.expanded, %v723.shape : tensor<10x832x7x7xf32>, tensor<160x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v723.buf : tensor<10x160x7x1x7xf32>) {
        ^bb0(%in_725: f32, %in_726: f32, %shape_724: f32, %acc_727: f32):
          %v728 = arith.mulf %in_725, %in_726 : f32
          %v729 = arith.addf %v728, %acc_727 : f32
          linalg.yield %v729 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %v723.post = tensor.empty() : tensor<10x160x7x1x7xf32>
    %v723.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v723.buf.out, %l_self_modules_inception5a_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x160x7x1x7xf32>, tensor<160xf32>)
      outs(%v723.post : tensor<10x160x7x1x7xf32>) {
        ^bb0(%acc_731: f32, %in_730: f32, %post_732: f32):
          %v733 = arith.addf %acc_731, %in_730 : f32
          linalg.yield %v733 : f32
      }
    -> tensor<10x160x7x1x7xf32>
    %input_43.buf = tensor.empty() : tensor<10x160x7x7xf32>
    %input_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v723.post.out : tensor<10x160x7x1x7xf32>)
      outs(%input_43.buf : tensor<10x160x7x7xf32>) {
        ^bb0(%in_734: f32, %acc_735: f32):
          linalg.yield %in_734 : f32
      }
    -> tensor<10x160x7x7xf32>
    %padded_27 = tensor.pad %input_43.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i736: index, %pad_i737: index, %pad_i738: index, %pad_i739: index):
        tensor.yield %init : f32
    } : tensor<10x160x7x7xf32> to tensor<10x160x9x9xf32>
    %v740.empty = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v740.buf = linalg.fill ins(%init : f32) outs(%v740.empty : tensor<10x320x7x1x7xf32>) -> tensor<10x320x7x1x7xf32>
    %v740.shape = tensor.empty() : tensor<7x1xf32>
    %v740.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_27, %l_self_modules_inception5a_modules_branch3x3_modules_1_parameters_weight_, %v740.shape : tensor<10x160x9x9xf32>, tensor<320x160x3x3xf32>, tensor<7x1xf32>)
      outs(%v740.buf : tensor<10x320x7x1x7xf32>) {
        ^bb0(%in_742: f32, %in_743: f32, %shape_741: f32, %acc_744: f32):
          %v745 = arith.mulf %in_742, %in_743 : f32
          %v746 = arith.addf %v745, %acc_744 : f32
          linalg.yield %v746 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %v740.post = tensor.empty() : tensor<10x320x7x1x7xf32>
    %v740.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v740.buf.out, %l_self_modules_inception5a_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x320x7x1x7xf32>, tensor<320xf32>)
      outs(%v740.post : tensor<10x320x7x1x7xf32>) {
        ^bb0(%acc_748: f32, %in_747: f32, %post_749: f32):
          %v750 = arith.addf %acc_748, %in_747 : f32
          linalg.yield %v750 : f32
      }
    -> tensor<10x320x7x1x7xf32>
    %input_44.buf = tensor.empty() : tensor<10x320x7x7xf32>
    %input_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v740.post.out : tensor<10x320x7x1x7xf32>)
      outs(%input_44.buf : tensor<10x320x7x7xf32>) {
        ^bb0(%in_751: f32, %acc_752: f32):
          linalg.yield %in_751 : f32
      }
    -> tensor<10x320x7x7xf32>
    %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 832, 1, 1] : tensor<32x832xf32> into tensor<32x832x1x1xf32>
    %v753.empty = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v753.buf = linalg.fill ins(%init : f32) outs(%v753.empty : tensor<10x32x7x1x7xf32>) -> tensor<10x32x7x1x7xf32>
    %v753.shape = tensor.empty() : tensor<7x1xf32>
    %v753.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_11.buf.out, %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_weight_.expanded, %v753.shape : tensor<10x832x7x7xf32>, tensor<32x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v753.buf : tensor<10x32x7x1x7xf32>) {
        ^bb0(%in_755: f32, %in_756: f32, %shape_754: f32, %acc_757: f32):
          %v758 = arith.mulf %in_755, %in_756 : f32
          %v759 = arith.addf %v758, %acc_757 : f32
          linalg.yield %v759 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %v753.post = tensor.empty() : tensor<10x32x7x1x7xf32>
    %v753.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v753.buf.out, %l_self_modules_inception5a_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x32x7x1x7xf32>, tensor<32xf32>)
      outs(%v753.post : tensor<10x32x7x1x7xf32>) {
        ^bb0(%acc_761: f32, %in_760: f32, %post_762: f32):
          %v763 = arith.addf %acc_761, %in_760 : f32
          linalg.yield %v763 : f32
      }
    -> tensor<10x32x7x1x7xf32>
    %input_45.buf = tensor.empty() : tensor<10x32x7x7xf32>
    %input_45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v753.post.out : tensor<10x32x7x1x7xf32>)
      outs(%input_45.buf : tensor<10x32x7x7xf32>) {
        ^bb0(%in_764: f32, %acc_765: f32):
          linalg.yield %in_764 : f32
      }
    -> tensor<10x32x7x7xf32>
    %padded_28 = tensor.pad %input_45.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i766: index, %pad_i767: index, %pad_i768: index, %pad_i769: index):
        tensor.yield %init : f32
    } : tensor<10x32x7x7xf32> to tensor<10x32x11x11xf32>
    %v770.empty = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v770.buf = linalg.fill ins(%init : f32) outs(%v770.empty : tensor<10x128x7x1x7xf32>) -> tensor<10x128x7x1x7xf32>
    %v770.shape = tensor.empty() : tensor<7x1xf32>
    %v770.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_28, %l_self_modules_inception5a_modules_branch5x5_modules_1_parameters_weight_, %v770.shape : tensor<10x32x11x11xf32>, tensor<128x32x5x5xf32>, tensor<7x1xf32>)
      outs(%v770.buf : tensor<10x128x7x1x7xf32>) {
        ^bb0(%in_772: f32, %in_773: f32, %shape_771: f32, %acc_774: f32):
          %v775 = arith.mulf %in_772, %in_773 : f32
          %v776 = arith.addf %v775, %acc_774 : f32
          linalg.yield %v776 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %v770.post = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v770.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v770.buf.out, %l_self_modules_inception5a_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x128x7x1x7xf32>, tensor<128xf32>)
      outs(%v770.post : tensor<10x128x7x1x7xf32>) {
        ^bb0(%acc_778: f32, %in_777: f32, %post_779: f32):
          %v780 = arith.addf %acc_778, %in_777 : f32
          linalg.yield %v780 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %input_46.buf = tensor.empty() : tensor<10x128x7x7xf32>
    %input_46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v770.post.out : tensor<10x128x7x1x7xf32>)
      outs(%input_46.buf : tensor<10x128x7x7xf32>) {
        ^bb0(%in_781: f32, %acc_782: f32):
          linalg.yield %in_781 : f32
      }
    -> tensor<10x128x7x7xf32>
    %padded_29 = tensor.pad %x_11.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i783: index, %pad_i784: index, %pad_i785: index, %pad_i786: index):
        tensor.yield %init_1 : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %input_47.empty = tensor.empty() : tensor<10x832x7x7xf32>
    %input_47.buf = linalg.fill ins(%init_1 : f32) outs(%input_47.empty : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %input_47.shape = tensor.empty() : tensor<3x3xf32>
    %input_47.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_29, %input_47.shape : tensor<10x832x9x9xf32>, tensor<3x3xf32>)
      outs(%input_47.buf : tensor<10x832x7x7xf32>) {
        ^bb0(%in_788: f32, %shape_787: f32, %acc_789: f32):
          %v790 = arith.maxnumf %acc_789, %in_788 : f32
          linalg.yield %v790 : f32
      }
    -> tensor<10x832x7x7xf32>
    %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 832, 1, 1] : tensor<128x832xf32> into tensor<128x832x1x1xf32>
    %v791.empty = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v791.buf = linalg.fill ins(%init : f32) outs(%v791.empty : tensor<10x128x7x1x7xf32>) -> tensor<10x128x7x1x7xf32>
    %v791.shape = tensor.empty() : tensor<7x1xf32>
    %v791.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_47.buf.out, %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_weight_.expanded, %v791.shape : tensor<10x832x7x7xf32>, tensor<128x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v791.buf : tensor<10x128x7x1x7xf32>) {
        ^bb0(%in_793: f32, %in_794: f32, %shape_792: f32, %acc_795: f32):
          %v796 = arith.mulf %in_793, %in_794 : f32
          %v797 = arith.addf %v796, %acc_795 : f32
          linalg.yield %v797 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %v791.post = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v791.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v791.buf.out, %l_self_modules_inception5a_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x128x7x1x7xf32>, tensor<128xf32>)
      outs(%v791.post : tensor<10x128x7x1x7xf32>) {
        ^bb0(%acc_799: f32, %in_798: f32, %post_800: f32):
          %v801 = arith.addf %acc_799, %in_798 : f32
          linalg.yield %v801 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %input_48.buf = tensor.empty() : tensor<10x128x7x7xf32>
    %input_48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v791.post.out : tensor<10x128x7x1x7xf32>)
      outs(%input_48.buf : tensor<10x128x7x7xf32>) {
        ^bb0(%in_802: f32, %acc_803: f32):
          linalg.yield %in_802 : f32
      }
    -> tensor<10x128x7x7xf32>
    %x_12 = tensor.concat dim(1) %branch1x1_7.buf.out, %input_44.buf.out, %input_46.buf.out, %input_48.buf.out : (tensor<10x256x7x7xf32>, tensor<10x320x7x7xf32>, tensor<10x128x7x7xf32>, tensor<10x128x7x7xf32>) -> tensor<10x832x7x7xf32>
    %l_self_modules_inception5b_modules_branch1x1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5b_modules_branch1x1_parameters_weight_ [[0], [1, 2, 3]] output_shape [384, 832, 1, 1] : tensor<384x832xf32> into tensor<384x832x1x1xf32>
    %v804.empty = tensor.empty() : tensor<10x384x7x1x7xf32>
    %v804.buf = linalg.fill ins(%init : f32) outs(%v804.empty : tensor<10x384x7x1x7xf32>) -> tensor<10x384x7x1x7xf32>
    %v804.shape = tensor.empty() : tensor<7x1xf32>
    %v804.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_12, %l_self_modules_inception5b_modules_branch1x1_parameters_weight_.expanded, %v804.shape : tensor<10x832x7x7xf32>, tensor<384x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v804.buf : tensor<10x384x7x1x7xf32>) {
        ^bb0(%in_806: f32, %in_807: f32, %shape_805: f32, %acc_808: f32):
          %v809 = arith.mulf %in_806, %in_807 : f32
          %v810 = arith.addf %v809, %acc_808 : f32
          linalg.yield %v810 : f32
      }
    -> tensor<10x384x7x1x7xf32>
    %v804.post = tensor.empty() : tensor<10x384x7x1x7xf32>
    %v804.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v804.buf.out, %l_self_modules_inception5b_modules_branch1x1_parameters_bias_ : tensor<10x384x7x1x7xf32>, tensor<384xf32>)
      outs(%v804.post : tensor<10x384x7x1x7xf32>) {
        ^bb0(%acc_812: f32, %in_811: f32, %post_813: f32):
          %v814 = arith.addf %acc_812, %in_811 : f32
          linalg.yield %v814 : f32
      }
    -> tensor<10x384x7x1x7xf32>
    %branch1x1_8.buf = tensor.empty() : tensor<10x384x7x7xf32>
    %branch1x1_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v804.post.out : tensor<10x384x7x1x7xf32>)
      outs(%branch1x1_8.buf : tensor<10x384x7x7xf32>) {
        ^bb0(%in_815: f32, %acc_816: f32):
          linalg.yield %in_815 : f32
      }
    -> tensor<10x384x7x7xf32>
    %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 832, 1, 1] : tensor<192x832xf32> into tensor<192x832x1x1xf32>
    %v817.empty = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v817.buf = linalg.fill ins(%init : f32) outs(%v817.empty : tensor<10x192x7x1x7xf32>) -> tensor<10x192x7x1x7xf32>
    %v817.shape = tensor.empty() : tensor<7x1xf32>
    %v817.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_12, %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_weight_.expanded, %v817.shape : tensor<10x832x7x7xf32>, tensor<192x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v817.buf : tensor<10x192x7x1x7xf32>) {
        ^bb0(%in_819: f32, %in_820: f32, %shape_818: f32, %acc_821: f32):
          %v822 = arith.mulf %in_819, %in_820 : f32
          %v823 = arith.addf %v822, %acc_821 : f32
          linalg.yield %v823 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %v817.post = tensor.empty() : tensor<10x192x7x1x7xf32>
    %v817.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v817.buf.out, %l_self_modules_inception5b_modules_branch3x3_modules_0_parameters_bias_ : tensor<10x192x7x1x7xf32>, tensor<192xf32>)
      outs(%v817.post : tensor<10x192x7x1x7xf32>) {
        ^bb0(%acc_825: f32, %in_824: f32, %post_826: f32):
          %v827 = arith.addf %acc_825, %in_824 : f32
          linalg.yield %v827 : f32
      }
    -> tensor<10x192x7x1x7xf32>
    %input_49.buf = tensor.empty() : tensor<10x192x7x7xf32>
    %input_49.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v817.post.out : tensor<10x192x7x1x7xf32>)
      outs(%input_49.buf : tensor<10x192x7x7xf32>) {
        ^bb0(%in_828: f32, %acc_829: f32):
          linalg.yield %in_828 : f32
      }
    -> tensor<10x192x7x7xf32>
    %padded_30 = tensor.pad %input_49.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i830: index, %pad_i831: index, %pad_i832: index, %pad_i833: index):
        tensor.yield %init : f32
    } : tensor<10x192x7x7xf32> to tensor<10x192x9x9xf32>
    %v834.empty = tensor.empty() : tensor<10x384x7x1x7xf32>
    %v834.buf = linalg.fill ins(%init : f32) outs(%v834.empty : tensor<10x384x7x1x7xf32>) -> tensor<10x384x7x1x7xf32>
    %v834.shape = tensor.empty() : tensor<7x1xf32>
    %v834.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_30, %l_self_modules_inception5b_modules_branch3x3_modules_1_parameters_weight_, %v834.shape : tensor<10x192x9x9xf32>, tensor<384x192x3x3xf32>, tensor<7x1xf32>)
      outs(%v834.buf : tensor<10x384x7x1x7xf32>) {
        ^bb0(%in_836: f32, %in_837: f32, %shape_835: f32, %acc_838: f32):
          %v839 = arith.mulf %in_836, %in_837 : f32
          %v840 = arith.addf %v839, %acc_838 : f32
          linalg.yield %v840 : f32
      }
    -> tensor<10x384x7x1x7xf32>
    %v834.post = tensor.empty() : tensor<10x384x7x1x7xf32>
    %v834.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v834.buf.out, %l_self_modules_inception5b_modules_branch3x3_modules_1_parameters_bias_ : tensor<10x384x7x1x7xf32>, tensor<384xf32>)
      outs(%v834.post : tensor<10x384x7x1x7xf32>) {
        ^bb0(%acc_842: f32, %in_841: f32, %post_843: f32):
          %v844 = arith.addf %acc_842, %in_841 : f32
          linalg.yield %v844 : f32
      }
    -> tensor<10x384x7x1x7xf32>
    %input_50.buf = tensor.empty() : tensor<10x384x7x7xf32>
    %input_50.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v834.post.out : tensor<10x384x7x1x7xf32>)
      outs(%input_50.buf : tensor<10x384x7x7xf32>) {
        ^bb0(%in_845: f32, %acc_846: f32):
          linalg.yield %in_845 : f32
      }
    -> tensor<10x384x7x7xf32>
    %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [48, 832, 1, 1] : tensor<48x832xf32> into tensor<48x832x1x1xf32>
    %v847.empty = tensor.empty() : tensor<10x48x7x1x7xf32>
    %v847.buf = linalg.fill ins(%init : f32) outs(%v847.empty : tensor<10x48x7x1x7xf32>) -> tensor<10x48x7x1x7xf32>
    %v847.shape = tensor.empty() : tensor<7x1xf32>
    %v847.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%x_12, %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_weight_.expanded, %v847.shape : tensor<10x832x7x7xf32>, tensor<48x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v847.buf : tensor<10x48x7x1x7xf32>) {
        ^bb0(%in_849: f32, %in_850: f32, %shape_848: f32, %acc_851: f32):
          %v852 = arith.mulf %in_849, %in_850 : f32
          %v853 = arith.addf %v852, %acc_851 : f32
          linalg.yield %v853 : f32
      }
    -> tensor<10x48x7x1x7xf32>
    %v847.post = tensor.empty() : tensor<10x48x7x1x7xf32>
    %v847.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v847.buf.out, %l_self_modules_inception5b_modules_branch5x5_modules_0_parameters_bias_ : tensor<10x48x7x1x7xf32>, tensor<48xf32>)
      outs(%v847.post : tensor<10x48x7x1x7xf32>) {
        ^bb0(%acc_855: f32, %in_854: f32, %post_856: f32):
          %v857 = arith.addf %acc_855, %in_854 : f32
          linalg.yield %v857 : f32
      }
    -> tensor<10x48x7x1x7xf32>
    %input_51.buf = tensor.empty() : tensor<10x48x7x7xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v847.post.out : tensor<10x48x7x1x7xf32>)
      outs(%input_51.buf : tensor<10x48x7x7xf32>) {
        ^bb0(%in_858: f32, %acc_859: f32):
          linalg.yield %in_858 : f32
      }
    -> tensor<10x48x7x7xf32>
    %padded_31 = tensor.pad %input_51.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i860: index, %pad_i861: index, %pad_i862: index, %pad_i863: index):
        tensor.yield %init : f32
    } : tensor<10x48x7x7xf32> to tensor<10x48x11x11xf32>
    %v864.empty = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v864.buf = linalg.fill ins(%init : f32) outs(%v864.empty : tensor<10x128x7x1x7xf32>) -> tensor<10x128x7x1x7xf32>
    %v864.shape = tensor.empty() : tensor<7x1xf32>
    %v864.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_31, %l_self_modules_inception5b_modules_branch5x5_modules_1_parameters_weight_, %v864.shape : tensor<10x48x11x11xf32>, tensor<128x48x5x5xf32>, tensor<7x1xf32>)
      outs(%v864.buf : tensor<10x128x7x1x7xf32>) {
        ^bb0(%in_866: f32, %in_867: f32, %shape_865: f32, %acc_868: f32):
          %v869 = arith.mulf %in_866, %in_867 : f32
          %v870 = arith.addf %v869, %acc_868 : f32
          linalg.yield %v870 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %v864.post = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v864.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v864.buf.out, %l_self_modules_inception5b_modules_branch5x5_modules_1_parameters_bias_ : tensor<10x128x7x1x7xf32>, tensor<128xf32>)
      outs(%v864.post : tensor<10x128x7x1x7xf32>) {
        ^bb0(%acc_872: f32, %in_871: f32, %post_873: f32):
          %v874 = arith.addf %acc_872, %in_871 : f32
          linalg.yield %v874 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %input_52.buf = tensor.empty() : tensor<10x128x7x7xf32>
    %input_52.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v864.post.out : tensor<10x128x7x1x7xf32>)
      outs(%input_52.buf : tensor<10x128x7x7xf32>) {
        ^bb0(%in_875: f32, %acc_876: f32):
          linalg.yield %in_875 : f32
      }
    -> tensor<10x128x7x7xf32>
    %padded_32 = tensor.pad %x_12 low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i877: index, %pad_i878: index, %pad_i879: index, %pad_i880: index):
        tensor.yield %init_1 : f32
    } : tensor<10x832x7x7xf32> to tensor<10x832x9x9xf32>
    %input_53.empty = tensor.empty() : tensor<10x832x7x7xf32>
    %input_53.buf = linalg.fill ins(%init_1 : f32) outs(%input_53.empty : tensor<10x832x7x7xf32>) -> tensor<10x832x7x7xf32>
    %input_53.shape = tensor.empty() : tensor<3x3xf32>
    %input_53.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%padded_32, %input_53.shape : tensor<10x832x9x9xf32>, tensor<3x3xf32>)
      outs(%input_53.buf : tensor<10x832x7x7xf32>) {
        ^bb0(%in_882: f32, %shape_881: f32, %acc_883: f32):
          %v884 = arith.maxnumf %acc_883, %in_882 : f32
          linalg.yield %v884 : f32
      }
    -> tensor<10x832x7x7xf32>
    %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_weight_ [[0], [1, 2, 3]] output_shape [128, 832, 1, 1] : tensor<128x832xf32> into tensor<128x832x1x1xf32>
    %v885.empty = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v885.buf = linalg.fill ins(%init : f32) outs(%v885.empty : tensor<10x128x7x1x7xf32>) -> tensor<10x128x7x1x7xf32>
    %v885.shape = tensor.empty() : tensor<7x1xf32>
    %v885.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_53.buf.out, %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_weight_.expanded, %v885.shape : tensor<10x832x7x7xf32>, tensor<128x832x1x1xf32>, tensor<7x1xf32>)
      outs(%v885.buf : tensor<10x128x7x1x7xf32>) {
        ^bb0(%in_887: f32, %in_888: f32, %shape_886: f32, %acc_889: f32):
          %v890 = arith.mulf %in_887, %in_888 : f32
          %v891 = arith.addf %v890, %acc_889 : f32
          linalg.yield %v891 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %v885.post = tensor.empty() : tensor<10x128x7x1x7xf32>
    %v885.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v885.buf.out, %l_self_modules_inception5b_modules_branch_pool_modules_1_parameters_bias_ : tensor<10x128x7x1x7xf32>, tensor<128xf32>)
      outs(%v885.post : tensor<10x128x7x1x7xf32>) {
        ^bb0(%acc_893: f32, %in_892: f32, %post_894: f32):
          %v895 = arith.addf %acc_893, %in_892 : f32
          linalg.yield %v895 : f32
      }
    -> tensor<10x128x7x1x7xf32>
    %input_54.buf = tensor.empty() : tensor<10x128x7x7xf32>
    %input_54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v885.post.out : tensor<10x128x7x1x7xf32>)
      outs(%input_54.buf : tensor<10x128x7x7xf32>) {
        ^bb0(%in_896: f32, %acc_897: f32):
          linalg.yield %in_896 : f32
      }
    -> tensor<10x128x7x7xf32>
    %x_13 = tensor.concat dim(1) %branch1x1_8.buf.out, %input_50.buf.out, %input_52.buf.out, %input_54.buf.out : (tensor<10x384x7x7xf32>, tensor<10x384x7x7xf32>, tensor<10x128x7x7xf32>, tensor<10x128x7x7xf32>) -> tensor<10x1024x7x7xf32>
    %v898.empty = tensor.empty() : tensor<10x1024xf32>
    %v898.buf = linalg.fill ins(%init : f32) outs(%v898.empty : tensor<10x1024xf32>) -> tensor<10x1024xf32>
    %v898.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%x_13 : tensor<10x1024x7x7xf32>)
      outs(%v898.buf : tensor<10x1024xf32>) {
        ^bb0(%in_899: f32, %acc_900: f32):
          %v901 = arith.addf %acc_900, %in_899 : f32
          linalg.yield %v901 : f32
      }
    -> tensor<10x1024xf32>
    %v898.post = tensor.empty() : tensor<10x1024xf32>
    %v898.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v898.buf.out : tensor<10x1024xf32>)
      outs(%v898.post : tensor<10x1024xf32>) {
        ^bb0(%acc_902: f32, %post_903: f32):
          %v904 = arith.constant 49.0 : f32
          %v905 = arith.divf %acc_902, %v904 : f32
          linalg.yield %v905 : f32
      }
    -> tensor<10x1024xf32>
    %v906.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v906.buf = linalg.fill ins(%init : f32) outs(%v906.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v906.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v898.post.out, %l_self_modules_fc_parameters_weight_ : tensor<10x1024xf32>, tensor<1000x1024xf32>)
      outs(%v906.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_907: f32, %in_908: f32, %acc_909: f32):
          %v910 = arith.mulf %in_907, %in_908 : f32
          %v911 = arith.addf %v910, %acc_909 : f32
          linalg.yield %v911 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v906.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v906.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v906.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v906.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_913: f32, %in_912: f32, %post_914: f32):
          %v915 = arith.addf %acc_913, %in_912 : f32
          linalg.yield %v915 : f32
      }
    -> tensor<5x2x250x4xf32>
    %x_17.buf = tensor.empty() : tensor<10x1000xf32>
    %x_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v906.post.out : tensor<5x2x250x4xf32>)
      outs(%x_17.buf : tensor<10x1000xf32>) {
        ^bb0(%in_916: f32, %acc_917: f32):
          linalg.yield %in_916 : f32
      }
    -> tensor<10x1000xf32>
    func.return %x_17.buf.out : tensor<10x1000xf32>
  }
}
