module {
  func.func public @VGG16(%l_self_modules_features_modules_0_parameters_weight_: tensor<64x3x3x3xf32>, %l_self_modules_features_modules_0_parameters_bias_: tensor<64xf32>, %l_x_: tensor<10x3x224x224xf32>, %l_self_modules_features_modules_2_parameters_weight_: tensor<64x64x3x3xf32>, %l_self_modules_features_modules_2_parameters_bias_: tensor<64xf32>, %l_self_modules_features_modules_5_parameters_weight_: tensor<128x64x3x3xf32>, %l_self_modules_features_modules_5_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_7_parameters_weight_: tensor<128x128x3x3xf32>, %l_self_modules_features_modules_7_parameters_bias_: tensor<128xf32>, %l_self_modules_features_modules_10_parameters_weight_: tensor<256x128x3x3xf32>, %l_self_modules_features_modules_10_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_12_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_12_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_14_parameters_weight_: tensor<256x256x3x3xf32>, %l_self_modules_features_modules_14_parameters_bias_: tensor<256xf32>, %l_self_modules_features_modules_17_parameters_weight_: tensor<512x256x3x3xf32>, %l_self_modules_features_modules_17_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_19_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_19_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_21_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_21_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_24_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_24_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_26_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_26_parameters_bias_: tensor<512xf32>, %l_self_modules_features_modules_28_parameters_weight_: tensor<512x512x3x3xf32>, %l_self_modules_features_modules_28_parameters_bias_: tensor<512xf32>, %l_self_modules_classifier_modules_0_parameters_weight_: tensor<4096x25088xf32>, %l_self_modules_classifier_modules_0_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_3_parameters_weight_: tensor<4096x4096xf32>, %l_self_modules_classifier_modules_3_parameters_bias_: tensor<4096xf32>, %l_self_modules_classifier_modules_6_parameters_weight_: tensor<1000x4096xf32>, %l_self_modules_classifier_modules_6_parameters_bias_: tensor<1000xf32>) -> tensor<10x1000xf32> {
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
    %input_17.empty = tensor.empty() : tensor<10x256x28x28xf32>
    %input_17.buf = linalg.fill ins(%init : f32) outs(%input_17.empty : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %input_17.shape = tensor.empty() : tensor<2x2xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v123.buf.out, %v132, %input_17.shape : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>, tensor<2x2xf32>)
      outs(%input_17.buf : tensor<10x256x28x28xf32>) {
        ^bb0(%in_134: f32, %in_135: f32, %shape_133: f32, %acc_136: f32):
          %v137 = arith.addf %in_134, %in_135 : f32
          %v138 = arith.maxnumf %v0, %v137 : f32
          %v139 = arith.maxnumf %v138, %acc_136 : f32
          linalg.yield %v139 : f32
      }
    -> tensor<10x256x28x28xf32>
    %padded_7 = tensor.pad %input_17.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i140: index, %pad_i141: index, %pad_i142: index, %pad_i143: index):
        tensor.yield %v0 : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %v144.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v144.buf = linalg.fill ins(%v0 : f32) outs(%v144.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v144.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_7, %l_self_modules_features_modules_17_parameters_weight_ : tensor<10x256x30x30xf32>, tensor<512x256x3x3xf32>)
      outs(%v144.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_145: f32, %in_146: f32, %acc_147: f32):
          %v148 = arith.mulf %in_145, %in_146 : f32
          %v149 = arith.addf %v148, %acc_147 : f32
          linalg.yield %v149 : f32
      }
    -> tensor<10x512x28x28xf32>
    %v150.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v150.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_17_parameters_bias_ : tensor<512xf32>)
      outs(%v150.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_151: f32, %acc_152: f32):
          linalg.yield %in_151 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v153.collapsed = tensor.collapse_shape %v150.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v153.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %v153 = linalg.broadcast ins(%v153.collapsed : tensor<512xf32>)
      outs(%v153.buf : tensor<10x512x28x28xf32>)
      dimensions = [0, 2, 3]
    %input_19.buf = tensor.empty() : tensor<10x512x28x28xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v144.buf.out, %v153 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>)
      outs(%input_19.buf : tensor<10x512x28x28xf32>) {
        ^bb0(%in_154: f32, %in_155: f32, %acc_156: f32):
          %v157 = arith.addf %in_154, %in_155 : f32
          %v158 = arith.maxnumf %v0, %v157 : f32
          linalg.yield %v158 : f32
      }
    -> tensor<10x512x28x28xf32>
    %padded_8 = tensor.pad %input_19.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i159: index, %pad_i160: index, %pad_i161: index, %pad_i162: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x28x28xf32> to tensor<10x512x30x30xf32>
    %v163.empty = tensor.empty() : tensor<10x512x28x28xf32>
    %v163.buf = linalg.fill ins(%v0 : f32) outs(%v163.empty : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %v163.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_8, %l_self_modules_features_modules_19_parameters_weight_ : tensor<10x512x30x30xf32>, tensor<512x512x3x3xf32>)
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
    %input_24.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %input_24.buf = linalg.fill ins(%init : f32) outs(%input_24.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %input_24.shape = tensor.empty() : tensor<2x2xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v182.buf.out, %v191, %input_24.shape : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>, tensor<2x2xf32>)
      outs(%input_24.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_193: f32, %in_194: f32, %shape_192: f32, %acc_195: f32):
          %v196 = arith.addf %in_193, %in_194 : f32
          %v197 = arith.maxnumf %v0, %v196 : f32
          %v198 = arith.maxnumf %v197, %acc_195 : f32
          linalg.yield %v198 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_10 = tensor.pad %input_24.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i199: index, %pad_i200: index, %pad_i201: index, %pad_i202: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v203.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v203.buf = linalg.fill ins(%v0 : f32) outs(%v203.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v203.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_10, %l_self_modules_features_modules_24_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v203.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_204: f32, %in_205: f32, %acc_206: f32):
          %v207 = arith.mulf %in_204, %in_205 : f32
          %v208 = arith.addf %v207, %acc_206 : f32
          linalg.yield %v208 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v209.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v209.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_24_parameters_bias_ : tensor<512xf32>)
      outs(%v209.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_210: f32, %acc_211: f32):
          linalg.yield %in_210 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v212.collapsed = tensor.collapse_shape %v209.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v212.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v212 = linalg.broadcast ins(%v212.collapsed : tensor<512xf32>)
      outs(%v212.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_26.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v203.buf.out, %v212 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_26.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_213: f32, %in_214: f32, %acc_215: f32):
          %v216 = arith.addf %in_213, %in_214 : f32
          %v217 = arith.maxnumf %v0, %v216 : f32
          linalg.yield %v217 : f32
      }
    -> tensor<10x512x14x14xf32>
    %padded_11 = tensor.pad %input_26.buf.out low[0, 0, 1, 1] high[0, 0, 1, 1] {
      ^bb0(%pad_i218: index, %pad_i219: index, %pad_i220: index, %pad_i221: index):
        tensor.yield %v0 : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %v222.empty = tensor.empty() : tensor<10x512x14x14xf32>
    %v222.buf = linalg.fill ins(%v0 : f32) outs(%v222.empty : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %v222.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>, affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]}
      ins(%padded_11, %l_self_modules_features_modules_26_parameters_weight_ : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>)
      outs(%v222.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_223: f32, %in_224: f32, %acc_225: f32):
          %v226 = arith.mulf %in_223, %in_224 : f32
          %v227 = arith.addf %v226, %acc_225 : f32
          linalg.yield %v227 : f32
      }
    -> tensor<10x512x14x14xf32>
    %v228.buf = tensor.empty() : tensor<1x512x1x1xf32>
    %v228.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d1)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%l_self_modules_features_modules_26_parameters_bias_ : tensor<512xf32>)
      outs(%v228.buf : tensor<1x512x1x1xf32>) {
        ^bb0(%in_229: f32, %acc_230: f32):
          linalg.yield %in_229 : f32
      }
    -> tensor<1x512x1x1xf32>
    %v231.collapsed = tensor.collapse_shape %v228.buf.out [[0, 1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<512xf32>
    %v231.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %v231 = linalg.broadcast ins(%v231.collapsed : tensor<512xf32>)
      outs(%v231.buf : tensor<10x512x14x14xf32>)
      dimensions = [0, 2, 3]
    %input_28.buf = tensor.empty() : tensor<10x512x14x14xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]}
      ins(%v222.buf.out, %v231 : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>)
      outs(%input_28.buf : tensor<10x512x14x14xf32>) {
        ^bb0(%in_232: f32, %in_233: f32, %acc_234: f32):
          %v235 = arith.addf %in_232, %in_233 : f32
          %v236 = arith.maxnumf %v0, %v235 : f32
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
    %input_31.empty = tensor.empty() : tensor<10x512x7x7xf32>
    %input_31.buf = linalg.fill ins(%init : f32) outs(%input_31.empty : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %input_31.shape = tensor.empty() : tensor<2x2xf32>
    %input_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]}
      ins(%v241.buf.out, %v250, %input_31.shape : tensor<10x512x14x14xf32>, tensor<10x512x14x14xf32>, tensor<2x2xf32>)
      outs(%input_31.buf : tensor<10x512x7x7xf32>) {
        ^bb0(%in_252: f32, %in_253: f32, %shape_251: f32, %acc_254: f32):
          %v255 = arith.addf %in_252, %in_253 : f32
          %v256 = arith.maxnumf %v0, %v255 : f32
          %v257 = arith.maxnumf %v256, %acc_254 : f32
          linalg.yield %v257 : f32
      }
    -> tensor<10x512x7x7xf32>
    %v258.empty = tensor.empty() : tensor<10x4096xf32>
    %v258.buf = linalg.fill ins(%v0 : f32) outs(%v258.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v258.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, (d2 + d0 * 25088) floordiv 49 mod 512, (d2 + d0 * 25088) floordiv 7 mod 7, d2 mod 7)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_31.buf.out, %l_self_modules_classifier_modules_0_parameters_weight_ : tensor<10x512x7x7xf32>, tensor<4096x25088xf32>)
      outs(%v258.buf : tensor<10x4096xf32>) {
        ^bb0(%in_259: f32, %in_260: f32, %acc_261: f32):
          %v262 = arith.mulf %in_259, %in_260 : f32
          %v263 = arith.addf %v262, %acc_261 : f32
          linalg.yield %v263 : f32
      }
    -> tensor<10x4096xf32>
    %v264.empty = tensor.empty() : tensor<10x4096xf32>
    %v264.buf = linalg.fill ins(%v0 : f32) outs(%v264.empty : tensor<10x4096xf32>) -> tensor<10x4096xf32>
    %v264.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v258.buf.out, %l_self_modules_classifier_modules_0_parameters_bias_, %l_self_modules_classifier_modules_3_parameters_weight_ : tensor<10x4096xf32>, tensor<4096xf32>, tensor<4096x4096xf32>)
      outs(%v264.buf : tensor<10x4096xf32>) {
        ^bb0(%in_265: f32, %in_266: f32, %in_267: f32, %acc_268: f32):
          %v269 = arith.addf %in_265, %in_266 : f32
          %v270 = arith.maxnumf %v0, %v269 : f32
          %v271 = arith.mulf %v270, %in_267 : f32
          %v272 = arith.addf %v271, %acc_268 : f32
          linalg.yield %v272 : f32
      }
    -> tensor<10x4096xf32>
    %v273.empty = tensor.empty() : tensor<10x1000xf32>
    %v273.buf = linalg.fill ins(%v0 : f32) outs(%v273.empty : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %v273.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v264.buf.out, %l_self_modules_classifier_modules_3_parameters_bias_, %l_self_modules_classifier_modules_6_parameters_weight_ : tensor<10x4096xf32>, tensor<4096xf32>, tensor<1000x4096xf32>)
      outs(%v273.buf : tensor<10x1000xf32>) {
        ^bb0(%in_274: f32, %in_275: f32, %in_276: f32, %acc_277: f32):
          %v278 = arith.addf %in_274, %in_275 : f32
          %v279 = arith.maxnumf %v0, %v278 : f32
          %v280 = arith.mulf %v279, %in_276 : f32
          %v281 = arith.addf %v280, %acc_277 : f32
          linalg.yield %v281 : f32
      }
    -> tensor<10x1000xf32>
    %input_38.buf = tensor.empty() : tensor<10x1000xf32>
    %input_38.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v273.buf.out, %l_self_modules_classifier_modules_6_parameters_bias_ : tensor<10x1000xf32>, tensor<1000xf32>)
      outs(%input_38.buf : tensor<10x1000xf32>) {
        ^bb0(%in_282: f32, %in_283: f32, %acc_284: f32):
          %v285 = arith.addf %in_283, %in_282 : f32
          linalg.yield %v285 : f32
      }
    -> tensor<10x1000xf32>
    func.return %input_38.buf.out : tensor<10x1000xf32>
  }
}
