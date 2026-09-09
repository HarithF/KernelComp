module {
  func.func public @EfficientNetB1(%l_self_modules_conv1_parameters_weight_: tensor<32x3x3x3xf32>, %l_x_: tensor<10x3x240x240xf32>, %l_self_modules_bn1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_bn1_buffers_running_var_: tensor<32xf32>, %l_self_modules_bn1_parameters_weight_: tensor<32xf32>, %l_self_modules_bn1_parameters_bias_: tensor<32xf32>, %l_self_modules_mbconv1_modules_0_parameters_weight_: tensor<32x32xf32>, %l_self_modules_mbconv1_modules_1_buffers_running_mean_: tensor<32xf32>, %l_self_modules_mbconv1_modules_1_buffers_running_var_: tensor<32xf32>, %l_self_modules_mbconv1_modules_1_parameters_weight_: tensor<32xf32>, %l_self_modules_mbconv1_modules_1_parameters_bias_: tensor<32xf32>, %l_self_modules_mbconv1_modules_3_parameters_weight_: tensor<32x3x3xf32>, %l_self_modules_mbconv1_modules_4_buffers_running_mean_: tensor<32xf32>, %l_self_modules_mbconv1_modules_4_buffers_running_var_: tensor<32xf32>, %l_self_modules_mbconv1_modules_4_parameters_weight_: tensor<32xf32>, %l_self_modules_mbconv1_modules_4_parameters_bias_: tensor<32xf32>, %l_self_modules_mbconv1_modules_6_parameters_weight_: tensor<16x32xf32>, %l_self_modules_mbconv1_modules_7_buffers_running_mean_: tensor<16xf32>, %l_self_modules_mbconv1_modules_7_buffers_running_var_: tensor<16xf32>, %l_self_modules_mbconv1_modules_7_parameters_weight_: tensor<16xf32>, %l_self_modules_mbconv1_modules_7_parameters_bias_: tensor<16xf32>, %l_self_modules_mbconv2_modules_0_parameters_weight_: tensor<96x16xf32>, %l_self_modules_mbconv2_modules_1_buffers_running_mean_: tensor<96xf32>, %l_self_modules_mbconv2_modules_1_buffers_running_var_: tensor<96xf32>, %l_self_modules_mbconv2_modules_1_parameters_weight_: tensor<96xf32>, %l_self_modules_mbconv2_modules_1_parameters_bias_: tensor<96xf32>, %l_self_modules_mbconv2_modules_3_parameters_weight_: tensor<96x3x3xf32>, %l_self_modules_mbconv2_modules_4_buffers_running_mean_: tensor<96xf32>, %l_self_modules_mbconv2_modules_4_buffers_running_var_: tensor<96xf32>, %l_self_modules_mbconv2_modules_4_parameters_weight_: tensor<96xf32>, %l_self_modules_mbconv2_modules_4_parameters_bias_: tensor<96xf32>, %l_self_modules_mbconv2_modules_6_parameters_weight_: tensor<24x96xf32>, %l_self_modules_mbconv2_modules_7_buffers_running_mean_: tensor<24xf32>, %l_self_modules_mbconv2_modules_7_buffers_running_var_: tensor<24xf32>, %l_self_modules_mbconv2_modules_7_parameters_weight_: tensor<24xf32>, %l_self_modules_mbconv2_modules_7_parameters_bias_: tensor<24xf32>, %l_self_modules_mbconv3_modules_0_parameters_weight_: tensor<144x24xf32>, %l_self_modules_mbconv3_modules_1_buffers_running_mean_: tensor<144xf32>, %l_self_modules_mbconv3_modules_1_buffers_running_var_: tensor<144xf32>, %l_self_modules_mbconv3_modules_1_parameters_weight_: tensor<144xf32>, %l_self_modules_mbconv3_modules_1_parameters_bias_: tensor<144xf32>, %l_self_modules_mbconv3_modules_3_parameters_weight_: tensor<144x3x3xf32>, %l_self_modules_mbconv3_modules_4_buffers_running_mean_: tensor<144xf32>, %l_self_modules_mbconv3_modules_4_buffers_running_var_: tensor<144xf32>, %l_self_modules_mbconv3_modules_4_parameters_weight_: tensor<144xf32>, %l_self_modules_mbconv3_modules_4_parameters_bias_: tensor<144xf32>, %l_self_modules_mbconv3_modules_6_parameters_weight_: tensor<40x144xf32>, %l_self_modules_mbconv3_modules_7_buffers_running_mean_: tensor<40xf32>, %l_self_modules_mbconv3_modules_7_buffers_running_var_: tensor<40xf32>, %l_self_modules_mbconv3_modules_7_parameters_weight_: tensor<40xf32>, %l_self_modules_mbconv3_modules_7_parameters_bias_: tensor<40xf32>, %l_self_modules_mbconv4_modules_0_parameters_weight_: tensor<240x40xf32>, %l_self_modules_mbconv4_modules_1_buffers_running_mean_: tensor<240xf32>, %l_self_modules_mbconv4_modules_1_buffers_running_var_: tensor<240xf32>, %l_self_modules_mbconv4_modules_1_parameters_weight_: tensor<240xf32>, %l_self_modules_mbconv4_modules_1_parameters_bias_: tensor<240xf32>, %l_self_modules_mbconv4_modules_3_parameters_weight_: tensor<240x3x3xf32>, %l_self_modules_mbconv4_modules_4_buffers_running_mean_: tensor<240xf32>, %l_self_modules_mbconv4_modules_4_buffers_running_var_: tensor<240xf32>, %l_self_modules_mbconv4_modules_4_parameters_weight_: tensor<240xf32>, %l_self_modules_mbconv4_modules_4_parameters_bias_: tensor<240xf32>, %l_self_modules_mbconv4_modules_6_parameters_weight_: tensor<80x240xf32>, %l_self_modules_mbconv4_modules_7_buffers_running_mean_: tensor<80xf32>, %l_self_modules_mbconv4_modules_7_buffers_running_var_: tensor<80xf32>, %l_self_modules_mbconv4_modules_7_parameters_weight_: tensor<80xf32>, %l_self_modules_mbconv4_modules_7_parameters_bias_: tensor<80xf32>, %l_self_modules_mbconv5_modules_0_parameters_weight_: tensor<480x80xf32>, %l_self_modules_mbconv5_modules_1_buffers_running_mean_: tensor<480xf32>, %l_self_modules_mbconv5_modules_1_buffers_running_var_: tensor<480xf32>, %l_self_modules_mbconv5_modules_1_parameters_weight_: tensor<480xf32>, %l_self_modules_mbconv5_modules_1_parameters_bias_: tensor<480xf32>, %l_self_modules_mbconv5_modules_3_parameters_weight_: tensor<480x3x3xf32>, %l_self_modules_mbconv5_modules_4_buffers_running_mean_: tensor<480xf32>, %l_self_modules_mbconv5_modules_4_buffers_running_var_: tensor<480xf32>, %l_self_modules_mbconv5_modules_4_parameters_weight_: tensor<480xf32>, %l_self_modules_mbconv5_modules_4_parameters_bias_: tensor<480xf32>, %l_self_modules_mbconv5_modules_6_parameters_weight_: tensor<112x480xf32>, %l_self_modules_mbconv5_modules_7_buffers_running_mean_: tensor<112xf32>, %l_self_modules_mbconv5_modules_7_buffers_running_var_: tensor<112xf32>, %l_self_modules_mbconv5_modules_7_parameters_weight_: tensor<112xf32>, %l_self_modules_mbconv5_modules_7_parameters_bias_: tensor<112xf32>, %l_self_modules_mbconv6_modules_0_parameters_weight_: tensor<672x112xf32>, %l_self_modules_mbconv6_modules_1_buffers_running_mean_: tensor<672xf32>, %l_self_modules_mbconv6_modules_1_buffers_running_var_: tensor<672xf32>, %l_self_modules_mbconv6_modules_1_parameters_weight_: tensor<672xf32>, %l_self_modules_mbconv6_modules_1_parameters_bias_: tensor<672xf32>, %l_self_modules_mbconv6_modules_3_parameters_weight_: tensor<672x3x3xf32>, %l_self_modules_mbconv6_modules_4_buffers_running_mean_: tensor<672xf32>, %l_self_modules_mbconv6_modules_4_buffers_running_var_: tensor<672xf32>, %l_self_modules_mbconv6_modules_4_parameters_weight_: tensor<672xf32>, %l_self_modules_mbconv6_modules_4_parameters_bias_: tensor<672xf32>, %l_self_modules_mbconv6_modules_6_parameters_weight_: tensor<192x672xf32>, %l_self_modules_mbconv6_modules_7_buffers_running_mean_: tensor<192xf32>, %l_self_modules_mbconv6_modules_7_buffers_running_var_: tensor<192xf32>, %l_self_modules_mbconv6_modules_7_parameters_weight_: tensor<192xf32>, %l_self_modules_mbconv6_modules_7_parameters_bias_: tensor<192xf32>, %l_self_modules_mbconv7_modules_0_parameters_weight_: tensor<1152x192xf32>, %l_self_modules_mbconv7_modules_1_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_1_buffers_running_var_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_1_parameters_weight_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_1_parameters_bias_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_3_parameters_weight_: tensor<1152x3x3xf32>, %l_self_modules_mbconv7_modules_4_buffers_running_mean_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_4_buffers_running_var_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_4_parameters_weight_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_4_parameters_bias_: tensor<1152xf32>, %l_self_modules_mbconv7_modules_6_parameters_weight_: tensor<320x1152xf32>, %l_self_modules_mbconv7_modules_7_buffers_running_mean_: tensor<320xf32>, %l_self_modules_mbconv7_modules_7_buffers_running_var_: tensor<320xf32>, %l_self_modules_mbconv7_modules_7_parameters_weight_: tensor<320xf32>, %l_self_modules_mbconv7_modules_7_parameters_bias_: tensor<320xf32>, %l_self_modules_conv2_parameters_weight_: tensor<1280x320xf32>, %l_self_modules_bn2_buffers_running_mean_: tensor<1280xf32>, %l_self_modules_bn2_buffers_running_var_: tensor<1280xf32>, %l_self_modules_bn2_parameters_weight_: tensor<1280xf32>, %l_self_modules_bn2_parameters_bias_: tensor<1280xf32>, %l_self_modules_fc_parameters_weight_: tensor<1000x1280xf32>, %l_self_modules_fc_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %init = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i0: index, %pad_i1: index, %pad_i2: index, %pad_i3: index):
        tensor.yield %init : f32
    } : tensor<10x3x240x240xf32> to tensor<10x3x242x242xf32>
    %v4.empty = tensor.empty() : tensor<10x32x120x1x120xf32>
    %v4.buf = linalg.fill ins(%init : f32) outs(%v4.empty : tensor<10x32x120x1x120xf32>) -> tensor<10x32x120x1x120xf32>
    %v4.shape = tensor.empty() : tensor<120x1xf32>
    %v4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 2 + d6, d4 * 2 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v4.shape : tensor<10x3x242x242xf32>, tensor<32x3x3x3xf32>, tensor<120x1xf32>)
      outs(%v4.buf : tensor<10x32x120x1x120xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %shape_5: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x32x120x1x120xf32>
    %v11.buf = tensor.empty() : tensor<32xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v11.buf : tensor<32xf32>) {
        ^bb0(%in_12: f32, %in_13: f32, %acc_14: f32):
          %v15 = arith.constant 1.0 : f32
          %v16 = arith.constant 9.999999747378752e-06 : f32
          %v17 = arith.addf %v16, %in_12 : f32
          %v18 = math.sqrt %v17 : f32
          %v19 = arith.divf %v15, %v18 : f32
          %v20 = arith.mulf %v19, %in_13 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<32xf32>
    %v21.buf = tensor.empty() : tensor<32xf32>
    %v21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn1_buffers_running_mean_, %l_self_modules_bn1_buffers_running_var_, %l_self_modules_bn1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v21.buf : tensor<32xf32>) {
        ^bb0(%in_22: f32, %in_23: f32, %in_24: f32, %acc_25: f32):
          %v26 = arith.constant 1.0 : f32
          %v27 = arith.constant 9.999999747378752e-06 : f32
          %v28 = arith.addf %v27, %in_23 : f32
          %v29 = math.sqrt %v28 : f32
          %v30 = arith.divf %v26, %v29 : f32
          %v31 = arith.mulf %v30, %in_24 : f32
          %v32 = arith.mulf %v31, %in_22 : f32
          linalg.yield %v32 : f32
      }
    -> tensor<32xf32>
    %v4.post = tensor.empty() : tensor<10x32x120x1x120xf32>
    %v4.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v4.buf.out, %v11.buf.out, %v21.buf.out, %l_self_modules_bn1_parameters_bias_ : tensor<10x32x120x1x120xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v4.post : tensor<10x32x120x1x120xf32>) {
        ^bb0(%acc_36: f32, %in_33: f32, %in_34: f32, %in_35: f32, %post_37: f32):
          %v38 = arith.mulf %acc_36, %in_33 : f32
          %v39 = arith.subf %v38, %in_34 : f32
          %v40 = arith.addf %v39, %in_35 : f32
          %v41 = arith.maxnumf %init, %v40 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<10x32x120x1x120xf32>
    %l_self_modules_mbconv1_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv1_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [32, 32, 1, 1] : tensor<32x32xf32> into tensor<32x32x1x1xf32>
    %v42.empty = tensor.empty() : tensor<10x32x120x1x120xf32>
    %v42.buf = linalg.fill ins(%init : f32) outs(%v42.empty : tensor<10x32x120x1x120xf32>) -> tensor<10x32x120x1x120xf32>
    %v42.shape = tensor.empty() : tensor<120x1xf32>
    %v42.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v4.post.out, %l_self_modules_mbconv1_modules_0_parameters_weight_.expanded, %v42.shape : tensor<10x32x120x1x120xf32>, tensor<32x32x1x1xf32>, tensor<120x1xf32>)
      outs(%v42.buf : tensor<10x32x120x1x120xf32>) {
        ^bb0(%in_44: f32, %in_45: f32, %shape_43: f32, %acc_46: f32):
          %v47 = arith.mulf %in_44, %in_45 : f32
          %v48 = arith.addf %v47, %acc_46 : f32
          linalg.yield %v48 : f32
      }
    -> tensor<10x32x120x1x120xf32>
    %v49.buf = tensor.empty() : tensor<32xf32>
    %v49.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_1_buffers_running_var_, %l_self_modules_mbconv1_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v49.buf : tensor<32xf32>) {
        ^bb0(%in_50: f32, %in_51: f32, %acc_52: f32):
          %v53 = arith.constant 1.0 : f32
          %v54 = arith.constant 9.999999747378752e-06 : f32
          %v55 = arith.addf %v54, %in_50 : f32
          %v56 = math.sqrt %v55 : f32
          %v57 = arith.divf %v53, %v56 : f32
          %v58 = arith.mulf %v57, %in_51 : f32
          linalg.yield %v58 : f32
      }
    -> tensor<32xf32>
    %v59.buf = tensor.empty() : tensor<32xf32>
    %v59.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_1_buffers_running_mean_, %l_self_modules_mbconv1_modules_1_buffers_running_var_, %l_self_modules_mbconv1_modules_1_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v59.buf : tensor<32xf32>) {
        ^bb0(%in_60: f32, %in_61: f32, %in_62: f32, %acc_63: f32):
          %v64 = arith.constant 1.0 : f32
          %v65 = arith.constant 9.999999747378752e-06 : f32
          %v66 = arith.addf %v65, %in_61 : f32
          %v67 = math.sqrt %v66 : f32
          %v68 = arith.divf %v64, %v67 : f32
          %v69 = arith.mulf %v68, %in_62 : f32
          %v70 = arith.mulf %v69, %in_60 : f32
          linalg.yield %v70 : f32
      }
    -> tensor<32xf32>
    %v42.post = tensor.empty() : tensor<10x32x120x1x120xf32>
    %v42.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v42.buf.out, %v49.buf.out, %v59.buf.out, %l_self_modules_mbconv1_modules_1_parameters_bias_ : tensor<10x32x120x1x120xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v42.post : tensor<10x32x120x1x120xf32>) {
        ^bb0(%acc_74: f32, %in_71: f32, %in_72: f32, %in_73: f32, %post_75: f32):
          %v76 = arith.mulf %acc_74, %in_71 : f32
          %v77 = arith.subf %v76, %in_72 : f32
          %v78 = arith.addf %v77, %in_73 : f32
          %v79 = arith.maxnumf %init, %v78 : f32
          %v80 = arith.constant 6.0 : f32
          %v81 = arith.minnumf %v80, %v79 : f32
          linalg.yield %v81 : f32
      }
    -> tensor<10x32x120x1x120xf32>
    %input_3.buf = tensor.empty() : tensor<10x32x120x120xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v42.post.out : tensor<10x32x120x1x120xf32>)
      outs(%input_3.buf : tensor<10x32x120x120xf32>) {
        ^bb0(%in_82: f32, %acc_83: f32):
          linalg.yield %in_82 : f32
      }
    -> tensor<10x32x120x120xf32>
    %v88 = tensor.pad %input_3.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i84: index, %pad_i85: index, %pad_i86: index, %pad_i87: index):
        tensor.yield %init : f32
    } : tensor<10x32x120x120xf32> to tensor<10x32x122x122xf32>
    %l_self_modules_mbconv1_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv1_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [32, 1, 3, 3] : tensor<32x3x3xf32> into tensor<32x1x3x3xf32>
    %input_6.empty = tensor.empty() : tensor<10x32x120x120xf32>
    %input_6.buf = linalg.fill ins(%init : f32) outs(%input_6.empty : tensor<10x32x120x120xf32>) -> tensor<10x32x120x120xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v88, %l_self_modules_mbconv1_modules_3_parameters_weight_.expanded : tensor<10x32x122x122xf32>, tensor<32x1x3x3xf32>)
      outs(%input_6.buf : tensor<10x32x120x120xf32>) {
        ^bb0(%in_89: f32, %in_90: f32, %acc_91: f32):
          %v92 = arith.mulf %in_89, %in_90 : f32
          %v93 = arith.addf %v92, %acc_91 : f32
          linalg.yield %v93 : f32
      }
    -> tensor<10x32x120x120xf32>
    %v94.buf = tensor.empty() : tensor<32xf32>
    %v94.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_4_buffers_running_var_, %l_self_modules_mbconv1_modules_4_parameters_weight_ : tensor<32xf32>, tensor<32xf32>)
      outs(%v94.buf : tensor<32xf32>) {
        ^bb0(%in_95: f32, %in_96: f32, %acc_97: f32):
          %v98 = arith.constant 1.0 : f32
          %v99 = arith.constant 9.999999747378752e-06 : f32
          %v100 = arith.addf %v99, %in_95 : f32
          %v101 = math.sqrt %v100 : f32
          %v102 = arith.divf %v98, %v101 : f32
          %v103 = arith.mulf %v102, %in_96 : f32
          linalg.yield %v103 : f32
      }
    -> tensor<32xf32>
    %v104.buf = tensor.empty() : tensor<32xf32>
    %v104.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_4_buffers_running_mean_, %l_self_modules_mbconv1_modules_4_buffers_running_var_, %l_self_modules_mbconv1_modules_4_parameters_weight_ : tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%v104.buf : tensor<32xf32>) {
        ^bb0(%in_105: f32, %in_106: f32, %in_107: f32, %acc_108: f32):
          %v109 = arith.constant 1.0 : f32
          %v110 = arith.constant 9.999999747378752e-06 : f32
          %v111 = arith.addf %v110, %in_106 : f32
          %v112 = math.sqrt %v111 : f32
          %v113 = arith.divf %v109, %v112 : f32
          %v114 = arith.mulf %v113, %in_107 : f32
          %v115 = arith.mulf %v114, %in_105 : f32
          linalg.yield %v115 : f32
      }
    -> tensor<32xf32>
    %input_6.post = tensor.empty() : tensor<10x32x120x120xf32>
    %input_6.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_6.buf.out, %v94.buf.out, %v104.buf.out, %l_self_modules_mbconv1_modules_4_parameters_bias_ : tensor<10x32x120x120xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>)
      outs(%input_6.post : tensor<10x32x120x120xf32>) {
        ^bb0(%acc_119: f32, %in_116: f32, %in_117: f32, %in_118: f32, %post_120: f32):
          %v121 = arith.mulf %acc_119, %in_116 : f32
          %v122 = arith.subf %v121, %in_117 : f32
          %v123 = arith.addf %v122, %in_118 : f32
          %v124 = arith.maxnumf %init, %v123 : f32
          %v125 = arith.constant 6.0 : f32
          %v126 = arith.minnumf %v125, %v124 : f32
          linalg.yield %v126 : f32
      }
    -> tensor<10x32x120x120xf32>
    %l_self_modules_mbconv1_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv1_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [16, 32, 1, 1] : tensor<16x32xf32> into tensor<16x32x1x1xf32>
    %v127.empty = tensor.empty() : tensor<10x16x120x1x120xf32>
    %v127.buf = linalg.fill ins(%init : f32) outs(%v127.empty : tensor<10x16x120x1x120xf32>) -> tensor<10x16x120x1x120xf32>
    %v127.shape = tensor.empty() : tensor<120x1xf32>
    %v127.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_6.post.out, %l_self_modules_mbconv1_modules_6_parameters_weight_.expanded, %v127.shape : tensor<10x32x120x120xf32>, tensor<16x32x1x1xf32>, tensor<120x1xf32>)
      outs(%v127.buf : tensor<10x16x120x1x120xf32>) {
        ^bb0(%in_129: f32, %in_130: f32, %shape_128: f32, %acc_131: f32):
          %v132 = arith.mulf %in_129, %in_130 : f32
          %v133 = arith.addf %v132, %acc_131 : f32
          linalg.yield %v133 : f32
      }
    -> tensor<10x16x120x1x120xf32>
    %v134.buf = tensor.empty() : tensor<16xf32>
    %v134.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_7_buffers_running_var_, %l_self_modules_mbconv1_modules_7_parameters_weight_ : tensor<16xf32>, tensor<16xf32>)
      outs(%v134.buf : tensor<16xf32>) {
        ^bb0(%in_135: f32, %in_136: f32, %acc_137: f32):
          %v138 = arith.constant 1.0 : f32
          %v139 = arith.constant 9.999999747378752e-06 : f32
          %v140 = arith.addf %v139, %in_135 : f32
          %v141 = math.sqrt %v140 : f32
          %v142 = arith.divf %v138, %v141 : f32
          %v143 = arith.mulf %v142, %in_136 : f32
          linalg.yield %v143 : f32
      }
    -> tensor<16xf32>
    %v144.buf = tensor.empty() : tensor<16xf32>
    %v144.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv1_modules_7_buffers_running_mean_, %l_self_modules_mbconv1_modules_7_buffers_running_var_, %l_self_modules_mbconv1_modules_7_parameters_weight_ : tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v144.buf : tensor<16xf32>) {
        ^bb0(%in_145: f32, %in_146: f32, %in_147: f32, %acc_148: f32):
          %v149 = arith.constant 1.0 : f32
          %v150 = arith.constant 9.999999747378752e-06 : f32
          %v151 = arith.addf %v150, %in_146 : f32
          %v152 = math.sqrt %v151 : f32
          %v153 = arith.divf %v149, %v152 : f32
          %v154 = arith.mulf %v153, %in_147 : f32
          %v155 = arith.mulf %v154, %in_145 : f32
          linalg.yield %v155 : f32
      }
    -> tensor<16xf32>
    %v127.post = tensor.empty() : tensor<10x16x120x1x120xf32>
    %v127.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v127.buf.out, %v134.buf.out, %v144.buf.out, %l_self_modules_mbconv1_modules_7_parameters_bias_ : tensor<10x16x120x1x120xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>)
      outs(%v127.post : tensor<10x16x120x1x120xf32>) {
        ^bb0(%acc_159: f32, %in_156: f32, %in_157: f32, %in_158: f32, %post_160: f32):
          %v161 = arith.mulf %acc_159, %in_156 : f32
          %v162 = arith.subf %v161, %in_157 : f32
          %v163 = arith.addf %v162, %in_158 : f32
          linalg.yield %v163 : f32
      }
    -> tensor<10x16x120x1x120xf32>
    %l_self_modules_mbconv2_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv2_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [96, 16, 1, 1] : tensor<96x16xf32> into tensor<96x16x1x1xf32>
    %v164.empty = tensor.empty() : tensor<10x96x120x1x120xf32>
    %v164.buf = linalg.fill ins(%init : f32) outs(%v164.empty : tensor<10x96x120x1x120xf32>) -> tensor<10x96x120x1x120xf32>
    %v164.shape = tensor.empty() : tensor<120x1xf32>
    %v164.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v127.post.out, %l_self_modules_mbconv2_modules_0_parameters_weight_.expanded, %v164.shape : tensor<10x16x120x1x120xf32>, tensor<96x16x1x1xf32>, tensor<120x1xf32>)
      outs(%v164.buf : tensor<10x96x120x1x120xf32>) {
        ^bb0(%in_166: f32, %in_167: f32, %shape_165: f32, %acc_168: f32):
          %v169 = arith.mulf %in_166, %in_167 : f32
          %v170 = arith.addf %v169, %acc_168 : f32
          linalg.yield %v170 : f32
      }
    -> tensor<10x96x120x1x120xf32>
    %v171.buf = tensor.empty() : tensor<96xf32>
    %v171.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_1_buffers_running_var_, %l_self_modules_mbconv2_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v171.buf : tensor<96xf32>) {
        ^bb0(%in_172: f32, %in_173: f32, %acc_174: f32):
          %v175 = arith.constant 1.0 : f32
          %v176 = arith.constant 9.999999747378752e-06 : f32
          %v177 = arith.addf %v176, %in_172 : f32
          %v178 = math.sqrt %v177 : f32
          %v179 = arith.divf %v175, %v178 : f32
          %v180 = arith.mulf %v179, %in_173 : f32
          linalg.yield %v180 : f32
      }
    -> tensor<96xf32>
    %v181.buf = tensor.empty() : tensor<96xf32>
    %v181.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_1_buffers_running_mean_, %l_self_modules_mbconv2_modules_1_buffers_running_var_, %l_self_modules_mbconv2_modules_1_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v181.buf : tensor<96xf32>) {
        ^bb0(%in_182: f32, %in_183: f32, %in_184: f32, %acc_185: f32):
          %v186 = arith.constant 1.0 : f32
          %v187 = arith.constant 9.999999747378752e-06 : f32
          %v188 = arith.addf %v187, %in_183 : f32
          %v189 = math.sqrt %v188 : f32
          %v190 = arith.divf %v186, %v189 : f32
          %v191 = arith.mulf %v190, %in_184 : f32
          %v192 = arith.mulf %v191, %in_182 : f32
          linalg.yield %v192 : f32
      }
    -> tensor<96xf32>
    %v164.post = tensor.empty() : tensor<10x96x120x1x120xf32>
    %v164.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v164.buf.out, %v171.buf.out, %v181.buf.out, %l_self_modules_mbconv2_modules_1_parameters_bias_ : tensor<10x96x120x1x120xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v164.post : tensor<10x96x120x1x120xf32>) {
        ^bb0(%acc_196: f32, %in_193: f32, %in_194: f32, %in_195: f32, %post_197: f32):
          %v198 = arith.mulf %acc_196, %in_193 : f32
          %v199 = arith.subf %v198, %in_194 : f32
          %v200 = arith.addf %v199, %in_195 : f32
          %v201 = arith.maxnumf %init, %v200 : f32
          %v202 = arith.constant 6.0 : f32
          %v203 = arith.minnumf %v202, %v201 : f32
          linalg.yield %v203 : f32
      }
    -> tensor<10x96x120x1x120xf32>
    %input_11.buf = tensor.empty() : tensor<10x96x120x120xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v164.post.out : tensor<10x96x120x1x120xf32>)
      outs(%input_11.buf : tensor<10x96x120x120xf32>) {
        ^bb0(%in_204: f32, %acc_205: f32):
          linalg.yield %in_204 : f32
      }
    -> tensor<10x96x120x120xf32>
    %v210 = tensor.pad %input_11.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i206: index, %pad_i207: index, %pad_i208: index, %pad_i209: index):
        tensor.yield %init : f32
    } : tensor<10x96x120x120xf32> to tensor<10x96x122x122xf32>
    %l_self_modules_mbconv2_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv2_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [96, 1, 3, 3] : tensor<96x3x3xf32> into tensor<96x1x3x3xf32>
    %input_14.empty = tensor.empty() : tensor<10x96x60x60xf32>
    %input_14.buf = linalg.fill ins(%init : f32) outs(%input_14.empty : tensor<10x96x60x60xf32>) -> tensor<10x96x60x60xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v210, %l_self_modules_mbconv2_modules_3_parameters_weight_.expanded : tensor<10x96x122x122xf32>, tensor<96x1x3x3xf32>)
      outs(%input_14.buf : tensor<10x96x60x60xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.mulf %in_211, %in_212 : f32
          %v215 = arith.addf %v214, %acc_213 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x96x60x60xf32>
    %v216.buf = tensor.empty() : tensor<96xf32>
    %v216.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_4_buffers_running_var_, %l_self_modules_mbconv2_modules_4_parameters_weight_ : tensor<96xf32>, tensor<96xf32>)
      outs(%v216.buf : tensor<96xf32>) {
        ^bb0(%in_217: f32, %in_218: f32, %acc_219: f32):
          %v220 = arith.constant 1.0 : f32
          %v221 = arith.constant 9.999999747378752e-06 : f32
          %v222 = arith.addf %v221, %in_217 : f32
          %v223 = math.sqrt %v222 : f32
          %v224 = arith.divf %v220, %v223 : f32
          %v225 = arith.mulf %v224, %in_218 : f32
          linalg.yield %v225 : f32
      }
    -> tensor<96xf32>
    %v226.buf = tensor.empty() : tensor<96xf32>
    %v226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_4_buffers_running_mean_, %l_self_modules_mbconv2_modules_4_buffers_running_var_, %l_self_modules_mbconv2_modules_4_parameters_weight_ : tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%v226.buf : tensor<96xf32>) {
        ^bb0(%in_227: f32, %in_228: f32, %in_229: f32, %acc_230: f32):
          %v231 = arith.constant 1.0 : f32
          %v232 = arith.constant 9.999999747378752e-06 : f32
          %v233 = arith.addf %v232, %in_228 : f32
          %v234 = math.sqrt %v233 : f32
          %v235 = arith.divf %v231, %v234 : f32
          %v236 = arith.mulf %v235, %in_229 : f32
          %v237 = arith.mulf %v236, %in_227 : f32
          linalg.yield %v237 : f32
      }
    -> tensor<96xf32>
    %input_14.post = tensor.empty() : tensor<10x96x60x60xf32>
    %input_14.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_14.buf.out, %v216.buf.out, %v226.buf.out, %l_self_modules_mbconv2_modules_4_parameters_bias_ : tensor<10x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>)
      outs(%input_14.post : tensor<10x96x60x60xf32>) {
        ^bb0(%acc_241: f32, %in_238: f32, %in_239: f32, %in_240: f32, %post_242: f32):
          %v243 = arith.mulf %acc_241, %in_238 : f32
          %v244 = arith.subf %v243, %in_239 : f32
          %v245 = arith.addf %v244, %in_240 : f32
          %v246 = arith.maxnumf %init, %v245 : f32
          %v247 = arith.constant 6.0 : f32
          %v248 = arith.minnumf %v247, %v246 : f32
          linalg.yield %v248 : f32
      }
    -> tensor<10x96x60x60xf32>
    %l_self_modules_mbconv2_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv2_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [24, 96, 1, 1] : tensor<24x96xf32> into tensor<24x96x1x1xf32>
    %v249.empty = tensor.empty() : tensor<10x24x60x1x60xf32>
    %v249.buf = linalg.fill ins(%init : f32) outs(%v249.empty : tensor<10x24x60x1x60xf32>) -> tensor<10x24x60x1x60xf32>
    %v249.shape = tensor.empty() : tensor<60x1xf32>
    %v249.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_14.post.out, %l_self_modules_mbconv2_modules_6_parameters_weight_.expanded, %v249.shape : tensor<10x96x60x60xf32>, tensor<24x96x1x1xf32>, tensor<60x1xf32>)
      outs(%v249.buf : tensor<10x24x60x1x60xf32>) {
        ^bb0(%in_251: f32, %in_252: f32, %shape_250: f32, %acc_253: f32):
          %v254 = arith.mulf %in_251, %in_252 : f32
          %v255 = arith.addf %v254, %acc_253 : f32
          linalg.yield %v255 : f32
      }
    -> tensor<10x24x60x1x60xf32>
    %v256.buf = tensor.empty() : tensor<24xf32>
    %v256.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_7_buffers_running_var_, %l_self_modules_mbconv2_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>)
      outs(%v256.buf : tensor<24xf32>) {
        ^bb0(%in_257: f32, %in_258: f32, %acc_259: f32):
          %v260 = arith.constant 1.0 : f32
          %v261 = arith.constant 9.999999747378752e-06 : f32
          %v262 = arith.addf %v261, %in_257 : f32
          %v263 = math.sqrt %v262 : f32
          %v264 = arith.divf %v260, %v263 : f32
          %v265 = arith.mulf %v264, %in_258 : f32
          linalg.yield %v265 : f32
      }
    -> tensor<24xf32>
    %v266.buf = tensor.empty() : tensor<24xf32>
    %v266.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv2_modules_7_buffers_running_mean_, %l_self_modules_mbconv2_modules_7_buffers_running_var_, %l_self_modules_mbconv2_modules_7_parameters_weight_ : tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v266.buf : tensor<24xf32>) {
        ^bb0(%in_267: f32, %in_268: f32, %in_269: f32, %acc_270: f32):
          %v271 = arith.constant 1.0 : f32
          %v272 = arith.constant 9.999999747378752e-06 : f32
          %v273 = arith.addf %v272, %in_268 : f32
          %v274 = math.sqrt %v273 : f32
          %v275 = arith.divf %v271, %v274 : f32
          %v276 = arith.mulf %v275, %in_269 : f32
          %v277 = arith.mulf %v276, %in_267 : f32
          linalg.yield %v277 : f32
      }
    -> tensor<24xf32>
    %v249.post = tensor.empty() : tensor<10x24x60x1x60xf32>
    %v249.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v249.buf.out, %v256.buf.out, %v266.buf.out, %l_self_modules_mbconv2_modules_7_parameters_bias_ : tensor<10x24x60x1x60xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>)
      outs(%v249.post : tensor<10x24x60x1x60xf32>) {
        ^bb0(%acc_281: f32, %in_278: f32, %in_279: f32, %in_280: f32, %post_282: f32):
          %v283 = arith.mulf %acc_281, %in_278 : f32
          %v284 = arith.subf %v283, %in_279 : f32
          %v285 = arith.addf %v284, %in_280 : f32
          linalg.yield %v285 : f32
      }
    -> tensor<10x24x60x1x60xf32>
    %l_self_modules_mbconv3_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv3_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [144, 24, 1, 1] : tensor<144x24xf32> into tensor<144x24x1x1xf32>
    %v286.empty = tensor.empty() : tensor<10x144x60x1x60xf32>
    %v286.buf = linalg.fill ins(%init : f32) outs(%v286.empty : tensor<10x144x60x1x60xf32>) -> tensor<10x144x60x1x60xf32>
    %v286.shape = tensor.empty() : tensor<60x1xf32>
    %v286.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v249.post.out, %l_self_modules_mbconv3_modules_0_parameters_weight_.expanded, %v286.shape : tensor<10x24x60x1x60xf32>, tensor<144x24x1x1xf32>, tensor<60x1xf32>)
      outs(%v286.buf : tensor<10x144x60x1x60xf32>) {
        ^bb0(%in_288: f32, %in_289: f32, %shape_287: f32, %acc_290: f32):
          %v291 = arith.mulf %in_288, %in_289 : f32
          %v292 = arith.addf %v291, %acc_290 : f32
          linalg.yield %v292 : f32
      }
    -> tensor<10x144x60x1x60xf32>
    %v293.buf = tensor.empty() : tensor<144xf32>
    %v293.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_1_buffers_running_var_, %l_self_modules_mbconv3_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v293.buf : tensor<144xf32>) {
        ^bb0(%in_294: f32, %in_295: f32, %acc_296: f32):
          %v297 = arith.constant 1.0 : f32
          %v298 = arith.constant 9.999999747378752e-06 : f32
          %v299 = arith.addf %v298, %in_294 : f32
          %v300 = math.sqrt %v299 : f32
          %v301 = arith.divf %v297, %v300 : f32
          %v302 = arith.mulf %v301, %in_295 : f32
          linalg.yield %v302 : f32
      }
    -> tensor<144xf32>
    %v303.buf = tensor.empty() : tensor<144xf32>
    %v303.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_1_buffers_running_mean_, %l_self_modules_mbconv3_modules_1_buffers_running_var_, %l_self_modules_mbconv3_modules_1_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v303.buf : tensor<144xf32>) {
        ^bb0(%in_304: f32, %in_305: f32, %in_306: f32, %acc_307: f32):
          %v308 = arith.constant 1.0 : f32
          %v309 = arith.constant 9.999999747378752e-06 : f32
          %v310 = arith.addf %v309, %in_305 : f32
          %v311 = math.sqrt %v310 : f32
          %v312 = arith.divf %v308, %v311 : f32
          %v313 = arith.mulf %v312, %in_306 : f32
          %v314 = arith.mulf %v313, %in_304 : f32
          linalg.yield %v314 : f32
      }
    -> tensor<144xf32>
    %v286.post = tensor.empty() : tensor<10x144x60x1x60xf32>
    %v286.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v286.buf.out, %v293.buf.out, %v303.buf.out, %l_self_modules_mbconv3_modules_1_parameters_bias_ : tensor<10x144x60x1x60xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v286.post : tensor<10x144x60x1x60xf32>) {
        ^bb0(%acc_318: f32, %in_315: f32, %in_316: f32, %in_317: f32, %post_319: f32):
          %v320 = arith.mulf %acc_318, %in_315 : f32
          %v321 = arith.subf %v320, %in_316 : f32
          %v322 = arith.addf %v321, %in_317 : f32
          %v323 = arith.maxnumf %init, %v322 : f32
          %v324 = arith.constant 6.0 : f32
          %v325 = arith.minnumf %v324, %v323 : f32
          linalg.yield %v325 : f32
      }
    -> tensor<10x144x60x1x60xf32>
    %input_19.buf = tensor.empty() : tensor<10x144x60x60xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v286.post.out : tensor<10x144x60x1x60xf32>)
      outs(%input_19.buf : tensor<10x144x60x60xf32>) {
        ^bb0(%in_326: f32, %acc_327: f32):
          linalg.yield %in_326 : f32
      }
    -> tensor<10x144x60x60xf32>
    %v332 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i328: index, %pad_i329: index, %pad_i330: index, %pad_i331: index):
        tensor.yield %init : f32
    } : tensor<10x144x60x60xf32> to tensor<10x144x62x62xf32>
    %l_self_modules_mbconv3_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv3_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [144, 1, 3, 3] : tensor<144x3x3xf32> into tensor<144x1x3x3xf32>
    %input_22.empty = tensor.empty() : tensor<10x144x30x30xf32>
    %input_22.buf = linalg.fill ins(%init : f32) outs(%input_22.empty : tensor<10x144x30x30xf32>) -> tensor<10x144x30x30xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v332, %l_self_modules_mbconv3_modules_3_parameters_weight_.expanded : tensor<10x144x62x62xf32>, tensor<144x1x3x3xf32>)
      outs(%input_22.buf : tensor<10x144x30x30xf32>) {
        ^bb0(%in_333: f32, %in_334: f32, %acc_335: f32):
          %v336 = arith.mulf %in_333, %in_334 : f32
          %v337 = arith.addf %v336, %acc_335 : f32
          linalg.yield %v337 : f32
      }
    -> tensor<10x144x30x30xf32>
    %v338.buf = tensor.empty() : tensor<144xf32>
    %v338.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_4_buffers_running_var_, %l_self_modules_mbconv3_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>)
      outs(%v338.buf : tensor<144xf32>) {
        ^bb0(%in_339: f32, %in_340: f32, %acc_341: f32):
          %v342 = arith.constant 1.0 : f32
          %v343 = arith.constant 9.999999747378752e-06 : f32
          %v344 = arith.addf %v343, %in_339 : f32
          %v345 = math.sqrt %v344 : f32
          %v346 = arith.divf %v342, %v345 : f32
          %v347 = arith.mulf %v346, %in_340 : f32
          linalg.yield %v347 : f32
      }
    -> tensor<144xf32>
    %v348.buf = tensor.empty() : tensor<144xf32>
    %v348.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_4_buffers_running_mean_, %l_self_modules_mbconv3_modules_4_buffers_running_var_, %l_self_modules_mbconv3_modules_4_parameters_weight_ : tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%v348.buf : tensor<144xf32>) {
        ^bb0(%in_349: f32, %in_350: f32, %in_351: f32, %acc_352: f32):
          %v353 = arith.constant 1.0 : f32
          %v354 = arith.constant 9.999999747378752e-06 : f32
          %v355 = arith.addf %v354, %in_350 : f32
          %v356 = math.sqrt %v355 : f32
          %v357 = arith.divf %v353, %v356 : f32
          %v358 = arith.mulf %v357, %in_351 : f32
          %v359 = arith.mulf %v358, %in_349 : f32
          linalg.yield %v359 : f32
      }
    -> tensor<144xf32>
    %input_22.post = tensor.empty() : tensor<10x144x30x30xf32>
    %input_22.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_22.buf.out, %v338.buf.out, %v348.buf.out, %l_self_modules_mbconv3_modules_4_parameters_bias_ : tensor<10x144x30x30xf32>, tensor<144xf32>, tensor<144xf32>, tensor<144xf32>)
      outs(%input_22.post : tensor<10x144x30x30xf32>) {
        ^bb0(%acc_363: f32, %in_360: f32, %in_361: f32, %in_362: f32, %post_364: f32):
          %v365 = arith.mulf %acc_363, %in_360 : f32
          %v366 = arith.subf %v365, %in_361 : f32
          %v367 = arith.addf %v366, %in_362 : f32
          %v368 = arith.maxnumf %init, %v367 : f32
          %v369 = arith.constant 6.0 : f32
          %v370 = arith.minnumf %v369, %v368 : f32
          linalg.yield %v370 : f32
      }
    -> tensor<10x144x30x30xf32>
    %l_self_modules_mbconv3_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv3_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [40, 144, 1, 1] : tensor<40x144xf32> into tensor<40x144x1x1xf32>
    %v371.empty = tensor.empty() : tensor<10x40x30x1x30xf32>
    %v371.buf = linalg.fill ins(%init : f32) outs(%v371.empty : tensor<10x40x30x1x30xf32>) -> tensor<10x40x30x1x30xf32>
    %v371.shape = tensor.empty() : tensor<30x1xf32>
    %v371.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_22.post.out, %l_self_modules_mbconv3_modules_6_parameters_weight_.expanded, %v371.shape : tensor<10x144x30x30xf32>, tensor<40x144x1x1xf32>, tensor<30x1xf32>)
      outs(%v371.buf : tensor<10x40x30x1x30xf32>) {
        ^bb0(%in_373: f32, %in_374: f32, %shape_372: f32, %acc_375: f32):
          %v376 = arith.mulf %in_373, %in_374 : f32
          %v377 = arith.addf %v376, %acc_375 : f32
          linalg.yield %v377 : f32
      }
    -> tensor<10x40x30x1x30xf32>
    %v378.buf = tensor.empty() : tensor<40xf32>
    %v378.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_7_buffers_running_var_, %l_self_modules_mbconv3_modules_7_parameters_weight_ : tensor<40xf32>, tensor<40xf32>)
      outs(%v378.buf : tensor<40xf32>) {
        ^bb0(%in_379: f32, %in_380: f32, %acc_381: f32):
          %v382 = arith.constant 1.0 : f32
          %v383 = arith.constant 9.999999747378752e-06 : f32
          %v384 = arith.addf %v383, %in_379 : f32
          %v385 = math.sqrt %v384 : f32
          %v386 = arith.divf %v382, %v385 : f32
          %v387 = arith.mulf %v386, %in_380 : f32
          linalg.yield %v387 : f32
      }
    -> tensor<40xf32>
    %v388.buf = tensor.empty() : tensor<40xf32>
    %v388.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv3_modules_7_buffers_running_mean_, %l_self_modules_mbconv3_modules_7_buffers_running_var_, %l_self_modules_mbconv3_modules_7_parameters_weight_ : tensor<40xf32>, tensor<40xf32>, tensor<40xf32>)
      outs(%v388.buf : tensor<40xf32>) {
        ^bb0(%in_389: f32, %in_390: f32, %in_391: f32, %acc_392: f32):
          %v393 = arith.constant 1.0 : f32
          %v394 = arith.constant 9.999999747378752e-06 : f32
          %v395 = arith.addf %v394, %in_390 : f32
          %v396 = math.sqrt %v395 : f32
          %v397 = arith.divf %v393, %v396 : f32
          %v398 = arith.mulf %v397, %in_391 : f32
          %v399 = arith.mulf %v398, %in_389 : f32
          linalg.yield %v399 : f32
      }
    -> tensor<40xf32>
    %v371.post = tensor.empty() : tensor<10x40x30x1x30xf32>
    %v371.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v371.buf.out, %v378.buf.out, %v388.buf.out, %l_self_modules_mbconv3_modules_7_parameters_bias_ : tensor<10x40x30x1x30xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>)
      outs(%v371.post : tensor<10x40x30x1x30xf32>) {
        ^bb0(%acc_403: f32, %in_400: f32, %in_401: f32, %in_402: f32, %post_404: f32):
          %v405 = arith.mulf %acc_403, %in_400 : f32
          %v406 = arith.subf %v405, %in_401 : f32
          %v407 = arith.addf %v406, %in_402 : f32
          linalg.yield %v407 : f32
      }
    -> tensor<10x40x30x1x30xf32>
    %l_self_modules_mbconv4_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv4_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [240, 40, 1, 1] : tensor<240x40xf32> into tensor<240x40x1x1xf32>
    %v408.empty = tensor.empty() : tensor<10x240x30x1x30xf32>
    %v408.buf = linalg.fill ins(%init : f32) outs(%v408.empty : tensor<10x240x30x1x30xf32>) -> tensor<10x240x30x1x30xf32>
    %v408.shape = tensor.empty() : tensor<30x1xf32>
    %v408.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v371.post.out, %l_self_modules_mbconv4_modules_0_parameters_weight_.expanded, %v408.shape : tensor<10x40x30x1x30xf32>, tensor<240x40x1x1xf32>, tensor<30x1xf32>)
      outs(%v408.buf : tensor<10x240x30x1x30xf32>) {
        ^bb0(%in_410: f32, %in_411: f32, %shape_409: f32, %acc_412: f32):
          %v413 = arith.mulf %in_410, %in_411 : f32
          %v414 = arith.addf %v413, %acc_412 : f32
          linalg.yield %v414 : f32
      }
    -> tensor<10x240x30x1x30xf32>
    %v415.buf = tensor.empty() : tensor<240xf32>
    %v415.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_1_buffers_running_var_, %l_self_modules_mbconv4_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v415.buf : tensor<240xf32>) {
        ^bb0(%in_416: f32, %in_417: f32, %acc_418: f32):
          %v419 = arith.constant 1.0 : f32
          %v420 = arith.constant 9.999999747378752e-06 : f32
          %v421 = arith.addf %v420, %in_416 : f32
          %v422 = math.sqrt %v421 : f32
          %v423 = arith.divf %v419, %v422 : f32
          %v424 = arith.mulf %v423, %in_417 : f32
          linalg.yield %v424 : f32
      }
    -> tensor<240xf32>
    %v425.buf = tensor.empty() : tensor<240xf32>
    %v425.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_1_buffers_running_mean_, %l_self_modules_mbconv4_modules_1_buffers_running_var_, %l_self_modules_mbconv4_modules_1_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v425.buf : tensor<240xf32>) {
        ^bb0(%in_426: f32, %in_427: f32, %in_428: f32, %acc_429: f32):
          %v430 = arith.constant 1.0 : f32
          %v431 = arith.constant 9.999999747378752e-06 : f32
          %v432 = arith.addf %v431, %in_427 : f32
          %v433 = math.sqrt %v432 : f32
          %v434 = arith.divf %v430, %v433 : f32
          %v435 = arith.mulf %v434, %in_428 : f32
          %v436 = arith.mulf %v435, %in_426 : f32
          linalg.yield %v436 : f32
      }
    -> tensor<240xf32>
    %v408.post = tensor.empty() : tensor<10x240x30x1x30xf32>
    %v408.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v408.buf.out, %v415.buf.out, %v425.buf.out, %l_self_modules_mbconv4_modules_1_parameters_bias_ : tensor<10x240x30x1x30xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v408.post : tensor<10x240x30x1x30xf32>) {
        ^bb0(%acc_440: f32, %in_437: f32, %in_438: f32, %in_439: f32, %post_441: f32):
          %v442 = arith.mulf %acc_440, %in_437 : f32
          %v443 = arith.subf %v442, %in_438 : f32
          %v444 = arith.addf %v443, %in_439 : f32
          %v445 = arith.maxnumf %init, %v444 : f32
          %v446 = arith.constant 6.0 : f32
          %v447 = arith.minnumf %v446, %v445 : f32
          linalg.yield %v447 : f32
      }
    -> tensor<10x240x30x1x30xf32>
    %input_27.buf = tensor.empty() : tensor<10x240x30x30xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v408.post.out : tensor<10x240x30x1x30xf32>)
      outs(%input_27.buf : tensor<10x240x30x30xf32>) {
        ^bb0(%in_448: f32, %acc_449: f32):
          linalg.yield %in_448 : f32
      }
    -> tensor<10x240x30x30xf32>
    %v454 = tensor.pad %input_27.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i450: index, %pad_i451: index, %pad_i452: index, %pad_i453: index):
        tensor.yield %init : f32
    } : tensor<10x240x30x30xf32> to tensor<10x240x32x32xf32>
    %l_self_modules_mbconv4_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv4_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [240, 1, 3, 3] : tensor<240x3x3xf32> into tensor<240x1x3x3xf32>
    %input_30.empty = tensor.empty() : tensor<10x240x15x15xf32>
    %input_30.buf = linalg.fill ins(%init : f32) outs(%input_30.empty : tensor<10x240x15x15xf32>) -> tensor<10x240x15x15xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v454, %l_self_modules_mbconv4_modules_3_parameters_weight_.expanded : tensor<10x240x32x32xf32>, tensor<240x1x3x3xf32>)
      outs(%input_30.buf : tensor<10x240x15x15xf32>) {
        ^bb0(%in_455: f32, %in_456: f32, %acc_457: f32):
          %v458 = arith.mulf %in_455, %in_456 : f32
          %v459 = arith.addf %v458, %acc_457 : f32
          linalg.yield %v459 : f32
      }
    -> tensor<10x240x15x15xf32>
    %v460.buf = tensor.empty() : tensor<240xf32>
    %v460.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_4_buffers_running_var_, %l_self_modules_mbconv4_modules_4_parameters_weight_ : tensor<240xf32>, tensor<240xf32>)
      outs(%v460.buf : tensor<240xf32>) {
        ^bb0(%in_461: f32, %in_462: f32, %acc_463: f32):
          %v464 = arith.constant 1.0 : f32
          %v465 = arith.constant 9.999999747378752e-06 : f32
          %v466 = arith.addf %v465, %in_461 : f32
          %v467 = math.sqrt %v466 : f32
          %v468 = arith.divf %v464, %v467 : f32
          %v469 = arith.mulf %v468, %in_462 : f32
          linalg.yield %v469 : f32
      }
    -> tensor<240xf32>
    %v470.buf = tensor.empty() : tensor<240xf32>
    %v470.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_4_buffers_running_mean_, %l_self_modules_mbconv4_modules_4_buffers_running_var_, %l_self_modules_mbconv4_modules_4_parameters_weight_ : tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%v470.buf : tensor<240xf32>) {
        ^bb0(%in_471: f32, %in_472: f32, %in_473: f32, %acc_474: f32):
          %v475 = arith.constant 1.0 : f32
          %v476 = arith.constant 9.999999747378752e-06 : f32
          %v477 = arith.addf %v476, %in_472 : f32
          %v478 = math.sqrt %v477 : f32
          %v479 = arith.divf %v475, %v478 : f32
          %v480 = arith.mulf %v479, %in_473 : f32
          %v481 = arith.mulf %v480, %in_471 : f32
          linalg.yield %v481 : f32
      }
    -> tensor<240xf32>
    %input_30.post = tensor.empty() : tensor<10x240x15x15xf32>
    %input_30.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_30.buf.out, %v460.buf.out, %v470.buf.out, %l_self_modules_mbconv4_modules_4_parameters_bias_ : tensor<10x240x15x15xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>)
      outs(%input_30.post : tensor<10x240x15x15xf32>) {
        ^bb0(%acc_485: f32, %in_482: f32, %in_483: f32, %in_484: f32, %post_486: f32):
          %v487 = arith.mulf %acc_485, %in_482 : f32
          %v488 = arith.subf %v487, %in_483 : f32
          %v489 = arith.addf %v488, %in_484 : f32
          %v490 = arith.maxnumf %init, %v489 : f32
          %v491 = arith.constant 6.0 : f32
          %v492 = arith.minnumf %v491, %v490 : f32
          linalg.yield %v492 : f32
      }
    -> tensor<10x240x15x15xf32>
    %l_self_modules_mbconv4_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv4_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [80, 240, 1, 1] : tensor<80x240xf32> into tensor<80x240x1x1xf32>
    %v493.empty = tensor.empty() : tensor<10x80x15x1x15xf32>
    %v493.buf = linalg.fill ins(%init : f32) outs(%v493.empty : tensor<10x80x15x1x15xf32>) -> tensor<10x80x15x1x15xf32>
    %v493.shape = tensor.empty() : tensor<15x1xf32>
    %v493.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_30.post.out, %l_self_modules_mbconv4_modules_6_parameters_weight_.expanded, %v493.shape : tensor<10x240x15x15xf32>, tensor<80x240x1x1xf32>, tensor<15x1xf32>)
      outs(%v493.buf : tensor<10x80x15x1x15xf32>) {
        ^bb0(%in_495: f32, %in_496: f32, %shape_494: f32, %acc_497: f32):
          %v498 = arith.mulf %in_495, %in_496 : f32
          %v499 = arith.addf %v498, %acc_497 : f32
          linalg.yield %v499 : f32
      }
    -> tensor<10x80x15x1x15xf32>
    %v500.buf = tensor.empty() : tensor<80xf32>
    %v500.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_7_buffers_running_var_, %l_self_modules_mbconv4_modules_7_parameters_weight_ : tensor<80xf32>, tensor<80xf32>)
      outs(%v500.buf : tensor<80xf32>) {
        ^bb0(%in_501: f32, %in_502: f32, %acc_503: f32):
          %v504 = arith.constant 1.0 : f32
          %v505 = arith.constant 9.999999747378752e-06 : f32
          %v506 = arith.addf %v505, %in_501 : f32
          %v507 = math.sqrt %v506 : f32
          %v508 = arith.divf %v504, %v507 : f32
          %v509 = arith.mulf %v508, %in_502 : f32
          linalg.yield %v509 : f32
      }
    -> tensor<80xf32>
    %v510.buf = tensor.empty() : tensor<80xf32>
    %v510.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv4_modules_7_buffers_running_mean_, %l_self_modules_mbconv4_modules_7_buffers_running_var_, %l_self_modules_mbconv4_modules_7_parameters_weight_ : tensor<80xf32>, tensor<80xf32>, tensor<80xf32>)
      outs(%v510.buf : tensor<80xf32>) {
        ^bb0(%in_511: f32, %in_512: f32, %in_513: f32, %acc_514: f32):
          %v515 = arith.constant 1.0 : f32
          %v516 = arith.constant 9.999999747378752e-06 : f32
          %v517 = arith.addf %v516, %in_512 : f32
          %v518 = math.sqrt %v517 : f32
          %v519 = arith.divf %v515, %v518 : f32
          %v520 = arith.mulf %v519, %in_513 : f32
          %v521 = arith.mulf %v520, %in_511 : f32
          linalg.yield %v521 : f32
      }
    -> tensor<80xf32>
    %v493.post = tensor.empty() : tensor<10x80x15x1x15xf32>
    %v493.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v493.buf.out, %v500.buf.out, %v510.buf.out, %l_self_modules_mbconv4_modules_7_parameters_bias_ : tensor<10x80x15x1x15xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>)
      outs(%v493.post : tensor<10x80x15x1x15xf32>) {
        ^bb0(%acc_525: f32, %in_522: f32, %in_523: f32, %in_524: f32, %post_526: f32):
          %v527 = arith.mulf %acc_525, %in_522 : f32
          %v528 = arith.subf %v527, %in_523 : f32
          %v529 = arith.addf %v528, %in_524 : f32
          linalg.yield %v529 : f32
      }
    -> tensor<10x80x15x1x15xf32>
    %l_self_modules_mbconv5_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv5_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [480, 80, 1, 1] : tensor<480x80xf32> into tensor<480x80x1x1xf32>
    %v530.empty = tensor.empty() : tensor<10x480x15x1x15xf32>
    %v530.buf = linalg.fill ins(%init : f32) outs(%v530.empty : tensor<10x480x15x1x15xf32>) -> tensor<10x480x15x1x15xf32>
    %v530.shape = tensor.empty() : tensor<15x1xf32>
    %v530.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v493.post.out, %l_self_modules_mbconv5_modules_0_parameters_weight_.expanded, %v530.shape : tensor<10x80x15x1x15xf32>, tensor<480x80x1x1xf32>, tensor<15x1xf32>)
      outs(%v530.buf : tensor<10x480x15x1x15xf32>) {
        ^bb0(%in_532: f32, %in_533: f32, %shape_531: f32, %acc_534: f32):
          %v535 = arith.mulf %in_532, %in_533 : f32
          %v536 = arith.addf %v535, %acc_534 : f32
          linalg.yield %v536 : f32
      }
    -> tensor<10x480x15x1x15xf32>
    %v537.buf = tensor.empty() : tensor<480xf32>
    %v537.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_1_buffers_running_var_, %l_self_modules_mbconv5_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v537.buf : tensor<480xf32>) {
        ^bb0(%in_538: f32, %in_539: f32, %acc_540: f32):
          %v541 = arith.constant 1.0 : f32
          %v542 = arith.constant 9.999999747378752e-06 : f32
          %v543 = arith.addf %v542, %in_538 : f32
          %v544 = math.sqrt %v543 : f32
          %v545 = arith.divf %v541, %v544 : f32
          %v546 = arith.mulf %v545, %in_539 : f32
          linalg.yield %v546 : f32
      }
    -> tensor<480xf32>
    %v547.buf = tensor.empty() : tensor<480xf32>
    %v547.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_1_buffers_running_mean_, %l_self_modules_mbconv5_modules_1_buffers_running_var_, %l_self_modules_mbconv5_modules_1_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v547.buf : tensor<480xf32>) {
        ^bb0(%in_548: f32, %in_549: f32, %in_550: f32, %acc_551: f32):
          %v552 = arith.constant 1.0 : f32
          %v553 = arith.constant 9.999999747378752e-06 : f32
          %v554 = arith.addf %v553, %in_549 : f32
          %v555 = math.sqrt %v554 : f32
          %v556 = arith.divf %v552, %v555 : f32
          %v557 = arith.mulf %v556, %in_550 : f32
          %v558 = arith.mulf %v557, %in_548 : f32
          linalg.yield %v558 : f32
      }
    -> tensor<480xf32>
    %v530.post = tensor.empty() : tensor<10x480x15x1x15xf32>
    %v530.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v530.buf.out, %v537.buf.out, %v547.buf.out, %l_self_modules_mbconv5_modules_1_parameters_bias_ : tensor<10x480x15x1x15xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v530.post : tensor<10x480x15x1x15xf32>) {
        ^bb0(%acc_562: f32, %in_559: f32, %in_560: f32, %in_561: f32, %post_563: f32):
          %v564 = arith.mulf %acc_562, %in_559 : f32
          %v565 = arith.subf %v564, %in_560 : f32
          %v566 = arith.addf %v565, %in_561 : f32
          %v567 = arith.maxnumf %init, %v566 : f32
          %v568 = arith.constant 6.0 : f32
          %v569 = arith.minnumf %v568, %v567 : f32
          linalg.yield %v569 : f32
      }
    -> tensor<10x480x15x1x15xf32>
    %input_35.buf = tensor.empty() : tensor<10x480x15x15xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v530.post.out : tensor<10x480x15x1x15xf32>)
      outs(%input_35.buf : tensor<10x480x15x15xf32>) {
        ^bb0(%in_570: f32, %acc_571: f32):
          linalg.yield %in_570 : f32
      }
    -> tensor<10x480x15x15xf32>
    %v576 = tensor.pad %input_35.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i572: index, %pad_i573: index, %pad_i574: index, %pad_i575: index):
        tensor.yield %init : f32
    } : tensor<10x480x15x15xf32> to tensor<10x480x17x17xf32>
    %l_self_modules_mbconv5_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv5_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [480, 1, 3, 3] : tensor<480x3x3xf32> into tensor<480x1x3x3xf32>
    %input_38.empty = tensor.empty() : tensor<10x480x15x15xf32>
    %input_38.buf = linalg.fill ins(%init : f32) outs(%input_38.empty : tensor<10x480x15x15xf32>) -> tensor<10x480x15x15xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v576, %l_self_modules_mbconv5_modules_3_parameters_weight_.expanded : tensor<10x480x17x17xf32>, tensor<480x1x3x3xf32>)
      outs(%input_38.buf : tensor<10x480x15x15xf32>) {
        ^bb0(%in_577: f32, %in_578: f32, %acc_579: f32):
          %v580 = arith.mulf %in_577, %in_578 : f32
          %v581 = arith.addf %v580, %acc_579 : f32
          linalg.yield %v581 : f32
      }
    -> tensor<10x480x15x15xf32>
    %v582.buf = tensor.empty() : tensor<480xf32>
    %v582.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_4_buffers_running_var_, %l_self_modules_mbconv5_modules_4_parameters_weight_ : tensor<480xf32>, tensor<480xf32>)
      outs(%v582.buf : tensor<480xf32>) {
        ^bb0(%in_583: f32, %in_584: f32, %acc_585: f32):
          %v586 = arith.constant 1.0 : f32
          %v587 = arith.constant 9.999999747378752e-06 : f32
          %v588 = arith.addf %v587, %in_583 : f32
          %v589 = math.sqrt %v588 : f32
          %v590 = arith.divf %v586, %v589 : f32
          %v591 = arith.mulf %v590, %in_584 : f32
          linalg.yield %v591 : f32
      }
    -> tensor<480xf32>
    %v592.buf = tensor.empty() : tensor<480xf32>
    %v592.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_4_buffers_running_mean_, %l_self_modules_mbconv5_modules_4_buffers_running_var_, %l_self_modules_mbconv5_modules_4_parameters_weight_ : tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%v592.buf : tensor<480xf32>) {
        ^bb0(%in_593: f32, %in_594: f32, %in_595: f32, %acc_596: f32):
          %v597 = arith.constant 1.0 : f32
          %v598 = arith.constant 9.999999747378752e-06 : f32
          %v599 = arith.addf %v598, %in_594 : f32
          %v600 = math.sqrt %v599 : f32
          %v601 = arith.divf %v597, %v600 : f32
          %v602 = arith.mulf %v601, %in_595 : f32
          %v603 = arith.mulf %v602, %in_593 : f32
          linalg.yield %v603 : f32
      }
    -> tensor<480xf32>
    %input_38.post = tensor.empty() : tensor<10x480x15x15xf32>
    %input_38.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_38.buf.out, %v582.buf.out, %v592.buf.out, %l_self_modules_mbconv5_modules_4_parameters_bias_ : tensor<10x480x15x15xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>)
      outs(%input_38.post : tensor<10x480x15x15xf32>) {
        ^bb0(%acc_607: f32, %in_604: f32, %in_605: f32, %in_606: f32, %post_608: f32):
          %v609 = arith.mulf %acc_607, %in_604 : f32
          %v610 = arith.subf %v609, %in_605 : f32
          %v611 = arith.addf %v610, %in_606 : f32
          %v612 = arith.maxnumf %init, %v611 : f32
          %v613 = arith.constant 6.0 : f32
          %v614 = arith.minnumf %v613, %v612 : f32
          linalg.yield %v614 : f32
      }
    -> tensor<10x480x15x15xf32>
    %l_self_modules_mbconv5_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv5_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [112, 480, 1, 1] : tensor<112x480xf32> into tensor<112x480x1x1xf32>
    %v615.empty = tensor.empty() : tensor<10x112x15x1x15xf32>
    %v615.buf = linalg.fill ins(%init : f32) outs(%v615.empty : tensor<10x112x15x1x15xf32>) -> tensor<10x112x15x1x15xf32>
    %v615.shape = tensor.empty() : tensor<15x1xf32>
    %v615.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_38.post.out, %l_self_modules_mbconv5_modules_6_parameters_weight_.expanded, %v615.shape : tensor<10x480x15x15xf32>, tensor<112x480x1x1xf32>, tensor<15x1xf32>)
      outs(%v615.buf : tensor<10x112x15x1x15xf32>) {
        ^bb0(%in_617: f32, %in_618: f32, %shape_616: f32, %acc_619: f32):
          %v620 = arith.mulf %in_617, %in_618 : f32
          %v621 = arith.addf %v620, %acc_619 : f32
          linalg.yield %v621 : f32
      }
    -> tensor<10x112x15x1x15xf32>
    %v622.buf = tensor.empty() : tensor<112xf32>
    %v622.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_7_buffers_running_var_, %l_self_modules_mbconv5_modules_7_parameters_weight_ : tensor<112xf32>, tensor<112xf32>)
      outs(%v622.buf : tensor<112xf32>) {
        ^bb0(%in_623: f32, %in_624: f32, %acc_625: f32):
          %v626 = arith.constant 1.0 : f32
          %v627 = arith.constant 9.999999747378752e-06 : f32
          %v628 = arith.addf %v627, %in_623 : f32
          %v629 = math.sqrt %v628 : f32
          %v630 = arith.divf %v626, %v629 : f32
          %v631 = arith.mulf %v630, %in_624 : f32
          linalg.yield %v631 : f32
      }
    -> tensor<112xf32>
    %v632.buf = tensor.empty() : tensor<112xf32>
    %v632.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv5_modules_7_buffers_running_mean_, %l_self_modules_mbconv5_modules_7_buffers_running_var_, %l_self_modules_mbconv5_modules_7_parameters_weight_ : tensor<112xf32>, tensor<112xf32>, tensor<112xf32>)
      outs(%v632.buf : tensor<112xf32>) {
        ^bb0(%in_633: f32, %in_634: f32, %in_635: f32, %acc_636: f32):
          %v637 = arith.constant 1.0 : f32
          %v638 = arith.constant 9.999999747378752e-06 : f32
          %v639 = arith.addf %v638, %in_634 : f32
          %v640 = math.sqrt %v639 : f32
          %v641 = arith.divf %v637, %v640 : f32
          %v642 = arith.mulf %v641, %in_635 : f32
          %v643 = arith.mulf %v642, %in_633 : f32
          linalg.yield %v643 : f32
      }
    -> tensor<112xf32>
    %v615.post = tensor.empty() : tensor<10x112x15x1x15xf32>
    %v615.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v615.buf.out, %v622.buf.out, %v632.buf.out, %l_self_modules_mbconv5_modules_7_parameters_bias_ : tensor<10x112x15x1x15xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>)
      outs(%v615.post : tensor<10x112x15x1x15xf32>) {
        ^bb0(%acc_647: f32, %in_644: f32, %in_645: f32, %in_646: f32, %post_648: f32):
          %v649 = arith.mulf %acc_647, %in_644 : f32
          %v650 = arith.subf %v649, %in_645 : f32
          %v651 = arith.addf %v650, %in_646 : f32
          linalg.yield %v651 : f32
      }
    -> tensor<10x112x15x1x15xf32>
    %l_self_modules_mbconv6_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv6_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [672, 112, 1, 1] : tensor<672x112xf32> into tensor<672x112x1x1xf32>
    %v652.empty = tensor.empty() : tensor<10x672x15x1x15xf32>
    %v652.buf = linalg.fill ins(%init : f32) outs(%v652.empty : tensor<10x672x15x1x15xf32>) -> tensor<10x672x15x1x15xf32>
    %v652.shape = tensor.empty() : tensor<15x1xf32>
    %v652.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, 0, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v615.post.out, %l_self_modules_mbconv6_modules_0_parameters_weight_.expanded, %v652.shape : tensor<10x112x15x1x15xf32>, tensor<672x112x1x1xf32>, tensor<15x1xf32>)
      outs(%v652.buf : tensor<10x672x15x1x15xf32>) {
        ^bb0(%in_654: f32, %in_655: f32, %shape_653: f32, %acc_656: f32):
          %v657 = arith.mulf %in_654, %in_655 : f32
          %v658 = arith.addf %v657, %acc_656 : f32
          linalg.yield %v658 : f32
      }
    -> tensor<10x672x15x1x15xf32>
    %v659.buf = tensor.empty() : tensor<672xf32>
    %v659.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_1_buffers_running_var_, %l_self_modules_mbconv6_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v659.buf : tensor<672xf32>) {
        ^bb0(%in_660: f32, %in_661: f32, %acc_662: f32):
          %v663 = arith.constant 1.0 : f32
          %v664 = arith.constant 9.999999747378752e-06 : f32
          %v665 = arith.addf %v664, %in_660 : f32
          %v666 = math.sqrt %v665 : f32
          %v667 = arith.divf %v663, %v666 : f32
          %v668 = arith.mulf %v667, %in_661 : f32
          linalg.yield %v668 : f32
      }
    -> tensor<672xf32>
    %v669.buf = tensor.empty() : tensor<672xf32>
    %v669.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_1_buffers_running_mean_, %l_self_modules_mbconv6_modules_1_buffers_running_var_, %l_self_modules_mbconv6_modules_1_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v669.buf : tensor<672xf32>) {
        ^bb0(%in_670: f32, %in_671: f32, %in_672: f32, %acc_673: f32):
          %v674 = arith.constant 1.0 : f32
          %v675 = arith.constant 9.999999747378752e-06 : f32
          %v676 = arith.addf %v675, %in_671 : f32
          %v677 = math.sqrt %v676 : f32
          %v678 = arith.divf %v674, %v677 : f32
          %v679 = arith.mulf %v678, %in_672 : f32
          %v680 = arith.mulf %v679, %in_670 : f32
          linalg.yield %v680 : f32
      }
    -> tensor<672xf32>
    %v652.post = tensor.empty() : tensor<10x672x15x1x15xf32>
    %v652.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v652.buf.out, %v659.buf.out, %v669.buf.out, %l_self_modules_mbconv6_modules_1_parameters_bias_ : tensor<10x672x15x1x15xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v652.post : tensor<10x672x15x1x15xf32>) {
        ^bb0(%acc_684: f32, %in_681: f32, %in_682: f32, %in_683: f32, %post_685: f32):
          %v686 = arith.mulf %acc_684, %in_681 : f32
          %v687 = arith.subf %v686, %in_682 : f32
          %v688 = arith.addf %v687, %in_683 : f32
          %v689 = arith.maxnumf %init, %v688 : f32
          %v690 = arith.constant 6.0 : f32
          %v691 = arith.minnumf %v690, %v689 : f32
          linalg.yield %v691 : f32
      }
    -> tensor<10x672x15x1x15xf32>
    %input_43.buf = tensor.empty() : tensor<10x672x15x15xf32>
    %input_43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v652.post.out : tensor<10x672x15x1x15xf32>)
      outs(%input_43.buf : tensor<10x672x15x15xf32>) {
        ^bb0(%in_692: f32, %acc_693: f32):
          linalg.yield %in_692 : f32
      }
    -> tensor<10x672x15x15xf32>
    %v698 = tensor.pad %input_43.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i694: index, %pad_i695: index, %pad_i696: index, %pad_i697: index):
        tensor.yield %init : f32
    } : tensor<10x672x15x15xf32> to tensor<10x672x17x17xf32>
    %l_self_modules_mbconv6_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv6_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [672, 1, 3, 3] : tensor<672x3x3xf32> into tensor<672x1x3x3xf32>
    %input_46.empty = tensor.empty() : tensor<10x672x8x8xf32>
    %input_46.buf = linalg.fill ins(%init : f32) outs(%input_46.empty : tensor<10x672x8x8xf32>) -> tensor<10x672x8x8xf32>
    %input_46.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 * 2 + d5, d3 * 2 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v698, %l_self_modules_mbconv6_modules_3_parameters_weight_.expanded : tensor<10x672x17x17xf32>, tensor<672x1x3x3xf32>)
      outs(%input_46.buf : tensor<10x672x8x8xf32>) {
        ^bb0(%in_699: f32, %in_700: f32, %acc_701: f32):
          %v702 = arith.mulf %in_699, %in_700 : f32
          %v703 = arith.addf %v702, %acc_701 : f32
          linalg.yield %v703 : f32
      }
    -> tensor<10x672x8x8xf32>
    %v704.buf = tensor.empty() : tensor<672xf32>
    %v704.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_4_buffers_running_var_, %l_self_modules_mbconv6_modules_4_parameters_weight_ : tensor<672xf32>, tensor<672xf32>)
      outs(%v704.buf : tensor<672xf32>) {
        ^bb0(%in_705: f32, %in_706: f32, %acc_707: f32):
          %v708 = arith.constant 1.0 : f32
          %v709 = arith.constant 9.999999747378752e-06 : f32
          %v710 = arith.addf %v709, %in_705 : f32
          %v711 = math.sqrt %v710 : f32
          %v712 = arith.divf %v708, %v711 : f32
          %v713 = arith.mulf %v712, %in_706 : f32
          linalg.yield %v713 : f32
      }
    -> tensor<672xf32>
    %v714.buf = tensor.empty() : tensor<672xf32>
    %v714.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_4_buffers_running_mean_, %l_self_modules_mbconv6_modules_4_buffers_running_var_, %l_self_modules_mbconv6_modules_4_parameters_weight_ : tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%v714.buf : tensor<672xf32>) {
        ^bb0(%in_715: f32, %in_716: f32, %in_717: f32, %acc_718: f32):
          %v719 = arith.constant 1.0 : f32
          %v720 = arith.constant 9.999999747378752e-06 : f32
          %v721 = arith.addf %v720, %in_716 : f32
          %v722 = math.sqrt %v721 : f32
          %v723 = arith.divf %v719, %v722 : f32
          %v724 = arith.mulf %v723, %in_717 : f32
          %v725 = arith.mulf %v724, %in_715 : f32
          linalg.yield %v725 : f32
      }
    -> tensor<672xf32>
    %input_46.post = tensor.empty() : tensor<10x672x8x8xf32>
    %input_46.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_46.buf.out, %v704.buf.out, %v714.buf.out, %l_self_modules_mbconv6_modules_4_parameters_bias_ : tensor<10x672x8x8xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>)
      outs(%input_46.post : tensor<10x672x8x8xf32>) {
        ^bb0(%acc_729: f32, %in_726: f32, %in_727: f32, %in_728: f32, %post_730: f32):
          %v731 = arith.mulf %acc_729, %in_726 : f32
          %v732 = arith.subf %v731, %in_727 : f32
          %v733 = arith.addf %v732, %in_728 : f32
          %v734 = arith.maxnumf %init, %v733 : f32
          %v735 = arith.constant 6.0 : f32
          %v736 = arith.minnumf %v735, %v734 : f32
          linalg.yield %v736 : f32
      }
    -> tensor<10x672x8x8xf32>
    %l_self_modules_mbconv6_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv6_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [192, 672, 1, 1] : tensor<192x672xf32> into tensor<192x672x1x1xf32>
    %v737.empty = tensor.empty() : tensor<10x192x2x4x8xf32>
    %v737.buf = linalg.fill ins(%init : f32) outs(%v737.empty : tensor<10x192x2x4x8xf32>) -> tensor<10x192x2x4x8xf32>
    %v737.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 4 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_46.post.out, %l_self_modules_mbconv6_modules_6_parameters_weight_.expanded : tensor<10x672x8x8xf32>, tensor<192x672x1x1xf32>)
      outs(%v737.buf : tensor<10x192x2x4x8xf32>) {
        ^bb0(%in_738: f32, %in_739: f32, %acc_740: f32):
          %v741 = arith.mulf %in_738, %in_739 : f32
          %v742 = arith.addf %v741, %acc_740 : f32
          linalg.yield %v742 : f32
      }
    -> tensor<10x192x2x4x8xf32>
    %v743.buf = tensor.empty() : tensor<192xf32>
    %v743.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_7_buffers_running_var_, %l_self_modules_mbconv6_modules_7_parameters_weight_ : tensor<192xf32>, tensor<192xf32>)
      outs(%v743.buf : tensor<192xf32>) {
        ^bb0(%in_744: f32, %in_745: f32, %acc_746: f32):
          %v747 = arith.constant 1.0 : f32
          %v748 = arith.constant 9.999999747378752e-06 : f32
          %v749 = arith.addf %v748, %in_744 : f32
          %v750 = math.sqrt %v749 : f32
          %v751 = arith.divf %v747, %v750 : f32
          %v752 = arith.mulf %v751, %in_745 : f32
          linalg.yield %v752 : f32
      }
    -> tensor<192xf32>
    %v753.buf = tensor.empty() : tensor<192xf32>
    %v753.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv6_modules_7_buffers_running_mean_, %l_self_modules_mbconv6_modules_7_buffers_running_var_, %l_self_modules_mbconv6_modules_7_parameters_weight_ : tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v753.buf : tensor<192xf32>) {
        ^bb0(%in_754: f32, %in_755: f32, %in_756: f32, %acc_757: f32):
          %v758 = arith.constant 1.0 : f32
          %v759 = arith.constant 9.999999747378752e-06 : f32
          %v760 = arith.addf %v759, %in_755 : f32
          %v761 = math.sqrt %v760 : f32
          %v762 = arith.divf %v758, %v761 : f32
          %v763 = arith.mulf %v762, %in_756 : f32
          %v764 = arith.mulf %v763, %in_754 : f32
          linalg.yield %v764 : f32
      }
    -> tensor<192xf32>
    %v737.post = tensor.empty() : tensor<10x192x2x4x8xf32>
    %v737.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v737.buf.out, %v743.buf.out, %v753.buf.out, %l_self_modules_mbconv6_modules_7_parameters_bias_ : tensor<10x192x2x4x8xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>)
      outs(%v737.post : tensor<10x192x2x4x8xf32>) {
        ^bb0(%acc_768: f32, %in_765: f32, %in_766: f32, %in_767: f32, %post_769: f32):
          %v770 = arith.mulf %acc_768, %in_765 : f32
          %v771 = arith.subf %v770, %in_766 : f32
          %v772 = arith.addf %v771, %in_767 : f32
          linalg.yield %v772 : f32
      }
    -> tensor<10x192x2x4x8xf32>
    %l_self_modules_mbconv7_modules_0_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv7_modules_0_parameters_weight_ [[0], [1, 2, 3]] output_shape [1152, 192, 1, 1] : tensor<1152x192xf32> into tensor<1152x192x1x1xf32>
    %v773.empty = tensor.empty() : tensor<10x1152x2x4x8xf32>
    %v773.buf = linalg.fill ins(%init : f32) outs(%v773.empty : tensor<10x1152x2x4x8xf32>) -> tensor<10x1152x2x4x8xf32>
    %v773.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v737.post.out, %l_self_modules_mbconv7_modules_0_parameters_weight_.expanded : tensor<10x192x2x4x8xf32>, tensor<1152x192x1x1xf32>)
      outs(%v773.buf : tensor<10x1152x2x4x8xf32>) {
        ^bb0(%in_774: f32, %in_775: f32, %acc_776: f32):
          %v777 = arith.mulf %in_774, %in_775 : f32
          %v778 = arith.addf %v777, %acc_776 : f32
          linalg.yield %v778 : f32
      }
    -> tensor<10x1152x2x4x8xf32>
    %v779.buf = tensor.empty() : tensor<1152xf32>
    %v779.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_1_buffers_running_var_, %l_self_modules_mbconv7_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v779.buf : tensor<1152xf32>) {
        ^bb0(%in_780: f32, %in_781: f32, %acc_782: f32):
          %v783 = arith.constant 1.0 : f32
          %v784 = arith.constant 9.999999747378752e-06 : f32
          %v785 = arith.addf %v784, %in_780 : f32
          %v786 = math.sqrt %v785 : f32
          %v787 = arith.divf %v783, %v786 : f32
          %v788 = arith.mulf %v787, %in_781 : f32
          linalg.yield %v788 : f32
      }
    -> tensor<1152xf32>
    %v789.buf = tensor.empty() : tensor<1152xf32>
    %v789.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_1_buffers_running_mean_, %l_self_modules_mbconv7_modules_1_buffers_running_var_, %l_self_modules_mbconv7_modules_1_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v789.buf : tensor<1152xf32>) {
        ^bb0(%in_790: f32, %in_791: f32, %in_792: f32, %acc_793: f32):
          %v794 = arith.constant 1.0 : f32
          %v795 = arith.constant 9.999999747378752e-06 : f32
          %v796 = arith.addf %v795, %in_791 : f32
          %v797 = math.sqrt %v796 : f32
          %v798 = arith.divf %v794, %v797 : f32
          %v799 = arith.mulf %v798, %in_792 : f32
          %v800 = arith.mulf %v799, %in_790 : f32
          linalg.yield %v800 : f32
      }
    -> tensor<1152xf32>
    %v773.post = tensor.empty() : tensor<10x1152x2x4x8xf32>
    %v773.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v773.buf.out, %v779.buf.out, %v789.buf.out, %l_self_modules_mbconv7_modules_1_parameters_bias_ : tensor<10x1152x2x4x8xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v773.post : tensor<10x1152x2x4x8xf32>) {
        ^bb0(%acc_804: f32, %in_801: f32, %in_802: f32, %in_803: f32, %post_805: f32):
          %v806 = arith.mulf %acc_804, %in_801 : f32
          %v807 = arith.subf %v806, %in_802 : f32
          %v808 = arith.addf %v807, %in_803 : f32
          %v809 = arith.maxnumf %init, %v808 : f32
          %v810 = arith.constant 6.0 : f32
          %v811 = arith.minnumf %v810, %v809 : f32
          linalg.yield %v811 : f32
      }
    -> tensor<10x1152x2x4x8xf32>
    %input_51.buf = tensor.empty() : tensor<10x1152x8x8xf32>
    %input_51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 4, d2 mod 4, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v773.post.out : tensor<10x1152x2x4x8xf32>)
      outs(%input_51.buf : tensor<10x1152x8x8xf32>) {
        ^bb0(%in_812: f32, %acc_813: f32):
          linalg.yield %in_812 : f32
      }
    -> tensor<10x1152x8x8xf32>
    %v818 = tensor.pad %input_51.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i814: index, %pad_i815: index, %pad_i816: index, %pad_i817: index):
        tensor.yield %init : f32
    } : tensor<10x1152x8x8xf32> to tensor<10x1152x10x10xf32>
    %l_self_modules_mbconv7_modules_3_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv7_modules_3_parameters_weight_ [[0], [1, 2], [3]] output_shape [1152, 1, 3, 3] : tensor<1152x3x3xf32> into tensor<1152x1x3x3xf32>
    %input_54.empty = tensor.empty() : tensor<10x1152x8x8xf32>
    %input_54.buf = linalg.fill ins(%init : f32) outs(%input_54.empty : tensor<10x1152x8x8xf32>) -> tensor<10x1152x8x8xf32>
    %input_54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v818, %l_self_modules_mbconv7_modules_3_parameters_weight_.expanded : tensor<10x1152x10x10xf32>, tensor<1152x1x3x3xf32>)
      outs(%input_54.buf : tensor<10x1152x8x8xf32>) {
        ^bb0(%in_819: f32, %in_820: f32, %acc_821: f32):
          %v822 = arith.mulf %in_819, %in_820 : f32
          %v823 = arith.addf %v822, %acc_821 : f32
          linalg.yield %v823 : f32
      }
    -> tensor<10x1152x8x8xf32>
    %v824.buf = tensor.empty() : tensor<1152xf32>
    %v824.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_4_buffers_running_var_, %l_self_modules_mbconv7_modules_4_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>)
      outs(%v824.buf : tensor<1152xf32>) {
        ^bb0(%in_825: f32, %in_826: f32, %acc_827: f32):
          %v828 = arith.constant 1.0 : f32
          %v829 = arith.constant 9.999999747378752e-06 : f32
          %v830 = arith.addf %v829, %in_825 : f32
          %v831 = math.sqrt %v830 : f32
          %v832 = arith.divf %v828, %v831 : f32
          %v833 = arith.mulf %v832, %in_826 : f32
          linalg.yield %v833 : f32
      }
    -> tensor<1152xf32>
    %v834.buf = tensor.empty() : tensor<1152xf32>
    %v834.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_4_buffers_running_mean_, %l_self_modules_mbconv7_modules_4_buffers_running_var_, %l_self_modules_mbconv7_modules_4_parameters_weight_ : tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%v834.buf : tensor<1152xf32>) {
        ^bb0(%in_835: f32, %in_836: f32, %in_837: f32, %acc_838: f32):
          %v839 = arith.constant 1.0 : f32
          %v840 = arith.constant 9.999999747378752e-06 : f32
          %v841 = arith.addf %v840, %in_836 : f32
          %v842 = math.sqrt %v841 : f32
          %v843 = arith.divf %v839, %v842 : f32
          %v844 = arith.mulf %v843, %in_837 : f32
          %v845 = arith.mulf %v844, %in_835 : f32
          linalg.yield %v845 : f32
      }
    -> tensor<1152xf32>
    %input_54.post = tensor.empty() : tensor<10x1152x8x8xf32>
    %input_54.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_54.buf.out, %v824.buf.out, %v834.buf.out, %l_self_modules_mbconv7_modules_4_parameters_bias_ : tensor<10x1152x8x8xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>)
      outs(%input_54.post : tensor<10x1152x8x8xf32>) {
        ^bb0(%acc_849: f32, %in_846: f32, %in_847: f32, %in_848: f32, %post_850: f32):
          %v851 = arith.mulf %acc_849, %in_846 : f32
          %v852 = arith.subf %v851, %in_847 : f32
          %v853 = arith.addf %v852, %in_848 : f32
          %v854 = arith.maxnumf %init, %v853 : f32
          %v855 = arith.constant 6.0 : f32
          %v856 = arith.minnumf %v855, %v854 : f32
          linalg.yield %v856 : f32
      }
    -> tensor<10x1152x8x8xf32>
    %l_self_modules_mbconv7_modules_6_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_mbconv7_modules_6_parameters_weight_ [[0], [1, 2, 3]] output_shape [320, 1152, 1, 1] : tensor<320x1152xf32> into tensor<320x1152x1x1xf32>
    %v857.empty = tensor.empty() : tensor<10x320x2x4x8xf32>
    %v857.buf = linalg.fill ins(%init : f32) outs(%v857.empty : tensor<10x320x2x4x8xf32>) -> tensor<10x320x2x4x8xf32>
    %v857.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 4 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%input_54.post.out, %l_self_modules_mbconv7_modules_6_parameters_weight_.expanded : tensor<10x1152x8x8xf32>, tensor<320x1152x1x1xf32>)
      outs(%v857.buf : tensor<10x320x2x4x8xf32>) {
        ^bb0(%in_858: f32, %in_859: f32, %acc_860: f32):
          %v861 = arith.mulf %in_858, %in_859 : f32
          %v862 = arith.addf %v861, %acc_860 : f32
          linalg.yield %v862 : f32
      }
    -> tensor<10x320x2x4x8xf32>
    %v863.buf = tensor.empty() : tensor<320xf32>
    %v863.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_7_buffers_running_var_, %l_self_modules_mbconv7_modules_7_parameters_weight_ : tensor<320xf32>, tensor<320xf32>)
      outs(%v863.buf : tensor<320xf32>) {
        ^bb0(%in_864: f32, %in_865: f32, %acc_866: f32):
          %v867 = arith.constant 1.0 : f32
          %v868 = arith.constant 9.999999747378752e-06 : f32
          %v869 = arith.addf %v868, %in_864 : f32
          %v870 = math.sqrt %v869 : f32
          %v871 = arith.divf %v867, %v870 : f32
          %v872 = arith.mulf %v871, %in_865 : f32
          linalg.yield %v872 : f32
      }
    -> tensor<320xf32>
    %v873.buf = tensor.empty() : tensor<320xf32>
    %v873.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_mbconv7_modules_7_buffers_running_mean_, %l_self_modules_mbconv7_modules_7_buffers_running_var_, %l_self_modules_mbconv7_modules_7_parameters_weight_ : tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v873.buf : tensor<320xf32>) {
        ^bb0(%in_874: f32, %in_875: f32, %in_876: f32, %acc_877: f32):
          %v878 = arith.constant 1.0 : f32
          %v879 = arith.constant 9.999999747378752e-06 : f32
          %v880 = arith.addf %v879, %in_875 : f32
          %v881 = math.sqrt %v880 : f32
          %v882 = arith.divf %v878, %v881 : f32
          %v883 = arith.mulf %v882, %in_876 : f32
          %v884 = arith.mulf %v883, %in_874 : f32
          linalg.yield %v884 : f32
      }
    -> tensor<320xf32>
    %v857.post = tensor.empty() : tensor<10x320x2x4x8xf32>
    %v857.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v857.buf.out, %v863.buf.out, %v873.buf.out, %l_self_modules_mbconv7_modules_7_parameters_bias_ : tensor<10x320x2x4x8xf32>, tensor<320xf32>, tensor<320xf32>, tensor<320xf32>)
      outs(%v857.post : tensor<10x320x2x4x8xf32>) {
        ^bb0(%acc_888: f32, %in_885: f32, %in_886: f32, %in_887: f32, %post_889: f32):
          %v890 = arith.mulf %acc_888, %in_885 : f32
          %v891 = arith.subf %v890, %in_886 : f32
          %v892 = arith.addf %v891, %in_887 : f32
          linalg.yield %v892 : f32
      }
    -> tensor<10x320x2x4x8xf32>
    %l_self_modules_conv2_parameters_weight_.expanded = tensor.expand_shape %l_self_modules_conv2_parameters_weight_ [[0], [1, 2, 3]] output_shape [1280, 320, 1, 1] : tensor<1280x320xf32> into tensor<1280x320x1x1xf32>
    %v893.empty = tensor.empty() : tensor<10x1280x2x4x8xf32>
    %v893.buf = linalg.fill ins(%init : f32) outs(%v893.empty : tensor<10x1280x2x4x8xf32>) -> tensor<10x1280x2x4x8xf32>
    %v893.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2, d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%v857.post.out, %l_self_modules_conv2_parameters_weight_.expanded : tensor<10x320x2x4x8xf32>, tensor<1280x320x1x1xf32>)
      outs(%v893.buf : tensor<10x1280x2x4x8xf32>) {
        ^bb0(%in_894: f32, %in_895: f32, %acc_896: f32):
          %v897 = arith.mulf %in_894, %in_895 : f32
          %v898 = arith.addf %v897, %acc_896 : f32
          linalg.yield %v898 : f32
      }
    -> tensor<10x1280x2x4x8xf32>
    %v899.buf = tensor.empty() : tensor<1280xf32>
    %v899.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>)
      outs(%v899.buf : tensor<1280xf32>) {
        ^bb0(%in_900: f32, %in_901: f32, %acc_902: f32):
          %v903 = arith.constant 1.0 : f32
          %v904 = arith.constant 9.999999747378752e-06 : f32
          %v905 = arith.addf %v904, %in_900 : f32
          %v906 = math.sqrt %v905 : f32
          %v907 = arith.divf %v903, %v906 : f32
          %v908 = arith.mulf %v907, %in_901 : f32
          linalg.yield %v908 : f32
      }
    -> tensor<1280xf32>
    %v909.buf = tensor.empty() : tensor<1280xf32>
    %v909.buf.out = linalg.generic {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>], iterator_types = ["parallel"]}
      ins(%l_self_modules_bn2_buffers_running_mean_, %l_self_modules_bn2_buffers_running_var_, %l_self_modules_bn2_parameters_weight_ : tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v909.buf : tensor<1280xf32>) {
        ^bb0(%in_910: f32, %in_911: f32, %in_912: f32, %acc_913: f32):
          %v914 = arith.constant 1.0 : f32
          %v915 = arith.constant 9.999999747378752e-06 : f32
          %v916 = arith.addf %v915, %in_911 : f32
          %v917 = math.sqrt %v916 : f32
          %v918 = arith.divf %v914, %v917 : f32
          %v919 = arith.mulf %v918, %in_912 : f32
          %v920 = arith.mulf %v919, %in_910 : f32
          linalg.yield %v920 : f32
      }
    -> tensor<1280xf32>
    %v893.post = tensor.empty() : tensor<10x1280x2x4x8xf32>
    %v893.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v893.buf.out, %v899.buf.out, %v909.buf.out, %l_self_modules_bn2_parameters_bias_ : tensor<10x1280x2x4x8xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>)
      outs(%v893.post : tensor<10x1280x2x4x8xf32>) {
        ^bb0(%acc_924: f32, %in_921: f32, %in_922: f32, %in_923: f32, %post_925: f32):
          %v926 = arith.mulf %acc_924, %in_921 : f32
          %v927 = arith.subf %v926, %in_922 : f32
          %v928 = arith.addf %v927, %in_923 : f32
          %v929 = arith.maxnumf %init, %v928 : f32
          linalg.yield %v929 : f32
      }
    -> tensor<10x1280x2x4x8xf32>
    %v930.empty = tensor.empty() : tensor<10x1280xf32>
    %v930.buf = linalg.fill ins(%init : f32) outs(%v930.empty : tensor<10x1280xf32>) -> tensor<10x1280xf32>
    %v930.shape = tensor.empty() : tensor<8xf32>
    %v930.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 4, d2 mod 4, d3)>, affine_map<(d0, d1, d2, d3) -> (d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction", "reduction"]}
      ins(%v893.post.out, %v930.shape : tensor<10x1280x2x4x8xf32>, tensor<8xf32>)
      outs(%v930.buf : tensor<10x1280xf32>) {
        ^bb0(%in_932: f32, %shape_931: f32, %acc_933: f32):
          %v934 = arith.addf %in_932, %acc_933 : f32
          linalg.yield %v934 : f32
      }
    -> tensor<10x1280xf32>
    %v930.post = tensor.empty() : tensor<10x1280xf32>
    %v930.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v930.buf.out : tensor<10x1280xf32>)
      outs(%v930.post : tensor<10x1280xf32>) {
        ^bb0(%acc_935: f32, %post_936: f32):
          %v937 = arith.constant 64.0 : f32
          %v938 = arith.divf %acc_935, %v937 : f32
          linalg.yield %v938 : f32
      }
    -> tensor<10x1280xf32>
    %v939.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v939.buf = linalg.fill ins(%init : f32) outs(%v939.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v939.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v930.post.out, %l_self_modules_fc_parameters_weight_ : tensor<10x1280xf32>, tensor<1000x1280xf32>)
      outs(%v939.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_940: f32, %in_941: f32, %acc_942: f32):
          %v943 = arith.mulf %in_940, %in_941 : f32
          %v944 = arith.addf %v943, %acc_942 : f32
          linalg.yield %v944 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v939.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v939.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v939.buf.out, %l_self_modules_fc_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v939.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_946: f32, %in_945: f32, %post_947: f32):
          %v948 = arith.addf %acc_946, %in_945 : f32
          linalg.yield %v948 : f32
      }
    -> tensor<5x2x250x4xf32>
    %x_4.buf = tensor.empty() : tensor<10x1000xf32>
    %x_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v939.post.out : tensor<5x2x250x4xf32>)
      outs(%x_4.buf : tensor<10x1000xf32>) {
        ^bb0(%in_949: f32, %acc_950: f32):
          linalg.yield %in_949 : f32
      }
    -> tensor<10x1000xf32>
    func.return %x_4.buf.out : tensor<10x1000xf32>
  }
}
