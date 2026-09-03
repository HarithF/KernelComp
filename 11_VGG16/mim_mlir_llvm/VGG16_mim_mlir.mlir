module {
  func.func public @VGG16(%l_self_modules_features_modules_0_parameters_weight_: tensor<64x3x3x3xf32>, %l_self_modules_features_modules_0_parameters_bias_: tensor<64xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_features_modules_2_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_5_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_features_modules_5_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_7_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_features_modules_7_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_10_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_features_modules_10_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_12_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_12_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_14_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_14_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_17_parameters_weight_: tensor<512x256x3x3xf32>, %l_self_modules_features_modules_17_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_19_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_19_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_21_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_21_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_24_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_24_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_26_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_26_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_28_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_28_parameters_bias_: tensor<512xf32>, %l_self_modules_classifier_modules_0_parameters_weight_: tensor<4096x25088xf32>, %l_self_modules_classifier_modules_0_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_3_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_classifier_modules_3_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_6_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_classifier_modules_6_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
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
    %v5.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 224 + d1 * 50176 + d0 * 3211264) floordiv 50176 mod 64)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %l_self_modules_features_modules_0_parameters_bias_ : tensor<10x64x224x1x224xf32>, tensor<64xf32>)
      outs(%v5.post : tensor<10x64x224x1x224xf32>) {
        ^bb0(%acc_13: f32, %in_12: f32, %post_14: f32):
          %v15 = arith.addf %acc_13, %in_12 : f32
          %v16 = arith.maxnumf %v0, %v15 : f32
          linalg.yield %v16 : f32
      }
    -> tensor<10x64x224x1x224xf32>
    %input_2.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 224 + d1 * 50176 + d0 * 3211264) floordiv 50176 mod 64, (d3 + d2 * 224 + d1 * 50176 + d0 * 3211264) floordiv 224 mod 224, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
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
    %v23.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 224 + d1 * 50176 + d0 * 3211264) floordiv 50176 mod 64)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
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
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, (d3 * 2 + d5 + (d2 * 2 + d4) * 224 + d1 * 50176 + d0 * 3211264) floordiv 50176 mod 64, (d3 * 2 + d5 + (d2 * 2 + d4) * 224 + d1 * 50176 + d0 * 3211264) floordiv 224 mod 224, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
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
    %v43.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 112 + d1 * 12544 + d0 * 1605632) floordiv 12544 mod 128)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v43.buf.out, %l_self_modules_features_modules_5_parameters_bias_ : tensor<10x128x112x1x112xf32>, tensor<128xf32>)
      outs(%v43.post : tensor<10x128x112x1x112xf32>) {
        ^bb0(%acc_51: f32, %in_50: f32, %post_52: f32):
          %v53 = arith.addf %acc_51, %in_50 : f32
          %v54 = arith.maxnumf %v0, %v53 : f32
          linalg.yield %v54 : f32
      }
    -> tensor<10x128x112x1x112xf32>
    %input_7.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 112 + d1 * 12544 + d0 * 1605632) floordiv 12544 mod 128, (d3 + d2 * 112 + d1 * 12544 + d0 * 1605632) floordiv 112 mod 112, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
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
    %v61.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 112 + d1 * 12544 + d0 * 1605632) floordiv 12544 mod 128)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
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
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, (d3 * 2 + d5 + (d2 * 2 + d4) * 112 + d1 * 12544 + d0 * 1605632) floordiv 12544 mod 128, (d3 * 2 + d5 + (d2 * 2 + d4) * 112 + d1 * 12544 + d0 * 1605632) floordiv 112 mod 112, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
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
    %v81.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v81.buf.out, %l_self_modules_features_modules_10_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v81.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_89: f32, %in_88: f32, %post_90: f32):
          %v91 = arith.addf %acc_89, %in_88 : f32
          %v92 = arith.maxnumf %v0, %v91 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_12.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256, (d3 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 56 mod 56, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
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
    %v99.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v99.buf.out, %l_self_modules_features_modules_12_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v99.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_107: f32, %in_106: f32, %post_108: f32):
          %v109 = arith.addf %acc_107, %in_106 : f32
          %v110 = arith.maxnumf %v0, %v109 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_14.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256, (d3 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 56 mod 56, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
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
    %v117.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v117.buf.out, %l_self_modules_features_modules_14_parameters_bias_ : tensor<10x256x56x1x56xf32>, tensor<256xf32>)
      outs(%v117.post : tensor<10x256x56x1x56xf32>) {
        ^bb0(%acc_125: f32, %in_124: f32, %post_126: f32):
          %v127 = arith.addf %acc_125, %in_124 : f32
          %v128 = arith.maxnumf %v0, %v127 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<10x256x56x1x56xf32>
    %input_17.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_17.buf = linalg.fill ins(%init : f32) outs(%input_17.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_17.shape = tensor.empty() : tensor<2x2xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, (d3 * 2 + d5 + (d2 * 2 + d4) * 56 + d1 * 3136 + d0 * 802816) floordiv 3136 mod 256, (d3 * 2 + d5 + (d2 * 2 + d4) * 56 + d1 * 3136 + d0 * 802816) floordiv 56 mod 56, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v117.post.out, %input_17.shape : tensor<10x256x56x1x56xf32>, tensor<2x2xf32>)
      outs(%input_17.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_130: f32, %shape_129: f32, %acc_131: f32):
          %v132 = arith.maxnumf %acc_131, %in_130 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_7 = tensor.pad %input_17.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i133: index, %pad_i134: index, %pad_i135: index, %pad_i136: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v137.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v137.buf = linalg.fill ins(%v0 : f32) outs(%v137.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v137.shape = tensor.empty() : tensor<28x1xf32>
    %v137.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_features_modules_17_parameters_weight_, %v137.shape : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>, tensor<28x1xf32>)
      outs(%v137.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_139: f32, %in_140: f32, %shape_138: f32, %acc_141: f32):
          %v142 = arith.mulf %in_139, %in_140 : f32
          %v143 = arith.addf %v142, %acc_141 : f32
          linalg.yield %v143 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v137.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v137.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v137.buf.out, %l_self_modules_features_modules_17_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v137.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_145: f32, %in_144: f32, %post_146: f32):
          %v147 = arith.addf %acc_145, %in_144 : f32
          %v148 = arith.maxnumf %v0, %v147 : f32
          linalg.yield %v148 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_19.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512, (d3 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 28 mod 28, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v137.post.out : tensor<10x512x28x1x28xf32>)
      outs(%input_19.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_149: f32, %acc_150: f32):
          linalg.yield %in_149 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_8 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i151: index, %pad_i152: index, %pad_i153: index, %pad_i154: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v155.empty = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v155.buf = linalg.fill ins(%v0 : f32) outs(%v155.empty : tensor<10x512x28x1x28xf32>) -> tensor<10x512x28x1x28xf32>
    %v155.shape = tensor.empty() : tensor<28x1xf32>
    %v155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d2, d3)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2 + d3, 0, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_features_modules_19_parameters_weight_, %v155.shape : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>, tensor<28x1xf32>)
      outs(%v155.buf : tensor<10x512x28x1x28xf32>) {
        ^bb0(%in_157: f32, %in_158: f32, %shape_156: f32, %acc_159: f32):
          %v160 = arith.mulf %in_157, %in_158 : f32
          %v161 = arith.addf %v160, %acc_159 : f32
          linalg.yield %v161 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %v155.post = tensor.empty() : tensor<10x512x28x1x28xf32>
    %v155.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v155.buf.out, %l_self_modules_features_modules_19_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v155.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_163: f32, %in_162: f32, %post_164: f32):
          %v165 = arith.addf %acc_163, %in_162 : f32
          %v166 = arith.maxnumf %v0, %v165 : f32
          linalg.yield %v166 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_21.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512, (d3 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 28 mod 28, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
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
    %v173.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d2 * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v173.buf.out, %l_self_modules_features_modules_21_parameters_bias_ : tensor<10x512x28x1x28xf32>, tensor<512xf32>)
      outs(%v173.post : tensor<10x512x28x1x28xf32>) {
        ^bb0(%acc_181: f32, %in_180: f32, %post_182: f32):
          %v183 = arith.addf %acc_181, %in_180 : f32
          %v184 = arith.maxnumf %v0, %v183 : f32
          linalg.yield %v184 : f32
      }
    -> tensor<10x512x28x1x28xf32>
    %input_24.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_24.buf = linalg.fill ins(%init : f32) outs(%input_24.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_24.shape = tensor.empty() : tensor<2x2xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, (d3 * 2 + d5 + (d2 * 2 + d4) * 28 + d1 * 784 + d0 * 401408) floordiv 784 mod 512, (d3 * 2 + d5 + (d2 * 2 + d4) * 28 + d1 * 784 + d0 * 401408) floordiv 28 mod 28, 0, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v173.post.out, %input_24.shape : tensor<10x512x28x1x28xf32>, tensor<2x2xf32>)
      outs(%input_24.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_186: f32, %shape_185: f32, %acc_187: f32):
          %v188 = arith.maxnumf %acc_187, %in_186 : f32
          linalg.yield %v188 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_10 = tensor.pad %input_24.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i189: index, %pad_i190: index, %pad_i191: index, %pad_i192: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v193.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v193.buf = linalg.fill ins(%v0 : f32) outs(%v193.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v193.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_features_modules_24_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v193.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_194: f32, %in_195: f32, %acc_196: f32):
          %v197 = arith.mulf %in_194, %in_195 : f32
          %v198 = arith.addf %v197, %acc_196 : f32
          linalg.yield %v198 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v193.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v193.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d3 * 14 + d2 * 28 + d1 * 196 + d0 * 100352) floordiv 196 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v193.buf.out, %l_self_modules_features_modules_24_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v193.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_200: f32, %in_199: f32, %post_201: f32):
          %v202 = arith.addf %acc_200, %in_199 : f32
          %v203 = arith.maxnumf %v0, %v202 : f32
          linalg.yield %v203 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_26.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 196 mod 512, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 28 mod 7, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 14 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v193.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_26.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_204: f32, %acc_205: f32):
          linalg.yield %in_204 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_11 = tensor.pad %input_26.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i206: index, %pad_i207: index, %pad_i208: index, %pad_i209: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v210.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v210.buf = linalg.fill ins(%v0 : f32) outs(%v210.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v210.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_features_modules_26_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v210.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.mulf %in_211, %in_212 : f32
          %v215 = arith.addf %v214, %acc_213 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v210.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v210.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d3 * 14 + d2 * 28 + d1 * 196 + d0 * 100352) floordiv 196 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v210.buf.out, %l_self_modules_features_modules_26_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v210.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_217: f32, %in_216: f32, %post_218: f32):
          %v219 = arith.addf %acc_217, %in_216 : f32
          %v220 = arith.maxnumf %v0, %v219 : f32
          linalg.yield %v220 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_28.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 196 mod 512, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 28 mod 7, (d3 + d2 * 14 + d1 * 196 + d0 * 100352) floordiv 14 mod 2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v210.post.out : tensor<10x512x7x2x14xf32>)
      outs(%input_28.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_221: f32, %acc_222: f32):
          linalg.yield %in_221 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_12 = tensor.pad %input_28.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i223: index, %pad_i224: index, %pad_i225: index, %pad_i226: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v227.empty = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v227.buf = linalg.fill ins(%v0 : f32) outs(%v227.empty : tensor<10x512x7x2x14xf32>) -> tensor<10x512x7x2x14xf32>
    %v227.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d5, d2 * 2 + d3 + d6, d4 + d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d5, d6, d7)>, affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_features_modules_28_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v227.buf : tensor<10x512x7x2x14xf32>) {
        ^bb0(%in_228: f32, %in_229: f32, %acc_230: f32):
          %v231 = arith.mulf %in_228, %in_229 : f32
          %v232 = arith.addf %v231, %acc_230 : f32
          linalg.yield %v232 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %v227.post = tensor.empty() : tensor<10x512x7x2x14xf32>
    %v227.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> ((d4 + d3 * 14 + d2 * 28 + d1 * 196 + d0 * 100352) floordiv 196 mod 512)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "parallel"]}
      ins(%v227.buf.out, %l_self_modules_features_modules_28_parameters_bias_ : tensor<10x512x7x2x14xf32>, tensor<512xf32>)
      outs(%v227.post : tensor<10x512x7x2x14xf32>) {
        ^bb0(%acc_234: f32, %in_233: f32, %post_235: f32):
          %v236 = arith.addf %acc_234, %in_233 : f32
          %v237 = arith.maxnumf %v0, %v236 : f32
          linalg.yield %v237 : f32
      }
    -> tensor<10x512x7x2x14xf32>
    %input_31.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_31.buf = linalg.fill ins(%init : f32) outs(%input_31.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_31.shape = tensor.empty() : tensor<2x2xf32>
    %input_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, (d3 * 2 + d5 + (d2 * 2 + d4) * 14 + d1 * 196 + d0 * 100352) floordiv 196 mod 512, (d3 * 2 + d5 + (d2 * 2 + d4) * 14 + d1 * 196 + d0 * 100352) floordiv 28 mod 7, (d3 * 2 + d5 + (d2 * 2 + d4) * 14 + d1 * 196 + d0 * 100352) floordiv 14 mod 2, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v227.post.out, %input_31.shape : tensor<10x512x7x2x14xf32>, tensor<2x2xf32>)
      outs(%input_31.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_239: f32, %shape_238: f32, %acc_240: f32):
          %v241 = arith.maxnumf %acc_240, %in_239 : f32
          linalg.yield %v241 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v242.empty = tensor.empty() : tensor<5x2x1024x4xf32>
    %v242.buf = linalg.fill ins(%v0 : f32) outs(%v242.empty : tensor<5x2x1024x4xf32>) -> tensor<5x2x1024x4xf32>
    %v242.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d2, (d4 + (d0 * 2 + d2) * 25088) floordiv 49 mod 512, (d4 + (d0 * 2 + d2) * 25088) floordiv 7 mod 7, d4 mod 7)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%input_31.buf.out, %l_self_modules_classifier_modules_0_parameters_weight_ : tensor<10x512x7x7xf32>, tensor<4096x25088xf32>)
      outs(%v242.buf : tensor<5x2x1024x4xf32>) {
        ^bb0(%in_243: f32, %in_244: f32, %acc_245: f32):
          %v246 = arith.mulf %in_243, %in_244 : f32
          %v247 = arith.addf %v246, %acc_245 : f32
          linalg.yield %v247 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v242.post = tensor.empty() : tensor<5x2x1024x4xf32>
    %v242.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v242.buf.out, %l_self_modules_classifier_modules_0_parameters_bias_ : tensor<5x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v242.post : tensor<5x2x1024x4xf32>) {
        ^bb0(%acc_249: f32, %in_248: f32, %post_250: f32):
          %v251 = arith.addf %acc_249, %in_248 : f32
          %v252 = arith.maxnumf %v0, %v251 : f32
          linalg.yield %v252 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v253.empty = tensor.empty() : tensor<5x2x1024x4xf32>
    %v253.buf = linalg.fill ins(%v0 : f32) outs(%v253.empty : tensor<5x2x1024x4xf32>) -> tensor<5x2x1024x4xf32>
    %v253.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 4096) floordiv 8192, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v242.post.out, %l_self_modules_classifier_modules_3_parameters_weight_ : tensor<5x2x1024x4xf32>, tensor<4096x4096xf32>)
      outs(%v253.buf : tensor<5x2x1024x4xf32>) {
        ^bb0(%in_254: f32, %in_255: f32, %acc_256: f32):
          %v257 = arith.mulf %in_254, %in_255 : f32
          %v258 = arith.addf %v257, %acc_256 : f32
          linalg.yield %v258 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v253.post = tensor.empty() : tensor<5x2x1024x4xf32>
    %v253.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v253.buf.out, %l_self_modules_classifier_modules_3_parameters_bias_ : tensor<5x2x1024x4xf32>, tensor<4096xf32>)
      outs(%v253.post : tensor<5x2x1024x4xf32>) {
        ^bb0(%acc_260: f32, %in_259: f32, %post_261: f32):
          %v262 = arith.addf %acc_260, %in_259 : f32
          %v263 = arith.maxnumf %v0, %v262 : f32
          linalg.yield %v263 : f32
      }
    -> tensor<5x2x1024x4xf32>
    %v264.empty = tensor.empty() : tensor<5x2x250x4xf32>
    %v264.buf = linalg.fill ins(%v0 : f32) outs(%v264.empty : tensor<5x2x250x4xf32>) -> tensor<5x2x250x4xf32>
    %v264.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> ((d4 + (d0 * 2 + d2) * 4096) floordiv 8192, d2, (d4 + (d0 * 2 + d2) * 4096) floordiv 4 mod 1024, d4 mod 4)>, affine_map<(d0, d1, d2, d3, d4) -> (d1 * 4 + d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d1, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"]}
      ins(%v253.post.out, %l_self_modules_classifier_modules_6_parameters_weight_ : tensor<5x2x1024x4xf32>, tensor<1000x4096xf32>)
      outs(%v264.buf : tensor<5x2x250x4xf32>) {
        ^bb0(%in_265: f32, %in_266: f32, %acc_267: f32):
          %v268 = arith.mulf %in_265, %in_266 : f32
          %v269 = arith.addf %v268, %acc_267 : f32
          linalg.yield %v269 : f32
      }
    -> tensor<5x2x250x4xf32>
    %v264.post = tensor.empty() : tensor<5x2x250x4xf32>
    %v264.post.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d3 + d2 * 4)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v264.buf.out, %l_self_modules_classifier_modules_6_parameters_bias_ : tensor<5x2x250x4xf32>, tensor<1000xf32>)
      outs(%v264.post : tensor<5x2x250x4xf32>) {
        ^bb0(%acc_271: f32, %in_270: f32, %post_272: f32):
          %v273 = arith.addf %acc_271, %in_270 : f32
          linalg.yield %v273 : f32
      }
    -> tensor<5x2x250x4xf32>
    %input_38.buf = tensor.empty() : tensor<10x1000xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ((d1 + d0 * 1000) floordiv 2000, d0 mod 2, (d1 + d0 * 1000) floordiv 4 mod 250, d1 mod 4)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v264.post.out : tensor<5x2x250x4xf32>)
      outs(%input_38.buf : tensor<10x1000xf32>) {
        ^bb0(%in_274: f32, %acc_275: f32):
          linalg.yield %in_274 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_38.buf.out : tensor<10x1000xf32>
  }
}
