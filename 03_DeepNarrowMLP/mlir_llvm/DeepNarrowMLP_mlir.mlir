#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @DeepNarrowMLP(%arg0: tensor<1024x8192xf32>, %arg1: tensor<1024x8192xf32>, %arg2: tensor<1024xf32>, %arg3: tensor<1024x1024xf32>, %arg4: tensor<1024xf32>, %arg5: tensor<1024x1024xf32>, %arg6: tensor<1024xf32>, %arg7: tensor<1024x1024xf32>, %arg8: tensor<1024xf32>, %arg9: tensor<1024x1024xf32>, %arg10: tensor<1024xf32>, %arg11: tensor<1024x1024xf32>, %arg12: tensor<1024xf32>, %arg13: tensor<1024x1024xf32>, %arg14: tensor<1024xf32>, %arg15: tensor<1024x1024xf32>, %arg16: tensor<1024xf32>, %arg17: tensor<1024x1024xf32>, %arg18: tensor<1024xf32>, %arg19: tensor<1024x1024xf32>, %arg20: tensor<1024xf32>, %arg21: tensor<1024x1024xf32>, %arg22: tensor<1024xf32>, %arg23: tensor<1024x1024xf32>, %arg24: tensor<1024xf32>, %arg25: tensor<1024x1024xf32>, %arg26: tensor<1024xf32>, %arg27: tensor<1024x1024xf32>, %arg28: tensor<1024xf32>, %arg29: tensor<1024x1024xf32>, %arg30: tensor<1024xf32>, %arg31: tensor<1024x1024xf32>, %arg32: tensor<1024xf32>, %arg33: tensor<8192x1024xf32>, %arg34: tensor<8192xf32>) -> tensor<1024x8192xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.empty() : tensor<8192x1024xf32>
    %transposed = linalg.transpose ins(%arg1 : tensor<1024x8192xf32>) outs(%0 : tensor<8192x1024xf32>) permutation = [1, 0] 
    %1 = tensor.empty() : tensor<1024x1024xf32>
    %2 = linalg.fill ins(%cst : f32) outs(%1 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %3 = linalg.matmul ins(%arg0, %transposed : tensor<1024x8192xf32>, tensor<8192x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%3, %arg2 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%4 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_0 = linalg.transpose ins(%arg3 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %6 = linalg.matmul ins(%5, %transposed_0 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %7 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%6, %arg4 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%7 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_1 = linalg.transpose ins(%arg5 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %9 = linalg.matmul ins(%8, %transposed_1 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%9, %arg6 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %11 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%10 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_2 = linalg.transpose ins(%arg7 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %12 = linalg.matmul ins(%11, %transposed_2 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%12, %arg8 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%13 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_3 = linalg.transpose ins(%arg9 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %15 = linalg.matmul ins(%14, %transposed_3 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%15, %arg10 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %17 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%16 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_4 = linalg.transpose ins(%arg11 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %18 = linalg.matmul ins(%17, %transposed_4 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%18, %arg12 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%19 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_5 = linalg.transpose ins(%arg13 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %21 = linalg.matmul ins(%20, %transposed_5 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%21, %arg14 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %23 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%22 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_6 = linalg.transpose ins(%arg15 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %24 = linalg.matmul ins(%23, %transposed_6 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%24, %arg16 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%25 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_7 = linalg.transpose ins(%arg17 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %27 = linalg.matmul ins(%26, %transposed_7 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%27, %arg18 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %29 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%28 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_8 = linalg.transpose ins(%arg19 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %30 = linalg.matmul ins(%29, %transposed_8 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%30, %arg20 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %32 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%31 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_9 = linalg.transpose ins(%arg21 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %33 = linalg.matmul ins(%32, %transposed_9 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%33, %arg22 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %35 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%34 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_10 = linalg.transpose ins(%arg23 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %36 = linalg.matmul ins(%35, %transposed_10 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%36, %arg24 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %38 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%37 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_11 = linalg.transpose ins(%arg25 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %39 = linalg.matmul ins(%38, %transposed_11 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%39, %arg26 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %41 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%40 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_12 = linalg.transpose ins(%arg27 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %42 = linalg.matmul ins(%41, %transposed_12 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%42, %arg28 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %44 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%43 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_13 = linalg.transpose ins(%arg29 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %45 = linalg.matmul ins(%44, %transposed_13 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%45, %arg30 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %47 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%46 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %transposed_14 = linalg.transpose ins(%arg31 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) permutation = [1, 0] 
    %48 = linalg.matmul ins(%47, %transposed_14 : tensor<1024x1024xf32>, tensor<1024x1024xf32>) outs(%2 : tensor<1024x1024xf32>) -> tensor<1024x1024xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%48, %arg32 : tensor<1024x1024xf32>, tensor<1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x1024xf32>
    %50 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%49 : tensor<1024x1024xf32>) outs(%1 : tensor<1024x1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %55 = arith.cmpf ugt, %in, %cst : f32
      %56 = arith.select %55, %in, %cst : f32
      linalg.yield %56 : f32
    } -> tensor<1024x1024xf32>
    %51 = tensor.empty() : tensor<1024x8192xf32>
    %transposed_15 = linalg.transpose ins(%arg33 : tensor<8192x1024xf32>) outs(%51 : tensor<1024x8192xf32>) permutation = [1, 0] 
    %52 = linalg.fill ins(%cst : f32) outs(%51 : tensor<1024x8192xf32>) -> tensor<1024x8192xf32>
    %53 = linalg.matmul ins(%50, %transposed_15 : tensor<1024x1024xf32>, tensor<1024x8192xf32>) outs(%52 : tensor<1024x8192xf32>) -> tensor<1024x8192xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map], iterator_types = ["parallel", "parallel"]} ins(%53, %arg34 : tensor<1024x8192xf32>, tensor<8192xf32>) outs(%51 : tensor<1024x8192xf32>) {
    ^bb0(%in: f32, %in_16: f32, %out: f32):
      %55 = arith.addf %in, %in_16 : f32
      linalg.yield %55 : f32
    } -> tensor<1024x8192xf32>
    return %54 : tensor<1024x8192xf32>
  }
}
