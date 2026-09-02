module {
  func.func public @DeepNarrowMLP(%l_self_modules_network_modules_0_parameters_weight_: tensor<1024x8192xf32>, %l_self_modules_network_modules_0_parameters_bias_: tensor<1024xf32>, %l_x_: tensor<1024x8192xf32>, %l_self_modules_network_modules_2_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_2_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_4_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_4_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_6_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_6_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_8_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_8_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_10_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_10_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_12_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_12_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_14_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_14_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_16_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_16_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_18_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_18_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_20_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_20_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_22_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_22_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_24_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_24_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_26_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_26_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_28_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_28_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_30_parameters_weight_: tensor<1024x1024xf32>, %l_self_modules_network_modules_30_parameters_bias_: tensor<1024xf32>, %l_self_modules_network_modules_32_parameters_weight_: tensor<8192x1024xf32>, %l_self_modules_network_modules_32_parameters_bias_: tensor<8192xf32>) -> tensor<1024x8192xf32> {
    %v0.empty = tensor.empty() : tensor<1024x1024xf32>
    %v1 = arith.constant 0.0 : f32
    %v0.buf = linalg.fill ins(%v1 : f32) outs(%v0.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v0.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%l_x_, %l_self_modules_network_modules_0_parameters_weight_ : tensor<1024x8192xf32>, tensor<1024x8192xf32>)
      outs(%v0.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_2: f32, %in_3: f32, %acc_4: f32):
          %v5 = arith.mulf %in_3, %in_2 : f32
          %v6 = arith.addf %v5, %acc_4 : f32
          linalg.yield %v6 : f32
      }
    -> tensor<1024x1024xf32>
    %v7.empty = tensor.empty() : tensor<1024x1024xf32>
    %v7.buf = linalg.fill ins(%v1 : f32) outs(%v7.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v7.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v0.buf.out, %l_self_modules_network_modules_0_parameters_bias_, %l_self_modules_network_modules_2_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v7.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_8: f32, %in_9: f32, %in_10: f32, %acc_11: f32):
          %v12 = arith.addf %in_8, %in_9 : f32
          %v13 = arith.maxnumf %v1, %v12 : f32
          %v14 = arith.mulf %v13, %in_10 : f32
          %v15 = arith.addf %v14, %acc_11 : f32
          linalg.yield %v15 : f32
      }
    -> tensor<1024x1024xf32>
    %v16.empty = tensor.empty() : tensor<1024x1024xf32>
    %v16.buf = linalg.fill ins(%v1 : f32) outs(%v16.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v16.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v7.buf.out, %l_self_modules_network_modules_2_parameters_bias_, %l_self_modules_network_modules_4_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v16.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_17: f32, %in_18: f32, %in_19: f32, %acc_20: f32):
          %v21 = arith.addf %in_17, %in_18 : f32
          %v22 = arith.maxnumf %v1, %v21 : f32
          %v23 = arith.mulf %v22, %in_19 : f32
          %v24 = arith.addf %v23, %acc_20 : f32
          linalg.yield %v24 : f32
      }
    -> tensor<1024x1024xf32>
    %v25.empty = tensor.empty() : tensor<1024x1024xf32>
    %v25.buf = linalg.fill ins(%v1 : f32) outs(%v25.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v25.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v16.buf.out, %l_self_modules_network_modules_4_parameters_bias_, %l_self_modules_network_modules_6_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v25.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_26: f32, %in_27: f32, %in_28: f32, %acc_29: f32):
          %v30 = arith.addf %in_26, %in_27 : f32
          %v31 = arith.maxnumf %v1, %v30 : f32
          %v32 = arith.mulf %v31, %in_28 : f32
          %v33 = arith.addf %v32, %acc_29 : f32
          linalg.yield %v33 : f32
      }
    -> tensor<1024x1024xf32>
    %v34.empty = tensor.empty() : tensor<1024x1024xf32>
    %v34.buf = linalg.fill ins(%v1 : f32) outs(%v34.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v34.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v25.buf.out, %l_self_modules_network_modules_6_parameters_bias_, %l_self_modules_network_modules_8_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v34.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_35: f32, %in_36: f32, %in_37: f32, %acc_38: f32):
          %v39 = arith.addf %in_35, %in_36 : f32
          %v40 = arith.maxnumf %v1, %v39 : f32
          %v41 = arith.mulf %v40, %in_37 : f32
          %v42 = arith.addf %v41, %acc_38 : f32
          linalg.yield %v42 : f32
      }
    -> tensor<1024x1024xf32>
    %v43.empty = tensor.empty() : tensor<1024x1024xf32>
    %v43.buf = linalg.fill ins(%v1 : f32) outs(%v43.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v43.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v34.buf.out, %l_self_modules_network_modules_8_parameters_bias_, %l_self_modules_network_modules_10_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v43.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_44: f32, %in_45: f32, %in_46: f32, %acc_47: f32):
          %v48 = arith.addf %in_44, %in_45 : f32
          %v49 = arith.maxnumf %v1, %v48 : f32
          %v50 = arith.mulf %v49, %in_46 : f32
          %v51 = arith.addf %v50, %acc_47 : f32
          linalg.yield %v51 : f32
      }
    -> tensor<1024x1024xf32>
    %v52.empty = tensor.empty() : tensor<1024x1024xf32>
    %v52.buf = linalg.fill ins(%v1 : f32) outs(%v52.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v52.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v43.buf.out, %l_self_modules_network_modules_10_parameters_bias_, %l_self_modules_network_modules_12_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v52.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_53: f32, %in_54: f32, %in_55: f32, %acc_56: f32):
          %v57 = arith.addf %in_53, %in_54 : f32
          %v58 = arith.maxnumf %v1, %v57 : f32
          %v59 = arith.mulf %v58, %in_55 : f32
          %v60 = arith.addf %v59, %acc_56 : f32
          linalg.yield %v60 : f32
      }
    -> tensor<1024x1024xf32>
    %v61.empty = tensor.empty() : tensor<1024x1024xf32>
    %v61.buf = linalg.fill ins(%v1 : f32) outs(%v61.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v61.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v52.buf.out, %l_self_modules_network_modules_12_parameters_bias_, %l_self_modules_network_modules_14_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v61.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_62: f32, %in_63: f32, %in_64: f32, %acc_65: f32):
          %v66 = arith.addf %in_62, %in_63 : f32
          %v67 = arith.maxnumf %v1, %v66 : f32
          %v68 = arith.mulf %v67, %in_64 : f32
          %v69 = arith.addf %v68, %acc_65 : f32
          linalg.yield %v69 : f32
      }
    -> tensor<1024x1024xf32>
    %v70.empty = tensor.empty() : tensor<1024x1024xf32>
    %v70.buf = linalg.fill ins(%v1 : f32) outs(%v70.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v70.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v61.buf.out, %l_self_modules_network_modules_14_parameters_bias_, %l_self_modules_network_modules_16_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v70.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_71: f32, %in_72: f32, %in_73: f32, %acc_74: f32):
          %v75 = arith.addf %in_71, %in_72 : f32
          %v76 = arith.maxnumf %v1, %v75 : f32
          %v77 = arith.mulf %v76, %in_73 : f32
          %v78 = arith.addf %v77, %acc_74 : f32
          linalg.yield %v78 : f32
      }
    -> tensor<1024x1024xf32>
    %v79.empty = tensor.empty() : tensor<1024x1024xf32>
    %v79.buf = linalg.fill ins(%v1 : f32) outs(%v79.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v79.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v70.buf.out, %l_self_modules_network_modules_16_parameters_bias_, %l_self_modules_network_modules_18_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v79.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_80: f32, %in_81: f32, %in_82: f32, %acc_83: f32):
          %v84 = arith.addf %in_80, %in_81 : f32
          %v85 = arith.maxnumf %v1, %v84 : f32
          %v86 = arith.mulf %v85, %in_82 : f32
          %v87 = arith.addf %v86, %acc_83 : f32
          linalg.yield %v87 : f32
      }
    -> tensor<1024x1024xf32>
    %v88.empty = tensor.empty() : tensor<1024x1024xf32>
    %v88.buf = linalg.fill ins(%v1 : f32) outs(%v88.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v88.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v79.buf.out, %l_self_modules_network_modules_18_parameters_bias_, %l_self_modules_network_modules_20_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v88.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_89: f32, %in_90: f32, %in_91: f32, %acc_92: f32):
          %v93 = arith.addf %in_89, %in_90 : f32
          %v94 = arith.maxnumf %v1, %v93 : f32
          %v95 = arith.mulf %v94, %in_91 : f32
          %v96 = arith.addf %v95, %acc_92 : f32
          linalg.yield %v96 : f32
      }
    -> tensor<1024x1024xf32>
    %v97.empty = tensor.empty() : tensor<1024x1024xf32>
    %v97.buf = linalg.fill ins(%v1 : f32) outs(%v97.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v97.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v88.buf.out, %l_self_modules_network_modules_20_parameters_bias_, %l_self_modules_network_modules_22_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v97.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_98: f32, %in_99: f32, %in_100: f32, %acc_101: f32):
          %v102 = arith.addf %in_98, %in_99 : f32
          %v103 = arith.maxnumf %v1, %v102 : f32
          %v104 = arith.mulf %v103, %in_100 : f32
          %v105 = arith.addf %v104, %acc_101 : f32
          linalg.yield %v105 : f32
      }
    -> tensor<1024x1024xf32>
    %v106.empty = tensor.empty() : tensor<1024x1024xf32>
    %v106.buf = linalg.fill ins(%v1 : f32) outs(%v106.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v106.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v97.buf.out, %l_self_modules_network_modules_22_parameters_bias_, %l_self_modules_network_modules_24_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v106.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_107: f32, %in_108: f32, %in_109: f32, %acc_110: f32):
          %v111 = arith.addf %in_107, %in_108 : f32
          %v112 = arith.maxnumf %v1, %v111 : f32
          %v113 = arith.mulf %v112, %in_109 : f32
          %v114 = arith.addf %v113, %acc_110 : f32
          linalg.yield %v114 : f32
      }
    -> tensor<1024x1024xf32>
    %v115.empty = tensor.empty() : tensor<1024x1024xf32>
    %v115.buf = linalg.fill ins(%v1 : f32) outs(%v115.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v115.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v106.buf.out, %l_self_modules_network_modules_24_parameters_bias_, %l_self_modules_network_modules_26_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v115.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_116: f32, %in_117: f32, %in_118: f32, %acc_119: f32):
          %v120 = arith.addf %in_116, %in_117 : f32
          %v121 = arith.maxnumf %v1, %v120 : f32
          %v122 = arith.mulf %v121, %in_118 : f32
          %v123 = arith.addf %v122, %acc_119 : f32
          linalg.yield %v123 : f32
      }
    -> tensor<1024x1024xf32>
    %v124.empty = tensor.empty() : tensor<1024x1024xf32>
    %v124.buf = linalg.fill ins(%v1 : f32) outs(%v124.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v124.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v115.buf.out, %l_self_modules_network_modules_26_parameters_bias_, %l_self_modules_network_modules_28_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v124.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_125: f32, %in_126: f32, %in_127: f32, %acc_128: f32):
          %v129 = arith.addf %in_125, %in_126 : f32
          %v130 = arith.maxnumf %v1, %v129 : f32
          %v131 = arith.mulf %v130, %in_127 : f32
          %v132 = arith.addf %v131, %acc_128 : f32
          linalg.yield %v132 : f32
      }
    -> tensor<1024x1024xf32>
    %v133.empty = tensor.empty() : tensor<1024x1024xf32>
    %v133.buf = linalg.fill ins(%v1 : f32) outs(%v133.empty : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %v133.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v124.buf.out, %l_self_modules_network_modules_28_parameters_bias_, %l_self_modules_network_modules_30_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<1024x1024xf32>)
      outs(%v133.buf : tensor<1024x1024xf32>) {
        ^bb0(%in_134: f32, %in_135: f32, %in_136: f32, %acc_137: f32):
          %v138 = arith.addf %in_134, %in_135 : f32
          %v139 = arith.maxnumf %v1, %v138 : f32
          %v140 = arith.mulf %v139, %in_136 : f32
          %v141 = arith.addf %v140, %acc_137 : f32
          linalg.yield %v141 : f32
      }
    -> tensor<1024x1024xf32>
    %v142.empty = tensor.empty() : tensor<1024x8192xf32>
    %v142.buf = linalg.fill ins(%v1 : f32) outs(%v142.empty : tensor<1024x8192xf32>) -> tensor<1024x8192xf32>
    %v142.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]}
      ins(%v133.buf.out, %l_self_modules_network_modules_30_parameters_bias_, %l_self_modules_network_modules_32_parameters_weight_ : tensor<1024x1024xf32>, tensor<1024xf32>, tensor<8192x1024xf32>)
      outs(%v142.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_143: f32, %in_144: f32, %in_145: f32, %acc_146: f32):
          %v147 = arith.addf %in_143, %in_144 : f32
          %v148 = arith.maxnumf %v1, %v147 : f32
          %v149 = arith.mulf %v148, %in_145 : f32
          %v150 = arith.addf %v149, %acc_146 : f32
          linalg.yield %v150 : f32
      }
    -> tensor<1024x8192xf32>
    %input_33.buf = tensor.empty() : tensor<1024x8192xf32>
    %input_33.buf.out = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]}
      ins(%v142.buf.out, %l_self_modules_network_modules_32_parameters_bias_ : tensor<1024x8192xf32>, tensor<8192xf32>)
      outs(%input_33.buf : tensor<1024x8192xf32>) {
        ^bb0(%in_151: f32, %in_152: f32, %acc_153: f32):
          %v154 = arith.addf %in_152, %in_151 : f32
          linalg.yield %v154 : f32
      }
    -> tensor<1024x8192xf32>
    func.return %input_33.buf.out : tensor<1024x8192xf32>
  }
}
