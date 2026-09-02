
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [16384 x float]]* @ShallowWideMLP([32768 x [16384 x float]]* %_96563, [32768 x float]* %fv_1_96454, [128 x [16384 x float]]* %_96552, [32768 x [32768 x float]]* %_96464, [32768 x float]* %fv_0_96335, [16384 x [32768 x float]]* %_96345, [16384 x float]* %fv_4_96203) {
mimir_graph_f50ac88239ea1ebe_96035:
    %_96050i8 = call i8* @malloc(i64 16777216)
    %_96050 = bitcast i8* %_96050i8 to [128 x [32768 x float]]*
    br label %head_96055

head_96055:
    %_96058 = phi i64 [ 0, %mimir_graph_f50ac88239ea1ebe_96035 ], [ %fv_7_96522, %new_exit_96519 ]
    %_96063 = icmp ult i64 %_96058, 128
    %fv_0_96536 = trunc i64 %_96058 to i7
    %fv_1_96554.zext = zext i7 %fv_0_96536 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96554 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96552, i64 0, i8 %fv_1_96554.zext
    %_96538.zext = zext i7 %fv_0_96536 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96538 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96050, i64 0, i8 %_96538.zext
    br i1 %_96063, label %new_body_96510, label %new_exit_96066

new_body_96510:
    br label %head_96513

head_96513:
    %_96516 = phi i64 [ 0, %new_body_96510 ], [ %fv_9_96546, %new_exit_96534 ]
    %_96518 = icmp ult i64 %_96516, 32768
    %_96539 = trunc i64 %_96516 to i15
    %fv_11_96576.zext = zext i15 %_96539 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_11_96576 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]]* %_96563, i64 0, i16 %fv_11_96576.zext
    %fv_0_96541.zext = zext i15 %_96539 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96541 = getelementptr inbounds [32768 x float], [32768 x float]* %_96538, i64 0, i16 %fv_0_96541.zext
    %fv_9_96546 = add nuw nsw i64 1, %_96516
    br i1 %_96518, label %new_body_96525, label %new_exit_96519

new_body_96525:
    br label %head_96528

head_96528:
    %_96531 = phi i64 [ 0, %new_body_96525 ], [ %fv_17_96583, %new_body_96549 ]
    %fv_12_96542 = phi float [ 0x0000000000000000, %new_body_96525 ], [ %_96589, %new_body_96549 ]
    %_96533 = icmp ult i64 %_96531, 16384
    br i1 %_96533, label %new_body_96549, label %new_exit_96534

new_body_96549:
    %_96555 = trunc i64 %_96531 to i14
    %fv_1_96557.zext = zext i14 %_96555 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96557 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_1_96554, i64 0, i15 %fv_1_96557.zext
    %_96559 = load float, float* %fv_1_96557
    %fv_12_96578.zext = zext i14 %_96555 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_12_96578 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_11_96576, i64 0, i15 %fv_12_96578.zext
    %_96580 = load float, float* %fv_12_96578
    %fv_17_96583 = add nuw nsw i64 1, %_96531
    %_96587 = fmul fast float %_96559, %_96580
    %_96589 = fadd fast float %_96587, %fv_12_96542
    br label %head_96528

new_exit_96534:
    store float %fv_12_96542, float* %fv_0_96541
    br label %head_96513

new_exit_96519:
    %fv_7_96522 = add nuw nsw i64 1, %_96058
    br label %head_96055

new_exit_96066:
    %_96069i8 = call i8* @malloc(i64 16777216)
    %_96069 = bitcast i8* %_96069i8 to [128 x [32768 x float]]*
    br label %head_96072

head_96072:
    %_96075 = phi i64 [ 0, %new_exit_96066 ], [ %fv_5_96407, %new_exit_96404 ]
    %_96077 = icmp ult i64 %_96075, 128
    %fv_4_96421 = trunc i64 %_96075 to i7
    %fv_9_96438.zext = zext i7 %fv_4_96421 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96438 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96050, i64 0, i8 %fv_9_96438.zext
    %_96423.zext = zext i7 %fv_4_96421 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96423 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96069, i64 0, i8 %_96423.zext
    br i1 %_96077, label %new_body_96395, label %new_exit_96078

new_body_96395:
    br label %head_96398

head_96398:
    %_96401 = phi i64 [ 0, %new_body_96395 ], [ %fv_2_96431, %new_exit_96419 ]
    %_96403 = icmp ult i64 %_96401, 32768
    %_96424 = trunc i64 %_96401 to i15
    %fv_0_96477.zext = zext i15 %_96424 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96477 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]]* %_96464, i64 0, i16 %fv_0_96477.zext
    %fv_3_96426.zext = zext i15 %_96424 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96426 = getelementptr inbounds [32768 x float], [32768 x float]* %_96423, i64 0, i16 %fv_3_96426.zext
    %fv_2_96431 = add nuw nsw i64 1, %_96401
    br i1 %_96403, label %new_body_96410, label %new_exit_96404

new_body_96410:
    br label %head_96413

head_96413:
    %fv_4_96416 = phi i64 [ 0, %new_body_96410 ], [ %fv_12_96484, %new_body_96434 ]
    %fv_1_96427 = phi float [ 0x0000000000000000, %new_body_96410 ], [ %_96495, %new_body_96434 ]
    %_96418 = icmp ult i64 %fv_4_96416, 32768
    br i1 %_96418, label %new_body_96434, label %new_exit_96419

new_body_96434:
    %_96439 = trunc i64 %fv_4_96416 to i15
    %fv_3_96441.zext = zext i15 %_96439 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96441 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_9_96438, i64 0, i16 %fv_3_96441.zext
    %_96443 = load float, float* %fv_3_96441
    %_96446 = urem i64 %fv_4_96416, 32768
    %_96451 = urem i64 %_96446, 32768
    %_96456 = trunc i64 %_96451 to i15
    %_96458.zext = zext i15 %_96456 to i16 ; add one more bit for gep index as it is treated as signed value
    %_96458 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_1_96454, i64 0, i16 %_96458.zext
    %_96460 = load float, float* %_96458
    %fv_16_96479.zext = zext i15 %_96439 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_16_96479 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_0_96477, i64 0, i16 %fv_16_96479.zext
    %_96481 = load float, float* %fv_16_96479
    %fv_12_96484 = add nuw nsw i64 1, %fv_4_96416
    %_96488 = fadd fast float %_96460, %_96443
    %_96490 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96488)
    %_96493 = fmul fast float %_96490, %_96481
    %_96495 = fadd fast float %_96493, %fv_1_96427
    br label %head_96413

new_exit_96419:
    store float %fv_1_96427, float* %fv_3_96426
    br label %head_96398

new_exit_96404:
    %fv_5_96407 = add nuw nsw i64 1, %_96075
    br label %head_96072

new_exit_96078:
    %_96084i8 = call i8* @malloc(i64 8388608)
    %_96084 = bitcast i8* %_96084i8 to [128 x [16384 x float]]*
    br label %head_96087

head_96087:
    %_96090 = phi i64 [ 0, %new_exit_96078 ], [ %fv_0_96256, %new_exit_96253 ]
    %_96092 = icmp ult i64 %_96090, 128
    %fv_1_96273 = trunc i64 %_96090 to i7
    %fv_5_96304.zext = zext i7 %fv_1_96273 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96304 = getelementptr inbounds [128 x [32768 x float]], [128 x [32768 x float]]* %_96069, i64 0, i8 %fv_5_96304.zext
    %_96275.zext = zext i7 %fv_1_96273 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96275 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96084, i64 0, i8 %_96275.zext
    br i1 %_96092, label %new_body_96244, label %new_exit_96093

new_body_96244:
    br label %head_96247

head_96247:
    %_96250 = phi i64 [ 0, %new_body_96244 ], [ %fv_4_96283, %new_exit_96271 ]
    %_96252 = icmp ult i64 %_96250, 16384
    %_96276 = trunc i64 %_96250 to i14
    %fv_7_96358.zext = zext i14 %_96276 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96358 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]]* %_96345, i64 0, i15 %fv_7_96358.zext
    %fv_1_96278.zext = zext i14 %_96276 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96278 = getelementptr inbounds [16384 x float], [16384 x float]* %_96275, i64 0, i15 %fv_1_96278.zext
    %fv_4_96283 = add nuw nsw i64 1, %_96250
    br i1 %_96252, label %new_body_96259, label %new_exit_96253

new_body_96259:
    br label %head_96264

head_96264:
    %fv_10_96279 = phi float [ 0x0000000000000000, %new_body_96259 ], [ %_96380, %new_body_96286 ]
    %fv_2_96267 = phi i64 [ 0, %new_body_96259 ], [ %fv_15_96365, %new_body_96286 ]
    %_96270 = icmp ult i64 %fv_2_96267, 32768
    br i1 %_96270, label %new_body_96286, label %new_exit_96271

new_body_96286:
    %_96307 = trunc i64 %fv_2_96267 to i15
    %fv_3_96322.zext = zext i15 %_96307 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_3_96322 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_5_96304, i64 0, i16 %fv_3_96322.zext
    %_96324 = load float, float* %fv_3_96322
    %_96327 = urem i64 %fv_2_96267, 32768
    %_96332 = urem i64 %_96327, 32768
    %_96337 = trunc i64 %_96332 to i15
    %_96339.zext = zext i15 %_96337 to i16 ; add one more bit for gep index as it is treated as signed value
    %_96339 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_0_96335, i64 0, i16 %_96339.zext
    %_96341 = load float, float* %_96339
    %fv_6_96360.zext = zext i15 %_96307 to i16 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96360 = getelementptr inbounds [32768 x float], [32768 x float]* %fv_7_96358, i64 0, i16 %fv_6_96360.zext
    %_96362 = load float, float* %fv_6_96360
    %fv_15_96365 = add nuw nsw i64 1, %fv_2_96267
    %_96369 = fadd fast float %_96341, %_96324
    %_96373 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96369)
    %_96378 = fmul fast float %_96373, %_96362
    %_96380 = fadd fast float %_96378, %fv_10_96279
    br label %head_96264

new_exit_96271:
    store float %fv_10_96279, float* %fv_1_96278
    br label %head_96247

new_exit_96253:
    %fv_0_96256 = add nuw nsw i64 1, %_96090
    br label %head_96087

new_exit_96093:
    %_96096i8 = call i8* @malloc(i64 8388608)
    %_96096 = bitcast i8* %_96096i8 to [128 x [16384 x float]]*
    br label %head_96099

head_96099:
    %_96102 = phi i64 [ 0, %new_exit_96093 ], [ %fv_1_96129, %new_exit_96122 ]
    %_96104 = icmp ult i64 %_96102, 128
    %fv_3_96151 = trunc i64 %_96102 to i7
    %fv_2_96166.zext = zext i7 %fv_3_96151 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96166 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96084, i64 0, i8 %fv_2_96166.zext
    %_96212.zext = zext i7 %fv_3_96151 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96212 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96096, i64 0, i8 %_96212.zext
    br i1 %_96104, label %new_body_96112, label %new_exit_96105

new_body_96112:
    br label %head_96115

head_96115:
    %fv_4_96118 = phi i64 [ 0, %new_body_96112 ], [ %fv_9_96233, %new_body_96132 ]
    %_96121 = icmp ult i64 %fv_4_96118, 16384
    br i1 %_96121, label %new_body_96132, label %new_exit_96122

new_body_96132:
    %_96169 = trunc i64 %fv_4_96118 to i14
    %fv_7_96184.zext = zext i14 %_96169 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96184 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_2_96166, i64 0, i15 %fv_7_96184.zext
    %_96189 = load float, float* %fv_7_96184
    %_96195 = urem i64 %fv_4_96118, 16384
    %_96200 = urem i64 %_96195, 16384
    %_96205 = trunc i64 %_96200 to i14
    %_96207.zext = zext i14 %_96205 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96207 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_4_96203, i64 0, i15 %_96207.zext
    %_96209 = load float, float* %_96207
    %fv_6_96214.zext = zext i14 %_96169 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96214 = getelementptr inbounds [16384 x float], [16384 x float]* %_96212, i64 0, i15 %fv_6_96214.zext
    %_96227 = fadd fast float %_96209, %_96189
    store float %_96227, float* %fv_6_96214
    %fv_9_96233 = add nuw nsw i64 1, %fv_4_96118
    br label %head_96115

new_exit_96122:
    %fv_1_96129 = add nuw nsw i64 1, %_96102
    br label %head_96099

new_exit_96105:
    ret [128 x [16384 x float]]* %_96096

}


