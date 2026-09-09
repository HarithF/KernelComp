module {
  func.func public @AlexNet(%l_self_modules_conv1_parameters_weight_: tensor<96x3x11x11xf32>, %l_self_modules_conv1_parameters_bias_: tensor<96xf32>, %l_x_: tensor<1024x3x224x224xf32>, %l_self_modules_conv2_parameters_weight_: tensor<256x96x5x5xf32>, %l_self_modules_conv2_parameters_bias_: tensor<256xf32>, %l_self_modules_conv3_parameters_weight_: tensor<384x256x3x3xf32>, %l_self_modules_conv3_parameters_bias_: tensor<384xf32>, %l_self_modules_conv4_parameters_weight_: tensor<384x384x3x3xf32>, %l_self_modules_conv4_parameters_bias_: tensor<384xf32>, %l_self_modules_conv5_parameters_weight_: tensor<256x384x3x3xf32>, %l_self_modules_conv5_parameters_bias_: tensor<256xf32>, %l_self_modules_fc1_parameters_weight_: tensor<4096x9216xf32>, %l_self_modules_fc1_parameters_bias_: tensor<4096xf32>, %l_self_modules_fc2_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_fc2_parameters_bias_: tensor<4096xf32>, %l_self_modules_fc3_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_fc3_parameters_bias_: tensor<1000xf32>) -> tensor<1024x1000xf32> {
    %v0 = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1: index, %pad_i2: index, %pad_i3: index, %pad_i4: index):
        tensor.yield %v0 : f32
    } : tensor<1024x3x224x224xf32> to tensor<1024x3x228x228xf32>
    %v5.empty = tensor.empty() : tensor<1024x96x55x1x55xf32>
    %v5.buf = linalg.fill ins(%v0 : f32) outs(%v5.empty : tensor<1024x96x55x1x55xf32>) -> tensor<1024x96x55x1x55xf32>
    %v5.shape = tensor.empty() : tensor<55x1xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, (d2 + d3) * 4 + d6, d4 * 4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_, %v5.shape : tensor<1024x3x228x228xf32>, tensor<96x3x11x11xf32>, tensor<55x1xf32>)
      outs(%v5.buf : tensor<1024x96x55x1x55xf32>) {
        ^bb0(%in_7: f32, %in_8: f32, %shape_6: f32, %acc_9: f32):
          %v10 = arith.mulf %in_7, %in_8 : f32
          %v11 = arith.addf %v10, %acc_9 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<1024x96x55x1x55xf32>
    %v5.post = tensor.empty() : tensor<1024x96x55x1x55xf32>
    %v5.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %l_self_modules_conv1_parameters_bias_ : tensor<1024x96x55x1x55xf32>, tensor<96xf32>)
      outs(%v5.post : tensor<1024x96x55x1x55xf32>) {
        ^bb0(%acc_13: f32, %in_12: f32, %post_14: f32):
          %v15 = arith.addf %acc_13, %in_12 : f32
          %v16 = arith.maxnumf %v0, %v15 : f32
          linalg.yield %v16 : f32
      }
    -> tensor<1024x96x55x1x55xf32>
    %x_2.empty = tensor.empty() : tensor<1024x96x27x27xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_2.buf = linalg.fill ins(%init : f32) outs(%x_2.empty : tensor<1024x96x27x27xf32>) -> tensor<1024x96x27x27xf32>
    %x_2.shape = tensor.empty() : tensor<3x3xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v5.post.out, %x_2.shape : tensor<1024x96x55x1x55xf32>, tensor<3x3xf32>)
      outs(%x_2.buf : tensor<1024x96x27x27xf32>) {
        ^bb0(%in_18: f32, %shape_17: f32, %acc_19: f32):
          %v20 = arith.maxnumf %acc_19, %in_18 : f32
          linalg.yield %v20 : f32
      }
    -> tensor<1024x96x27x27xf32>
    %padded_1 = tensor.pad %x_2.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i21: index, %pad_i22: index, %pad_i23: index, %pad_i24: index):
        tensor.yield %v0 : f32
    } : tensor<1024x96x27x27xf32> to tensor<1024x96x31x31xf32>
    %v25.empty = tensor.empty() : tensor<1024x256x27x1x27xf32>
    %v25.buf = linalg.fill ins(%v0 : f32) outs(%v25.empty : tensor<1024x256x27x1x27xf32>) -> tensor<1024x256x27x1x27xf32>
    %v25.shape = tensor.empty() : tensor<27x1xf32>
    %v25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_conv2_parameters_weight_, %v25.shape : tensor<1024x96x31x31xf32>, tensor<256x96x5x5xf32>, tensor<27x1xf32>)
      outs(%v25.buf : tensor<1024x256x27x1x27xf32>) {
        ^bb0(%in_27: f32, %in_28: f32, %shape_26: f32, %acc_29: f32):
          %v30 = arith.mulf %in_27, %in_28 : f32
          %v31 = arith.addf %v30, %acc_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<1024x256x27x1x27xf32>
    %v25.post = tensor.empty() : tensor<1024x256x27x1x27xf32>
    %v25.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v25.buf.out, %l_self_modules_conv2_parameters_bias_ : tensor<1024x256x27x1x27xf32>, tensor<256xf32>)
      outs(%v25.post : tensor<1024x256x27x1x27xf32>) {
        ^bb0(%acc_33: f32, %in_32: f32, %post_34: f32):
          %v35 = arith.addf %acc_33, %in_32 : f32
          %v36 = arith.maxnumf %v0, %v35 : f32
          linalg.yield %v36 : f32
      }
    -> tensor<1024x256x27x1x27xf32>
    %x_5.empty = tensor.empty() : tensor<1024x256x13x13xf32>
    %x_5.buf = linalg.fill ins(%init : f32) outs(%x_5.empty : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %x_5.shape = tensor.empty() : tensor<3x3xf32>
    %x_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v25.post.out, %x_5.shape : tensor<1024x256x27x1x27xf32>, tensor<3x3xf32>)
      outs(%x_5.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_38: f32, %shape_37: f32, %acc_39: f32):
          %v40 = arith.maxnumf %acc_39, %in_38 : f32
          linalg.yield %v40 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %padded_2 = tensor.pad %x_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i41: index, %pad_i42: index, %pad_i43: index, %pad_i44: index):
        tensor.yield %v0 : f32
    } : tensor<1024x256x13x13xf32> to tensor<1024x256x15x15xf32>
    %v45.empty = tensor.empty() : tensor<1024x384x13x1x13xf32>
    %v45.buf = linalg.fill ins(%v0 : f32) outs(%v45.empty : tensor<1024x384x13x1x13xf32>) -> tensor<1024x384x13x1x13xf32>
    %v45.shape = tensor.empty() : tensor<13x1xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_conv3_parameters_weight_, %v45.shape : tensor<1024x256x15x15xf32>, tensor<384x256x3x3xf32>, tensor<13x1xf32>)
      outs(%v45.buf : tensor<1024x384x13x1x13xf32>) {
        ^bb0(%in_47: f32, %in_48: f32, %shape_46: f32, %acc_49: f32):
          %v50 = arith.mulf %in_47, %in_48 : f32
          %v51 = arith.addf %v50, %acc_49 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<1024x384x13x1x13xf32>
    %v45.post = tensor.empty() : tensor<1024x384x13x1x13xf32>
    %v45.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v45.buf.out, %l_self_modules_conv3_parameters_bias_ : tensor<1024x384x13x1x13xf32>, tensor<384xf32>)
      outs(%v45.post : tensor<1024x384x13x1x13xf32>) {
        ^bb0(%acc_53: f32, %in_52: f32, %post_54: f32):
          %v55 = arith.addf %acc_53, %in_52 : f32
          %v56 = arith.maxnumf %v0, %v55 : f32
          linalg.yield %v56 : f32
      }
    -> tensor<1024x384x13x1x13xf32>
    %x_7.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v45.post.out : tensor<1024x384x13x1x13xf32>)
      outs(%x_7.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_57: f32, %acc_58: f32):
          linalg.yield %in_57 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_3 = tensor.pad %x_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i59: index, %pad_i60: index, %pad_i61: index, %pad_i62: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v63.empty = tensor.empty() : tensor<1024x384x13x1x13xf32>
    %v63.buf = linalg.fill ins(%v0 : f32) outs(%v63.empty : tensor<1024x384x13x1x13xf32>) -> tensor<1024x384x13x1x13xf32>
    %v63.shape = tensor.empty() : tensor<13x1xf32>
    %v63.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_conv4_parameters_weight_, %v63.shape : tensor<1024x384x15x15xf32>, tensor<384x384x3x3xf32>, tensor<13x1xf32>)
      outs(%v63.buf : tensor<1024x384x13x1x13xf32>) {
        ^bb0(%in_65: f32, %in_66: f32, %shape_64: f32, %acc_67: f32):
          %v68 = arith.mulf %in_65, %in_66 : f32
          %v69 = arith.addf %v68, %acc_67 : f32
          linalg.yield %v69 : f32
      }
    -> tensor<1024x384x13x1x13xf32>
    %v63.post = tensor.empty() : tensor<1024x384x13x1x13xf32>
    %v63.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v63.buf.out, %l_self_modules_conv4_parameters_bias_ : tensor<1024x384x13x1x13xf32>, tensor<384xf32>)
      outs(%v63.post : tensor<1024x384x13x1x13xf32>) {
        ^bb0(%acc_71: f32, %in_70: f32, %post_72: f32):
          %v73 = arith.addf %acc_71, %in_70 : f32
          %v74 = arith.maxnumf %v0, %v73 : f32
          linalg.yield %v74 : f32
      }
    -> tensor<1024x384x13x1x13xf32>
    %x_9.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v63.post.out : tensor<1024x384x13x1x13xf32>)
      outs(%x_9.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_75: f32, %acc_76: f32):
          linalg.yield %in_75 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_4 = tensor.pad %x_9.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i77: index, %pad_i78: index, %pad_i79: index, %pad_i80: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v81.empty = tensor.empty() : tensor<1024x256x13x1x13xf32>
    %v81.buf = linalg.fill ins(%v0 : f32) outs(%v81.empty : tensor<1024x256x13x1x13xf32>) -> tensor<1024x256x13x1x13xf32>
    %v81.shape = tensor.empty() : tensor<13x1xf32>
    %v81.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_conv5_parameters_weight_, %v81.shape : tensor<1024x384x15x15xf32>, tensor<256x384x3x3xf32>, tensor<13x1xf32>)
      outs(%v81.buf : tensor<1024x256x13x1x13xf32>) {
        ^bb0(%in_83: f32, %in_84: f32, %shape_82: f32, %acc_85: f32):
          %v86 = arith.mulf %in_83, %in_84 : f32
          %v87 = arith.addf %v86, %acc_85 : f32
          linalg.yield %v87 : f32
      }
    -> tensor<1024x256x13x1x13xf32>
    %v81.post = tensor.empty() : tensor<1024x256x13x1x13xf32>
    %v81.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v81.buf.out, %l_self_modules_conv5_parameters_bias_ : tensor<1024x256x13x1x13xf32>, tensor<256xf32>)
      outs(%v81.post : tensor<1024x256x13x1x13xf32>) {
        ^bb0(%acc_89: f32, %in_88: f32, %post_90: f32):
          %v91 = arith.addf %acc_89, %in_88 : f32
          %v92 = arith.maxnumf %v0, %v91 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<1024x256x13x1x13xf32>
    %x_12.empty = tensor.empty() : tensor<1024x256x6x6xf32>
    %x_12.buf = linalg.fill ins(%init : f32) outs(%x_12.empty : tensor<1024x256x6x6xf32>) -> tensor<1024x256x6x6xf32>
    %x_12.shape = tensor.empty() : tensor<3x3xf32>
    %x_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v81.post.out, %x_12.shape : tensor<1024x256x13x1x13xf32>, tensor<3x3xf32>)
      outs(%x_12.buf : tensor<1024x256x6x6xf32>) {
        ^bb0(%in_94: f32, %shape_93: f32, %acc_95: f32):
          %v96 = arith.maxnumf %acc_95, %in_94 : f32
          linalg.yield %v96 : f32
      }
    -> tensor<1024x256x6x6xf32>
    %v97.empty = tensor.empty() : tensor<512x2x1024x4xf32>
    %v97.buf = linalg.fill ins(%v0 : f32) outs(%v97.empty : tensor<512x2x1024x4xf32>) -> tensor<512x2x1024x4xf32>
    %v97.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, (d4 + (d0 * 2 + d2) * 9216) floordiv 36 mod 256, (d4 + (d0 * 2 + d2) * 9216) floordiv 6 mod 6, d4 mod 6)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%x_12.buf.out, %l_self_modules_fc1_parameters_weight_ : tensor<1024x256x6x6xf32>, tensor<4096x9216xf32>)
      outs(%v97.buf : tensor<512x2x1024x4xf32>) {
        ^bb0(%in_98: f32, %in_99: f32, %acc_100: f32):
          %v101 = arith.mulf %in_98, %in_99 : f32
          %v102 = arith.addf %v101, %acc_100 : f32
          linalg.yield %v102 : f32
      }
    -> tensor<512x2x1024x4xf32>
    %v97.post = tensor.empty() : tensor<512x2x1024x4xf32>
    %v97.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v97.buf.out, %l_self_modules_fc1_parameters_bias_ : tensor<512x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v97.post : tensor<512x2x1024x4xf32>) {
        ^bb0(%acc_104: f32, %in_103: f32, %post_105: f32):
          %v106 = arith.addf %acc_104, %in_103 : f32
          %v107 = arith.maxnumf %v0, %v106 : f32
          linalg.yield %v107 : f32
      }
    -> tensor<512x2x1024x4xf32>
    %v108.empty = tensor.empty() : tensor<512x2x1024x4xf32>
    %v108.buf = linalg.fill ins(%v0 : f32) outs(%v108.empty : tensor<512x2x1024x4xf32>) -> tensor<512x2x1024x4xf32>
    %v108.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v97.post.out, %l_self_modules_fc2_parameters_weight_ : tensor<512x2x1024x4xf32>, tensor<4096x4096xf32>)
      outs(%v108.buf : tensor<512x2x1024x4xf32>) {
        ^bb0(%in_109: f32, %in_110: f32, %acc_111: f32):
          %v112 = arith.mulf %in_109, %in_110 : f32
          %v113 = arith.addf %v112, %acc_111 : f32
          linalg.yield %v113 : f32
      }
    -> tensor<512x2x1024x4xf32>
    %v108.post = tensor.empty() : tensor<512x2x1024x4xf32>
    %v108.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v108.buf.out, %l_self_modules_fc2_parameters_bias_ : tensor<512x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v108.post : tensor<512x2x1024x4xf32>) {
        ^bb0(%acc_115: f32, %in_114: f32, %post_116: f32):
          %v117 = arith.addf %acc_115, %in_114 : f32
          %v118 = arith.maxnumf %v0, %v117 : f32
          linalg.yield %v118 : f32
      }
    -> tensor<512x2x1024x4xf32>
    %v119.empty = tensor.empty() : tensor<512x2x250x4xf32>
    %v119.buf = linalg.fill ins(%v0 : f32) outs(%v119.empty : tensor<512x2x250x4xf32>) -> tensor<512x2x250x4xf32>
    %v119.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v108.post.out, %l_self_modules_fc3_parameters_weight_ : tensor<512x2x1024x4xf32>, tensor<1000x4096xf32>)
      outs(%v119.buf : tensor<512x2x250x4xf32>) {
        ^bb0(%in_120: f32, %in_121: f32, %acc_122: f32):
          %v123 = arith.mulf %in_120, %in_121 : f32
          %v124 = arith.addf %v123, %acc_122 : f32
          linalg.yield %v124 : f32
      }
    -> tensor<512x2x250x4xf32>
    %v119.post = tensor.empty() : tensor<512x2x250x4xf32>
    %v119.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v119.buf.out, %l_self_modules_fc3_parameters_bias_ : tensor<512x2x250x4xf32>, tensor<1000xf32>)
      outs(%v119.post : tensor<512x2x250x4xf32>) {
        ^bb0(%acc_126: f32, %in_125: f32, %post_127: f32):
          %v128 = arith.addf %acc_126, %in_125 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<512x2x250x4xf32>
    %x_20.buf = tensor.empty() : tensor<1024x1000xf32>
    %x_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v119.post.out : tensor<512x2x250x4xf32>)
      outs(%x_20.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_129: f32, %acc_130: f32):
          linalg.yield %in_129 : f32
      }
    -> tensor<1024x1000xf32>
    func.return %x_20.buf.out : tensor<1024x1000xf32>
  }
}
