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
    %input_2.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v5.buf.out, %v14 : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>)
      outs(%input_2.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_15: f32, %in_16: f32, %acc_17: f32):
          %v18 = arith.addf %in_15, %in_16 : f32
          %v19 = arith.maxnumf %v0, %v18 : f32
          linalg.yield %v19 : f32
      }
    -> tensor<10x64x224x224xf32>
    %padded_1 = tensor.pad %input_2.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i20: index, %pad_i21: index, %pad_i22: index, %pad_i23: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x224x224xf32> to tensor<10x64x226x226xf32>
    %v24.empty = tensor.empty() : tensor<10x64x224x224xf32>
    %v24.buf = linalg.fill ins(%v0 : f32) outs(%v24.empty : tensor<10x64x224x224xf32>) -> tensor<10x64x224x224xf32>
    %v24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_1, %l_self_modules_features_modules_2_parameters_weight_ : tensor<10x64x226x226xf32>, tensor<64x64x3x3xf32>)
      outs(%v24.buf : tensor<10x64x224x224xf32>) {
        ^bb0(%in_25: f32, %in_26: f32, %acc_27: f32):
          %v28 = arith.mulf %in_25, %in_26 : f32
          %v29 = arith.addf %v28, %acc_27 : f32
          linalg.yield %v29 : f32
      }
    -> tensor<10x64x224x224xf32>
    %v30.buf = tensor.empty() : tensor<1x64x1x1xf32>
    %v30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_2_parameters_bias_ : tensor<64xf32>)
      outs(%v30.buf : tensor<1x64x1x1xf32>) {
        ^bb0(%in_31: f32, %acc_32: f32):
          linalg.yield %in_31 : f32
      }
    -> tensor<1x64x1x1xf32>
    %v33.collapsed = tensor.collapse_shape %v30.buf.out [[0, 1, 2, 3]] : tensor<1x64x1x1xf32> into tensor<64xf32>
    %v33.buf = tensor.empty() : tensor<10x64x224x224xf32>
    %v33 = linalg.broadcast ins(%v33.collapsed : tensor<64xf32>)
      outs(%v33.buf : tensor<10x64x224x224xf32>)
      dimensions = [0, 2, 3]
    %input_5.empty = tensor.empty() : tensor<10x64x112x112xf32>
    %init = arith.constant 0xFF800000 : f32
    %input_5.buf = linalg.fill ins(%init : f32) outs(%input_5.empty : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %input_5.shape = tensor.empty() : tensor<2x2xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v24.buf.out, %v33, %input_5.shape : tensor<10x64x224x224xf32>, tensor<10x64x224x224xf32>, tensor<2x2xf32>)
      outs(%input_5.buf : tensor<10x64x112x112xf32>) {
        ^bb0(%in_35: f32, %in_36: f32, %shape_34: f32, %acc_37: f32):
          %v38 = arith.addf %in_35, %in_36 : f32
          %v39 = arith.maxnumf %v0, %v38 : f32
          %v40 = arith.maxnumf %v39, %acc_37 : f32
          linalg.yield %v40 : f32
      }
    -> tensor<10x64x112x112xf32>
    %padded_2 = tensor.pad %input_5.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i41: index, %pad_i42: index, %pad_i43: index, %pad_i44: index):
        tensor.yield %v0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %v45.empty = tensor.empty() : tensor<10x128x112x112xf32>
    %v45.buf = linalg.fill ins(%v0 : f32) outs(%v45.empty : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_2, %l_self_modules_features_modules_5_parameters_weight_ : tensor<10x64x114x114xf32>, tensor<128x64x3x3xf32>)
      outs(%v45.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_46: f32, %in_47: f32, %acc_48: f32):
          %v49 = arith.mulf %in_46, %in_47 : f32
          %v50 = arith.addf %v49, %acc_48 : f32
          linalg.yield %v50 : f32
      }
    -> tensor<10x128x112x112xf32>
    %v51.buf = tensor.empty() : tensor<1x128x1x1xf32>
    %v51.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_5_parameters_bias_ : tensor<128xf32>)
      outs(%v51.buf : tensor<1x128x1x1xf32>) {
        ^bb0(%in_52: f32, %acc_53: f32):
          linalg.yield %in_52 : f32
      }
    -> tensor<1x128x1x1xf32>
    %v54.collapsed = tensor.collapse_shape %v51.buf.out [[0, 1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<128xf32>
    %v54.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %v54 = linalg.broadcast ins(%v54.collapsed : tensor<128xf32>)
      outs(%v54.buf : tensor<10x128x112x112xf32>)
      dimensions = [0, 2, 3]
    %input_7.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v45.buf.out, %v54 : tensor<10x128x112x112xf32>, tensor<10x128x112x112xf32>)
      outs(%input_7.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_55: f32, %in_56: f32, %acc_57: f32):
          %v58 = arith.addf %in_55, %in_56 : f32
          %v59 = arith.maxnumf %v0, %v58 : f32
          linalg.yield %v59 : f32
      }
    -> tensor<10x128x112x112xf32>
    %padded_3 = tensor.pad %input_7.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i60: index, %pad_i61: index, %pad_i62: index, %pad_i63: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x112x112xf32> to tensor<10x128x114x114xf32>
    %v64.empty = tensor.empty() : tensor<10x128x112x112xf32>
    %v64.buf = linalg.fill ins(%v0 : f32) outs(%v64.empty : tensor<10x128x112x112xf32>) -> tensor<10x128x112x112xf32>
    %v64.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_3, %l_self_modules_features_modules_7_parameters_weight_ : tensor<10x128x114x114xf32>, tensor<128x128x3x3xf32>)
      outs(%v64.buf : tensor<10x128x112x112xf32>) {
        ^bb0(%in_65: f32, %in_66: f32, %acc_67: f32):
          %v68 = arith.mulf %in_65, %in_66 : f32
          %v69 = arith.addf %v68, %acc_67 : f32
          linalg.yield %v69 : f32
      }
    -> tensor<10x128x112x112xf32>
    %v70.buf = tensor.empty() : tensor<1x128x1x1xf32>
    %v70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_7_parameters_bias_ : tensor<128xf32>)
      outs(%v70.buf : tensor<1x128x1x1xf32>) {
        ^bb0(%in_71: f32, %acc_72: f32):
          linalg.yield %in_71 : f32
      }
    -> tensor<1x128x1x1xf32>
    %v73.collapsed = tensor.collapse_shape %v70.buf.out [[0, 1, 2, 3]] : tensor<1x128x1x1xf32> into tensor<128xf32>
    %v73.buf = tensor.empty() : tensor<10x128x112x112xf32>
    %v73 = linalg.broadcast ins(%v73.collapsed : tensor<128xf32>)
      outs(%v73.buf : tensor<10x128x112x112xf32>)
      dimensions = [0, 2, 3]
    %input_10.empty = tensor.empty() : tensor<10x128x56x56xf32>
    %input_10.buf = linalg.fill ins(%init : f32) outs(%input_10.empty : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %input_10.shape = tensor.empty() : tensor<2x2xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v64.buf.out, %v73, %input_10.shape : tensor<10x128x112x112xf32>, tensor<10x128x112x112xf32>, tensor<2x2xf32>)
      outs(%input_10.buf : tensor<10x128x56x56xf32>) {
        ^bb0(%in_75: f32, %in_76: f32, %shape_74: f32, %acc_77: f32):
          %v78 = arith.addf %in_75, %in_76 : f32
          %v79 = arith.maxnumf %v0, %v78 : f32
          %v80 = arith.maxnumf %v79, %acc_77 : f32
          linalg.yield %v80 : f32
      }
    -> tensor<10x128x56x56xf32>
    %padded_4 = tensor.pad %input_10.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i81: index, %pad_i82: index, %pad_i83: index, %pad_i84: index):
        tensor.yield %v0 : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %v85.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v85.buf = linalg.fill ins(%v0 : f32) outs(%v85.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v85.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_4, %l_self_modules_features_modules_10_parameters_weight_ : tensor<10x128x58x58xf32>, tensor<256x128x3x3xf32>)
      outs(%v85.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_86: f32, %in_87: f32, %acc_88: f32):
          %v89 = arith.mulf %in_86, %in_87 : f32
          %v90 = arith.addf %v89, %acc_88 : f32
          linalg.yield %v90 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v91.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v91.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_10_parameters_bias_ : tensor<256xf32>)
      outs(%v91.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_92: f32, %acc_93: f32):
          linalg.yield %in_92 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v94.collapsed = tensor.collapse_shape %v91.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v94.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v94 = linalg.broadcast ins(%v94.collapsed : tensor<256xf32>)
      outs(%v94.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_12.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v85.buf.out, %v94 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_12.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_95: f32, %in_96: f32, %acc_97: f32):
          %v98 = arith.addf %in_95, %in_96 : f32
          %v99 = arith.maxnumf %v0, %v98 : f32
          linalg.yield %v99 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_5 = tensor.pad %input_12.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i100: index, %pad_i101: index, %pad_i102: index, %pad_i103: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v104.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v104.buf = linalg.fill ins(%v0 : f32) outs(%v104.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v104.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_5, %l_self_modules_features_modules_12_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v104.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_105: f32, %in_106: f32, %acc_107: f32):
          %v108 = arith.mulf %in_105, %in_106 : f32
          %v109 = arith.addf %v108, %acc_107 : f32
          linalg.yield %v109 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v110.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v110.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_12_parameters_bias_ : tensor<256xf32>)
      outs(%v110.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_111: f32, %acc_112: f32):
          linalg.yield %in_111 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v113.collapsed = tensor.collapse_shape %v110.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v113.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v113 = linalg.broadcast ins(%v113.collapsed : tensor<256xf32>)
      outs(%v113.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_14.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v104.buf.out, %v113 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_14.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_114: f32, %in_115: f32, %acc_116: f32):
          %v117 = arith.addf %in_114, %in_115 : f32
          %v118 = arith.maxnumf %v0, %v117 : f32
          linalg.yield %v118 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_6 = tensor.pad %input_14.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i119: index, %pad_i120: index, %pad_i121: index, %pad_i122: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v123.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v123.buf = linalg.fill ins(%v0 : f32) outs(%v123.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v123.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_6, %l_self_modules_features_modules_14_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v123.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_124: f32, %in_125: f32, %acc_126: f32):
          %v127 = arith.mulf %in_124, %in_125 : f32
          %v128 = arith.addf %v127, %acc_126 : f32
          linalg.yield %v128 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v129.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v129.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_14_parameters_bias_ : tensor<256xf32>)
      outs(%v129.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_130: f32, %acc_131: f32):
          linalg.yield %in_130 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v132.collapsed = tensor.collapse_shape %v129.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v132.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v132 = linalg.broadcast ins(%v132.collapsed : tensor<256xf32>)
      outs(%v132.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_16.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v123.buf.out, %v132 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>)
      outs(%input_16.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_133: f32, %in_134: f32, %acc_135: f32):
          %v136 = arith.addf %in_133, %in_134 : f32
          %v137 = arith.maxnumf %v0, %v136 : f32
          linalg.yield %v137 : f32
      }
    -> tensor<10x256x56x56xf32>
    %padded_7 = tensor.pad %input_16.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i138: index, %pad_i139: index, %pad_i140: index, %pad_i141: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x56x56xf32> to tensor<10x256x58x58xf32>
    %v142.empty = tensor.empty() : tensor<10x256x56x56xf32>
    %v142.buf = linalg.fill ins(%v0 : f32) outs(%v142.empty : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %v142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_features_modules_16_parameters_weight_ : tensor<10x256x58x58xf32>, tensor<256x256x3x3xf32>)
      outs(%v142.buf : tensor<10x256x56x56xf32>) {
        ^bb0(%in_143: f32, %in_144: f32, %acc_145: f32):
          %v146 = arith.mulf %in_143, %in_144 : f32
          %v147 = arith.addf %v146, %acc_145 : f32
          linalg.yield %v147 : f32
      }
    -> tensor<10x256x56x56xf32>
    %v148.buf = tensor.empty() : tensor<1x256x1x1xf32>
    %v148.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_16_parameters_bias_ : tensor<256xf32>)
      outs(%v148.buf : tensor<1x256x1x1xf32>) {
        ^bb0(%in_149: f32, %acc_150: f32):
          linalg.yield %in_149 : f32
      }
    -> tensor<1x256x1x1xf32>
    %v151.collapsed = tensor.collapse_shape %v148.buf.out [[0, 1, 2, 3]] : tensor<1x256x1x1xf32> into tensor<256xf32>
    %v151.buf = tensor.empty() : tensor<10x256x56x56xf32>
    %v151 = linalg.broadcast ins(%v151.collapsed : tensor<256xf32>)
      outs(%v151.buf : tensor<10x256x56x56xf32>)
      dimensions = [0, 2, 3]
    %input_19.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_19.buf = linalg.fill ins(%init : f32) outs(%input_19.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_19.shape = tensor.empty() : tensor<2x2xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v142.buf.out, %v151, %input_19.shape : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>, tensor<2x2xf32>)
      outs(%input_19.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_153: f32, %in_154: f32, %shape_152: f32, %acc_155: f32):
          %v156 = arith.addf %in_153, %in_154 : f32
          %v157 = arith.maxnumf %v0, %v156 : f32
          %v158 = arith.maxnumf %v157, %acc_155 : f32
          linalg.yield %v158 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_8 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i159: index, %pad_i160: index, %pad_i161: index, %pad_i162: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v163.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v163.buf = linalg.fill ins(%v0 : f32) outs(%v163.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v163.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_features_modules_19_parameters_weight_ : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>)
      outs(%v163.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_164: f32, %in_165: f32, %acc_166: f32):
          %v167 = arith.mulf %in_164, %in_165 : f32
          %v168 = arith.addf %v167, %acc_166 : f32
          linalg.yield %v168 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v169.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v169.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_19_parameters_bias_ : tensor<512xf32>)
      outs(%v169.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_170: f32, %acc_171: f32):
          linalg.yield %in_170 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v172.collapsed = tensor.collapse_shape %v169.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v172.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v172 = linalg.broadcast ins(%v172.collapsed : tensor<512xf32>)
      outs(%v172.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_21.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v163.buf.out, %v172 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_21.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_173: f32, %in_174: f32, %acc_175: f32):
          %v176 = arith.addf %in_173, %in_174 : f32
          %v177 = arith.maxnumf %v0, %v176 : f32
          linalg.yield %v177 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_9 = tensor.pad %input_21.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i178: index, %pad_i179: index, %pad_i180: index, %pad_i181: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v182.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v182.buf = linalg.fill ins(%v0 : f32) outs(%v182.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v182.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_9, %l_self_modules_features_modules_21_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v182.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_183: f32, %in_184: f32, %acc_185: f32):
          %v186 = arith.mulf %in_183, %in_184 : f32
          %v187 = arith.addf %v186, %acc_185 : f32
          linalg.yield %v187 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v188.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v188.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_21_parameters_bias_ : tensor<512xf32>)
      outs(%v188.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_189: f32, %acc_190: f32):
          linalg.yield %in_189 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v191.collapsed = tensor.collapse_shape %v188.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v191.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v191 = linalg.broadcast ins(%v191.collapsed : tensor<512xf32>)
      outs(%v191.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_23.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v182.buf.out, %v191 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_23.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_192: f32, %in_193: f32, %acc_194: f32):
          %v195 = arith.addf %in_192, %in_193 : f32
          %v196 = arith.maxnumf %v0, %v195 : f32
          linalg.yield %v196 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_10 = tensor.pad %input_23.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i197: index, %pad_i198: index, %pad_i199: index, %pad_i200: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v201.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v201.buf = linalg.fill ins(%v0 : f32) outs(%v201.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v201.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_features_modules_23_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v201.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_202: f32, %in_203: f32, %acc_204: f32):
          %v205 = arith.mulf %in_202, %in_203 : f32
          %v206 = arith.addf %v205, %acc_204 : f32
          linalg.yield %v206 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v207.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v207.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_23_parameters_bias_ : tensor<512xf32>)
      outs(%v207.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_208: f32, %acc_209: f32):
          linalg.yield %in_208 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v210.collapsed = tensor.collapse_shape %v207.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v210.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v210 = linalg.broadcast ins(%v210.collapsed : tensor<512xf32>)
      outs(%v210.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_25.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v201.buf.out, %v210 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_25.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_211: f32, %in_212: f32, %acc_213: f32):
          %v214 = arith.addf %in_211, %in_212 : f32
          %v215 = arith.maxnumf %v0, %v214 : f32
          linalg.yield %v215 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_11 = tensor.pad %input_25.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i216: index, %pad_i217: index, %pad_i218: index, %pad_i219: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v220.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v220.buf = linalg.fill ins(%v0 : f32) outs(%v220.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v220.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_features_modules_25_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
      outs(%v220.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_221: f32, %in_222: f32, %acc_223: f32):
          %v224 = arith.mulf %in_221, %in_222 : f32
          %v225 = arith.addf %v224, %acc_223 : f32
          linalg.yield %v225 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v226.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v226.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_25_parameters_bias_ : tensor<512xf32>)
      outs(%v226.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_227: f32, %acc_228: f32):
          linalg.yield %in_227 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v229.collapsed = tensor.collapse_shape %v226.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v229.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v229 = linalg.broadcast ins(%v229.collapsed : tensor<512xf32>)
      outs(%v229.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_28.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_28.buf = linalg.fill ins(%init : f32) outs(%input_28.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_28.shape = tensor.empty() : tensor<2x2xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v220.buf.out, %v229, %input_28.shape : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>, tensor<2x2xf32>)
      outs(%input_28.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_231: f32, %in_232: f32, %shape_230: f32, %acc_233: f32):
          %v234 = arith.addf %in_231, %in_232 : f32
          %v235 = arith.maxnumf %v0, %v234 : f32
          %v236 = arith.maxnumf %v235, %acc_233 : f32
          linalg.yield %v236 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_12 = tensor.pad %input_28.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i237: index, %pad_i238: index, %pad_i239: index, %pad_i240: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v241.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v241.buf = linalg.fill ins(%v0 : f32) outs(%v241.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v241.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_12, %l_self_modules_features_modules_28_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v241.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_242: f32, %in_243: f32, %acc_244: f32):
          %v245 = arith.mulf %in_242, %in_243 : f32
          %v246 = arith.addf %v245, %acc_244 : f32
          linalg.yield %v246 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v247.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v247.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_28_parameters_bias_ : tensor<512xf32>)
      outs(%v247.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_248: f32, %acc_249: f32):
          linalg.yield %in_248 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v250.collapsed = tensor.collapse_shape %v247.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v250.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v250 = linalg.broadcast ins(%v250.collapsed : tensor<512xf32>)
      outs(%v250.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_30.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v241.buf.out, %v250 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_30.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_251: f32, %in_252: f32, %acc_253: f32):
          %v254 = arith.addf %in_251, %in_252 : f32
          %v255 = arith.maxnumf %v0, %v254 : f32
          linalg.yield %v255 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_13 = tensor.pad %input_30.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i256: index, %pad_i257: index, %pad_i258: index, %pad_i259: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v260.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v260.buf = linalg.fill ins(%v0 : f32) outs(%v260.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v260.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_13, %l_self_modules_features_modules_30_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v260.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_261: f32, %in_262: f32, %acc_263: f32):
          %v264 = arith.mulf %in_261, %in_262 : f32
          %v265 = arith.addf %v264, %acc_263 : f32
          linalg.yield %v265 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v266.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v266.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_30_parameters_bias_ : tensor<512xf32>)
      outs(%v266.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_267: f32, %acc_268: f32):
          linalg.yield %in_267 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v269.collapsed = tensor.collapse_shape %v266.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v269.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v269 = linalg.broadcast ins(%v269.collapsed : tensor<512xf32>)
      outs(%v269.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_32.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v260.buf.out, %v269 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_32.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_270: f32, %in_271: f32, %acc_272: f32):
          %v273 = arith.addf %in_270, %in_271 : f32
          %v274 = arith.maxnumf %v0, %v273 : f32
          linalg.yield %v274 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_14 = tensor.pad %input_32.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i275: index, %pad_i276: index, %pad_i277: index, %pad_i278: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v279.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v279.buf = linalg.fill ins(%v0 : f32) outs(%v279.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v279.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_14, %l_self_modules_features_modules_32_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v279.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_280: f32, %in_281: f32, %acc_282: f32):
          %v283 = arith.mulf %in_280, %in_281 : f32
          %v284 = arith.addf %v283, %acc_282 : f32
          linalg.yield %v284 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v285.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v285.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_32_parameters_bias_ : tensor<512xf32>)
      outs(%v285.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_286: f32, %acc_287: f32):
          linalg.yield %in_286 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v288.collapsed = tensor.collapse_shape %v285.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v288.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v288 = linalg.broadcast ins(%v288.collapsed : tensor<512xf32>)
      outs(%v288.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_34.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v279.buf.out, %v288 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_34.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_289: f32, %in_290: f32, %acc_291: f32):
          %v292 = arith.addf %in_289, %in_290 : f32
          %v293 = arith.maxnumf %v0, %v292 : f32
          linalg.yield %v293 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_15 = tensor.pad %input_34.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i294: index, %pad_i295: index, %pad_i296: index, %pad_i297: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v298.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v298.buf = linalg.fill ins(%v0 : f32) outs(%v298.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v298.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_15, %l_self_modules_features_modules_34_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v298.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_299: f32, %in_300: f32, %acc_301: f32):
          %v302 = arith.mulf %in_299, %in_300 : f32
          %v303 = arith.addf %v302, %acc_301 : f32
          linalg.yield %v303 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v304.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v304.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_34_parameters_bias_ : tensor<512xf32>)
      outs(%v304.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_305: f32, %acc_306: f32):
          linalg.yield %in_305 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v307.collapsed = tensor.collapse_shape %v304.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v307.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v307 = linalg.broadcast ins(%v307.collapsed : tensor<512xf32>)
      outs(%v307.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_37.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_37.buf = linalg.fill ins(%init : f32) outs(%input_37.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_37.shape = tensor.empty() : tensor<2x2xf32>
    %input_37.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v298.buf.out, %v307, %input_37.shape : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>, tensor<2x2xf32>)
      outs(%input_37.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_309: f32, %in_310: f32, %shape_308: f32, %acc_311: f32):
          %v312 = arith.addf %in_309, %in_310 : f32
          %v313 = arith.maxnumf %v0, %v312 : f32
          %v314 = arith.maxnumf %v313, %acc_311 : f32
          linalg.yield %v314 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v315.empty = tensor.empty() : tensor<10x4096xf32>
    %v315.buf = linalg.fill ins(%v0 : f32) outs(%v315.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v315.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, (d2 + d0 * 25088) floordiv 49 mod 512, (d2 + d0 * 25088) floordiv 7 mod 7, d2 mod 7)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_37.buf.out, %l_self_modules_classifier_modules_0_parameters_weight_ : tensor<10x512x7x7xf32>, tensor<4096x25088xf32>)
      outs(%v315.buf : tensor<10x4096xf32>) {
        ^bb0(%in_316: f32, %in_317: f32, %acc_318: f32):
          %v319 = arith.mulf %in_316, %in_317 : f32
          %v320 = arith.addf %v319, %acc_318 : f32
          linalg.yield %v320 : f32
      }
    -> tensor<10x4096xf32>
    %v321.empty = tensor.empty() : tensor<10x4096xf32>
    %v321.buf = linalg.fill ins(%v0 : f32) outs(%v321.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v321.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v315.buf.out, %l_self_modules_classifier_modules_0_parameters_bias_, %l_self_modules_classifier_modules_3_parameters_weight_ : tensor<10x4096xf32>, tensor<4096xf32>, tensor<4096x4096xf32>)
      outs(%v321.buf : tensor<10x4096xf32>) {
        ^bb0(%in_322: f32, %in_323: f32, %in_324: f32, %acc_325: f32):
          %v326 = arith.addf %in_322, %in_323 : f32
          %v327 = arith.maxnumf %v0, %v326 : f32
          %v328 = arith.mulf %v327, %in_324 : f32
          %v329 = arith.addf %v328, %acc_325 : f32
          linalg.yield %v329 : f32
      }
    -> tensor<10x4096xf32>
    %v330.empty = tensor.empty() : tensor<10x1000xf32>
    %v330.buf = linalg.fill ins(%v0 : f32) outs(%v330.empty : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %v330.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v321.buf.out, %l_self_modules_classifier_modules_3_parameters_bias_, %l_self_modules_classifier_modules_6_parameters_weight_ : tensor<10x4096xf32>, tensor<4096xf32>, tensor<1000x4096xf32>)
      outs(%v330.buf : tensor<10x1000xf32>) {
        ^bb0(%in_331: f32, %in_332: f32, %in_333: f32, %acc_334: f32):
          %v335 = arith.addf %in_331, %in_332 : f32
          %v336 = arith.maxnumf %v0, %v335 : f32
          %v337 = arith.mulf %v336, %in_333 : f32
          %v338 = arith.addf %v337, %acc_334 : f32
          linalg.yield %v338 : f32
      }
    -> tensor<10x1000xf32>
    %input_44.buf = tensor.empty() : tensor<10x1000xf32>
    %input_44.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v330.buf.out, %l_self_modules_classifier_modules_6_parameters_bias_ : tensor<10x1000xf32>, tensor<1000xf32>)
      outs(%input_44.buf : tensor<10x1000xf32>) {
        ^bb0(%in_339: f32, %in_340: f32, %acc_341: f32):
          %v342 = arith.addf %in_340, %in_339 : f32
          linalg.yield %v342 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_44.buf.out : tensor<10x1000xf32>
  }
}
