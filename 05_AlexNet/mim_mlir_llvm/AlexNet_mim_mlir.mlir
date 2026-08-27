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
    %x.buf = tensor.empty() : tensor<1024x96x55x55xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %v14 : tensor<1024x96x55x55xf32>, tensor<1024x96x55x55xf32>)
      outs(%x.buf : tensor<1024x96x55x55xf32>) {
        ^bb0(%in_15: f32, %in_16: f32, %acc_17: f32):
          %v18 = arith.addf %in_15, %in_16 : f32
          linalg.yield %v18 : f32
      }
    -> tensor<1024x96x55x55xf32>
    %x_1.buf = tensor.empty() : tensor<1024x96x55x55xf32>
    %x_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x.buf.out : tensor<1024x96x55x55xf32>)
      outs(%x_1.buf : tensor<1024x96x55x55xf32>) {
        ^bb0(%in_19: f32, %acc_20: f32):
          %v21 = arith.maxnumf %v0, %in_19 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<1024x96x55x55xf32>
    %x_2.empty = tensor.empty() : tensor<1024x96x27x27xf32>
    %init = arith.constant 0xFF800000 : f32
    %x_2.buf = linalg.fill ins(%init : f32) outs(%x_2.empty : tensor<1024x96x27x27xf32>) -> tensor<1024x96x27x27xf32>
    %x_2.shape = tensor.empty() : tensor<3x3xf32>
    %x_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%x_1.buf.out, %x_2.shape : tensor<1024x96x55x55xf32>, tensor<3x3xf32>)
      outs(%x_2.buf : tensor<1024x96x27x27xf32>) {
        ^bb0(%in_23: f32, %shape_22: f32, %acc_24: f32):
          %v25 = arith.maxnumf %acc_24, %in_23 : f32
          linalg.yield %v25 : f32
      }
    -> tensor<1024x96x27x27xf32>
    %padded_1 = tensor.pad %x_2.buf.out low[0, 0, 2, 2] high[0, 0, 2, 2] {
      ^bb0(%pad_i26: index, %pad_i27: index, %pad_i28: index, %pad_i29: index):
        tensor.yield %v0 : f32
    } : tensor<1024x96x27x27xf32> to tensor<1024x96x31x31xf32>
    %v30.empty = tensor.empty() : tensor<1024x256x27x27xf32>
    %v30.buf = linalg.fill ins(%v0 : f32) outs(%v30.empty : tensor<1024x256x27x27xf32>) -> tensor<1024x256x27x27xf32>
    %v30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_conv2_parameters_weight_ : tensor<1024x96x31x31xf32>, tensor<256x96x5x5xf32>)
      outs(%v30.buf : tensor<1024x256x27x27xf32>) {
        ^bb0(%in_31: f32, %in_32: f32, %acc_33: f32):
          %v34 = arith.mulf %in_31, %in_32 : f32
          %v35 = arith.addf %v34, %acc_33 : f32
          linalg.yield %v35 : f32
      }
    -> tensor<1024x256x27x27xf32>
    %v36.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v36.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv2_parameters_bias_ : tensor<256xf32>)
      outs(%v36.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_37: f32, %acc_38: f32):
          linalg.yield %in_37 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v39.collapsed = tensor.collapse_shape %v36.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v39.buf = tensor.empty() : tensor<1024x256x27x27xf32>
    %v39 = linalg.broadcast ins(%v39.collapsed : tensor<256xf32>)
      outs(%v39.buf : tensor<1024x256x27x27xf32>)
      dimensions = [0, 2, 3]
    %x_3.buf = tensor.empty() : tensor<1024x256x27x27xf32>
    %x_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v30.buf.out, %v39 : tensor<1024x256x27x27xf32>, tensor<1024x256x27x27xf32>)
      outs(%x_3.buf : tensor<1024x256x27x27xf32>) {
        ^bb0(%in_40: f32, %in_41: f32, %acc_42: f32):
          %v43 = arith.addf %in_40, %in_41 : f32
          linalg.yield %v43 : f32
      }
    -> tensor<1024x256x27x27xf32>
    %x_4.buf = tensor.empty() : tensor<1024x256x27x27xf32>
    %x_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_3.buf.out : tensor<1024x256x27x27xf32>)
      outs(%x_4.buf : tensor<1024x256x27x27xf32>) {
        ^bb0(%in_44: f32, %acc_45: f32):
          %v46 = arith.maxnumf %v0, %in_44 : f32
          linalg.yield %v46 : f32
      }
    -> tensor<1024x256x27x27xf32>
    %x_5.empty = tensor.empty() : tensor<1024x256x13x13xf32>
    %x_5.buf = linalg.fill ins(%init : f32) outs(%x_5.empty : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %x_5.shape = tensor.empty() : tensor<3x3xf32>
    %x_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%x_4.buf.out, %x_5.shape : tensor<1024x256x27x27xf32>, tensor<3x3xf32>)
      outs(%x_5.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_48: f32, %shape_47: f32, %acc_49: f32):
          %v50 = arith.maxnumf %acc_49, %in_48 : f32
          linalg.yield %v50 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %padded_2 = tensor.pad %x_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i51: index, %pad_i52: index, %pad_i53: index, %pad_i54: index):
        tensor.yield %v0 : f32
    } : tensor<1024x256x13x13xf32> to tensor<1024x256x15x15xf32>
    %v55.empty = tensor.empty() : tensor<1024x384x13x13xf32>
    %v55.buf = linalg.fill ins(%v0 : f32) outs(%v55.empty : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %v55.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_conv3_parameters_weight_ : tensor<1024x256x15x15xf32>, tensor<384x256x3x3xf32>)
      outs(%v55.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_56: f32, %in_57: f32, %acc_58: f32):
          %v59 = arith.mulf %in_56, %in_57 : f32
          %v60 = arith.addf %v59, %acc_58 : f32
          linalg.yield %v60 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %v61.buf = tensor.empty() : tensor<1x384x1x1xf32>
    %v61.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv3_parameters_bias_ : tensor<384xf32>)
      outs(%v61.buf : tensor<1x384x1x1xf32>) {
        ^bb0(%in_62: f32, %acc_63: f32):
          linalg.yield %in_62 : f32
      }
    -> tensor<1x384x1x1xf32>
    %v64.collapsed = tensor.collapse_shape %v61.buf.out [[0, 1, 2, 3]] : tensor<1x384x1x1xf32> into tensor<384xf32>
    %v64.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %v64 = linalg.broadcast ins(%v64.collapsed : tensor<384xf32>)
      outs(%v64.buf : tensor<1024x384x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_6.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v55.buf.out, %v64 : tensor<1024x384x13x13xf32>, tensor<1024x384x13x13xf32>)
      outs(%x_6.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_65: f32, %in_66: f32, %acc_67: f32):
          %v68 = arith.addf %in_65, %in_66 : f32
          linalg.yield %v68 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %x_7.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_6.buf.out : tensor<1024x384x13x13xf32>)
      outs(%x_7.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_69: f32, %acc_70: f32):
          %v71 = arith.maxnumf %v0, %in_69 : f32
          linalg.yield %v71 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_3 = tensor.pad %x_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i72: index, %pad_i73: index, %pad_i74: index, %pad_i75: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v76.empty = tensor.empty() : tensor<1024x384x13x13xf32>
    %v76.buf = linalg.fill ins(%v0 : f32) outs(%v76.empty : tensor<1024x384x13x13xf32>) -> tensor<1024x384x13x13xf32>
    %v76.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_conv4_parameters_weight_ : tensor<1024x384x15x15xf32>, tensor<384x384x3x3xf32>)
      outs(%v76.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_77: f32, %in_78: f32, %acc_79: f32):
          %v80 = arith.mulf %in_77, %in_78 : f32
          %v81 = arith.addf %v80, %acc_79 : f32
          linalg.yield %v81 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %v82.buf = tensor.empty() : tensor<1x384x1x1xf32>
    %v82.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv4_parameters_bias_ : tensor<384xf32>)
      outs(%v82.buf : tensor<1x384x1x1xf32>) {
        ^bb0(%in_83: f32, %acc_84: f32):
          linalg.yield %in_83 : f32
      }
    -> tensor<1x384x1x1xf32>
    %v85.collapsed = tensor.collapse_shape %v82.buf.out [[0, 1, 2, 3]] : tensor<1x384x1x1xf32> into tensor<384xf32>
    %v85.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %v85 = linalg.broadcast ins(%v85.collapsed : tensor<384xf32>)
      outs(%v85.buf : tensor<1024x384x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_8.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v76.buf.out, %v85 : tensor<1024x384x13x13xf32>, tensor<1024x384x13x13xf32>)
      outs(%x_8.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_86: f32, %in_87: f32, %acc_88: f32):
          %v89 = arith.addf %in_86, %in_87 : f32
          linalg.yield %v89 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %x_9.buf = tensor.empty() : tensor<1024x384x13x13xf32>
    %x_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_8.buf.out : tensor<1024x384x13x13xf32>)
      outs(%x_9.buf : tensor<1024x384x13x13xf32>) {
        ^bb0(%in_90: f32, %acc_91: f32):
          %v92 = arith.maxnumf %v0, %in_90 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<1024x384x13x13xf32>
    %padded_4 = tensor.pad %x_9.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i93: index, %pad_i94: index, %pad_i95: index, %pad_i96: index):
        tensor.yield %v0 : f32
    } : tensor<1024x384x13x13xf32> to tensor<1024x384x15x15xf32>
    %v97.empty = tensor.empty() : tensor<1024x256x13x13xf32>
    %v97.buf = linalg.fill ins(%v0 : f32) outs(%v97.empty : tensor<1024x256x13x13xf32>) -> tensor<1024x256x13x13xf32>
    %v97.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_conv5_parameters_weight_ : tensor<1024x384x15x15xf32>, tensor<256x384x3x3xf32>)
      outs(%v97.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_98: f32, %in_99: f32, %acc_100: f32):
          %v101 = arith.mulf %in_98, %in_99 : f32
          %v102 = arith.addf %v101, %acc_100 : f32
          linalg.yield %v102 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %v103.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v103.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_conv5_parameters_bias_ : tensor<256xf32>)
      outs(%v103.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_104: f32, %acc_105: f32):
          linalg.yield %in_104 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v106.collapsed = tensor.collapse_shape %v103.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v106.buf = tensor.empty() : tensor<1024x256x13x13xf32>
    %v106 = linalg.broadcast ins(%v106.collapsed : tensor<256xf32>)
      outs(%v106.buf : tensor<1024x256x13x13xf32>)
      dimensions = [0, 2, 3]
    %x_10.buf = tensor.empty() : tensor<1024x256x13x13xf32>
    %x_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v97.buf.out, %v106 : tensor<1024x256x13x13xf32>, tensor<1024x256x13x13xf32>)
      outs(%x_10.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_107: f32, %in_108: f32, %acc_109: f32):
          %v110 = arith.addf %in_107, %in_108 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %x_11.buf = tensor.empty() : tensor<1024x256x13x13xf32>
    %x_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%x_10.buf.out : tensor<1024x256x13x13xf32>)
      outs(%x_11.buf : tensor<1024x256x13x13xf32>) {
        ^bb0(%in_111: f32, %acc_112: f32):
          %v113 = arith.maxnumf %v0, %in_111 : f32
          linalg.yield %v113 : f32
      }
    -> tensor<1024x256x13x13xf32>
    %x_12.empty = tensor.empty() : tensor<1024x256x6x6xf32>
    %x_12.buf = linalg.fill ins(%init : f32) outs(%x_12.empty : tensor<1024x256x6x6xf32>) -> tensor<1024x256x6x6xf32>
    %x_12.shape = tensor.empty() : tensor<3x3xf32>
    %x_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%x_11.buf.out, %x_12.shape : tensor<1024x256x13x13xf32>, tensor<3x3xf32>)
      outs(%x_12.buf : tensor<1024x256x6x6xf32>) {
        ^bb0(%in_115: f32, %shape_114: f32, %acc_116: f32):
          %v117 = arith.maxnumf %acc_116, %in_115 : f32
          linalg.yield %v117 : f32
      }
    -> tensor<1024x256x6x6xf32>
    %x_13.buf = tensor.empty() : tensor<1024x9216xf32>
    %x_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, (d1 + d0 * 9216) floordiv 36 mod 256, (d1 + d0 * 9216) floordiv 6 mod 6, d1 mod 6)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%x_12.buf.out : tensor<1024x256x6x6xf32>)
      outs(%x_13.buf : tensor<1024x9216xf32>) {
        ^bb0(%in_118: f32, %acc_119: f32):
          linalg.yield %in_118 : f32
      }
    -> tensor<1024x9216xf32>
    %v120.buf = tensor.empty() : tensor<9216x4096xf32>
    %v120.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc1_parameters_weight_ : tensor<4096x9216xf32>)
      outs(%v120.buf : tensor<9216x4096xf32>) {
        ^bb0(%in_121: f32, %acc_122: f32):
          linalg.yield %in_121 : f32
      }
    -> tensor<9216x4096xf32>
    %v123.empty = tensor.empty() : tensor<1024x4096xf32>
    %v123.buf = linalg.fill ins(%v0 : f32) outs(%v123.empty : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %v123.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_13.buf.out, %v120.buf.out : tensor<1024x9216xf32>, tensor<9216x4096xf32>)
      outs(%v123.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_124: f32, %in_125: f32, %acc_126: f32):
          %v127 = arith.mulf %in_124, %in_125 : f32
          %v128 = arith.addf %v127, %acc_126 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<1024x4096xf32>
    %v129.buf = tensor.empty() : tensor<1x4096xf32>
    %v129.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc1_parameters_bias_ : tensor<4096xf32>)
      outs(%v129.buf : tensor<1x4096xf32>) {
        ^bb0(%in_130: f32, %acc_131: f32):
          linalg.yield %in_130 : f32
      }
    -> tensor<1x4096xf32>
    %v132.buf = tensor.empty() : tensor<1024x4096xf32>
    %v132.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v129.buf.out : tensor<1x4096xf32>)
      outs(%v132.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_133: f32, %acc_134: f32):
          linalg.yield %in_133 : f32
      }
    -> tensor<1024x4096xf32>
    %x_14.buf = tensor.empty() : tensor<1024x4096xf32>
    %x_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v123.buf.out, %v132.buf.out : tensor<1024x4096xf32>, tensor<1024x4096xf32>)
      outs(%x_14.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_135: f32, %in_136: f32, %acc_137: f32):
          %v138 = arith.addf %in_135, %in_136 : f32
          linalg.yield %v138 : f32
      }
    -> tensor<1024x4096xf32>
    %x_15.buf = tensor.empty() : tensor<1024x4096xf32>
    %x_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%x_14.buf.out : tensor<1024x4096xf32>)
      outs(%x_15.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_139: f32, %acc_140: f32):
          %v141 = arith.maxnumf %v0, %in_139 : f32
          linalg.yield %v141 : f32
      }
    -> tensor<1024x4096xf32>
    %v142.buf = tensor.empty() : tensor<4096x4096xf32>
    %v142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc2_parameters_weight_ : tensor<4096x4096xf32>)
      outs(%v142.buf : tensor<4096x4096xf32>) {
        ^bb0(%in_143: f32, %acc_144: f32):
          linalg.yield %in_143 : f32
      }
    -> tensor<4096x4096xf32>
    %v145.empty = tensor.empty() : tensor<1024x4096xf32>
    %v145.buf = linalg.fill ins(%v0 : f32) outs(%v145.empty : tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    %v145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_15.buf.out, %v142.buf.out : tensor<1024x4096xf32>, tensor<4096x4096xf32>)
      outs(%v145.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_146: f32, %in_147: f32, %acc_148: f32):
          %v149 = arith.mulf %in_146, %in_147 : f32
          %v150 = arith.addf %v149, %acc_148 : f32
          linalg.yield %v150 : f32
      }
    -> tensor<1024x4096xf32>
    %v151.buf = tensor.empty() : tensor<1x4096xf32>
    %v151.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc2_parameters_bias_ : tensor<4096xf32>)
      outs(%v151.buf : tensor<1x4096xf32>) {
        ^bb0(%in_152: f32, %acc_153: f32):
          linalg.yield %in_152 : f32
      }
    -> tensor<1x4096xf32>
    %v154.buf = tensor.empty() : tensor<1024x4096xf32>
    %v154.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v151.buf.out : tensor<1x4096xf32>)
      outs(%v154.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_155: f32, %acc_156: f32):
          linalg.yield %in_155 : f32
      }
    -> tensor<1024x4096xf32>
    %x_17.buf = tensor.empty() : tensor<1024x4096xf32>
    %x_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v145.buf.out, %v154.buf.out : tensor<1024x4096xf32>, tensor<1024x4096xf32>)
      outs(%x_17.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_157: f32, %in_158: f32, %acc_159: f32):
          %v160 = arith.addf %in_157, %in_158 : f32
          linalg.yield %v160 : f32
      }
    -> tensor<1024x4096xf32>
    %x_18.buf = tensor.empty() : tensor<1024x4096xf32>
    %x_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%x_17.buf.out : tensor<1024x4096xf32>)
      outs(%x_18.buf : tensor<1024x4096xf32>) {
        ^bb0(%in_161: f32, %acc_162: f32):
          %v163 = arith.maxnumf %v0, %in_161 : f32
          linalg.yield %v163 : f32
      }
    -> tensor<1024x4096xf32>
    %v164.buf = tensor.empty() : tensor<4096x1000xf32>
    %v164.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc3_parameters_weight_ : tensor<1000x4096xf32>)
      outs(%v164.buf : tensor<4096x1000xf32>) {
        ^bb0(%in_165: f32, %acc_166: f32):
          linalg.yield %in_165 : f32
      }
    -> tensor<4096x1000xf32>
    %v167.empty = tensor.empty() : tensor<1024x1000xf32>
    %v167.buf = linalg.fill ins(%v0 : f32) outs(%v167.empty : tensor<1024x1000xf32>) -> tensor<1024x1000xf32>
    %v167.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x_18.buf.out, %v164.buf.out : tensor<1024x4096xf32>, tensor<4096x1000xf32>)
      outs(%v167.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_168: f32, %in_169: f32, %acc_170: f32):
          %v171 = arith.mulf %in_168, %in_169 : f32
          %v172 = arith.addf %v171, %acc_170 : f32
          linalg.yield %v172 : f32
      }
    -> tensor<1024x1000xf32>
    %v173.buf = tensor.empty() : tensor<1x1000xf32>
    %v173.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_fc3_parameters_bias_ : tensor<1000xf32>)
      outs(%v173.buf : tensor<1x1000xf32>) {
        ^bb0(%in_174: f32, %acc_175: f32):
          linalg.yield %in_174 : f32
      }
    -> tensor<1x1000xf32>
    %v176.buf = tensor.empty() : tensor<1024x1000xf32>
    %v176.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v173.buf.out : tensor<1x1000xf32>)
      outs(%v176.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_177: f32, %acc_178: f32):
          linalg.yield %in_177 : f32
      }
    -> tensor<1024x1000xf32>
    %x_20.buf = tensor.empty() : tensor<1024x1000xf32>
    %x_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v167.buf.out, %v176.buf.out : tensor<1024x1000xf32>, tensor<1024x1000xf32>)
      outs(%x_20.buf : tensor<1024x1000xf32>) {
        ^bb0(%in_179: f32, %in_180: f32, %acc_181: f32):
          %v182 = arith.addf %in_179, %in_180 : f32
          linalg.yield %v182 : f32
      }
    -> tensor<1024x1000xf32>
    func.return %x_20.buf.out : tensor<1024x1000xf32>
  }
}
