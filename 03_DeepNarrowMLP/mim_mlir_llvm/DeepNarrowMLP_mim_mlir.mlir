module {
  func.func public @DeepNarrowMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<1024x8192xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<1024xf32>, %l_x_: tensor<1024x8192xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_6_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_6_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_8_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_8_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_10_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_10_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_12_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_12_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_14_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_14_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_16_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_16_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_18_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_18_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_20_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_20_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_22_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_22_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_24_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_24_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_26_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_26_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_28_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_28_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_30_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_30_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_32_parameters_weight_: tensor<8192x1024xf32>, %l_self_modules_network_modules_32_parameters_bias_: tensor<8192xf32>) -> tensor<1024x8192xf32> {
    %v0.buf = tensor.empty() : tensor<8192x1024xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_0_parameters_weight_ : tensor<1024x8192xf32>)
      outs(%v0.buf : tensor<8192x1024xf32>) {
        ^bb0(%in_1: f32, %acc_2: f32):
          linalg.yield %in_1 : f32
      }
    -> tensor<8192x1024xf32>
    %v3.empty = tensor.empty() : tensor<1024x1024xf32>
    %v4 = arith.constant 0.0 : f32
    %v3.buf = linalg.fill ins(%v4 : f32) outs(%v3.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%l_x_, %v0.buf.out : tensor<1024x8192xf32>, tensor<8192x1024xf32>)
      outs(%v3.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_5: f32, %in_6: f32, %acc_7: f32):
          %v8 = arith.mulf %in_5, %in_6 : f32
          %v9 = arith.addf %v8, %acc_7 : f32
          linalg.yield %v9 : f32
      }
    -> tensor<1024x1024xf32>
    %v10.buf = tensor.empty() : tensor<1x1024xf32>
    %v10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_0_parameters_bias_ : tensor<1024xf32>)
      outs(%v10.buf : tensor<1x1024xf32>) {
        ^bb0(%in_11: f32, %acc_12: f32):
          linalg.yield %in_11 : f32
      }
    -> tensor<1x1024xf32>
    %v13.buf = tensor.empty() : tensor<1024x1024xf32>
    %v13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v10.buf.out : tensor<1x1024xf32>)
      outs(%v13.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_14: f32, %acc_15: f32):
          linalg.yield %in_14 : f32
      }
    -> tensor<1024x1024xf32>
    %input_1.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_1.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v3.buf.out, %v13.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_1.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_16: f32, %in_17: f32, %acc_18: f32):
          %v19 = arith.addf %in_16, %in_17 : f32
          linalg.yield %v19 : f32
      }
    -> tensor<1024x1024xf32>
    %input_2.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_2.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_1.buf.out : tensor<1024x1024xf32>)
      outs(%input_2.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_20: f32, %acc_21: f32):
          %v22 = arith.maxnumf %v4, %in_20 : f32
          linalg.yield %v22 : f32
      }
    -> tensor<1024x1024xf32>
    %v23.buf = tensor.empty() : tensor<1024x1024xf32>
    %v23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_2_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v23.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_24: f32, %acc_25: f32):
          linalg.yield %in_24 : f32
      }
    -> tensor<1024x1024xf32>
    %v26.empty = tensor.empty() : tensor<1024x1024xf32>
    %v26.buf = linalg.fill ins(%v4 : f32) outs(%v26.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_2.buf.out, %v23.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v26.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_27: f32, %in_28: f32, %acc_29: f32):
          %v30 = arith.mulf %in_27, %in_28 : f32
          %v31 = arith.addf %v30, %acc_29 : f32
          linalg.yield %v31 : f32
      }
    -> tensor<1024x1024xf32>
    %v32.buf = tensor.empty() : tensor<1x1024xf32>
    %v32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_2_parameters_bias_ : tensor<1024xf32>)
      outs(%v32.buf : tensor<1x1024xf32>) {
        ^bb0(%in_33: f32, %acc_34: f32):
          linalg.yield %in_33 : f32
      }
    -> tensor<1x1024xf32>
    %v35.buf = tensor.empty() : tensor<1024x1024xf32>
    %v35.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v32.buf.out : tensor<1x1024xf32>)
      outs(%v35.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_36: f32, %acc_37: f32):
          linalg.yield %in_36 : f32
      }
    -> tensor<1024x1024xf32>
    %input_3.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_3.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v26.buf.out, %v35.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_3.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_38: f32, %in_39: f32, %acc_40: f32):
          %v41 = arith.addf %in_38, %in_39 : f32
          linalg.yield %v41 : f32
      }
    -> tensor<1024x1024xf32>
    %input_4.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_4.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_3.buf.out : tensor<1024x1024xf32>)
      outs(%input_4.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_42: f32, %acc_43: f32):
          %v44 = arith.maxnumf %v4, %in_42 : f32
          linalg.yield %v44 : f32
      }
    -> tensor<1024x1024xf32>
    %v45.buf = tensor.empty() : tensor<1024x1024xf32>
    %v45.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_4_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v45.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_46: f32, %acc_47: f32):
          linalg.yield %in_46 : f32
      }
    -> tensor<1024x1024xf32>
    %v48.empty = tensor.empty() : tensor<1024x1024xf32>
    %v48.buf = linalg.fill ins(%v4 : f32) outs(%v48.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v48.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_4.buf.out, %v45.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v48.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %acc_51: f32):
          %v52 = arith.mulf %in_49, %in_50 : f32
          %v53 = arith.addf %v52, %acc_51 : f32
          linalg.yield %v53 : f32
      }
    -> tensor<1024x1024xf32>
    %v54.buf = tensor.empty() : tensor<1x1024xf32>
    %v54.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_4_parameters_bias_ : tensor<1024xf32>)
      outs(%v54.buf : tensor<1x1024xf32>) {
        ^bb0(%in_55: f32, %acc_56: f32):
          linalg.yield %in_55 : f32
      }
    -> tensor<1x1024xf32>
    %v57.buf = tensor.empty() : tensor<1024x1024xf32>
    %v57.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v54.buf.out : tensor<1x1024xf32>)
      outs(%v57.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_58: f32, %acc_59: f32):
          linalg.yield %in_58 : f32
      }
    -> tensor<1024x1024xf32>
    %input_5.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_5.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v48.buf.out, %v57.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_5.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_60: f32, %in_61: f32, %acc_62: f32):
          %v63 = arith.addf %in_60, %in_61 : f32
          linalg.yield %v63 : f32
      }
    -> tensor<1024x1024xf32>
    %input_6.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_6.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_5.buf.out : tensor<1024x1024xf32>)
      outs(%input_6.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_64: f32, %acc_65: f32):
          %v66 = arith.maxnumf %v4, %in_64 : f32
          linalg.yield %v66 : f32
      }
    -> tensor<1024x1024xf32>
    %v67.buf = tensor.empty() : tensor<1024x1024xf32>
    %v67.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_6_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v67.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_68: f32, %acc_69: f32):
          linalg.yield %in_68 : f32
      }
    -> tensor<1024x1024xf32>
    %v70.empty = tensor.empty() : tensor<1024x1024xf32>
    %v70.buf = linalg.fill ins(%v4 : f32) outs(%v70.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_6.buf.out, %v67.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v70.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_71: f32, %in_72: f32, %acc_73: f32):
          %v74 = arith.mulf %in_71, %in_72 : f32
          %v75 = arith.addf %v74, %acc_73 : f32
          linalg.yield %v75 : f32
      }
    -> tensor<1024x1024xf32>
    %v76.buf = tensor.empty() : tensor<1x1024xf32>
    %v76.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_6_parameters_bias_ : tensor<1024xf32>)
      outs(%v76.buf : tensor<1x1024xf32>) {
        ^bb0(%in_77: f32, %acc_78: f32):
          linalg.yield %in_77 : f32
      }
    -> tensor<1x1024xf32>
    %v79.buf = tensor.empty() : tensor<1024x1024xf32>
    %v79.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v76.buf.out : tensor<1x1024xf32>)
      outs(%v79.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_80: f32, %acc_81: f32):
          linalg.yield %in_80 : f32
      }
    -> tensor<1024x1024xf32>
    %input_7.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v70.buf.out, %v79.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_7.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_82: f32, %in_83: f32, %acc_84: f32):
          %v85 = arith.addf %in_82, %in_83 : f32
          linalg.yield %v85 : f32
      }
    -> tensor<1024x1024xf32>
    %input_8.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_8.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_7.buf.out : tensor<1024x1024xf32>)
      outs(%input_8.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_86: f32, %acc_87: f32):
          %v88 = arith.maxnumf %v4, %in_86 : f32
          linalg.yield %v88 : f32
      }
    -> tensor<1024x1024xf32>
    %v89.buf = tensor.empty() : tensor<1024x1024xf32>
    %v89.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_8_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v89.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_90: f32, %acc_91: f32):
          linalg.yield %in_90 : f32
      }
    -> tensor<1024x1024xf32>
    %v92.empty = tensor.empty() : tensor<1024x1024xf32>
    %v92.buf = linalg.fill ins(%v4 : f32) outs(%v92.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v92.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_8.buf.out, %v89.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v92.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_93: f32, %in_94: f32, %acc_95: f32):
          %v96 = arith.mulf %in_93, %in_94 : f32
          %v97 = arith.addf %v96, %acc_95 : f32
          linalg.yield %v97 : f32
      }
    -> tensor<1024x1024xf32>
    %v98.buf = tensor.empty() : tensor<1x1024xf32>
    %v98.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_8_parameters_bias_ : tensor<1024xf32>)
      outs(%v98.buf : tensor<1x1024xf32>) {
        ^bb0(%in_99: f32, %acc_100: f32):
          linalg.yield %in_99 : f32
      }
    -> tensor<1x1024xf32>
    %v101.buf = tensor.empty() : tensor<1024x1024xf32>
    %v101.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v98.buf.out : tensor<1x1024xf32>)
      outs(%v101.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_102: f32, %acc_103: f32):
          linalg.yield %in_102 : f32
      }
    -> tensor<1024x1024xf32>
    %input_9.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_9.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v92.buf.out, %v101.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_9.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_104: f32, %in_105: f32, %acc_106: f32):
          %v107 = arith.addf %in_104, %in_105 : f32
          linalg.yield %v107 : f32
      }
    -> tensor<1024x1024xf32>
    %input_10.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_10.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_9.buf.out : tensor<1024x1024xf32>)
      outs(%input_10.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_108: f32, %acc_109: f32):
          %v110 = arith.maxnumf %v4, %in_108 : f32
          linalg.yield %v110 : f32
      }
    -> tensor<1024x1024xf32>
    %v111.buf = tensor.empty() : tensor<1024x1024xf32>
    %v111.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_10_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v111.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_112: f32, %acc_113: f32):
          linalg.yield %in_112 : f32
      }
    -> tensor<1024x1024xf32>
    %v114.empty = tensor.empty() : tensor<1024x1024xf32>
    %v114.buf = linalg.fill ins(%v4 : f32) outs(%v114.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v114.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_10.buf.out, %v111.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v114.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_115: f32, %in_116: f32, %acc_117: f32):
          %v118 = arith.mulf %in_115, %in_116 : f32
          %v119 = arith.addf %v118, %acc_117 : f32
          linalg.yield %v119 : f32
      }
    -> tensor<1024x1024xf32>
    %v120.buf = tensor.empty() : tensor<1x1024xf32>
    %v120.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_10_parameters_bias_ : tensor<1024xf32>)
      outs(%v120.buf : tensor<1x1024xf32>) {
        ^bb0(%in_121: f32, %acc_122: f32):
          linalg.yield %in_121 : f32
      }
    -> tensor<1x1024xf32>
    %v123.buf = tensor.empty() : tensor<1024x1024xf32>
    %v123.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v120.buf.out : tensor<1x1024xf32>)
      outs(%v123.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_124: f32, %acc_125: f32):
          linalg.yield %in_124 : f32
      }
    -> tensor<1024x1024xf32>
    %input_11.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_11.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v114.buf.out, %v123.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_11.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_126: f32, %in_127: f32, %acc_128: f32):
          %v129 = arith.addf %in_126, %in_127 : f32
          linalg.yield %v129 : f32
      }
    -> tensor<1024x1024xf32>
    %input_12.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_12.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_11.buf.out : tensor<1024x1024xf32>)
      outs(%input_12.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_130: f32, %acc_131: f32):
          %v132 = arith.maxnumf %v4, %in_130 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<1024x1024xf32>
    %v133.buf = tensor.empty() : tensor<1024x1024xf32>
    %v133.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_12_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v133.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_134: f32, %acc_135: f32):
          linalg.yield %in_134 : f32
      }
    -> tensor<1024x1024xf32>
    %v136.empty = tensor.empty() : tensor<1024x1024xf32>
    %v136.buf = linalg.fill ins(%v4 : f32) outs(%v136.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v136.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_12.buf.out, %v133.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v136.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_137: f32, %in_138: f32, %acc_139: f32):
          %v140 = arith.mulf %in_137, %in_138 : f32
          %v141 = arith.addf %v140, %acc_139 : f32
          linalg.yield %v141 : f32
      }
    -> tensor<1024x1024xf32>
    %v142.buf = tensor.empty() : tensor<1x1024xf32>
    %v142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_12_parameters_bias_ : tensor<1024xf32>)
      outs(%v142.buf : tensor<1x1024xf32>) {
        ^bb0(%in_143: f32, %acc_144: f32):
          linalg.yield %in_143 : f32
      }
    -> tensor<1x1024xf32>
    %v145.buf = tensor.empty() : tensor<1024x1024xf32>
    %v145.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v142.buf.out : tensor<1x1024xf32>)
      outs(%v145.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_146: f32, %acc_147: f32):
          linalg.yield %in_146 : f32
      }
    -> tensor<1024x1024xf32>
    %input_13.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_13.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v136.buf.out, %v145.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_13.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_148: f32, %in_149: f32, %acc_150: f32):
          %v151 = arith.addf %in_148, %in_149 : f32
          linalg.yield %v151 : f32
      }
    -> tensor<1024x1024xf32>
    %input_14.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_14.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_13.buf.out : tensor<1024x1024xf32>)
      outs(%input_14.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_152: f32, %acc_153: f32):
          %v154 = arith.maxnumf %v4, %in_152 : f32
          linalg.yield %v154 : f32
      }
    -> tensor<1024x1024xf32>
    %v155.buf = tensor.empty() : tensor<1024x1024xf32>
    %v155.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_14_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v155.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_156: f32, %acc_157: f32):
          linalg.yield %in_156 : f32
      }
    -> tensor<1024x1024xf32>
    %v158.empty = tensor.empty() : tensor<1024x1024xf32>
    %v158.buf = linalg.fill ins(%v4 : f32) outs(%v158.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v158.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_14.buf.out, %v155.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v158.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_159: f32, %in_160: f32, %acc_161: f32):
          %v162 = arith.mulf %in_159, %in_160 : f32
          %v163 = arith.addf %v162, %acc_161 : f32
          linalg.yield %v163 : f32
      }
    -> tensor<1024x1024xf32>
    %v164.buf = tensor.empty() : tensor<1x1024xf32>
    %v164.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_14_parameters_bias_ : tensor<1024xf32>)
      outs(%v164.buf : tensor<1x1024xf32>) {
        ^bb0(%in_165: f32, %acc_166: f32):
          linalg.yield %in_165 : f32
      }
    -> tensor<1x1024xf32>
    %v167.buf = tensor.empty() : tensor<1024x1024xf32>
    %v167.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v164.buf.out : tensor<1x1024xf32>)
      outs(%v167.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_168: f32, %acc_169: f32):
          linalg.yield %in_168 : f32
      }
    -> tensor<1024x1024xf32>
    %input_15.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_15.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v158.buf.out, %v167.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_15.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_170: f32, %in_171: f32, %acc_172: f32):
          %v173 = arith.addf %in_170, %in_171 : f32
          linalg.yield %v173 : f32
      }
    -> tensor<1024x1024xf32>
    %input_16.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_15.buf.out : tensor<1024x1024xf32>)
      outs(%input_16.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_174: f32, %acc_175: f32):
          %v176 = arith.maxnumf %v4, %in_174 : f32
          linalg.yield %v176 : f32
      }
    -> tensor<1024x1024xf32>
    %v177.buf = tensor.empty() : tensor<1024x1024xf32>
    %v177.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_16_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v177.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_178: f32, %acc_179: f32):
          linalg.yield %in_178 : f32
      }
    -> tensor<1024x1024xf32>
    %v180.empty = tensor.empty() : tensor<1024x1024xf32>
    %v180.buf = linalg.fill ins(%v4 : f32) outs(%v180.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v180.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_16.buf.out, %v177.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v180.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_181: f32, %in_182: f32, %acc_183: f32):
          %v184 = arith.mulf %in_181, %in_182 : f32
          %v185 = arith.addf %v184, %acc_183 : f32
          linalg.yield %v185 : f32
      }
    -> tensor<1024x1024xf32>
    %v186.buf = tensor.empty() : tensor<1x1024xf32>
    %v186.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_16_parameters_bias_ : tensor<1024xf32>)
      outs(%v186.buf : tensor<1x1024xf32>) {
        ^bb0(%in_187: f32, %acc_188: f32):
          linalg.yield %in_187 : f32
      }
    -> tensor<1x1024xf32>
    %v189.buf = tensor.empty() : tensor<1024x1024xf32>
    %v189.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v186.buf.out : tensor<1x1024xf32>)
      outs(%v189.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_190: f32, %acc_191: f32):
          linalg.yield %in_190 : f32
      }
    -> tensor<1024x1024xf32>
    %input_17.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_17.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v180.buf.out, %v189.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_17.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_192: f32, %in_193: f32, %acc_194: f32):
          %v195 = arith.addf %in_192, %in_193 : f32
          linalg.yield %v195 : f32
      }
    -> tensor<1024x1024xf32>
    %input_18.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_18.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_17.buf.out : tensor<1024x1024xf32>)
      outs(%input_18.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_196: f32, %acc_197: f32):
          %v198 = arith.maxnumf %v4, %in_196 : f32
          linalg.yield %v198 : f32
      }
    -> tensor<1024x1024xf32>
    %v199.buf = tensor.empty() : tensor<1024x1024xf32>
    %v199.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_18_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v199.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_200: f32, %acc_201: f32):
          linalg.yield %in_200 : f32
      }
    -> tensor<1024x1024xf32>
    %v202.empty = tensor.empty() : tensor<1024x1024xf32>
    %v202.buf = linalg.fill ins(%v4 : f32) outs(%v202.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v202.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_18.buf.out, %v199.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v202.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_203: f32, %in_204: f32, %acc_205: f32):
          %v206 = arith.mulf %in_203, %in_204 : f32
          %v207 = arith.addf %v206, %acc_205 : f32
          linalg.yield %v207 : f32
      }
    -> tensor<1024x1024xf32>
    %v208.buf = tensor.empty() : tensor<1x1024xf32>
    %v208.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_18_parameters_bias_ : tensor<1024xf32>)
      outs(%v208.buf : tensor<1x1024xf32>) {
        ^bb0(%in_209: f32, %acc_210: f32):
          linalg.yield %in_209 : f32
      }
    -> tensor<1x1024xf32>
    %v211.buf = tensor.empty() : tensor<1024x1024xf32>
    %v211.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v208.buf.out : tensor<1x1024xf32>)
      outs(%v211.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_212: f32, %acc_213: f32):
          linalg.yield %in_212 : f32
      }
    -> tensor<1024x1024xf32>
    %input_19.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_19.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v202.buf.out, %v211.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_19.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_214: f32, %in_215: f32, %acc_216: f32):
          %v217 = arith.addf %in_214, %in_215 : f32
          linalg.yield %v217 : f32
      }
    -> tensor<1024x1024xf32>
    %input_20.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_20.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_19.buf.out : tensor<1024x1024xf32>)
      outs(%input_20.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_218: f32, %acc_219: f32):
          %v220 = arith.maxnumf %v4, %in_218 : f32
          linalg.yield %v220 : f32
      }
    -> tensor<1024x1024xf32>
    %v221.buf = tensor.empty() : tensor<1024x1024xf32>
    %v221.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_20_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v221.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_222: f32, %acc_223: f32):
          linalg.yield %in_222 : f32
      }
    -> tensor<1024x1024xf32>
    %v224.empty = tensor.empty() : tensor<1024x1024xf32>
    %v224.buf = linalg.fill ins(%v4 : f32) outs(%v224.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v224.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_20.buf.out, %v221.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v224.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_225: f32, %in_226: f32, %acc_227: f32):
          %v228 = arith.mulf %in_225, %in_226 : f32
          %v229 = arith.addf %v228, %acc_227 : f32
          linalg.yield %v229 : f32
      }
    -> tensor<1024x1024xf32>
    %v230.buf = tensor.empty() : tensor<1x1024xf32>
    %v230.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_20_parameters_bias_ : tensor<1024xf32>)
      outs(%v230.buf : tensor<1x1024xf32>) {
        ^bb0(%in_231: f32, %acc_232: f32):
          linalg.yield %in_231 : f32
      }
    -> tensor<1x1024xf32>
    %v233.buf = tensor.empty() : tensor<1024x1024xf32>
    %v233.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v230.buf.out : tensor<1x1024xf32>)
      outs(%v233.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_234: f32, %acc_235: f32):
          linalg.yield %in_234 : f32
      }
    -> tensor<1024x1024xf32>
    %input_21.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_21.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v224.buf.out, %v233.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_21.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_236: f32, %in_237: f32, %acc_238: f32):
          %v239 = arith.addf %in_236, %in_237 : f32
          linalg.yield %v239 : f32
      }
    -> tensor<1024x1024xf32>
    %input_22.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_22.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_21.buf.out : tensor<1024x1024xf32>)
      outs(%input_22.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_240: f32, %acc_241: f32):
          %v242 = arith.maxnumf %v4, %in_240 : f32
          linalg.yield %v242 : f32
      }
    -> tensor<1024x1024xf32>
    %v243.buf = tensor.empty() : tensor<1024x1024xf32>
    %v243.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_22_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v243.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_244: f32, %acc_245: f32):
          linalg.yield %in_244 : f32
      }
    -> tensor<1024x1024xf32>
    %v246.empty = tensor.empty() : tensor<1024x1024xf32>
    %v246.buf = linalg.fill ins(%v4 : f32) outs(%v246.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v246.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_22.buf.out, %v243.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v246.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_247: f32, %in_248: f32, %acc_249: f32):
          %v250 = arith.mulf %in_247, %in_248 : f32
          %v251 = arith.addf %v250, %acc_249 : f32
          linalg.yield %v251 : f32
      }
    -> tensor<1024x1024xf32>
    %v252.buf = tensor.empty() : tensor<1x1024xf32>
    %v252.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_22_parameters_bias_ : tensor<1024xf32>)
      outs(%v252.buf : tensor<1x1024xf32>) {
        ^bb0(%in_253: f32, %acc_254: f32):
          linalg.yield %in_253 : f32
      }
    -> tensor<1x1024xf32>
    %v255.buf = tensor.empty() : tensor<1024x1024xf32>
    %v255.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v252.buf.out : tensor<1x1024xf32>)
      outs(%v255.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_256: f32, %acc_257: f32):
          linalg.yield %in_256 : f32
      }
    -> tensor<1024x1024xf32>
    %input_23.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_23.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v246.buf.out, %v255.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_23.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_258: f32, %in_259: f32, %acc_260: f32):
          %v261 = arith.addf %in_258, %in_259 : f32
          linalg.yield %v261 : f32
      }
    -> tensor<1024x1024xf32>
    %input_24.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_24.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_23.buf.out : tensor<1024x1024xf32>)
      outs(%input_24.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_262: f32, %acc_263: f32):
          %v264 = arith.maxnumf %v4, %in_262 : f32
          linalg.yield %v264 : f32
      }
    -> tensor<1024x1024xf32>
    %v265.buf = tensor.empty() : tensor<1024x1024xf32>
    %v265.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_24_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v265.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_266: f32, %acc_267: f32):
          linalg.yield %in_266 : f32
      }
    -> tensor<1024x1024xf32>
    %v268.empty = tensor.empty() : tensor<1024x1024xf32>
    %v268.buf = linalg.fill ins(%v4 : f32) outs(%v268.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v268.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_24.buf.out, %v265.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v268.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_269: f32, %in_270: f32, %acc_271: f32):
          %v272 = arith.mulf %in_269, %in_270 : f32
          %v273 = arith.addf %v272, %acc_271 : f32
          linalg.yield %v273 : f32
      }
    -> tensor<1024x1024xf32>
    %v274.buf = tensor.empty() : tensor<1x1024xf32>
    %v274.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_24_parameters_bias_ : tensor<1024xf32>)
      outs(%v274.buf : tensor<1x1024xf32>) {
        ^bb0(%in_275: f32, %acc_276: f32):
          linalg.yield %in_275 : f32
      }
    -> tensor<1x1024xf32>
    %v277.buf = tensor.empty() : tensor<1024x1024xf32>
    %v277.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v274.buf.out : tensor<1x1024xf32>)
      outs(%v277.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_278: f32, %acc_279: f32):
          linalg.yield %in_278 : f32
      }
    -> tensor<1024x1024xf32>
    %input_25.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v268.buf.out, %v277.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_25.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_280: f32, %in_281: f32, %acc_282: f32):
          %v283 = arith.addf %in_280, %in_281 : f32
          linalg.yield %v283 : f32
      }
    -> tensor<1024x1024xf32>
    %input_26.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_26.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_25.buf.out : tensor<1024x1024xf32>)
      outs(%input_26.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_284: f32, %acc_285: f32):
          %v286 = arith.maxnumf %v4, %in_284 : f32
          linalg.yield %v286 : f32
      }
    -> tensor<1024x1024xf32>
    %v287.buf = tensor.empty() : tensor<1024x1024xf32>
    %v287.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_26_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v287.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_288: f32, %acc_289: f32):
          linalg.yield %in_288 : f32
      }
    -> tensor<1024x1024xf32>
    %v290.empty = tensor.empty() : tensor<1024x1024xf32>
    %v290.buf = linalg.fill ins(%v4 : f32) outs(%v290.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v290.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_26.buf.out, %v287.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v290.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_291: f32, %in_292: f32, %acc_293: f32):
          %v294 = arith.mulf %in_291, %in_292 : f32
          %v295 = arith.addf %v294, %acc_293 : f32
          linalg.yield %v295 : f32
      }
    -> tensor<1024x1024xf32>
    %v296.buf = tensor.empty() : tensor<1x1024xf32>
    %v296.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_26_parameters_bias_ : tensor<1024xf32>)
      outs(%v296.buf : tensor<1x1024xf32>) {
        ^bb0(%in_297: f32, %acc_298: f32):
          linalg.yield %in_297 : f32
      }
    -> tensor<1x1024xf32>
    %v299.buf = tensor.empty() : tensor<1024x1024xf32>
    %v299.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v296.buf.out : tensor<1x1024xf32>)
      outs(%v299.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_300: f32, %acc_301: f32):
          linalg.yield %in_300 : f32
      }
    -> tensor<1024x1024xf32>
    %input_27.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_27.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v290.buf.out, %v299.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_27.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_302: f32, %in_303: f32, %acc_304: f32):
          %v305 = arith.addf %in_302, %in_303 : f32
          linalg.yield %v305 : f32
      }
    -> tensor<1024x1024xf32>
    %input_28.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_28.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_27.buf.out : tensor<1024x1024xf32>)
      outs(%input_28.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_306: f32, %acc_307: f32):
          %v308 = arith.maxnumf %v4, %in_306 : f32
          linalg.yield %v308 : f32
      }
    -> tensor<1024x1024xf32>
    %v309.buf = tensor.empty() : tensor<1024x1024xf32>
    %v309.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_28_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v309.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_310: f32, %acc_311: f32):
          linalg.yield %in_310 : f32
      }
    -> tensor<1024x1024xf32>
    %v312.empty = tensor.empty() : tensor<1024x1024xf32>
    %v312.buf = linalg.fill ins(%v4 : f32) outs(%v312.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v312.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_28.buf.out, %v309.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v312.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_313: f32, %in_314: f32, %acc_315: f32):
          %v316 = arith.mulf %in_313, %in_314 : f32
          %v317 = arith.addf %v316, %acc_315 : f32
          linalg.yield %v317 : f32
      }
    -> tensor<1024x1024xf32>
    %v318.buf = tensor.empty() : tensor<1x1024xf32>
    %v318.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_28_parameters_bias_ : tensor<1024xf32>)
      outs(%v318.buf : tensor<1x1024xf32>) {
        ^bb0(%in_319: f32, %acc_320: f32):
          linalg.yield %in_319 : f32
      }
    -> tensor<1x1024xf32>
    %v321.buf = tensor.empty() : tensor<1024x1024xf32>
    %v321.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v318.buf.out : tensor<1x1024xf32>)
      outs(%v321.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_322: f32, %acc_323: f32):
          linalg.yield %in_322 : f32
      }
    -> tensor<1024x1024xf32>
    %input_29.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_29.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v312.buf.out, %v321.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_29.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_324: f32, %in_325: f32, %acc_326: f32):
          %v327 = arith.addf %in_324, %in_325 : f32
          linalg.yield %v327 : f32
      }
    -> tensor<1024x1024xf32>
    %input_30.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_30.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_29.buf.out : tensor<1024x1024xf32>)
      outs(%input_30.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_328: f32, %acc_329: f32):
          %v330 = arith.maxnumf %v4, %in_328 : f32
          linalg.yield %v330 : f32
      }
    -> tensor<1024x1024xf32>
    %v331.buf = tensor.empty() : tensor<1024x1024xf32>
    %v331.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_30_parameters_weight_ : tensor<1024x1024xf32>)
      outs(%v331.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_332: f32, %acc_333: f32):
          linalg.yield %in_332 : f32
      }
    -> tensor<1024x1024xf32>
    %v334.empty = tensor.empty() : tensor<1024x1024xf32>
    %v334.buf = linalg.fill ins(%v4 : f32) outs(%v334.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v334.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_30.buf.out, %v331.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%v334.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_335: f32, %in_336: f32, %acc_337: f32):
          %v338 = arith.mulf %in_335, %in_336 : f32
          %v339 = arith.addf %v338, %acc_337 : f32
          linalg.yield %v339 : f32
      }
    -> tensor<1024x1024xf32>
    %v340.buf = tensor.empty() : tensor<1x1024xf32>
    %v340.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_30_parameters_bias_ : tensor<1024xf32>)
      outs(%v340.buf : tensor<1x1024xf32>) {
        ^bb0(%in_341: f32, %acc_342: f32):
          linalg.yield %in_341 : f32
      }
    -> tensor<1x1024xf32>
    %v343.buf = tensor.empty() : tensor<1024x1024xf32>
    %v343.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v340.buf.out : tensor<1x1024xf32>)
      outs(%v343.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_344: f32, %acc_345: f32):
          linalg.yield %in_344 : f32
      }
    -> tensor<1024x1024xf32>
    %input_31.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_31.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v334.buf.out, %v343.buf.out : tensor<1024x1024xf32>, tensor<1024x1024xf32>)
      outs(%input_31.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_346: f32, %in_347: f32, %acc_348: f32):
          %v349 = arith.addf %in_346, %in_347 : f32
          linalg.yield %v349 : f32
      }
    -> tensor<1024x1024xf32>
    %input_32.buf = tensor.empty() : tensor<1024x1024xf32>
    %input_32.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%input_31.buf.out : tensor<1024x1024xf32>)
      outs(%input_32.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_350: f32, %acc_351: f32):
          %v352 = arith.maxnumf %v4, %in_350 : f32
          linalg.yield %v352 : f32
      }
    -> tensor<1024x1024xf32>
    %v353.buf = tensor.empty() : tensor<1024x8192xf32>
    %v353.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_32_parameters_weight_ : tensor<8192x1024xf32>)
      outs(%v353.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_354: f32, %acc_355: f32):
          linalg.yield %in_354 : f32
      }
    -> tensor<1024x8192xf32>
    %v356.empty = tensor.empty() : tensor<1024x8192xf32>
    %v356.buf = linalg.fill ins(%v4 : f32) outs(%v356.empty : tensor<1024x8192xf32>) -> tensor<1024x8192xf32>
    %v356.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%input_32.buf.out, %v353.buf.out : tensor<1024x1024xf32>, tensor<1024x8192xf32>)
      outs(%v356.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_357: f32, %in_358: f32, %acc_359: f32):
          %v360 = arith.mulf %in_357, %in_358 : f32
          %v361 = arith.addf %v360, %acc_359 : f32
          linalg.yield %v361 : f32
      }
    -> tensor<1024x8192xf32>
    %v362.buf = tensor.empty() : tensor<1x8192xf32>
    %v362.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%l_self_modules_network_modules_32_parameters_bias_ : tensor<8192xf32>)
      outs(%v362.buf : tensor<1x8192xf32>) {
        ^bb0(%in_363: f32, %acc_364: f32):
          linalg.yield %in_363 : f32
      }
    -> tensor<1x8192xf32>
    %v365.buf = tensor.empty() : tensor<1024x8192xf32>
    %v365.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v362.buf.out : tensor<1x8192xf32>)
      outs(%v365.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_366: f32, %acc_367: f32):
          linalg.yield %in_366 : f32
      }
    -> tensor<1024x8192xf32>
    %input_33.buf = tensor.empty() : tensor<1024x8192xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v356.buf.out, %v365.buf.out : tensor<1024x8192xf32>, tensor<1024x8192xf32>)
      outs(%input_33.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_368: f32, %in_369: f32, %acc_370: f32):
          %v371 = arith.addf %in_368, %in_369 : f32
          linalg.yield %v371 : f32
      }
    -> tensor<1024x8192xf32>
    func.return %input_33.buf.out : tensor<1024x8192xf32>
  }
}
