module {
  func.func public @VGG19(%l_self_modules_features_modules_0_parameters_weight_: tensor<64x3x3x3xf32>, %l_self_modules_features_modules_0_parameters_bias_: tensor<64xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_features_modules_2_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_5_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_features_modules_5_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_7_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_features_modules_7_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_10_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_features_modules_10_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_12_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_12_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_14_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_14_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_16_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_16_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_19_parameters_weight_: tensor<512x256x3x3xf32>, %l_self_modules_features_modules_19_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_21_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_21_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_23_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_23_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_25_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_25_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_28_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_28_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_30_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_30_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_32_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_32_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_34_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_34_parameters_bias_: tensor<512xf32>, %l_self_modules_classifier_modules_0_parameters_weight_: tensor<4096x25088xf32>, %l_self_modules_classifier_modules_0_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_3_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_classifier_modules_3_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_6_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_classifier_modules_6_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %v0 = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1: index, %pad_i2: index, %pad_i3: index, %pad_i4: index):
        tensor.yield %v0 : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v5.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v5.buf = linalg.fill ins(%v0 : f32) outs(%v5.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v5.shape = tensor.empty() : tensor<224x1xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_features_modules_0_parameters_weight_, %v5.shape : tensor<10x3x226x226xf32>, tensor<64x3x3x3xf32>, tensor<224x1xf32>)
      outs(%v5.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_7: f32, %in_8: f32, %shape_6: f32, %acc_9: f32):
          %v10 = arith.mulf %in_7, %in_8 : f32
          %v11 = arith.addf %v10, %acc_9 : f32
          linalg.yield %v11 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v5.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v5.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %l_self_modules_features_modules_0_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>)
      outs(%v5.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_13: f32, %in_12: f32, %post_14: f32):
          %v15 = arith.addf %acc_13, %in_12 : f32
          %v16 = arith.maxnumf %v0, %v15 : f32
          linalg.yield %v16 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %input_2.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.post.out : tensor<10x64x224x1x224xf32>)
      outs(%input_2.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_17: f32, %acc_18: f32):
          linalg.yield %in_17 : f32
      }
    -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %input_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i19: index, %pad_i20: index, %pad_i21: index, %pad_i22: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %v23.empty = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v23.buf = linalg.fill ins(%v0 : f32) outs(%v23.empty : tensor<10x64x224x1x224xf32>) -> tensor<10x64x224x1x224xf32>
    %v23.shape = tensor.empty() : tensor<224x1xf32>
    %v23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_features_modules_2_parameters_weight_, %v23.shape : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>, tensor<224x1xf32>)
      outs(%v23.buf : tensor<10x64x224x1x224xf32>) {
        ^bb0(%in_25: f32, %in_26: f32, %shape_24: f32, %acc_27: f32):
          %v28 = arith.mulf %in_25, %in_26 : f32
          %v29 = arith.addf %v28, %acc_27 : f32
          linalg.yield %v29 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %v23.post = tensor.empty() : tensor<10x64x224x1x224xf32>
    %v23.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v23.buf.out, %l_self_modules_features_modules_2_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>)
      outs(%v23.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_31: f32, %in_30: f32, %post_32: f32):
          %v33 = arith.addf %acc_31, %in_30 : f32
          %v34 = arith.maxnumf %v0, %v33 : f32
          linalg.yield %v34 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %input_5.empty = tensor.empty() : tensor<10x64x112x112xf32>
    %init = arith.constant 0xFF800000 : f32
    %input_5.buf = linalg.fill ins(%init : f32) outs(%input_5.empty : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %input_5.shape = tensor.empty() : tensor<2x2xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v23.post.out, %input_5.shape : tensor<10x64x224x1x224xf32>, tensor<2x2xf32>)
      outs(%input_5.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_36: f32, %shape_35: f32, %acc_37: f32):
          %v38 = arith.maxnumf %acc_37, %in_36 : f32
          linalg.yield %v38 : f32
      }
    -> tensor<10x64x112x112xf32>
    %padded_2 = tensor.pad %input_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i39: index, %pad_i40: index, %pad_i41: index, %pad_i42: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %v43.empty = tensor.empty() : tensor<10x128x112x1x112xf32>
    %v43.buf = linalg.fill ins(%v0 : f32) outs(%v43.empty : tensor<10x128x112x1x112xf32>) -> tensor<10x128x112x1x112xf32>
    %v43.shape = tensor.empty() : tensor<112x1xf32>
    %v43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_features_modules_5_parameters_weight_, %v43.shape : tensor<10x64x114x114xf32>, tensor<128x64x3x3xf32>, tensor<112x1xf32>)
      outs(%v43.buf : tensor<10x128x112x1x112xf32>) {
        ^bb0(%in_45: f32, %in_46: f32, %shape_44: f32, %acc_47: f32):
          %v48 = arith.mulf %in_45, %in_46 : f32
          %v49 = arith.addf %v48, %acc_47 : f32
          linalg.yield %v49 : f32
      }
    -> tensor<10x128x112x1x112xf32>
    %v43.post = tensor.empty() : tensor<10x128x112x1x112xf32>
    %v43.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v43.buf.out, %l_self_modules_features_modules_5_parameters_bias_ : tensor<10x128x112x1x112xf32>, tensor<128xf32>)
      outs(%v43.post : tensor<10x128x112x1x112xf32>) {
        ^bb0(%acc_51: f32, %in_50: f32, %post_52: f32):
          %v53 = arith.addf %acc_51, %in_50 : f32
          %v54 = arith.maxnumf %v0, %v53 : f32
          linalg.yield %v54 : f32
      }
    -> tensor<10x128x112x1x112xf32>
    %input_7.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v43.post.out : tensor<10x128x112x1x112xf32>)
      outs(%input_7.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_55: f32, %acc_56: f32):
          linalg.yield %in_55 : f32
      }
    -> tensor<10x128x112x112xf32>
    %padded_3 = tensor.pad %input_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i57: index, %pad_i58: index, %pad_i59: index, %pad_i60: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x112x112xf32> to tensor<10x128x114x114xf32>
    %v61.empty = tensor.empty() : tensor<10x128x112x1x112xf32>
    %v61.buf = linalg.fill ins(%v0 : f32) outs(%v61.empty : tensor<10x128x112x1x112xf32>) -> tensor<10x128x112x1x112xf32>
    %v61.shape = tensor.empty() : tensor<112x1xf32>
    %v61.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_features_modules_7_parameters_weight_, %v61.shape : tensor<10x128x114x114xf32>, tensor<128x128x3x3xf32>, tensor<112x1xf32>)
      outs(%v61.buf : tensor<10x128x112x1x112xf32>) {
        ^bb0(%in_63: f32, %in_64: f32, %shape_62: f32, %acc_65: f32):
          %v66 = arith.mulf %in_63, %in_64 : f32
          %v67 = arith.addf %v66, %acc_65 : f32
          linalg.yield %v67 : f32
      }
    -> tensor<10x128x112x1x112xf32>
    %v61.post = tensor.empty() : tensor<10x128x112x1x112xf32>
    %v61.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v61.buf.out, %l_self_modules_features_modules_7_parameters_bias_ : tensor<10x128x112x1x112xf32>, tensor<128xf32>)
      outs(%v61.post : tensor<10x128x112x1x112xf32>) {
        ^bb0(%acc_69: f32, %in_68: f32, %post_70: f32):
          %v71 = arith.addf %acc_69, %in_68 : f32
          %v72 = arith.maxnumf %v0, %v71 : f32
          linalg.yield %v72 : f32
      }
    -> tensor<10x128x112x1x112xf32>
    %input_10.empty = tensor.empty() : tensor<10x128x56x56xf32>
    %input_10.buf = linalg.fill ins(%init : f32) outs(%input_10.empty : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %input_10.shape = tensor.empty() : tensor<2x2xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v61.post.out, %input_10.shape : tensor<10x128x112x1x112xf32>, tensor<2x2xf32>)
      outs(%input_10.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_74: f32, %shape_73: f32, %acc_75: f32):
          %v76 = arith.maxnumf %acc_75, %in_74 : f32
          linalg.yield %v76 : f32
      }
    -> tensor<10x128x56x56xf32>
    %padded_4 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i77: index, %pad_i78: index, %pad_i79: index, %pad_i80: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %v81.empty = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v81.buf = linalg.fill ins(%v0 : f32) outs(%v81.empty : tensor<10x256x56x1x56xf32>) -> tensor<10x256x56x1x56xf32>
    %v81.shape = tensor.empty() : tensor<56x1xf32>
    %v81.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_features_modules_10_parameters_weight_, %v81.shape : tensor<10x128x58x58xf32>, tensor<256x128x3x3xf32>, tensor<56x1xf32>)
      outs(%v81.buf : tensor<10x256x56x1x56xf32>) {
        ^bb0(%in_83: f32, %in_84: f32, %shape_82: f32, %acc_85: f32):
          %v86 = arith.mulf %in_83, %in_84 : f32
          %v87 = arith.addf %v86, %acc_85 : f32
          linalg.yield %v87 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %v81.post = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v81.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v81.buf.out, %l_self_modules_features_modules_10_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v81.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_89: f32, %in_88: f32, %post_90: f32):
          %v91 = arith.addf %acc_89, %in_88 : f32
          %v92 = arith.maxnumf %v0, %v91 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_12.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v81.post.out : tensor<10x256x56x1x56xf32>)
      outs(%input_12.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_93: f32, %acc_94: f32):
          linalg.yield %in_93 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_5 = tensor.pad %input_12.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i95: index, %pad_i96: index, %pad_i97: index, %pad_i98: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v99.empty = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v99.buf = linalg.fill ins(%v0 : f32) outs(%v99.empty : tensor<10x256x56x1x56xf32>) -> tensor<10x256x56x1x56xf32>
    %v99.shape = tensor.empty() : tensor<56x1xf32>
    %v99.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_features_modules_12_parameters_weight_, %v99.shape : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>, tensor<56x1xf32>)
      outs(%v99.buf : tensor<10x256x56x1x56xf32>) {
        ^bb0(%in_101: f32, %in_102: f32, %shape_100: f32, %acc_103: f32):
          %v104 = arith.mulf %in_101, %in_102 : f32
          %v105 = arith.addf %v104, %acc_103 : f32
          linalg.yield %v105 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %v99.post = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v99.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v99.buf.out, %l_self_modules_features_modules_12_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v99.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_107: f32, %in_106: f32, %post_108: f32):
          %v109 = arith.addf %acc_107, %in_106 : f32
          %v110 = arith.maxnumf %v0, %v109 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_14.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v99.post.out : tensor<10x256x56x1x56xf32>)
      outs(%input_14.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_111: f32, %acc_112: f32):
          linalg.yield %in_111 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_6 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i113: index, %pad_i114: index, %pad_i115: index, %pad_i116: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v117.empty = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v117.buf = linalg.fill ins(%v0 : f32) outs(%v117.empty : tensor<10x256x56x1x56xf32>) -> tensor<10x256x56x1x56xf32>
    %v117.shape = tensor.empty() : tensor<56x1xf32>
    %v117.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_6, %l_self_modules_features_modules_14_parameters_weight_, %v117.shape : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>, tensor<56x1xf32>)
      outs(%v117.buf : tensor<10x256x56x1x56xf32>) {
        ^bb0(%in_119: f32, %in_120: f32, %shape_118: f32, %acc_121: f32):
          %v122 = arith.mulf %in_119, %in_120 : f32
          %v123 = arith.addf %v122, %acc_121 : f32
          linalg.yield %v123 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %v117.post = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v117.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v117.buf.out, %l_self_modules_features_modules_14_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v117.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_125: f32, %in_124: f32, %post_126: f32):
          %v127 = arith.addf %acc_125, %in_124 : f32
          %v128 = arith.maxnumf %v0, %v127 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_16.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v117.post.out : tensor<10x256x56x1x56xf32>)
      outs(%input_16.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_129: f32, %acc_130: f32):
          linalg.yield %in_129 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_7 = tensor.pad %input_16.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i131: index, %pad_i132: index, %pad_i133: index, %pad_i134: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v135.empty = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v135.buf = linalg.fill ins(%v0 : f32) outs(%v135.empty : tensor<10x256x56x1x56xf32>) -> tensor<10x256x56x1x56xf32>
    %v135.shape = tensor.empty() : tensor<56x1xf32>
    %v135.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_features_modules_16_parameters_weight_, %v135.shape : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>, tensor<56x1xf32>)
      outs(%v135.buf : tensor<10x256x56x1x56xf32>) {
        ^bb0(%in_137: f32, %in_138: f32, %shape_136: f32, %acc_139: f32):
          %v140 = arith.mulf %in_137, %in_138 : f32
          %v141 = arith.addf %v140, %acc_139 : f32
          linalg.yield %v141 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %v135.post = tensor.empty() : tensor<10x256x56x1x56xf32>
    %v135.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v135.buf.out, %l_self_modules_features_modules_16_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v135.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_143: f32, %in_142: f32, %post_144: f32):
          %v145 = arith.addf %acc_143, %in_142 : f32
          %v146 = arith.maxnumf %v0, %v145 : f32
          linalg.yield %v146 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_19.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_19.buf = linalg.fill ins(%init : f32) outs(%input_19.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_19.shape = tensor.empty() : tensor<2x2xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v135.post.out, %input_19.shape : tensor<10x256x56x1x56xf32>, tensor<2x2xf32>)
      outs(%input_19.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_148: f32, %shape_147: f32, %acc_149: f32):
          %v150 = arith.maxnumf %acc_149, %in_148 : f32
          linalg.yield %v150 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_8 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i151: index, %pad_i152: index, %pad_i153: index, %pad_i154: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v155.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v155.buf = linalg.fill ins(%v0 : f32) outs(%v155.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v155.shape = tensor.empty() : tensor<28x1xf32>
    %v155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_features_modules_19_parameters_weight_, %v155.shape : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>, tensor<28x1xf32>)
      outs(%v155.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_157: f32, %in_158: f32, %shape_156: f32, %acc_159: f32):
          %v160 = arith.mulf %in_157, %in_158 : f32
          %v161 = arith.addf %v160, %acc_159 : f32
          linalg.yield %v161 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v155.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v155.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v155.buf.out, %l_self_modules_features_modules_19_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v155.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_163: f32, %in_162: f32, %post_164: f32):
          %v165 = arith.addf %acc_163, %in_162 : f32
          %v166 = arith.maxnumf %v0, %v165 : f32
          linalg.yield %v166 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_21.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v155.post.out : tensor<10x512x28x1x28xf32>)
      outs(%input_21.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_167: f32, %acc_168: f32):
          linalg.yield %in_167 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_9 = tensor.pad %input_21.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i169: index, %pad_i170: index, %pad_i171: index, %pad_i172: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v173.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v173.buf = linalg.fill ins(%v0 : f32) outs(%v173.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v173.shape = tensor.empty() : tensor<28x1xf32>
    %v173.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_9, %l_self_modules_features_modules_21_parameters_weight_, %v173.shape : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>, tensor<28x1xf32>)
      outs(%v173.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_175: f32, %in_176: f32, %shape_174: f32, %acc_177: f32):
          %v178 = arith.mulf %in_175, %in_176 : f32
          %v179 = arith.addf %v178, %acc_177 : f32
          linalg.yield %v179 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v173.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v173.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v173.buf.out, %l_self_modules_features_modules_21_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v173.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_181: f32, %in_180: f32, %post_182: f32):
          %v183 = arith.addf %acc_181, %in_180 : f32
          %v184 = arith.maxnumf %v0, %v183 : f32
          linalg.yield %v184 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_23.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v173.post.out : tensor<10x512x28x1x28xf32>)
      outs(%input_23.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_185: f32, %acc_186: f32):
          linalg.yield %in_185 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_10 = tensor.pad %input_23.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i187: index, %pad_i188: index, %pad_i189: index, %pad_i190: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v191.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v191.buf = linalg.fill ins(%v0 : f32) outs(%v191.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v191.shape = tensor.empty() : tensor<28x1xf32>
    %v191.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_features_modules_23_parameters_weight_, %v191.shape : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>, tensor<28x1xf32>)
      outs(%v191.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_193: f32, %in_194: f32, %shape_192: f32, %acc_195: f32):
          %v196 = arith.mulf %in_193, %in_194 : f32
          %v197 = arith.addf %v196, %acc_195 : f32
          linalg.yield %v197 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v191.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v191.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v191.buf.out, %l_self_modules_features_modules_23_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v191.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_199: f32, %in_198: f32, %post_200: f32):
          %v201 = arith.addf %acc_199, %in_198 : f32
          %v202 = arith.maxnumf %v0, %v201 : f32
          linalg.yield %v202 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_25.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v191.post.out : tensor<10x512x28x1x28xf32>)
      outs(%input_25.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_203: f32, %acc_204: f32):
          linalg.yield %in_203 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_11 = tensor.pad %input_25.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i205: index, %pad_i206: index, %pad_i207: index, %pad_i208: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v209.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v209.buf = linalg.fill ins(%v0 : f32) outs(%v209.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v209.shape = tensor.empty() : tensor<28x1xf32>
    %v209.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_features_modules_25_parameters_weight_, %v209.shape : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>, tensor<28x1xf32>)
      outs(%v209.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %shape_210: f32, %acc_213: f32):
          %v214 = arith.mulf %in_211, %in_212 : f32
          %v215 = arith.addf %v214, %acc_213 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v209.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v209.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v209.buf.out, %l_self_modules_features_modules_25_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v209.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_217: f32, %in_216: f32, %post_218: f32):
          %v219 = arith.addf %acc_217, %in_216 : f32
          %v220 = arith.maxnumf %v0, %v219 : f32
          linalg.yield %v220 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_28.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_28.buf = linalg.fill ins(%init : f32) outs(%input_28.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_28.shape = tensor.empty() : tensor<2x2xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v209.post.out, %input_28.shape : tensor<10x512x28x1x28xf32>, tensor<2x2xf32>)
      outs(%input_28.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_222: f32, %shape_221: f32, %acc_223: f32):
          %v224 = arith.maxnumf %acc_223, %in_222 : f32
          linalg.yield %v224 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_12 = tensor.pad %input_28.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i225: index, %pad_i226: index, %pad_i227: index, %pad_i228: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v229.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v229.buf = linalg.fill ins(%v0 : f32) outs(%v229.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v229.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_features_modules_28_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v229.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_230: f32, %in_231: f32, %acc_232: f32):
          %v233 = arith.mulf %in_230, %in_231 : f32
          %v234 = arith.addf %v233, %acc_232 : f32
          linalg.yield %v234 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v229.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v229.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v229.buf.out, %l_self_modules_features_modules_28_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v229.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_236: f32, %in_235: f32, %post_237: f32):
          %v238 = arith.addf %acc_236, %in_235 : f32
          %v239 = arith.maxnumf %v0, %v238 : f32
          linalg.yield %v239 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_30.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v229.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_30.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_240: f32, %acc_241: f32):
          linalg.yield %in_240 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_13 = tensor.pad %input_30.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i242: index, %pad_i243: index, %pad_i244: index, %pad_i245: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v246.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v246.buf = linalg.fill ins(%v0 : f32) outs(%v246.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v246.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_13, %l_self_modules_features_modules_30_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v246.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_247: f32, %in_248: f32, %acc_249: f32):
          %v250 = arith.mulf %in_247, %in_248 : f32
          %v251 = arith.addf %v250, %acc_249 : f32
          linalg.yield %v251 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v246.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v246.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v246.buf.out, %l_self_modules_features_modules_30_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v246.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_253: f32, %in_252: f32, %post_254: f32):
          %v255 = arith.addf %acc_253, %in_252 : f32
          %v256 = arith.maxnumf %v0, %v255 : f32
          linalg.yield %v256 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_32.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v246.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_32.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_257: f32, %acc_258: f32):
          linalg.yield %in_257 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_14 = tensor.pad %input_32.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i259: index, %pad_i260: index, %pad_i261: index, %pad_i262: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v263.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v263.buf = linalg.fill ins(%v0 : f32) outs(%v263.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v263.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_features_modules_32_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v263.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_264: f32, %in_265: f32, %acc_266: f32):
          %v267 = arith.mulf %in_264, %in_265 : f32
          %v268 = arith.addf %v267, %acc_266 : f32
          linalg.yield %v268 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v263.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v263.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v263.buf.out, %l_self_modules_features_modules_32_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v263.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_270: f32, %in_269: f32, %post_271: f32):
          %v272 = arith.addf %acc_270, %in_269 : f32
          %v273 = arith.maxnumf %v0, %v272 : f32
          linalg.yield %v273 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_34.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 2, d2 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v263.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_34.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_274: f32, %acc_275: f32):
          linalg.yield %in_274 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_15 = tensor.pad %input_34.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i276: index, %pad_i277: index, %pad_i278: index, %pad_i279: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v280.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v280.buf = linalg.fill ins(%v0 : f32) outs(%v280.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v280.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_features_modules_34_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v280.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_281: f32, %in_282: f32, %acc_283: f32):
          %v284 = arith.mulf %in_281, %in_282 : f32
          %v285 = arith.addf %v284, %acc_283 : f32
          linalg.yield %v285 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v280.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v280.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v280.buf.out, %l_self_modules_features_modules_34_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v280.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_287: f32, %in_286: f32, %post_288: f32):
          %v289 = arith.addf %acc_287, %in_286 : f32
          %v290 = arith.maxnumf %v0, %v289 : f32
          linalg.yield %v290 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_37.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_37.buf = linalg.fill ins(%init : f32) outs(%input_37.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_37.shape = tensor.empty() : tensor<2xf32>
    %input_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v280.post.out, %input_37.shape : tensor<10x512x7x2x14xf32>, tensor<2xf32>)
      outs(%input_37.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_292: f32, %shape_291: f32, %acc_293: f32):
          %v294 = arith.maxnumf %acc_293, %in_292 : f32
          linalg.yield %v294 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v295.empty = tensor.empty() : tensor<5x2x1024x4xf32>
    %v295.buf = linalg.fill ins(%v0 : f32) outs(%v295.empty : tensor<5x2x1024x4xf32>) -> tensor<5x2x1024x4xf32>
    %v295.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, (d4 + (d0 * 2 + d2) * 25088) floordiv 49 mod 512, (d4 + (d0 * 2 + d2) * 25088) floordiv 7 mod 7, d4 mod 7)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%input_37.buf.out, %l_self_modules_classifier_modules_0_parameters_weight_ : tensor<10x512x7x7xf32>, tensor<4096x25088xf32>)
      outs(%v295.buf : tensor<5x2x1024x4xf32>) {
        ^bb0(%in_296: f32, %in_297: f32, %acc_298: f32):
          %v299 = arith.mulf %in_296, %in_297 : f32
          %v300 = arith.addf %v299, %acc_298 : f32
          linalg.yield %v300 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v295.post = tensor.empty() : tensor<5x2x1024x4xf32>
    %v295.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v295.buf.out, %l_self_modules_classifier_modules_0_parameters_bias_ : tensor<5x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v295.post : tensor<5x2x1024x4xf32>) {
        ^bb0(%acc_302: f32, %in_301: f32, %post_303: f32):
          %v304 = arith.addf %acc_302, %in_301 : f32
          %v305 = arith.maxnumf %v0, %v304 : f32
          linalg.yield %v305 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v306.empty = tensor.empty() : tensor<5x2x1024x4xf32>
    %v306.buf = linalg.fill ins(%v0 : f32) outs(%v306.empty : tensor<5x2x1024x4xf32>) -> tensor<5x2x1024x4xf32>
    %v306.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v295.post.out, %l_self_modules_classifier_modules_3_parameters_weight_ : tensor<5x2x1024x4xf32>, tensor<4096x4096xf32>)
      outs(%v306.buf : tensor<5x2x1024x4xf32>) {
        ^bb0(%in_307: f32, %in_308: f32, %acc_309: f32):
          %v310 = arith.mulf %in_307, %in_308 : f32
          %v311 = arith.addf %v310, %acc_309 : f32
          linalg.yield %v311 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v306.post = tensor.empty() : tensor<5x2x1024x4xf32>
    %v306.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v306.buf.out, %l_self_modules_classifier_modules_3_parameters_bias_ : tensor<5x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v306.post : tensor<5x2x1024x4xf32>) {
        ^bb0(%acc_313: f32, %in_312: f32, %post_314: f32):
          %v315 = arith.addf %acc_313, %in_312 : f32
          %v316 = arith.maxnumf %v0, %v315 : f32
          linalg.yield %v316 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v317.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v317.buf = linalg.fill ins(%v0 : f32) outs(%v317.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v317.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v306.post.out, %l_self_modules_classifier_modules_6_parameters_weight_ : tensor<5x2x1024x4xf32>, tensor<1000x4096xf32>)
      outs(%v317.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_318: f32, %in_319: f32, %acc_320: f32):
          %v321 = arith.mulf %in_318, %in_319 : f32
          %v322 = arith.addf %v321, %acc_320 : f32
          linalg.yield %v322 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v317.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v317.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v317.buf.out, %l_self_modules_classifier_modules_6_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v317.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_324: f32, %in_323: f32, %post_325: f32):
          %v326 = arith.addf %acc_324, %in_323 : f32
          linalg.yield %v326 : f32
      }
    -> tensor<5x2x250x4xf32>
    %input_44.buf = tensor.empty() : tensor<10x1000xf32>
    %input_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 floordiv 2, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v317.post.out : tensor<5x2x250x4xf32>)
      outs(%input_44.buf : tensor<10x1000xf32>) {
        ^bb0(%in_327: f32, %acc_328: f32):
          linalg.yield %in_327 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_44.buf.out : tensor<10x1000xf32>
  }
}
