module {
  func.func public @VGG19(%l_self_modules_features_modules_0_parameters_weight_: tensor<64x3x3x3xf32>, %l_self_modules_features_modules_0_parameters_bias_: tensor<64xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_features_modules_2_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_5_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_features_modules_5_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_7_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_features_modules_7_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_10_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_features_modules_10_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_12_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_12_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_14_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_14_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_16_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_16_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_19_parameters_weight_: tensor<512x256x3x3xf32>, %l_self_modules_features_modules_19_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_21_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_21_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_23_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_23_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_25_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_25_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_28_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_28_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_30_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_30_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_32_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_32_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_34_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_34_parameters_bias_: tensor<512xf32>, %l_self_modules_classifier_modules_0_parameters_weight_: tensor<4096x25088xf32>, %l_self_modules_classifier_modules_0_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_3_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_classifier_modules_3_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_6_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_classifier_modules_6_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
    %v0 = arith.constant 0.0 : f32
    %padded = tensor.pad %l_x_ low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i1: index, %pad_i2: index, %pad_i3: index, %pad_i4: index):
        tensor.yield %v0 : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x226x226xf32>
    %v5.empty = tensor.empty() : tensor<10x64x224x224xf32>
    %v5.buf = linalg.fill ins(%v0 : f32) outs(%v5.empty : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %v5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded, %l_self_modules_features_modules_0_parameters_weight_ : tensor<10x3x226x226xf32>, tensor<64x3x3x3xf32>)
      outs(%v5.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_6: f32, %in_7: f32, %acc_8: f32):
          %v9 = arith.mulf %in_6, %in_7 : f32
          %v10 = arith.addf %v9, %acc_8 : f32
          linalg.yield %v10 : f32
      }
    -> tensor<10x64x224x224xf32>
    %v11.buf = tensor.empty() : tensor<1x64x1x1xf32>
    %v11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_0_parameters_bias_ : tensor<64xf32>)
      outs(%v11.buf : tensor<1x64x1x1xf32>) {
        ^bb0(%in_12: f32, %acc_13: f32):
          linalg.yield %in_12 : f32
      }
    -> tensor<1x64x1x1xf32>
    %v14.collapsed = tensor.collapse_shape %v11.buf.out [[0, 1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<64xf32>
    %v14.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %v14 = linalg.broadcast ins(%v14.collapsed : tensor<64xf32>)
      outs(%v14.buf : tensor<10x64x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_1.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %v14 : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>)
      outs(%input_1.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_15: f32, %in_16: f32, %acc_17: f32):
          %v18 = arith.addf %in_15, %in_16 : f32
          linalg.yield %v18 : f32
      }
    -> tensor<10x64x224x224xf32>
    %input_2.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_1.buf.out : tensor<10x64x224x224xf32>)
      outs(%input_2.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_19: f32, %acc_20: f32):
          %v21 = arith.maxnumf %v0, %in_19 : f32
          linalg.yield %v21 : f32
      }
    -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %input_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i22: index, %pad_i23: index, %pad_i24: index, %pad_i25: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %v26.empty = tensor.empty() : tensor<10x64x224x224xf32>
    %v26.buf = linalg.fill ins(%v0 : f32) outs(%v26.empty : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %v26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_features_modules_2_parameters_weight_ : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>)
      outs(%v26.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_27: f32, %in_28: f32, %acc_29: f32):
          %v30 = arith.mulf %in_27, %in_28 : f32
          %v31 = arith.addf %v30, %acc_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<10x64x224x224xf32>
    %v32.buf = tensor.empty() : tensor<1x64x1x1xf32>
    %v32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_2_parameters_bias_ : tensor<64xf32>)
      outs(%v32.buf : tensor<1x64x1x1xf32>) {
        ^bb0(%in_33: f32, %acc_34: f32):
          linalg.yield %in_33 : f32
      }
    -> tensor<1x64x1x1xf32>
    %v35.collapsed = tensor.collapse_shape %v32.buf.out [[0, 1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<64xf32>
    %v35.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %v35 = linalg.broadcast ins(%v35.collapsed : tensor<64xf32>)
      outs(%v35.buf : tensor<10x64x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_3.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v26.buf.out, %v35 : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>)
      outs(%input_3.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_36: f32, %in_37: f32, %acc_38: f32):
          %v39 = arith.addf %in_36, %in_37 : f32
          linalg.yield %v39 : f32
      }
    -> tensor<10x64x224x224xf32>
    %input_4.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_3.buf.out : tensor<10x64x224x224xf32>)
      outs(%input_4.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_40: f32, %acc_41: f32):
          %v42 = arith.maxnumf %v0, %in_40 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<10x64x224x224xf32>
    %input_5.empty = tensor.empty() : tensor<10x64x112x112xf32>
    %init = arith.constant 0xFF800000 : f32
    %input_5.buf = linalg.fill ins(%init : f32) outs(%input_5.empty : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %input_5.shape = tensor.empty() : tensor<2x2xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%input_4.buf.out, %input_5.shape : tensor<10x64x224x224xf32>, tensor<2x2xf32>)
      outs(%input_5.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_44: f32, %shape_43: f32, %acc_45: f32):
          %v46 = arith.maxnumf %acc_45, %in_44 : f32
          linalg.yield %v46 : f32
      }
    -> tensor<10x64x112x112xf32>
    %padded_2 = tensor.pad %input_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i47: index, %pad_i48: index, %pad_i49: index, %pad_i50: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %v51.empty = tensor.empty() : tensor<10x128x112x112xf32>
    %v51.buf = linalg.fill ins(%v0 : f32) outs(%v51.empty : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %v51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_features_modules_5_parameters_weight_ : tensor<10x64x114x114xf32>, tensor<128x64x3x3xf32>)
      outs(%v51.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_52: f32, %in_53: f32, %acc_54: f32):
          %v55 = arith.mulf %in_52, %in_53 : f32
          %v56 = arith.addf %v55, %acc_54 : f32
          linalg.yield %v56 : f32
      }
    -> tensor<10x128x112x112xf32>
    %v57.buf = tensor.empty() : tensor<1x128x1x1xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_5_parameters_bias_ : tensor<128xf32>)
      outs(%v57.buf : tensor<1x128x1x1xf32>) {
        ^bb0(%in_58: f32, %acc_59: f32):
          linalg.yield %in_58 : f32
      }
    -> tensor<1x128x1x1xf32>
    %v60.collapsed = tensor.collapse_shape %v57.buf.out [[0, 1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<128xf32>
    %v60.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %v60 = linalg.broadcast ins(%v60.collapsed : tensor<128xf32>)
      outs(%v60.buf : tensor<10x128x112x112xf32>)
      dimensions = [0, 2, 3]
    %input_6.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v51.buf.out, %v60 : tensor<10x128x112x112xf32>, tensor<10x128x112x112xf32>)
      outs(%input_6.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_61: f32, %in_62: f32, %acc_63: f32):
          %v64 = arith.addf %in_61, %in_62 : f32
          linalg.yield %v64 : f32
      }
    -> tensor<10x128x112x112xf32>
    %input_7.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_6.buf.out : tensor<10x128x112x112xf32>)
      outs(%input_7.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_65: f32, %acc_66: f32):
          %v67 = arith.maxnumf %v0, %in_65 : f32
          linalg.yield %v67 : f32
      }
    -> tensor<10x128x112x112xf32>
    %padded_3 = tensor.pad %input_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i68: index, %pad_i69: index, %pad_i70: index, %pad_i71: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x112x112xf32> to tensor<10x128x114x114xf32>
    %v72.empty = tensor.empty() : tensor<10x128x112x112xf32>
    %v72.buf = linalg.fill ins(%v0 : f32) outs(%v72.empty : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %v72.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_features_modules_7_parameters_weight_ : tensor<10x128x114x114xf32>, tensor<128x128x3x3xf32>)
      outs(%v72.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_73: f32, %in_74: f32, %acc_75: f32):
          %v76 = arith.mulf %in_73, %in_74 : f32
          %v77 = arith.addf %v76, %acc_75 : f32
          linalg.yield %v77 : f32
      }
    -> tensor<10x128x112x112xf32>
    %v78.buf = tensor.empty() : tensor<1x128x1x1xf32>
    %v78.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_7_parameters_bias_ : tensor<128xf32>)
      outs(%v78.buf : tensor<1x128x1x1xf32>) {
        ^bb0(%in_79: f32, %acc_80: f32):
          linalg.yield %in_79 : f32
      }
    -> tensor<1x128x1x1xf32>
    %v81.collapsed = tensor.collapse_shape %v78.buf.out [[0, 1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<128xf32>
    %v81.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %v81 = linalg.broadcast ins(%v81.collapsed : tensor<128xf32>)
      outs(%v81.buf : tensor<10x128x112x112xf32>)
      dimensions = [0, 2, 3]
    %input_8.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v72.buf.out, %v81 : tensor<10x128x112x112xf32>, tensor<10x128x112x112xf32>)
      outs(%input_8.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_82: f32, %in_83: f32, %acc_84: f32):
          %v85 = arith.addf %in_82, %in_83 : f32
          linalg.yield %v85 : f32
      }
    -> tensor<10x128x112x112xf32>
    %input_9.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_8.buf.out : tensor<10x128x112x112xf32>)
      outs(%input_9.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_86: f32, %acc_87: f32):
          %v88 = arith.maxnumf %v0, %in_86 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<10x128x112x112xf32>
    %input_10.empty = tensor.empty() : tensor<10x128x56x56xf32>
    %input_10.buf = linalg.fill ins(%init : f32) outs(%input_10.empty : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %input_10.shape = tensor.empty() : tensor<2x2xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%input_9.buf.out, %input_10.shape : tensor<10x128x112x112xf32>, tensor<2x2xf32>)
      outs(%input_10.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_90: f32, %shape_89: f32, %acc_91: f32):
          %v92 = arith.maxnumf %acc_91, %in_90 : f32
          linalg.yield %v92 : f32
      }
    -> tensor<10x128x56x56xf32>
    %padded_4 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i93: index, %pad_i94: index, %pad_i95: index, %pad_i96: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %v97.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v97.buf = linalg.fill ins(%v0 : f32) outs(%v97.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v97.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_features_modules_10_parameters_weight_ : tensor<10x128x58x58xf32>, tensor<256x128x3x3xf32>)
      outs(%v97.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_98: f32, %in_99: f32, %acc_100: f32):
          %v101 = arith.mulf %in_98, %in_99 : f32
          %v102 = arith.addf %v101, %acc_100 : f32
          linalg.yield %v102 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v103.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v103.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_10_parameters_bias_ : tensor<256xf32>)
      outs(%v103.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_104: f32, %acc_105: f32):
          linalg.yield %in_104 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v106.collapsed = tensor.collapse_shape %v103.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v106.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v106 = linalg.broadcast ins(%v106.collapsed : tensor<256xf32>)
      outs(%v106.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_11.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v97.buf.out, %v106 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_11.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_107: f32, %in_108: f32, %acc_109: f32):
          %v110 = arith.addf %in_107, %in_108 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<10x256x56x56xf32>
    %input_12.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_11.buf.out : tensor<10x256x56x56xf32>)
      outs(%input_12.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_111: f32, %acc_112: f32):
          %v113 = arith.maxnumf %v0, %in_111 : f32
          linalg.yield %v113 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_5 = tensor.pad %input_12.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i114: index, %pad_i115: index, %pad_i116: index, %pad_i117: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v118.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v118.buf = linalg.fill ins(%v0 : f32) outs(%v118.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v118.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_features_modules_12_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v118.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_119: f32, %in_120: f32, %acc_121: f32):
          %v122 = arith.mulf %in_119, %in_120 : f32
          %v123 = arith.addf %v122, %acc_121 : f32
          linalg.yield %v123 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v124.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v124.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_12_parameters_bias_ : tensor<256xf32>)
      outs(%v124.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_125: f32, %acc_126: f32):
          linalg.yield %in_125 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v127.collapsed = tensor.collapse_shape %v124.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v127.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v127 = linalg.broadcast ins(%v127.collapsed : tensor<256xf32>)
      outs(%v127.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_13.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v118.buf.out, %v127 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_13.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_128: f32, %in_129: f32, %acc_130: f32):
          %v131 = arith.addf %in_128, %in_129 : f32
          linalg.yield %v131 : f32
      }
    -> tensor<10x256x56x56xf32>
    %input_14.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_13.buf.out : tensor<10x256x56x56xf32>)
      outs(%input_14.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_132: f32, %acc_133: f32):
          %v134 = arith.maxnumf %v0, %in_132 : f32
          linalg.yield %v134 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_6 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i135: index, %pad_i136: index, %pad_i137: index, %pad_i138: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v139.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v139.buf = linalg.fill ins(%v0 : f32) outs(%v139.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v139.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_6, %l_self_modules_features_modules_14_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v139.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_140: f32, %in_141: f32, %acc_142: f32):
          %v143 = arith.mulf %in_140, %in_141 : f32
          %v144 = arith.addf %v143, %acc_142 : f32
          linalg.yield %v144 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v145.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_14_parameters_bias_ : tensor<256xf32>)
      outs(%v145.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_146: f32, %acc_147: f32):
          linalg.yield %in_146 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v148.collapsed = tensor.collapse_shape %v145.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v148.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v148 = linalg.broadcast ins(%v148.collapsed : tensor<256xf32>)
      outs(%v148.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_15.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v139.buf.out, %v148 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_15.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_149: f32, %in_150: f32, %acc_151: f32):
          %v152 = arith.addf %in_149, %in_150 : f32
          linalg.yield %v152 : f32
      }
    -> tensor<10x256x56x56xf32>
    %input_16.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_15.buf.out : tensor<10x256x56x56xf32>)
      outs(%input_16.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_153: f32, %acc_154: f32):
          %v155 = arith.maxnumf %v0, %in_153 : f32
          linalg.yield %v155 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_7 = tensor.pad %input_16.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i156: index, %pad_i157: index, %pad_i158: index, %pad_i159: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v160.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v160.buf = linalg.fill ins(%v0 : f32) outs(%v160.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v160.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_features_modules_16_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v160.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_161: f32, %in_162: f32, %acc_163: f32):
          %v164 = arith.mulf %in_161, %in_162 : f32
          %v165 = arith.addf %v164, %acc_163 : f32
          linalg.yield %v165 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v166.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v166.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_16_parameters_bias_ : tensor<256xf32>)
      outs(%v166.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_167: f32, %acc_168: f32):
          linalg.yield %in_167 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v169.collapsed = tensor.collapse_shape %v166.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v169.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v169 = linalg.broadcast ins(%v169.collapsed : tensor<256xf32>)
      outs(%v169.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_17.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v160.buf.out, %v169 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_17.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_170: f32, %in_171: f32, %acc_172: f32):
          %v173 = arith.addf %in_170, %in_171 : f32
          linalg.yield %v173 : f32
      }
    -> tensor<10x256x56x56xf32>
    %input_18.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_17.buf.out : tensor<10x256x56x56xf32>)
      outs(%input_18.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_174: f32, %acc_175: f32):
          %v176 = arith.maxnumf %v0, %in_174 : f32
          linalg.yield %v176 : f32
      }
    -> tensor<10x256x56x56xf32>
    %input_19.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_19.buf = linalg.fill ins(%init : f32) outs(%input_19.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_19.shape = tensor.empty() : tensor<2x2xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%input_18.buf.out, %input_19.shape : tensor<10x256x56x56xf32>, tensor<2x2xf32>)
      outs(%input_19.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_178: f32, %shape_177: f32, %acc_179: f32):
          %v180 = arith.maxnumf %acc_179, %in_178 : f32
          linalg.yield %v180 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_8 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i181: index, %pad_i182: index, %pad_i183: index, %pad_i184: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v185.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v185.buf = linalg.fill ins(%v0 : f32) outs(%v185.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v185.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_features_modules_19_parameters_weight_ : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>)
      outs(%v185.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_186: f32, %in_187: f32, %acc_188: f32):
          %v189 = arith.mulf %in_186, %in_187 : f32
          %v190 = arith.addf %v189, %acc_188 : f32
          linalg.yield %v190 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v191.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v191.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_19_parameters_bias_ : tensor<512xf32>)
      outs(%v191.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_192: f32, %acc_193: f32):
          linalg.yield %in_192 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v194.collapsed = tensor.collapse_shape %v191.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v194.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v194 = linalg.broadcast ins(%v194.collapsed : tensor<512xf32>)
      outs(%v194.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_20.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v185.buf.out, %v194 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_20.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_195: f32, %in_196: f32, %acc_197: f32):
          %v198 = arith.addf %in_195, %in_196 : f32
          linalg.yield %v198 : f32
      }
    -> tensor<10x512x28x28xf32>
    %input_21.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_20.buf.out : tensor<10x512x28x28xf32>)
      outs(%input_21.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_199: f32, %acc_200: f32):
          %v201 = arith.maxnumf %v0, %in_199 : f32
          linalg.yield %v201 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_9 = tensor.pad %input_21.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i202: index, %pad_i203: index, %pad_i204: index, %pad_i205: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v206.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v206.buf = linalg.fill ins(%v0 : f32) outs(%v206.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v206.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_9, %l_self_modules_features_modules_21_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v206.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_207: f32, %in_208: f32, %acc_209: f32):
          %v210 = arith.mulf %in_207, %in_208 : f32
          %v211 = arith.addf %v210, %acc_209 : f32
          linalg.yield %v211 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v212.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v212.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_21_parameters_bias_ : tensor<512xf32>)
      outs(%v212.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_213: f32, %acc_214: f32):
          linalg.yield %in_213 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v215.collapsed = tensor.collapse_shape %v212.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v215.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v215 = linalg.broadcast ins(%v215.collapsed : tensor<512xf32>)
      outs(%v215.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_22.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v206.buf.out, %v215 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_22.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_216: f32, %in_217: f32, %acc_218: f32):
          %v219 = arith.addf %in_216, %in_217 : f32
          linalg.yield %v219 : f32
      }
    -> tensor<10x512x28x28xf32>
    %input_23.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_22.buf.out : tensor<10x512x28x28xf32>)
      outs(%input_23.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_220: f32, %acc_221: f32):
          %v222 = arith.maxnumf %v0, %in_220 : f32
          linalg.yield %v222 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_10 = tensor.pad %input_23.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i223: index, %pad_i224: index, %pad_i225: index, %pad_i226: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v227.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v227.buf = linalg.fill ins(%v0 : f32) outs(%v227.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v227.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_features_modules_23_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v227.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_228: f32, %in_229: f32, %acc_230: f32):
          %v231 = arith.mulf %in_228, %in_229 : f32
          %v232 = arith.addf %v231, %acc_230 : f32
          linalg.yield %v232 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v233.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v233.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_23_parameters_bias_ : tensor<512xf32>)
      outs(%v233.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_234: f32, %acc_235: f32):
          linalg.yield %in_234 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v236.collapsed = tensor.collapse_shape %v233.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v236.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v236 = linalg.broadcast ins(%v236.collapsed : tensor<512xf32>)
      outs(%v236.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_24.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v227.buf.out, %v236 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_24.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_237: f32, %in_238: f32, %acc_239: f32):
          %v240 = arith.addf %in_237, %in_238 : f32
          linalg.yield %v240 : f32
      }
    -> tensor<10x512x28x28xf32>
    %input_25.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_24.buf.out : tensor<10x512x28x28xf32>)
      outs(%input_25.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_241: f32, %acc_242: f32):
          %v243 = arith.maxnumf %v0, %in_241 : f32
          linalg.yield %v243 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_11 = tensor.pad %input_25.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i244: index, %pad_i245: index, %pad_i246: index, %pad_i247: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v248.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v248.buf = linalg.fill ins(%v0 : f32) outs(%v248.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v248.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_features_modules_25_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v248.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_249: f32, %in_250: f32, %acc_251: f32):
          %v252 = arith.mulf %in_249, %in_250 : f32
          %v253 = arith.addf %v252, %acc_251 : f32
          linalg.yield %v253 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v254.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v254.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_25_parameters_bias_ : tensor<512xf32>)
      outs(%v254.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_255: f32, %acc_256: f32):
          linalg.yield %in_255 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v257.collapsed = tensor.collapse_shape %v254.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v257.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v257 = linalg.broadcast ins(%v257.collapsed : tensor<512xf32>)
      outs(%v257.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_26.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v248.buf.out, %v257 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_26.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_258: f32, %in_259: f32, %acc_260: f32):
          %v261 = arith.addf %in_258, %in_259 : f32
          linalg.yield %v261 : f32
      }
    -> tensor<10x512x28x28xf32>
    %input_27.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_26.buf.out : tensor<10x512x28x28xf32>)
      outs(%input_27.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_262: f32, %acc_263: f32):
          %v264 = arith.maxnumf %v0, %in_262 : f32
          linalg.yield %v264 : f32
      }
    -> tensor<10x512x28x28xf32>
    %input_28.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_28.buf = linalg.fill ins(%init : f32) outs(%input_28.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_28.shape = tensor.empty() : tensor<2x2xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%input_27.buf.out, %input_28.shape : tensor<10x512x28x28xf32>, tensor<2x2xf32>)
      outs(%input_28.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_266: f32, %shape_265: f32, %acc_267: f32):
          %v268 = arith.maxnumf %acc_267, %in_266 : f32
          linalg.yield %v268 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_12 = tensor.pad %input_28.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i269: index, %pad_i270: index, %pad_i271: index, %pad_i272: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v273.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v273.buf = linalg.fill ins(%v0 : f32) outs(%v273.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v273.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_features_modules_28_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v273.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_274: f32, %in_275: f32, %acc_276: f32):
          %v277 = arith.mulf %in_274, %in_275 : f32
          %v278 = arith.addf %v277, %acc_276 : f32
          linalg.yield %v278 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v279.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v279.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_28_parameters_bias_ : tensor<512xf32>)
      outs(%v279.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_280: f32, %acc_281: f32):
          linalg.yield %in_280 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v282.collapsed = tensor.collapse_shape %v279.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v282.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v282 = linalg.broadcast ins(%v282.collapsed : tensor<512xf32>)
      outs(%v282.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_29.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_29.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v273.buf.out, %v282 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_29.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_283: f32, %in_284: f32, %acc_285: f32):
          %v286 = arith.addf %in_283, %in_284 : f32
          linalg.yield %v286 : f32
      }
    -> tensor<10x512x14x14xf32>
    %input_30.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_29.buf.out : tensor<10x512x14x14xf32>)
      outs(%input_30.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_287: f32, %acc_288: f32):
          %v289 = arith.maxnumf %v0, %in_287 : f32
          linalg.yield %v289 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_13 = tensor.pad %input_30.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i290: index, %pad_i291: index, %pad_i292: index, %pad_i293: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v294.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v294.buf = linalg.fill ins(%v0 : f32) outs(%v294.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v294.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_13, %l_self_modules_features_modules_30_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v294.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_295: f32, %in_296: f32, %acc_297: f32):
          %v298 = arith.mulf %in_295, %in_296 : f32
          %v299 = arith.addf %v298, %acc_297 : f32
          linalg.yield %v299 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v300.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v300.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_30_parameters_bias_ : tensor<512xf32>)
      outs(%v300.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_301: f32, %acc_302: f32):
          linalg.yield %in_301 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v303.collapsed = tensor.collapse_shape %v300.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v303.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v303 = linalg.broadcast ins(%v303.collapsed : tensor<512xf32>)
      outs(%v303.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_31.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v294.buf.out, %v303 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_31.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_304: f32, %in_305: f32, %acc_306: f32):
          %v307 = arith.addf %in_304, %in_305 : f32
          linalg.yield %v307 : f32
      }
    -> tensor<10x512x14x14xf32>
    %input_32.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_31.buf.out : tensor<10x512x14x14xf32>)
      outs(%input_32.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_308: f32, %acc_309: f32):
          %v310 = arith.maxnumf %v0, %in_308 : f32
          linalg.yield %v310 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_14 = tensor.pad %input_32.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i311: index, %pad_i312: index, %pad_i313: index, %pad_i314: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v315.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v315.buf = linalg.fill ins(%v0 : f32) outs(%v315.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v315.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_features_modules_32_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v315.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_316: f32, %in_317: f32, %acc_318: f32):
          %v319 = arith.mulf %in_316, %in_317 : f32
          %v320 = arith.addf %v319, %acc_318 : f32
          linalg.yield %v320 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v321.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v321.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_32_parameters_bias_ : tensor<512xf32>)
      outs(%v321.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_322: f32, %acc_323: f32):
          linalg.yield %in_322 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v324.collapsed = tensor.collapse_shape %v321.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v324.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v324 = linalg.broadcast ins(%v324.collapsed : tensor<512xf32>)
      outs(%v324.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_33.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v315.buf.out, %v324 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_33.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_325: f32, %in_326: f32, %acc_327: f32):
          %v328 = arith.addf %in_325, %in_326 : f32
          linalg.yield %v328 : f32
      }
    -> tensor<10x512x14x14xf32>
    %input_34.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_33.buf.out : tensor<10x512x14x14xf32>)
      outs(%input_34.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_329: f32, %acc_330: f32):
          %v331 = arith.maxnumf %v0, %in_329 : f32
          linalg.yield %v331 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_15 = tensor.pad %input_34.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i332: index, %pad_i333: index, %pad_i334: index, %pad_i335: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v336.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v336.buf = linalg.fill ins(%v0 : f32) outs(%v336.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v336.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_features_modules_34_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v336.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_337: f32, %in_338: f32, %acc_339: f32):
          %v340 = arith.mulf %in_337, %in_338 : f32
          %v341 = arith.addf %v340, %acc_339 : f32
          linalg.yield %v341 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v342.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v342.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_34_parameters_bias_ : tensor<512xf32>)
      outs(%v342.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_343: f32, %acc_344: f32):
          linalg.yield %in_343 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v345.collapsed = tensor.collapse_shape %v342.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v345.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v345 = linalg.broadcast ins(%v345.collapsed : tensor<512xf32>)
      outs(%v345.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_35.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v336.buf.out, %v345 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_35.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_346: f32, %in_347: f32, %acc_348: f32):
          %v349 = arith.addf %in_346, %in_347 : f32
          linalg.yield %v349 : f32
      }
    -> tensor<10x512x14x14xf32>
    %input_36.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_36.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%input_35.buf.out : tensor<10x512x14x14xf32>)
      outs(%input_36.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_350: f32, %acc_351: f32):
          %v352 = arith.maxnumf %v0, %in_350 : f32
          linalg.yield %v352 : f32
      }
    -> tensor<10x512x14x14xf32>
    %input_37.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_37.buf = linalg.fill ins(%init : f32) outs(%input_37.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_37.shape = tensor.empty() : tensor<2x2xf32>
    %input_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%input_36.buf.out, %input_37.shape : tensor<10x512x14x14xf32>, tensor<2x2xf32>)
      outs(%input_37.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_354: f32, %shape_353: f32, %acc_355: f32):
          %v356 = arith.maxnumf %acc_355, %in_354 : f32
          linalg.yield %v356 : f32
      }
    -> tensor<10x512x7x7xf32>
    %x.buf = tensor.empty() : tensor<10x25088xf32>
    %x.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, (d1 + d0 * 25088) floordiv 49 mod 512, (d1 + d0 * 25088) floordiv 7 mod 7, d1 mod 7)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_37.buf.out : tensor<10x512x7x7xf32>)
      outs(%x.buf : tensor<10x25088xf32>) {
        ^bb0(%in_357: f32, %acc_358: f32):
          linalg.yield %in_357 : f32
      }
    -> tensor<10x25088xf32>
    %v359.buf = tensor.empty() : tensor<25088x4096xf32>
    %v359.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_0_parameters_weight_ : tensor<4096x25088xf32>)
      outs(%v359.buf : tensor<25088x4096xf32>) {
        ^bb0(%in_360: f32, %acc_361: f32):
          linalg.yield %in_360 : f32
      }
    -> tensor<25088x4096xf32>
    %v362.empty = tensor.empty() : tensor<10x4096xf32>
    %v362.buf = linalg.fill ins(%v0 : f32) outs(%v362.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v362.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%x.buf.out, %v359.buf.out : tensor<10x25088xf32>, tensor<25088x4096xf32>)
      outs(%v362.buf : tensor<10x4096xf32>) {
        ^bb0(%in_363: f32, %in_364: f32, %acc_365: f32):
          %v366 = arith.mulf %in_363, %in_364 : f32
          %v367 = arith.addf %v366, %acc_365 : f32
          linalg.yield %v367 : f32
      }
    -> tensor<10x4096xf32>
    %v368.buf = tensor.empty() : tensor<1x4096xf32>
    %v368.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_0_parameters_bias_ : tensor<4096xf32>)
      outs(%v368.buf : tensor<1x4096xf32>) {
        ^bb0(%in_369: f32, %acc_370: f32):
          linalg.yield %in_369 : f32
      }
    -> tensor<1x4096xf32>
    %v371.buf = tensor.empty() : tensor<10x4096xf32>
    %v371.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v368.buf.out : tensor<1x4096xf32>)
      outs(%v371.buf : tensor<10x4096xf32>) {
        ^bb0(%in_372: f32, %acc_373: f32):
          linalg.yield %in_372 : f32
      }
    -> tensor<10x4096xf32>
    %input_38.buf = tensor.empty() : tensor<10x4096xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v362.buf.out, %v371.buf.out : tensor<10x4096xf32>, tensor<10x4096xf32>)
      outs(%input_38.buf : tensor<10x4096xf32>) {
        ^bb0(%in_374: f32, %in_375: f32, %acc_376: f32):
          %v377 = arith.addf %in_374, %in_375 : f32
          linalg.yield %v377 : f32
      }
    -> tensor<10x4096xf32>
    %input_39.buf = tensor.empty() : tensor<10x4096xf32>
    %input_39.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_38.buf.out : tensor<10x4096xf32>)
      outs(%input_39.buf : tensor<10x4096xf32>) {
        ^bb0(%in_378: f32, %acc_379: f32):
          %v380 = arith.maxnumf %v0, %in_378 : f32
          linalg.yield %v380 : f32
      }
    -> tensor<10x4096xf32>
    %v381.buf = tensor.empty() : tensor<4096x4096xf32>
    %v381.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_3_parameters_weight_ : tensor<4096x4096xf32>)
      outs(%v381.buf : tensor<4096x4096xf32>) {
        ^bb0(%in_382: f32, %acc_383: f32):
          linalg.yield %in_382 : f32
      }
    -> tensor<4096x4096xf32>
    %v384.empty = tensor.empty() : tensor<10x4096xf32>
    %v384.buf = linalg.fill ins(%v0 : f32) outs(%v384.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v384.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_39.buf.out, %v381.buf.out : tensor<10x4096xf32>, tensor<4096x4096xf32>)
      outs(%v384.buf : tensor<10x4096xf32>) {
        ^bb0(%in_385: f32, %in_386: f32, %acc_387: f32):
          %v388 = arith.mulf %in_385, %in_386 : f32
          %v389 = arith.addf %v388, %acc_387 : f32
          linalg.yield %v389 : f32
      }
    -> tensor<10x4096xf32>
    %v390.buf = tensor.empty() : tensor<1x4096xf32>
    %v390.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_3_parameters_bias_ : tensor<4096xf32>)
      outs(%v390.buf : tensor<1x4096xf32>) {
        ^bb0(%in_391: f32, %acc_392: f32):
          linalg.yield %in_391 : f32
      }
    -> tensor<1x4096xf32>
    %v393.buf = tensor.empty() : tensor<10x4096xf32>
    %v393.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v390.buf.out : tensor<1x4096xf32>)
      outs(%v393.buf : tensor<10x4096xf32>) {
        ^bb0(%in_394: f32, %acc_395: f32):
          linalg.yield %in_394 : f32
      }
    -> tensor<10x4096xf32>
    %input_41.buf = tensor.empty() : tensor<10x4096xf32>
    %input_41.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v384.buf.out, %v393.buf.out : tensor<10x4096xf32>, tensor<10x4096xf32>)
      outs(%input_41.buf : tensor<10x4096xf32>) {
        ^bb0(%in_396: f32, %in_397: f32, %acc_398: f32):
          %v399 = arith.addf %in_396, %in_397 : f32
          linalg.yield %v399 : f32
      }
    -> tensor<10x4096xf32>
    %input_42.buf = tensor.empty() : tensor<10x4096xf32>
    %input_42.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_41.buf.out : tensor<10x4096xf32>)
      outs(%input_42.buf : tensor<10x4096xf32>) {
        ^bb0(%in_400: f32, %acc_401: f32):
          %v402 = arith.maxnumf %v0, %in_400 : f32
          linalg.yield %v402 : f32
      }
    -> tensor<10x4096xf32>
    %v403.buf = tensor.empty() : tensor<4096x1000xf32>
    %v403.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_6_parameters_weight_ : tensor<1000x4096xf32>)
      outs(%v403.buf : tensor<4096x1000xf32>) {
        ^bb0(%in_404: f32, %acc_405: f32):
          linalg.yield %in_404 : f32
      }
    -> tensor<4096x1000xf32>
    %v406.empty = tensor.empty() : tensor<10x1000xf32>
    %v406.buf = linalg.fill ins(%v0 : f32) outs(%v406.empty : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %v406.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_42.buf.out, %v403.buf.out : tensor<10x4096xf32>, tensor<4096x1000xf32>)
      outs(%v406.buf : tensor<10x1000xf32>) {
        ^bb0(%in_407: f32, %in_408: f32, %acc_409: f32):
          %v410 = arith.mulf %in_407, %in_408 : f32
          %v411 = arith.addf %v410, %acc_409 : f32
          linalg.yield %v411 : f32
      }
    -> tensor<10x1000xf32>
    %v412.buf = tensor.empty() : tensor<1x1000xf32>
    %v412.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_classifier_modules_6_parameters_bias_ : tensor<1000xf32>)
      outs(%v412.buf : tensor<1x1000xf32>) {
        ^bb0(%in_413: f32, %acc_414: f32):
          linalg.yield %in_413 : f32
      }
    -> tensor<1x1000xf32>
    %v415.buf = tensor.empty() : tensor<10x1000xf32>
    %v415.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v412.buf.out : tensor<1x1000xf32>)
      outs(%v415.buf : tensor<10x1000xf32>) {
        ^bb0(%in_416: f32, %acc_417: f32):
          linalg.yield %in_416 : f32
      }
    -> tensor<10x1000xf32>
    %input_44.buf = tensor.empty() : tensor<10x1000xf32>
    %input_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v406.buf.out, %v415.buf.out : tensor<10x1000xf32>, tensor<10x1000xf32>)
      outs(%input_44.buf : tensor<10x1000xf32>) {
        ^bb0(%in_418: f32, %in_419: f32, %acc_420: f32):
          %v421 = arith.addf %in_418, %in_419 : f32
          linalg.yield %v421 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_44.buf.out : tensor<10x1000xf32>
  }
}
