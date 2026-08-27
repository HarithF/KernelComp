
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [8192 x float]]* @MLP([16384 x [16384 x float]]* %_96446, [16384 x float]* %fv_6_96338, [128 x [16384 x float]]* %_96436, [16384 x [16384 x float]]* %_96348, [16384 x float]* %fv_4_96219, [8192 x [16384 x float]]* %_96229, [8192 x float]* %fv_3_96090) {
mimir_graph_20fbf93cda5c0496_95925:
    %_95937i8 = call i8* @malloc(i64 8388608)
    %_95937 = bitcast i8* %_95937i8 to [128 x [16384 x float]]*
    br label %head_95942

head_95942:
    %_95945 = phi i64 [ 0, %mimir_graph_20fbf93cda5c0496_95925 ], [ %fv_1_96406, %new_exit_96403 ]
    %_95950 = icmp ult i64 %_95945, 128
    %fv_8_96420 = trunc i64 %_95945 to i7
    %fv_9_96438.zext = zext i7 %fv_8_96420 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96438 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_96436, i64 0, i8 %fv_9_96438.zext
    %_96422.zext = zext i7 %fv_8_96420 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96422 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95937, i64 0, i8 %_96422.zext
    br i1 %_95950, label %new_body_96394, label %new_exit_95953

new_body_96394:
    br label %head_96397

head_96397:
    %_96400 = phi i64 [ 0, %new_body_96394 ], [ %fv_5_96430, %new_exit_96418 ]
    %_96402 = icmp ult i64 %_96400, 16384
    %_96423 = trunc i64 %_96400 to i14
    %fv_0_96448.zext = zext i14 %_96423 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96448 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]]* %_96446, i64 0, i15 %fv_0_96448.zext
    %fv_7_96425.zext = zext i14 %_96423 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96425 = getelementptr inbounds [16384 x float], [16384 x float]* %_96422, i64 0, i15 %fv_7_96425.zext
    %fv_5_96430 = add nuw nsw i64 1, %_96400
    br i1 %_96402, label %new_body_96409, label %new_exit_96403

new_body_96409:
    br label %head_96412

head_96412:
    %_96415 = phi i64 [ 0, %new_body_96409 ], [ %fv_2_96455, %new_body_96433 ]
    %fv_13_96426 = phi float [ 0x0000000000000000, %new_body_96409 ], [ %_96461, %new_body_96433 ]
    %_96417 = icmp ult i64 %_96415, 16384
    br i1 %_96417, label %new_body_96433, label %new_exit_96418

new_body_96433:
    %_96439 = trunc i64 %_96415 to i14
    %fv_7_96441.zext = zext i14 %_96439 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_7_96441 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_9_96438, i64 0, i15 %fv_7_96441.zext
    %_96443 = load float, float* %fv_7_96441
    %fv_1_96450.zext = zext i14 %_96439 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_1_96450 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_0_96448, i64 0, i15 %fv_1_96450.zext
    %_96452 = load float, float* %fv_1_96450
    %fv_2_96455 = add nuw nsw i64 1, %_96415
    %_96459 = fmul float %_96443, %_96452
    %_96461 = fadd float %_96459, %fv_13_96426
    br label %head_96412

new_exit_96418:
    store float %fv_13_96426, float* %fv_7_96425
    br label %head_96397

new_exit_96403:
    %fv_1_96406 = add nuw nsw i64 1, %_95945
    br label %head_95942

new_exit_95953:
    %_95956i8 = call i8* @malloc(i64 8388608)
    %_95956 = bitcast i8* %_95956i8 to [128 x [16384 x float]]*
    br label %head_95959

head_95959:
    %_95962 = phi i64 [ 0, %new_exit_95953 ], [ %fv_4_96291, %new_exit_96288 ]
    %_95964 = icmp ult i64 %_95962, 128
    %fv_1_96305 = trunc i64 %_95962 to i7
    %fv_8_96322.zext = zext i7 %fv_1_96305 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_8_96322 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95937, i64 0, i8 %fv_8_96322.zext
    %_96307.zext = zext i7 %fv_1_96305 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96307 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95956, i64 0, i8 %_96307.zext
    br i1 %_95964, label %new_body_96279, label %new_exit_95965

new_body_96279:
    br label %head_96282

head_96282:
    %_96285 = phi i64 [ 0, %new_body_96279 ], [ %fv_1_96315, %new_exit_96303 ]
    %_96287 = icmp ult i64 %_96285, 16384
    %_96308 = trunc i64 %_96285 to i14
    %fv_0_96361.zext = zext i14 %_96308 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96361 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]]* %_96348, i64 0, i15 %fv_0_96361.zext
    %fv_10_96310.zext = zext i14 %_96308 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_10_96310 = getelementptr inbounds [16384 x float], [16384 x float]* %_96307, i64 0, i15 %fv_10_96310.zext
    %fv_1_96315 = add nuw nsw i64 1, %_96285
    br i1 %_96287, label %new_body_96294, label %new_exit_96288

new_body_96294:
    br label %head_96297

head_96297:
    %fv_2_96311 = phi float [ 0x0000000000000000, %new_body_96294 ], [ %_96379, %new_body_96318 ]
    %fv_7_96300 = phi i64 [ 0, %new_body_96294 ], [ %fv_2_96368, %new_body_96318 ]
    %_96302 = icmp ult i64 %fv_7_96300, 16384
    br i1 %_96302, label %new_body_96318, label %new_exit_96303

new_body_96318:
    %_96323 = trunc i64 %fv_7_96300 to i14
    %fv_6_96325.zext = zext i14 %_96323 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96325 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_8_96322, i64 0, i15 %fv_6_96325.zext
    %_96327 = load float, float* %fv_6_96325
    %_96330 = urem i64 %fv_7_96300, 16384
    %_96335 = urem i64 %_96330, 16384
    %_96340 = trunc i64 %_96335 to i14
    %_96342.zext = zext i14 %_96340 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96342 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_6_96338, i64 0, i15 %_96342.zext
    %_96344 = load float, float* %_96342
    %fv_0_96363.zext = zext i14 %_96323 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96363 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_0_96361, i64 0, i15 %fv_0_96363.zext
    %_96365 = load float, float* %fv_0_96363
    %fv_2_96368 = add nuw nsw i64 1, %fv_7_96300
    %_96372 = fadd float %_96344, %_96327
    %_96374 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96372)
    %_96377 = fmul float %_96374, %_96365
    %_96379 = fadd float %_96377, %fv_2_96311
    br label %head_96297

new_exit_96303:
    store float %fv_2_96311, float* %fv_10_96310
    br label %head_96282

new_exit_96288:
    %fv_4_96291 = add nuw nsw i64 1, %_95962
    br label %head_95959

new_exit_95965:
    %_95971i8 = call i8* @malloc(i64 4194304)
    %_95971 = bitcast i8* %_95971i8 to [128 x [8192 x float]]*
    br label %head_95974

head_95974:
    %_95977 = phi i64 [ 0, %new_exit_95965 ], [ %fv_1_96139, %new_exit_96136 ]
    %_95979 = icmp ult i64 %_95977, 128
    %fv_3_96157 = trunc i64 %_95977 to i7
    %fv_0_96188.zext = zext i7 %fv_3_96157 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96188 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]]* %_95956, i64 0, i8 %fv_0_96188.zext
    %_96159.zext = zext i7 %fv_3_96157 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96159 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95971, i64 0, i8 %_96159.zext
    br i1 %_95979, label %new_body_96127, label %new_exit_95980

new_body_96127:
    br label %head_96130

head_96130:
    %_96133 = phi i64 [ 0, %new_body_96127 ], [ %fv_1_96167, %new_exit_96155 ]
    %_96135 = icmp ult i64 %_96133, 8192
    %_96160 = trunc i64 %_96133 to i13
    %fv_4_96242.zext = zext i13 %_96160 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_4_96242 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]]* %_96229, i64 0, i14 %fv_4_96242.zext
    %fv_5_96162.zext = zext i13 %_96160 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_5_96162 = getelementptr inbounds [8192 x float], [8192 x float]* %_96159, i64 0, i14 %fv_5_96162.zext
    %fv_1_96167 = add nuw nsw i64 1, %_96133
    br i1 %_96135, label %new_body_96142, label %new_exit_96136

new_body_96142:
    br label %head_96148

head_96148:
    %fv_4_96163 = phi float [ 0x0000000000000000, %new_body_96142 ], [ %_96264, %new_body_96170 ]
    %fv_3_96151 = phi i64 [ 0, %new_body_96142 ], [ %fv_14_96249, %new_body_96170 ]
    %_96154 = icmp ult i64 %fv_3_96151, 16384
    br i1 %_96154, label %new_body_96170, label %new_exit_96155

new_body_96170:
    %_96191 = trunc i64 %fv_3_96151 to i14
    %fv_8_96206.zext = zext i14 %_96191 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_8_96206 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_0_96188, i64 0, i15 %fv_8_96206.zext
    %_96208 = load float, float* %fv_8_96206
    %_96211 = urem i64 %fv_3_96151, 16384
    %_96216 = urem i64 %_96211, 16384
    %_96221 = trunc i64 %_96216 to i14
    %_96223.zext = zext i14 %_96221 to i15 ; add one more bit for gep index as it is treated as signed value
    %_96223 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_4_96219, i64 0, i15 %_96223.zext
    %_96225 = load float, float* %_96223
    %fv_2_96244.zext = zext i14 %_96191 to i15 ; add one more bit for gep index as it is treated as signed value
    %fv_2_96244 = getelementptr inbounds [16384 x float], [16384 x float]* %fv_4_96242, i64 0, i15 %fv_2_96244.zext
    %_96246 = load float, float* %fv_2_96244
    %fv_14_96249 = add nuw nsw i64 1, %fv_3_96151
    %_96253 = fadd float %_96225, %_96208
    %_96257 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_96253)
    %_96262 = fmul float %_96257, %_96246
    %_96264 = fadd float %_96262, %fv_4_96163
    br label %head_96148

new_exit_96155:
    store float %fv_4_96163, float* %fv_5_96162
    br label %head_96130

new_exit_96136:
    %fv_1_96139 = add nuw nsw i64 1, %_95977
    br label %head_95974

new_exit_95980:
    %_95983i8 = call i8* @malloc(i64 4194304)
    %_95983 = bitcast i8* %_95983i8 to [128 x [8192 x float]]*
    br label %head_95986

head_95986:
    %_95989 = phi i64 [ 0, %new_exit_95980 ], [ %fv_5_96016, %new_exit_96009 ]
    %_95991 = icmp ult i64 %_95989, 128
    %fv_2_96038 = trunc i64 %_95989 to i7
    %fv_0_96053.zext = zext i7 %fv_2_96038 to i8 ; add one more bit for gep index as it is treated as signed value
    %fv_0_96053 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95971, i64 0, i8 %fv_0_96053.zext
    %_96099.zext = zext i7 %fv_2_96038 to i8 ; add one more bit for gep index as it is treated as signed value
    %_96099 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]]* %_95983, i64 0, i8 %_96099.zext
    br i1 %_95991, label %new_body_95999, label %new_exit_95992

new_body_95999:
    br label %head_96002

head_96002:
    %fv_5_96005 = phi i64 [ 0, %new_body_95999 ], [ %fv_0_96116, %new_body_96019 ]
    %_96008 = icmp ult i64 %fv_5_96005, 8192
    br i1 %_96008, label %new_body_96019, label %new_exit_96009

new_body_96019:
    %_96056 = trunc i64 %fv_5_96005 to i13
    %fv_9_96071.zext = zext i13 %_96056 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_9_96071 = getelementptr inbounds [8192 x float], [8192 x float]* %fv_0_96053, i64 0, i14 %fv_9_96071.zext
    %_96076 = load float, float* %fv_9_96071
    %_96082 = urem i64 %fv_5_96005, 8192
    %_96087 = urem i64 %_96082, 8192
    %_96092 = trunc i64 %_96087 to i13
    %_96094.zext = zext i13 %_96092 to i14 ; add one more bit for gep index as it is treated as signed value
    %_96094 = getelementptr inbounds [8192 x float], [8192 x float]* %fv_3_96090, i64 0, i14 %_96094.zext
    %_96096 = load float, float* %_96094
    %fv_6_96101.zext = zext i13 %_96056 to i14 ; add one more bit for gep index as it is treated as signed value
    %fv_6_96101 = getelementptr inbounds [8192 x float], [8192 x float]* %_96099, i64 0, i14 %fv_6_96101.zext
    %_96110 = fadd float %_96096, %_96076
    store float %_96110, float* %fv_6_96101
    %fv_0_96116 = add nuw nsw i64 1, %fv_5_96005
    br label %head_96002

new_exit_96009:
    %fv_5_96016 = add nuw nsw i64 1, %_95989
    br label %head_95986

new_exit_95992:
    ret [128 x [8192 x float]]* %_95983

}


