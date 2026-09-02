module {
  func.func public @AlexNet(%l_self_modules_conv1_parameters_weight_: tensor<96x3x11x11xf32>, %l_self_modules_conv1_parameters_bias_: tensor<96xf32>, %l_x_: tensor<1024x3x224x224xf32>, %l_self_modules_conv2_parameters_weight_: tensor<256x96x5x5xf32>, %l_self_modules_conv2_parameters_bias_: tensor<256xf32>, %l_self_modules_conv3_parameters_weight_: tensor<384x256x3x3xf32>, %l_self_modules_conv3_parameters_bias_: tensor<384xf32>, %l_self_modules_conv4_parameters_weight_: tensor<384x384x3x3xf32>, %l_self_modules_conv4_parameters_bias_: tensor<384xf32>, %l_self_modules_conv5_parameters_weight_: tensor<256x384x3x3xf32>, %l_self_modules_conv5_parameters_bias_: tensor<256xf32>, %l_self_modules_fc1_parameters_weight_: tensor<4096x9216xf32>, %l_self_modules_fc1_parameters_bias_: tensor<4096xf32>, %l_self_modules_fc2_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_fc2_parameters_bias_: tensor<4096xf32>, %l_self_modules_fc3_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_fc3_parameters_bias_: tensor<1000xf32>) -> tensor<1024x1000xf32> {
    %v0 = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i1: index, %pad_i2: index, %pad_i3: index, %pad_i4: index):
        tensor.yield %v0 : f32
    } : tensor<1024x3x224x224xf32> to tensor<1024x3x228x228xf32>
    %v5.empty = tensor.empty() : tensor<1024x96x55x55xf32>
    %v5.buf = linalg.fill ins(%v0 : f32) outs(%v5.empty : tensor<1024x96x55x55xf32>) -> tensor<1024x96x55x55xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 * 4 + d5, d3 * 4 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_conv1_parameters_weight_ : tensor<1024x3x228x228xf32>, tensor<96x3x11x11xf32>)
      outs(%v5.buf : tensor<1024x96x55x55xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<1024x96x55x55xf32>
    %v11.buf = tensor.empty() : tensor<1x96x1x1xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv1_parameters_bias_ : tensor<96xf32>)
      outs(%v11.buf : tensor<1x96x1x1xf32>) {
        ^bb0(%in_12: f32, %acc_13: f32):
          linalg.yield %in_12 : f32
      }
    -> tensor<1x96x1x1xf32>
    %v14.collapsed = tensor.collapse_shape %v11.buf.out [[0, 1, 2, 3]] : tensor<1x96x1x1xf32> into tensor<96xf32>
    %v14.buf = tensor.empty() : tensor<1024x96x55x55xf32>
    %v14 = linalg.broadcast ins(%v14.collapsed : tensor<96xf32>)
      outs(%v14.buf : tensor<1024x96x55x55xf32>)
      dimensions = [0, 2, 3]
    %x_2.empty = tensor.empty() : tensor<1024x96x27x27xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_2.buf = linalg.fill ins(%init : f32) outs(%x_2.empty : tensor<1024x96x27x27xf32>) -> tensor<1024x96x27x27xf32>
    %x_2.shape = tensor.empty() : tensor<3x3xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v5.buf.out, %v14, %x_2.shape : tensor<1024x96x55x55xf32>, tensor<1024x96x55x55xf32>, tensor<3x3xf32>)
      outs(%x_2.buf : tensor<1024x96x27x27xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %shape_15: f32, %acc_18: f32):
          %v19 = arith.addf %in_16, %in_17 : f32
          %v20 = arith.maxnumf %v0, %v19 : f32
          %v21 = arith.maxnumf %v20, %acc_18 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<1024x96x27x27xf32>
    %padded_1 = tensor.pad %x_2.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i22: index, %pad_i23: index, %pad_i24: index, %pad_i25: index):
        tensor.yield %v0 : f32
    } : tensor<1024x96x27x27xf32> to tensor<1024x96x31x31xf32>
    %v26.empty = tensor.empty() : tensor<1024x256x27x27xf32>
    %v26.buf = linalg.fill ins(%v0 : f32) outs(%v26.empty : tensor<1024x256x27x27xf32>) -> tensor<1024x256x27x27xf32>
    %v26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_conv2_parameters_weight_ : tensor<1024x96x31x31xf32>, tensor<256x96x5x5xf32>)
      outs(%v26.buf : tensor<1024x256x27x27xf32>) {
        ^bb0(%in_27: f32, %in_28: f32, %acc_29: f32):
          %v30 = arith.mulf %in_27, %in_28 : f32
          %v31 = arith.addf %v30, %acc_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<1024x256x27x27xf32>
    %v32.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv2_parameters_bias_ : tensor<256xf32>)
      outs(%v32.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_33: f32, %acc_34: f32):
          linalg.yield %in_33 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v35.collapsed = tensor.collapse_shape %v32.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v35.buf = tensor.empty() : tensor<1024x256x27x27xf32>
    %v35 = linalg.broadcast ins(%v35.collapsed : tensor<256xf32>)
      outs(%v35.buf : tensor<1024x256x27x27xf32>)
      dimensions = [0, 2, 3]
    %x_5.empty = tensor.empty() : tensor<1024x256x13x13xf32>
    %x_5.buf = linalg.fill ins(%init : f32) outs(%x_5.empty : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %x_5.shape = tensor.empty() : tensor<3x3xf32>
    %x_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v26.buf.out, %v35, %x_5.shape : tensor<1024x256x27x27xf32>, tensor<1024x256x27x27xf32>, tensor<3x3xf32>)
      outs(%x_5.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_37: f32, %in_38: f32, %shape_36: f32, %acc_39: f32):
          %v40 = arith.addf %in_37, %in_38 : f32
          %v41 = arith.maxnumf %v0, %v40 : f32
          %v42 = arith.maxnumf %v41, %acc_39 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %padded_2 = tensor.pad %x_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i43: index, %pad_i44: index, %pad_i45: index, %pad_i46: index):
        tensor.yield %v0 : f32
    } : tensor<1024x256x13x13xf32> to tensor<1024x256x15x15xf32>
    %v47.empty = tensor.empty() : tensor<1024x384x13x13xf32>
    %v47.buf = linalg.fill ins(%v0 : f32) outs(%v47.empty : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %v47.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_conv3_parameters_weight_ : tensor<1024x256x15x15xf32>, tensor<384x256x3x3xf32>)
      outs(%v47.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_48: f32, %in_49: f32, %acc_50: f32):
          %v51 = arith.mulf %in_48, %in_49 : f32
          %v52 = arith.addf %v51, %acc_50 : f32
          linalg.yield %v52 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %v53.buf = tensor.empty() : tensor<1x384x1x1xf32>
    %v53.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv3_parameters_bias_ : tensor<384xf32>)
      outs(%v53.buf : tensor<1x384x1x1xf32>) {
        ^bb0(%in_54: f32, %acc_55: f32):
          linalg.yield %in_54 : f32
      }
    -> tensor<1x384x1x1xf32>
    %v56.collapsed = tensor.collapse_shape %v53.buf.out [[0, 1, 2, 3]] : tensor<1x384x1x1xf32> into tensor<384xf32>
    %v56.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %v56 = linalg.broadcast ins(%v56.collapsed : tensor<384xf32>)
      outs(%v56.buf : tensor<1024x384x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_7.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v47.buf.out, %v56 : tensor<1024x384x13x13xf32>, tensor<1024x384x13x13xf32>)
      outs(%x_7.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %acc_59: f32):
          %v60 = arith.addf %in_57, %in_58 : f32
          %v61 = arith.maxnumf %v0, %v60 : f32
          linalg.yield %v61 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_3 = tensor.pad %x_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i62: index, %pad_i63: index, %pad_i64: index, %pad_i65: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v66.empty = tensor.empty() : tensor<1024x384x13x13xf32>
    %v66.buf = linalg.fill ins(%v0 : f32) outs(%v66.empty : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %v66.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_conv4_parameters_weight_ : tensor<1024x384x15x15xf32>, tensor<384x384x3x3xf32>)
      outs(%v66.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_67: f32, %in_68: f32, %acc_69: f32):
          %v70 = arith.mulf %in_67, %in_68 : f32
          %v71 = arith.addf %v70, %acc_69 : f32
          linalg.yield %v71 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %v72.buf = tensor.empty() : tensor<1x384x1x1xf32>
    %v72.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv4_parameters_bias_ : tensor<384xf32>)
      outs(%v72.buf : tensor<1x384x1x1xf32>) {
        ^bb0(%in_73: f32, %acc_74: f32):
          linalg.yield %in_73 : f32
      }
    -> tensor<1x384x1x1xf32>
    %v75.collapsed = tensor.collapse_shape %v72.buf.out [[0, 1, 2, 3]] : tensor<1x384x1x1xf32> into tensor<384xf32>
    %v75.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %v75 = linalg.broadcast ins(%v75.collapsed : tensor<384xf32>)
      outs(%v75.buf : tensor<1024x384x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_9.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v66.buf.out, %v75 : tensor<1024x384x13x13xf32>, tensor<1024x384x13x13xf32>)
      outs(%x_9.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_76: f32, %in_77: f32, %acc_78: f32):
          %v79 = arith.addf %in_76, %in_77 : f32
          %v80 = arith.maxnumf %v0, %v79 : f32
          linalg.yield %v80 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_4 = tensor.pad %x_9.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i81: index, %pad_i82: index, %pad_i83: index, %pad_i84: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v85.empty = tensor.empty() : tensor<1024x256x13x13xf32>
    %v85.buf = linalg.fill ins(%v0 : f32) outs(%v85.empty : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %v85.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_conv5_parameters_weight_ : tensor<1024x384x15x15xf32>, tensor<256x384x3x3xf32>)
      outs(%v85.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_86: f32, %in_87: f32, %acc_88: f32):
          %v89 = arith.mulf %in_86, %in_87 : f32
          %v90 = arith.addf %v89, %acc_88 : f32
          linalg.yield %v90 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %v91.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v91.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv5_parameters_bias_ : tensor<256xf32>)
      outs(%v91.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_92: f32, %acc_93: f32):
          linalg.yield %in_92 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v94.collapsed = tensor.collapse_shape %v91.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v94.buf = tensor.empty() : tensor<1024x256x13x13xf32>
    %v94 = linalg.broadcast ins(%v94.collapsed : tensor<256xf32>)
      outs(%v94.buf : tensor<1024x256x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_12.empty = tensor.empty() : tensor<1024x256x6x6xf32>
    %x_12.buf = linalg.fill ins(%init : f32) outs(%x_12.empty : tensor<1024x256x6x6xf32>) -> tensor<1024x256x6x6xf32>
    %x_12.shape = tensor.empty() : tensor<3x3xf32>
    %x_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v85.buf.out, %v94, %x_12.shape : tensor<1024x256x13x13xf32>, tensor<1024x256x13x13xf32>, tensor<3x3xf32>)
      outs(%x_12.buf : tensor<1024x256x6x6xf32>) {
        ^bb0(%in_96: f32, %in_97: f32, %shape_95: f32, %acc_98: f32):
          %v99 = arith.addf %in_96, %in_97 : f32
          %v100 = arith.maxnumf %v0, %v99 : f32
          %v101 = arith.maxnumf %v100, %acc_98 : f32
          linalg.yield %v101 : f32
      }
    -> tensor<1024x256x6x6xf32>
    %v102.empty = tensor.empty() : tensor<1024x4096xf32>
    %v102.buf = linalg.fill ins(%v0 : f32) outs(%v102.empty : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %v102.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, (d2 + d0 * 9216) floordiv 36 mod 256, (d2 + d0 * 9216) floordiv 6 mod 6, d2 mod 6)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_12.buf.out, %l_self_modules_fc1_parameters_weight_ : tensor<1024x256x6x6xf32>, tensor<4096x9216xf32>)
      outs(%v102.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_103: f32, %in_104: f32, %acc_105: f32):
          %v106 = arith.mulf %in_103, %in_104 : f32
          %v107 = arith.addf %v106, %acc_105 : f32
          linalg.yield %v107 : f32
      }
    -> tensor<1024x4096xf32>
    %v108.empty = tensor.empty() : tensor<1024x4096xf32>
    %v108.buf = linalg.fill ins(%v0 : f32) outs(%v108.empty : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %v108.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v102.buf.out, %l_self_modules_fc1_parameters_bias_, %l_self_modules_fc2_parameters_weight_ : tensor<1024x4096xf32>, tensor<4096xf32>, tensor<4096x4096xf32>)
      outs(%v108.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_109: f32, %in_110: f32, %in_111: f32, %acc_112: f32):
          %v113 = arith.addf %in_109, %in_110 : f32
          %v114 = arith.maxnumf %v0, %v113 : f32
          %v115 = arith.mulf %v114, %in_111 : f32
          %v116 = arith.addf %v115, %acc_112 : f32
          linalg.yield %v116 : f32
      }
    -> tensor<1024x4096xf32>
    %v117.empty = tensor.empty() : tensor<1024x1000xf32>
    %v117.buf = linalg.fill ins(%v0 : f32) outs(%v117.empty : tensor<1024x1000xf32>) -> tensor<1024x1000xf32>
    %v117.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v108.buf.out, %l_self_modules_fc2_parameters_bias_, %l_self_modules_fc3_parameters_weight_ : tensor<1024x4096xf32>, tensor<4096xf32>, tensor<1000x4096xf32>)
      outs(%v117.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_118: f32, %in_119: f32, %in_120: f32, %acc_121: f32):
          %v122 = arith.addf %in_118, %in_119 : f32
          %v123 = arith.maxnumf %v0, %v122 : f32
          %v124 = arith.mulf %v123, %in_120 : f32
          %v125 = arith.addf %v124, %acc_121 : f32
          linalg.yield %v125 : f32
      }
    -> tensor<1024x1000xf32>
    %x_20.buf = tensor.empty() : tensor<1024x1000xf32>
    %x_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v117.buf.out, %l_self_modules_fc3_parameters_bias_ : tensor<1024x1000xf32>, tensor<1000xf32>)
      outs(%x_20.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_126: f32, %in_127: f32, %acc_128: f32):
          %v129 = arith.addf %in_127, %in_126 : f32
          linalg.yield %v129 : f32
      }
    -> tensor<1024x1000xf32>
    func.return %x_20.buf.out : tensor<1024x1000xf32>
  }
}
