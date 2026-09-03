
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [16384 x float]] addrspace(0)* @ShallowWideMLP([32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353691, [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, [128 x [16384 x float]] addrspace(0)* %l_x__353677, [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352474, [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351188, [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413) {
mimir_graph_a66a34e47c47552f_349968:
    %_349990i8 = call i8* @malloc(i64 16777216)
    %_349990 = bitcast i8* %_349990i8 to [64 x [2 x [8192 x [4 x float]]]] addrspace(0)*
    %_350000i8 = call i8* @malloc(i64 32)
    %_350000 = bitcast i8* %_350000i8 to [8 x float] addrspace(0)*
    %fv_0_352976.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352976 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352976.zext
    %fv_0_352980.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352980 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352980.zext
    %fv_0_352984.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352984 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352984.zext
    %fv_0_352988.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352988 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352988.zext
    %fv_0_352992.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352992 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352992.zext
    %fv_0_352996.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352996 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_352996.zext
    %fv_0_353000.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353000 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_353000.zext
    %fv_0_353004.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_353004 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350000, i64 0, i4 %fv_0_353004.zext
    br label %head_350004

head_350004:
    %iv_350008 = phi i32 [ 0, %mimir_graph_a66a34e47c47552f_349968 ], [ %fv_10_352968, %new_exit_352966 ]
    %_350013 = icmp ult i32 %iv_350008, 64
    %_353024 = trunc i32 %iv_350008 to i6
    %_353025 = zext i6 %_353024 to i64
    %t_353027 = mul i64 2, %_353025
    %_353680 = trunc i64 %t_353027 to i7
    %_353682.zext = zext i7 %_353680 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353682 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__353677, i64 0, i8 %_353682.zext
    %t_353356 = add i64 1, %t_353027
    %_353790 = trunc i64 %t_353356 to i7
    %_353792.zext = zext i7 %_353790 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353792 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__353677, i64 0, i8 %_353792.zext
    br i1 %_350013, label %new_body_352957, label %new_exit_350016

new_body_352957:
    br label %head_352960

head_352960:
    %iv_352963 = phi i32 [ 0, %new_body_352957 ], [ %fv_10_353017, %new_exit_353015 ]
    %_352965 = icmp ult i32 %iv_352963, 8192
    %_353043 = trunc i32 %iv_352963 to i13
    %_353044 = zext i13 %_353043 to i64
    %t_353046 = mul i64 4, %_353044
    %_353692 = trunc i64 %t_353046 to i15
    %_353703.zext = zext i15 %_353692 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353703 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353691, i64 0, i16 %_353703.zext
    %t_353127 = add i64 1, %t_353046
    %_353724 = trunc i64 %t_353127 to i15
    %_353726.zext = zext i15 %_353724 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353726 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353691, i64 0, i16 %_353726.zext
    %t_353208 = add i64 2, %t_353046
    %_353747 = trunc i64 %t_353208 to i15
    %_353749.zext = zext i15 %_353747 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353749 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353691, i64 0, i16 %_353749.zext
    %t_353289 = add i64 3, %t_353046
    %_353770 = trunc i64 %t_353289 to i15
    %_353772.zext = zext i15 %_353770 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353772 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353691, i64 0, i16 %_353772.zext
    br i1 %_352965, label %new_body_352972, label %new_exit_352966

new_body_352972:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352976
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352980
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352984
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352988
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352992
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352996
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353000
    store float 0x0000000000000000, float addrspace(0)* %fv_0_353004
    br label %head_353008, !llvm.loop !1001

head_353008:
    %iv_353011 = phi i32 [ 0, %new_body_352972 ], [ %fv_9_353671, %new_body_353669 ]
    %_353013 = icmp ult i32 %iv_353011, 16384
    br i1 %_353013, label %new_body_353669, label %new_exit_353015

new_body_353669:
    %fv_9_353671 = add nuw nsw i32 1, %iv_353011
    %_353674 = load float, float addrspace(0)* %fv_0_352976
    %_353683 = trunc i32 %iv_353011 to i14
    %_353685.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353685 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353682, i64 0, i15 %_353685.zext
    %_353687 = load float, float addrspace(0)* %_353685
    %_353705.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353705 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353703, i64 0, i15 %_353705.zext
    %_353707 = load float, float addrspace(0)* %_353705
    %_353712 = fmul fast float %_353687, %_353707
    %accn_353715 = fadd fast float %_353712, %_353674
    store float %accn_353715, float addrspace(0)* %fv_0_352976
    %_353719 = load float, float addrspace(0)* %fv_0_352980
    %_353722 = load float, float addrspace(0)* %_353685
    %_353728.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353728 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353726, i64 0, i15 %_353728.zext
    %_353730 = load float, float addrspace(0)* %_353728
    %_353735 = fmul fast float %_353722, %_353730
    %accn_353738 = fadd fast float %_353735, %_353719
    store float %accn_353738, float addrspace(0)* %fv_0_352980
    %_353742 = load float, float addrspace(0)* %fv_0_352984
    %_353745 = load float, float addrspace(0)* %_353685
    %_353751.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353751 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353749, i64 0, i15 %_353751.zext
    %_353753 = load float, float addrspace(0)* %_353751
    %_353758 = fmul fast float %_353745, %_353753
    %accn_353761 = fadd fast float %_353758, %_353742
    store float %accn_353761, float addrspace(0)* %fv_0_352984
    %_353765 = load float, float addrspace(0)* %fv_0_352988
    %_353768 = load float, float addrspace(0)* %_353685
    %_353774.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353774 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353772, i64 0, i15 %_353774.zext
    %_353776 = load float, float addrspace(0)* %_353774
    %_353781 = fmul fast float %_353768, %_353776
    %accn_353784 = fadd fast float %_353781, %_353765
    store float %accn_353784, float addrspace(0)* %fv_0_352988
    %_353788 = load float, float addrspace(0)* %fv_0_352992
    %_353794.zext = zext i14 %_353683 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353794 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353792, i64 0, i15 %_353794.zext
    %_353796 = load float, float addrspace(0)* %_353794
    %_353799 = load float, float addrspace(0)* %_353705
    %_353804 = fmul fast float %_353799, %_353796
    %accn_353807 = fadd fast float %_353804, %_353788
    store float %accn_353807, float addrspace(0)* %fv_0_352992
    %_353811 = load float, float addrspace(0)* %fv_0_352996
    %_353814 = load float, float addrspace(0)* %_353794
    %_353817 = load float, float addrspace(0)* %_353728
    %_353822 = fmul fast float %_353814, %_353817
    %accn_353825 = fadd fast float %_353822, %_353811
    store float %accn_353825, float addrspace(0)* %fv_0_352996
    %_353829 = load float, float addrspace(0)* %fv_0_353000
    %_353832 = load float, float addrspace(0)* %_353794
    %_353835 = load float, float addrspace(0)* %_353751
    %_353840 = fmul fast float %_353832, %_353835
    %accn_353843 = fadd fast float %_353840, %_353829
    store float %accn_353843, float addrspace(0)* %fv_0_353000
    %_353847 = load float, float addrspace(0)* %fv_0_353004
    %_353850 = load float, float addrspace(0)* %_353794
    %_353853 = load float, float addrspace(0)* %_353774
    %_353858 = fmul fast float %_353850, %_353853
    %accn_353861 = fadd fast float %_353858, %_353847
    store float %accn_353861, float addrspace(0)* %fv_0_353004
    br label %head_353008, !llvm.loop !1001

new_exit_353015:
    %fv_10_353017 = add nuw nsw i32 1, %iv_352963
    %_353020 = load float, float addrspace(0)* %fv_0_352976
    %_353030 = udiv i64 %t_353027, 2
    %_353033 = mul i64 65536, %_353030
    %_353036 = urem i64 %t_353027, 2
    %_353039 = mul i64 32768, %_353036
    %_353041 = add i64 %_353033, %_353039
    %_353049 = udiv i64 %t_353046, 4
    %_353052 = mul i64 4, %_353049
    %_353054 = add i64 %_353041, %_353052
    %_353057 = urem i64 %t_353046, 4
    %_353060 = add i64 %_353054, %_353057
    %_353063 = udiv i64 %_353060, 32768
    %_353068 = urem i64 %_353063, 128
    %_353071 = urem i64 %_353060, 32768
    %_353076 = urem i64 %_353071, 32768
    %_353081 = urem i64 %_353076, 32768
    %_353083 = trunc i64 %_353081 to i15
    %_353085.zext = zext i15 %_353083 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353085 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353085.zext
    %_353087 = load float, float addrspace(0)* %_353085
    %_353089 = trunc i64 %_353030 to i6
    %_353091.zext = zext i6 %_353089 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353091 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353091.zext
    %_353092 = trunc i64 %_353036 to i1
    %_353094.zext = zext i1 %_353092 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353094 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353091, i64 0, i2 %_353094.zext
    %_353095 = trunc i64 %_353049 to i13
    %_353097.zext = zext i13 %_353095 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353097 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353094, i64 0, i14 %_353097.zext
    %_353098 = trunc i64 %_353057 to i2
    %_353100.zext = zext i2 %_353098 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353100 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353097, i64 0, i3 %_353100.zext
    %_353104 = fadd fast float %_353020, %_353087
    %_353106 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353104)
    store float %_353106, float addrspace(0)* %_353100
    %_353110 = load float, float addrspace(0)* %fv_0_352980
    %_353113 = udiv i64 %t_353027, 2
    %_353116 = mul i64 65536, %_353113
    %_353119 = urem i64 %t_353027, 2
    %_353122 = mul i64 32768, %_353119
    %_353124 = add i64 %_353116, %_353122
    %_353130 = udiv i64 %t_353127, 4
    %_353133 = mul i64 4, %_353130
    %_353135 = add i64 %_353124, %_353133
    %_353138 = urem i64 %t_353127, 4
    %_353141 = add i64 %_353135, %_353138
    %_353144 = udiv i64 %_353141, 32768
    %_353149 = urem i64 %_353144, 128
    %_353152 = urem i64 %_353141, 32768
    %_353157 = urem i64 %_353152, 32768
    %_353162 = urem i64 %_353157, 32768
    %_353164 = trunc i64 %_353162 to i15
    %_353166.zext = zext i15 %_353164 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353166 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353166.zext
    %_353168 = load float, float addrspace(0)* %_353166
    %_353170 = trunc i64 %_353113 to i6
    %_353172.zext = zext i6 %_353170 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353172 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353172.zext
    %_353173 = trunc i64 %_353119 to i1
    %_353175.zext = zext i1 %_353173 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353175 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353172, i64 0, i2 %_353175.zext
    %_353176 = trunc i64 %_353130 to i13
    %_353178.zext = zext i13 %_353176 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353178 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353175, i64 0, i14 %_353178.zext
    %_353179 = trunc i64 %_353138 to i2
    %_353181.zext = zext i2 %_353179 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353181 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353178, i64 0, i3 %_353181.zext
    %_353185 = fadd fast float %_353110, %_353168
    %_353187 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353185)
    store float %_353187, float addrspace(0)* %_353181
    %_353191 = load float, float addrspace(0)* %fv_0_352984
    %_353194 = udiv i64 %t_353027, 2
    %_353197 = mul i64 65536, %_353194
    %_353200 = urem i64 %t_353027, 2
    %_353203 = mul i64 32768, %_353200
    %_353205 = add i64 %_353197, %_353203
    %_353211 = udiv i64 %t_353208, 4
    %_353214 = mul i64 4, %_353211
    %_353216 = add i64 %_353205, %_353214
    %_353219 = urem i64 %t_353208, 4
    %_353222 = add i64 %_353216, %_353219
    %_353225 = udiv i64 %_353222, 32768
    %_353230 = urem i64 %_353225, 128
    %_353233 = urem i64 %_353222, 32768
    %_353238 = urem i64 %_353233, 32768
    %_353243 = urem i64 %_353238, 32768
    %_353245 = trunc i64 %_353243 to i15
    %_353247.zext = zext i15 %_353245 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353247 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353247.zext
    %_353249 = load float, float addrspace(0)* %_353247
    %_353251 = trunc i64 %_353194 to i6
    %_353253.zext = zext i6 %_353251 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353253 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353253.zext
    %_353254 = trunc i64 %_353200 to i1
    %_353256.zext = zext i1 %_353254 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353256 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353253, i64 0, i2 %_353256.zext
    %_353257 = trunc i64 %_353211 to i13
    %_353259.zext = zext i13 %_353257 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353259 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353256, i64 0, i14 %_353259.zext
    %_353260 = trunc i64 %_353219 to i2
    %_353262.zext = zext i2 %_353260 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353262 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353259, i64 0, i3 %_353262.zext
    %_353266 = fadd fast float %_353191, %_353249
    %_353268 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353266)
    store float %_353268, float addrspace(0)* %_353262
    %_353272 = load float, float addrspace(0)* %fv_0_352988
    %_353275 = udiv i64 %t_353027, 2
    %_353278 = mul i64 65536, %_353275
    %_353281 = urem i64 %t_353027, 2
    %_353284 = mul i64 32768, %_353281
    %_353286 = add i64 %_353278, %_353284
    %_353292 = udiv i64 %t_353289, 4
    %_353295 = mul i64 4, %_353292
    %_353297 = add i64 %_353286, %_353295
    %_353300 = urem i64 %t_353289, 4
    %_353303 = add i64 %_353297, %_353300
    %_353306 = udiv i64 %_353303, 32768
    %_353311 = urem i64 %_353306, 128
    %_353314 = urem i64 %_353303, 32768
    %_353319 = urem i64 %_353314, 32768
    %_353324 = urem i64 %_353319, 32768
    %_353326 = trunc i64 %_353324 to i15
    %_353328.zext = zext i15 %_353326 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353328 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353328.zext
    %_353330 = load float, float addrspace(0)* %_353328
    %_353332 = trunc i64 %_353275 to i6
    %_353334.zext = zext i6 %_353332 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353334 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353334.zext
    %_353335 = trunc i64 %_353281 to i1
    %_353337.zext = zext i1 %_353335 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353337 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353334, i64 0, i2 %_353337.zext
    %_353338 = trunc i64 %_353292 to i13
    %_353340.zext = zext i13 %_353338 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353340 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353337, i64 0, i14 %_353340.zext
    %_353341 = trunc i64 %_353300 to i2
    %_353343.zext = zext i2 %_353341 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353343 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353340, i64 0, i3 %_353343.zext
    %_353347 = fadd fast float %_353272, %_353330
    %_353349 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353347)
    store float %_353349, float addrspace(0)* %_353343
    %_353353 = load float, float addrspace(0)* %fv_0_352992
    %_353359 = udiv i64 %t_353356, 2
    %_353362 = mul i64 65536, %_353359
    %_353365 = urem i64 %t_353356, 2
    %_353368 = mul i64 32768, %_353365
    %_353370 = add i64 %_353362, %_353368
    %_353373 = udiv i64 %t_353046, 4
    %_353376 = mul i64 4, %_353373
    %_353378 = add i64 %_353370, %_353376
    %_353381 = urem i64 %t_353046, 4
    %_353384 = add i64 %_353378, %_353381
    %_353387 = udiv i64 %_353384, 32768
    %_353392 = urem i64 %_353387, 128
    %_353395 = urem i64 %_353384, 32768
    %_353400 = urem i64 %_353395, 32768
    %_353405 = urem i64 %_353400, 32768
    %_353407 = trunc i64 %_353405 to i15
    %_353409.zext = zext i15 %_353407 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353409 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353409.zext
    %_353411 = load float, float addrspace(0)* %_353409
    %_353413 = trunc i64 %_353359 to i6
    %_353415.zext = zext i6 %_353413 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353415 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353415.zext
    %_353416 = trunc i64 %_353365 to i1
    %_353418.zext = zext i1 %_353416 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353418 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353415, i64 0, i2 %_353418.zext
    %_353419 = trunc i64 %_353373 to i13
    %_353421.zext = zext i13 %_353419 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353421 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353418, i64 0, i14 %_353421.zext
    %_353422 = trunc i64 %_353381 to i2
    %_353424.zext = zext i2 %_353422 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353424 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353421, i64 0, i3 %_353424.zext
    %_353428 = fadd fast float %_353353, %_353411
    %_353430 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353428)
    store float %_353430, float addrspace(0)* %_353424
    %_353434 = load float, float addrspace(0)* %fv_0_352996
    %_353437 = udiv i64 %t_353356, 2
    %_353440 = mul i64 65536, %_353437
    %_353443 = urem i64 %t_353356, 2
    %_353446 = mul i64 32768, %_353443
    %_353448 = add i64 %_353440, %_353446
    %_353451 = udiv i64 %t_353127, 4
    %_353454 = mul i64 4, %_353451
    %_353456 = add i64 %_353448, %_353454
    %_353459 = urem i64 %t_353127, 4
    %_353462 = add i64 %_353456, %_353459
    %_353465 = udiv i64 %_353462, 32768
    %_353470 = urem i64 %_353465, 128
    %_353473 = urem i64 %_353462, 32768
    %_353478 = urem i64 %_353473, 32768
    %_353483 = urem i64 %_353478, 32768
    %_353485 = trunc i64 %_353483 to i15
    %_353487.zext = zext i15 %_353485 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353487 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353487.zext
    %_353489 = load float, float addrspace(0)* %_353487
    %_353491 = trunc i64 %_353437 to i6
    %_353493.zext = zext i6 %_353491 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353493 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353493.zext
    %_353494 = trunc i64 %_353443 to i1
    %_353496.zext = zext i1 %_353494 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353496 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353493, i64 0, i2 %_353496.zext
    %_353497 = trunc i64 %_353451 to i13
    %_353499.zext = zext i13 %_353497 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353499 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353496, i64 0, i14 %_353499.zext
    %_353500 = trunc i64 %_353459 to i2
    %_353502.zext = zext i2 %_353500 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353502 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353499, i64 0, i3 %_353502.zext
    %_353506 = fadd fast float %_353434, %_353489
    %_353508 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353506)
    store float %_353508, float addrspace(0)* %_353502
    %_353512 = load float, float addrspace(0)* %fv_0_353000
    %_353515 = udiv i64 %t_353356, 2
    %_353518 = mul i64 65536, %_353515
    %_353521 = urem i64 %t_353356, 2
    %_353524 = mul i64 32768, %_353521
    %_353526 = add i64 %_353518, %_353524
    %_353529 = udiv i64 %t_353208, 4
    %_353532 = mul i64 4, %_353529
    %_353534 = add i64 %_353526, %_353532
    %_353537 = urem i64 %t_353208, 4
    %_353540 = add i64 %_353534, %_353537
    %_353543 = udiv i64 %_353540, 32768
    %_353548 = urem i64 %_353543, 128
    %_353551 = urem i64 %_353540, 32768
    %_353556 = urem i64 %_353551, 32768
    %_353561 = urem i64 %_353556, 32768
    %_353563 = trunc i64 %_353561 to i15
    %_353565.zext = zext i15 %_353563 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353565 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353565.zext
    %_353567 = load float, float addrspace(0)* %_353565
    %_353569 = trunc i64 %_353515 to i6
    %_353571.zext = zext i6 %_353569 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353571 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353571.zext
    %_353572 = trunc i64 %_353521 to i1
    %_353574.zext = zext i1 %_353572 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353574 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353571, i64 0, i2 %_353574.zext
    %_353575 = trunc i64 %_353529 to i13
    %_353577.zext = zext i13 %_353575 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353577 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353574, i64 0, i14 %_353577.zext
    %_353578 = trunc i64 %_353537 to i2
    %_353580.zext = zext i2 %_353578 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353580 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353577, i64 0, i3 %_353580.zext
    %_353584 = fadd fast float %_353512, %_353567
    %_353586 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353584)
    store float %_353586, float addrspace(0)* %_353580
    %_353590 = load float, float addrspace(0)* %fv_0_353004
    %_353593 = udiv i64 %t_353356, 2
    %_353596 = mul i64 65536, %_353593
    %_353599 = urem i64 %t_353356, 2
    %_353602 = mul i64 32768, %_353599
    %_353604 = add i64 %_353596, %_353602
    %_353607 = udiv i64 %t_353289, 4
    %_353610 = mul i64 4, %_353607
    %_353612 = add i64 %_353604, %_353610
    %_353615 = urem i64 %t_353289, 4
    %_353618 = add i64 %_353612, %_353615
    %_353621 = udiv i64 %_353618, 32768
    %_353626 = urem i64 %_353621, 128
    %_353629 = urem i64 %_353618, 32768
    %_353634 = urem i64 %_353629, 32768
    %_353639 = urem i64 %_353634, 32768
    %_353641 = trunc i64 %_353639 to i15
    %_353643.zext = zext i15 %_353641 to i16 ; add one more bit for gep index as it is treated as signed value
    %_353643 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__353023, i64 0, i16 %_353643.zext
    %_353645 = load float, float addrspace(0)* %_353643
    %_353647 = trunc i64 %_353593 to i6
    %_353649.zext = zext i6 %_353647 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353649 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_353649.zext
    %_353650 = trunc i64 %_353599 to i1
    %_353652.zext = zext i1 %_353650 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353652 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_353649, i64 0, i2 %_353652.zext
    %_353653 = trunc i64 %_353607 to i13
    %_353655.zext = zext i13 %_353653 to i14 ; add one more bit for gep index as it is treated as signed value
    %_353655 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_353652, i64 0, i14 %_353655.zext
    %_353656 = trunc i64 %_353615 to i2
    %_353658.zext = zext i2 %_353656 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353658 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353655, i64 0, i3 %_353658.zext
    %_353662 = fadd fast float %_353590, %_353645
    %_353664 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353662)
    store float %_353664, float addrspace(0)* %_353658
    br label %head_352960

new_exit_352966:
    %fv_10_352968 = add nuw nsw i32 1, %iv_350008
    br label %head_350004

new_exit_350016:
    %_350019i8 = call i8* @malloc(i64 16777216)
    %_350019 = bitcast i8* %_350019i8 to [64 x [2 x [8192 x [4 x float]]]] addrspace(0)*
    %_350022i8 = call i8* @malloc(i64 32)
    %_350022 = bitcast i8* %_350022i8 to [8 x float] addrspace(0)*
    %fv_0_351704.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351704 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351704.zext
    %fv_0_351708.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351708 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351708.zext
    %fv_0_351712.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351712 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351712.zext
    %fv_0_351716.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351716 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351716.zext
    %fv_0_351720.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351720 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351720.zext
    %fv_0_351724.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351724 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351724.zext
    %fv_0_351728.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351728 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351728.zext
    %fv_0_351732.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351732 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350022, i64 0, i4 %fv_0_351732.zext
    br label %head_350025

head_350025:
    %iv_350028 = phi i32 [ 0, %new_exit_350016 ], [ %fv_10_351696, %new_exit_351694 ]
    %_350030 = icmp ult i32 %iv_350028, 64
    %_351752 = trunc i32 %iv_350028 to i6
    %_351753 = zext i6 %_351752 to i64
    %_352421 = mul i64 65536, %_351753
    %t_351755 = mul i64 2, %_351753
    %t_352097 = add i64 1, %t_351755
    %_352700 = mul i64 32768, %t_352097
    br i1 %_350030, label %new_body_351684, label %new_exit_350031

new_body_351684:
    br label %head_351687

head_351687:
    %iv_351690 = phi i32 [ 0, %new_body_351684 ], [ %fv_10_351745, %new_exit_351743 ]
    %_351693 = icmp ult i32 %iv_351690, 8192
    %_351773 = trunc i32 %iv_351690 to i13
    %_351781 = zext i13 %_351773 to i64
    %t_351783 = mul i64 4, %_351781
    %_352475 = trunc i64 %t_351783 to i15
    %_352486.zext = zext i15 %_352475 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352486 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352474, i64 0, i16 %_352486.zext
    %t_351868 = add i64 1, %t_351783
    %_352549 = trunc i64 %t_351868 to i15
    %_352551.zext = zext i15 %_352549 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352551 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352474, i64 0, i16 %_352551.zext
    %t_351949 = add i64 2, %t_351783
    %_352614 = trunc i64 %t_351949 to i15
    %_352616.zext = zext i15 %_352614 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352616 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352474, i64 0, i16 %_352616.zext
    %t_352030 = add i64 3, %t_351783
    %_352679 = trunc i64 %t_352030 to i15
    %_352681.zext = zext i15 %_352679 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352681 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352474, i64 0, i16 %_352681.zext
    br i1 %_351693, label %new_body_351700, label %new_exit_351694

new_body_351700:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351704
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351708
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351712
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351716
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351720
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351724
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351728
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351732
    br label %head_351736, !llvm.loop !1002

head_351736:
    %iv_351739 = phi i32 [ 0, %new_body_351700 ], [ %fv_9_352412, %new_body_352410 ]
    %_351741 = icmp ult i32 %iv_351739, 32768
    br i1 %_351741, label %new_body_352410, label %new_exit_351743

new_body_352410:
    %fv_9_352412 = add nuw nsw i32 1, %iv_351739
    %_352415 = load float, float addrspace(0)* %fv_0_351704
    %_352418 = trunc i32 %iv_351739 to i15
    %_352419 = zext i15 %_352418 to i64
    %_352423 = add i64 %_352419, %_352421
    %_352426 = udiv i64 %_352423, 65536
    %_352431 = urem i64 %_352426, 64
    %_352433 = trunc i64 %_352431 to i6
    %_352435.zext = zext i6 %_352433 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352435 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352435.zext
    %_352439 = udiv i64 %_352423, 32768
    %_352444 = urem i64 %_352439, 2
    %_352446 = trunc i64 %_352444 to i1
    %_352448.zext = zext i1 %_352446 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352448 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352435, i64 0, i2 %_352448.zext
    %_352452 = udiv i64 %_352423, 4
    %_352457 = urem i64 %_352452, 8192
    %_352459 = trunc i64 %_352457 to i13
    %_352461.zext = zext i13 %_352459 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352461 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352448, i64 0, i14 %_352461.zext
    %_352464 = urem i64 %_352423, 4
    %_352466 = trunc i64 %_352464 to i2
    %_352468.zext = zext i2 %_352466 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352468 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352461, i64 0, i3 %_352468.zext
    %_352470 = load float, float addrspace(0)* %_352468
    %_352488.zext = zext i15 %_352418 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352488 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_352486, i64 0, i16 %_352488.zext
    %_352490 = load float, float addrspace(0)* %_352488
    %_352495 = fmul fast float %_352490, %_352470
    %accn_352498 = fadd fast float %_352495, %_352415
    store float %accn_352498, float addrspace(0)* %fv_0_351704
    %_352502 = load float, float addrspace(0)* %fv_0_351708
    %_352505 = udiv i64 %_352423, 65536
    %_352510 = urem i64 %_352505, 64
    %_352512 = trunc i64 %_352510 to i6
    %_352514.zext = zext i6 %_352512 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352514 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352514.zext
    %_352517 = udiv i64 %_352423, 32768
    %_352522 = urem i64 %_352517, 2
    %_352524 = trunc i64 %_352522 to i1
    %_352526.zext = zext i1 %_352524 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352526 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352514, i64 0, i2 %_352526.zext
    %_352529 = udiv i64 %_352423, 4
    %_352534 = urem i64 %_352529, 8192
    %_352536 = trunc i64 %_352534 to i13
    %_352538.zext = zext i13 %_352536 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352538 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352526, i64 0, i14 %_352538.zext
    %_352541 = urem i64 %_352423, 4
    %_352543 = trunc i64 %_352541 to i2
    %_352545.zext = zext i2 %_352543 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352545 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352538, i64 0, i3 %_352545.zext
    %_352547 = load float, float addrspace(0)* %_352545
    %_352553.zext = zext i15 %_352418 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352553 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_352551, i64 0, i16 %_352553.zext
    %_352555 = load float, float addrspace(0)* %_352553
    %_352560 = fmul fast float %_352555, %_352547
    %accn_352563 = fadd fast float %_352560, %_352502
    store float %accn_352563, float addrspace(0)* %fv_0_351708
    %_352567 = load float, float addrspace(0)* %fv_0_351712
    %_352570 = udiv i64 %_352423, 65536
    %_352575 = urem i64 %_352570, 64
    %_352577 = trunc i64 %_352575 to i6
    %_352579.zext = zext i6 %_352577 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352579 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352579.zext
    %_352582 = udiv i64 %_352423, 32768
    %_352587 = urem i64 %_352582, 2
    %_352589 = trunc i64 %_352587 to i1
    %_352591.zext = zext i1 %_352589 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352591 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352579, i64 0, i2 %_352591.zext
    %_352594 = udiv i64 %_352423, 4
    %_352599 = urem i64 %_352594, 8192
    %_352601 = trunc i64 %_352599 to i13
    %_352603.zext = zext i13 %_352601 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352603 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352591, i64 0, i14 %_352603.zext
    %_352606 = urem i64 %_352423, 4
    %_352608 = trunc i64 %_352606 to i2
    %_352610.zext = zext i2 %_352608 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352610 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352603, i64 0, i3 %_352610.zext
    %_352612 = load float, float addrspace(0)* %_352610
    %_352618.zext = zext i15 %_352418 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352618 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_352616, i64 0, i16 %_352618.zext
    %_352620 = load float, float addrspace(0)* %_352618
    %_352625 = fmul fast float %_352620, %_352612
    %accn_352628 = fadd fast float %_352625, %_352567
    store float %accn_352628, float addrspace(0)* %fv_0_351712
    %_352632 = load float, float addrspace(0)* %fv_0_351716
    %_352635 = udiv i64 %_352423, 65536
    %_352640 = urem i64 %_352635, 64
    %_352642 = trunc i64 %_352640 to i6
    %_352644.zext = zext i6 %_352642 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352644 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352644.zext
    %_352647 = udiv i64 %_352423, 32768
    %_352652 = urem i64 %_352647, 2
    %_352654 = trunc i64 %_352652 to i1
    %_352656.zext = zext i1 %_352654 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352656 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352644, i64 0, i2 %_352656.zext
    %_352659 = udiv i64 %_352423, 4
    %_352664 = urem i64 %_352659, 8192
    %_352666 = trunc i64 %_352664 to i13
    %_352668.zext = zext i13 %_352666 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352668 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352656, i64 0, i14 %_352668.zext
    %_352671 = urem i64 %_352423, 4
    %_352673 = trunc i64 %_352671 to i2
    %_352675.zext = zext i2 %_352673 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352675 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352668, i64 0, i3 %_352675.zext
    %_352677 = load float, float addrspace(0)* %_352675
    %_352683.zext = zext i15 %_352418 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352683 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_352681, i64 0, i16 %_352683.zext
    %_352685 = load float, float addrspace(0)* %_352683
    %_352690 = fmul fast float %_352685, %_352677
    %accn_352693 = fadd fast float %_352690, %_352632
    store float %accn_352693, float addrspace(0)* %fv_0_351716
    %_352697 = load float, float addrspace(0)* %fv_0_351720
    %_352702 = add i64 %_352419, %_352700
    %_352705 = udiv i64 %_352702, 65536
    %_352710 = urem i64 %_352705, 64
    %_352712 = trunc i64 %_352710 to i6
    %_352714.zext = zext i6 %_352712 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352714 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352714.zext
    %_352718 = udiv i64 %_352702, 32768
    %_352723 = urem i64 %_352718, 2
    %_352725 = trunc i64 %_352723 to i1
    %_352727.zext = zext i1 %_352725 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352727 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352714, i64 0, i2 %_352727.zext
    %_352731 = udiv i64 %_352702, 4
    %_352736 = urem i64 %_352731, 8192
    %_352738 = trunc i64 %_352736 to i13
    %_352740.zext = zext i13 %_352738 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352740 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352727, i64 0, i14 %_352740.zext
    %_352743 = urem i64 %_352702, 4
    %_352745 = trunc i64 %_352743 to i2
    %_352747.zext = zext i2 %_352745 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352747 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352740, i64 0, i3 %_352747.zext
    %_352749 = load float, float addrspace(0)* %_352747
    %_352752 = load float, float addrspace(0)* %_352488
    %_352757 = fmul fast float %_352752, %_352749
    %accn_352760 = fadd fast float %_352757, %_352697
    store float %accn_352760, float addrspace(0)* %fv_0_351720
    %_352764 = load float, float addrspace(0)* %fv_0_351724
    %_352767 = udiv i64 %_352702, 65536
    %_352772 = urem i64 %_352767, 64
    %_352774 = trunc i64 %_352772 to i6
    %_352776.zext = zext i6 %_352774 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352776 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352776.zext
    %_352779 = udiv i64 %_352702, 32768
    %_352784 = urem i64 %_352779, 2
    %_352786 = trunc i64 %_352784 to i1
    %_352788.zext = zext i1 %_352786 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352788 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352776, i64 0, i2 %_352788.zext
    %_352791 = udiv i64 %_352702, 4
    %_352796 = urem i64 %_352791, 8192
    %_352798 = trunc i64 %_352796 to i13
    %_352800.zext = zext i13 %_352798 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352800 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352788, i64 0, i14 %_352800.zext
    %_352803 = urem i64 %_352702, 4
    %_352805 = trunc i64 %_352803 to i2
    %_352807.zext = zext i2 %_352805 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352807 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352800, i64 0, i3 %_352807.zext
    %_352809 = load float, float addrspace(0)* %_352807
    %_352812 = load float, float addrspace(0)* %_352553
    %_352817 = fmul fast float %_352812, %_352809
    %accn_352820 = fadd fast float %_352817, %_352764
    store float %accn_352820, float addrspace(0)* %fv_0_351724
    %_352824 = load float, float addrspace(0)* %fv_0_351728
    %_352827 = udiv i64 %_352702, 65536
    %_352832 = urem i64 %_352827, 64
    %_352834 = trunc i64 %_352832 to i6
    %_352836.zext = zext i6 %_352834 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352836 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352836.zext
    %_352839 = udiv i64 %_352702, 32768
    %_352844 = urem i64 %_352839, 2
    %_352846 = trunc i64 %_352844 to i1
    %_352848.zext = zext i1 %_352846 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352848 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352836, i64 0, i2 %_352848.zext
    %_352851 = udiv i64 %_352702, 4
    %_352856 = urem i64 %_352851, 8192
    %_352858 = trunc i64 %_352856 to i13
    %_352860.zext = zext i13 %_352858 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352860 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352848, i64 0, i14 %_352860.zext
    %_352863 = urem i64 %_352702, 4
    %_352865 = trunc i64 %_352863 to i2
    %_352867.zext = zext i2 %_352865 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352867 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352860, i64 0, i3 %_352867.zext
    %_352869 = load float, float addrspace(0)* %_352867
    %_352872 = load float, float addrspace(0)* %_352618
    %_352877 = fmul fast float %_352872, %_352869
    %accn_352880 = fadd fast float %_352877, %_352824
    store float %accn_352880, float addrspace(0)* %fv_0_351728
    %_352884 = load float, float addrspace(0)* %fv_0_351732
    %_352887 = udiv i64 %_352702, 65536
    %_352892 = urem i64 %_352887, 64
    %_352894 = trunc i64 %_352892 to i6
    %_352896.zext = zext i6 %_352894 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352896 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_349990, i64 0, i7 %_352896.zext
    %_352899 = udiv i64 %_352702, 32768
    %_352904 = urem i64 %_352899, 2
    %_352906 = trunc i64 %_352904 to i1
    %_352908.zext = zext i1 %_352906 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352908 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352896, i64 0, i2 %_352908.zext
    %_352911 = udiv i64 %_352702, 4
    %_352916 = urem i64 %_352911, 8192
    %_352918 = trunc i64 %_352916 to i13
    %_352920.zext = zext i13 %_352918 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352920 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352908, i64 0, i14 %_352920.zext
    %_352923 = urem i64 %_352702, 4
    %_352925 = trunc i64 %_352923 to i2
    %_352927.zext = zext i2 %_352925 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352927 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352920, i64 0, i3 %_352927.zext
    %_352929 = load float, float addrspace(0)* %_352927
    %_352932 = load float, float addrspace(0)* %_352683
    %_352937 = fmul fast float %_352932, %_352929
    %accn_352940 = fadd fast float %_352937, %_352884
    store float %accn_352940, float addrspace(0)* %fv_0_351732
    br label %head_351736, !llvm.loop !1002

new_exit_351743:
    %fv_10_351745 = add nuw nsw i32 1, %iv_351690
    %_351748 = load float, float addrspace(0)* %fv_0_351704
    %_351758 = udiv i64 %t_351755, 2
    %_351761 = mul i64 65536, %_351758
    %_351764 = urem i64 %t_351755, 2
    %_351767 = mul i64 32768, %_351764
    %_351769 = add i64 %_351761, %_351767
    %_351786 = udiv i64 %t_351783, 4
    %_351789 = mul i64 4, %_351786
    %_351791 = add i64 %_351769, %_351789
    %_351794 = urem i64 %t_351783, 4
    %_351797 = add i64 %_351791, %_351794
    %_351800 = udiv i64 %_351797, 32768
    %_351805 = urem i64 %_351800, 128
    %_351808 = urem i64 %_351797, 32768
    %_351813 = urem i64 %_351808, 32768
    %_351818 = urem i64 %_351813, 32768
    %_351822 = trunc i64 %_351818 to i15
    %_351824.zext = zext i15 %_351822 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351824 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_351824.zext
    %_351826 = load float, float addrspace(0)* %_351824
    %_351828 = trunc i64 %_351758 to i6
    %_351830.zext = zext i6 %_351828 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351830 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351830.zext
    %_351831 = trunc i64 %_351764 to i1
    %_351833.zext = zext i1 %_351831 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351833 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351830, i64 0, i2 %_351833.zext
    %_351834 = trunc i64 %_351786 to i13
    %_351836.zext = zext i13 %_351834 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351836 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351833, i64 0, i14 %_351836.zext
    %_351837 = trunc i64 %_351794 to i2
    %_351839.zext = zext i2 %_351837 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351839 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351836, i64 0, i3 %_351839.zext
    %_351843 = fadd fast float %_351748, %_351826
    %_351847 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351843)
    store float %_351847, float addrspace(0)* %_351839
    %_351851 = load float, float addrspace(0)* %fv_0_351708
    %_351854 = udiv i64 %t_351755, 2
    %_351857 = mul i64 65536, %_351854
    %_351860 = urem i64 %t_351755, 2
    %_351863 = mul i64 32768, %_351860
    %_351865 = add i64 %_351857, %_351863
    %_351871 = udiv i64 %t_351868, 4
    %_351874 = mul i64 4, %_351871
    %_351876 = add i64 %_351865, %_351874
    %_351879 = urem i64 %t_351868, 4
    %_351882 = add i64 %_351876, %_351879
    %_351885 = udiv i64 %_351882, 32768
    %_351890 = urem i64 %_351885, 128
    %_351893 = urem i64 %_351882, 32768
    %_351898 = urem i64 %_351893, 32768
    %_351903 = urem i64 %_351898, 32768
    %_351905 = trunc i64 %_351903 to i15
    %_351907.zext = zext i15 %_351905 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351907 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_351907.zext
    %_351909 = load float, float addrspace(0)* %_351907
    %_351911 = trunc i64 %_351854 to i6
    %_351913.zext = zext i6 %_351911 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351913 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351913.zext
    %_351914 = trunc i64 %_351860 to i1
    %_351916.zext = zext i1 %_351914 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351916 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351913, i64 0, i2 %_351916.zext
    %_351917 = trunc i64 %_351871 to i13
    %_351919.zext = zext i13 %_351917 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351919 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351916, i64 0, i14 %_351919.zext
    %_351920 = trunc i64 %_351879 to i2
    %_351922.zext = zext i2 %_351920 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351922 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351919, i64 0, i3 %_351922.zext
    %_351926 = fadd fast float %_351851, %_351909
    %_351928 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351926)
    store float %_351928, float addrspace(0)* %_351922
    %_351932 = load float, float addrspace(0)* %fv_0_351712
    %_351935 = udiv i64 %t_351755, 2
    %_351938 = mul i64 65536, %_351935
    %_351941 = urem i64 %t_351755, 2
    %_351944 = mul i64 32768, %_351941
    %_351946 = add i64 %_351938, %_351944
    %_351952 = udiv i64 %t_351949, 4
    %_351955 = mul i64 4, %_351952
    %_351957 = add i64 %_351946, %_351955
    %_351960 = urem i64 %t_351949, 4
    %_351963 = add i64 %_351957, %_351960
    %_351966 = udiv i64 %_351963, 32768
    %_351971 = urem i64 %_351966, 128
    %_351974 = urem i64 %_351963, 32768
    %_351979 = urem i64 %_351974, 32768
    %_351984 = urem i64 %_351979, 32768
    %_351986 = trunc i64 %_351984 to i15
    %_351988.zext = zext i15 %_351986 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351988 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_351988.zext
    %_351990 = load float, float addrspace(0)* %_351988
    %_351992 = trunc i64 %_351935 to i6
    %_351994.zext = zext i6 %_351992 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351994 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351994.zext
    %_351995 = trunc i64 %_351941 to i1
    %_351997.zext = zext i1 %_351995 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351997 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351994, i64 0, i2 %_351997.zext
    %_351998 = trunc i64 %_351952 to i13
    %_352000.zext = zext i13 %_351998 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352000 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351997, i64 0, i14 %_352000.zext
    %_352001 = trunc i64 %_351960 to i2
    %_352003.zext = zext i2 %_352001 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352003 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352000, i64 0, i3 %_352003.zext
    %_352007 = fadd fast float %_351932, %_351990
    %_352009 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352007)
    store float %_352009, float addrspace(0)* %_352003
    %_352013 = load float, float addrspace(0)* %fv_0_351716
    %_352016 = udiv i64 %t_351755, 2
    %_352019 = mul i64 65536, %_352016
    %_352022 = urem i64 %t_351755, 2
    %_352025 = mul i64 32768, %_352022
    %_352027 = add i64 %_352019, %_352025
    %_352033 = udiv i64 %t_352030, 4
    %_352036 = mul i64 4, %_352033
    %_352038 = add i64 %_352027, %_352036
    %_352041 = urem i64 %t_352030, 4
    %_352044 = add i64 %_352038, %_352041
    %_352047 = udiv i64 %_352044, 32768
    %_352052 = urem i64 %_352047, 128
    %_352055 = urem i64 %_352044, 32768
    %_352060 = urem i64 %_352055, 32768
    %_352065 = urem i64 %_352060, 32768
    %_352067 = trunc i64 %_352065 to i15
    %_352069.zext = zext i15 %_352067 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352069 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_352069.zext
    %_352071 = load float, float addrspace(0)* %_352069
    %_352073 = trunc i64 %_352016 to i6
    %_352075.zext = zext i6 %_352073 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352075 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_352075.zext
    %_352076 = trunc i64 %_352022 to i1
    %_352078.zext = zext i1 %_352076 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352078 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352075, i64 0, i2 %_352078.zext
    %_352079 = trunc i64 %_352033 to i13
    %_352081.zext = zext i13 %_352079 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352081 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352078, i64 0, i14 %_352081.zext
    %_352082 = trunc i64 %_352041 to i2
    %_352084.zext = zext i2 %_352082 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352084 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352081, i64 0, i3 %_352084.zext
    %_352088 = fadd fast float %_352013, %_352071
    %_352090 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352088)
    store float %_352090, float addrspace(0)* %_352084
    %_352094 = load float, float addrspace(0)* %fv_0_351720
    %_352100 = udiv i64 %t_352097, 2
    %_352103 = mul i64 65536, %_352100
    %_352106 = urem i64 %t_352097, 2
    %_352109 = mul i64 32768, %_352106
    %_352111 = add i64 %_352103, %_352109
    %_352114 = udiv i64 %t_351783, 4
    %_352117 = mul i64 4, %_352114
    %_352119 = add i64 %_352111, %_352117
    %_352122 = urem i64 %t_351783, 4
    %_352125 = add i64 %_352119, %_352122
    %_352128 = udiv i64 %_352125, 32768
    %_352133 = urem i64 %_352128, 128
    %_352136 = urem i64 %_352125, 32768
    %_352141 = urem i64 %_352136, 32768
    %_352146 = urem i64 %_352141, 32768
    %_352148 = trunc i64 %_352146 to i15
    %_352150.zext = zext i15 %_352148 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352150 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_352150.zext
    %_352152 = load float, float addrspace(0)* %_352150
    %_352154 = trunc i64 %_352100 to i6
    %_352156.zext = zext i6 %_352154 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352156 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_352156.zext
    %_352157 = trunc i64 %_352106 to i1
    %_352159.zext = zext i1 %_352157 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352159 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352156, i64 0, i2 %_352159.zext
    %_352160 = trunc i64 %_352114 to i13
    %_352162.zext = zext i13 %_352160 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352162 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352159, i64 0, i14 %_352162.zext
    %_352163 = trunc i64 %_352122 to i2
    %_352165.zext = zext i2 %_352163 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352165 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352162, i64 0, i3 %_352165.zext
    %_352169 = fadd fast float %_352094, %_352152
    %_352171 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352169)
    store float %_352171, float addrspace(0)* %_352165
    %_352175 = load float, float addrspace(0)* %fv_0_351724
    %_352178 = udiv i64 %t_352097, 2
    %_352181 = mul i64 65536, %_352178
    %_352184 = urem i64 %t_352097, 2
    %_352187 = mul i64 32768, %_352184
    %_352189 = add i64 %_352181, %_352187
    %_352192 = udiv i64 %t_351868, 4
    %_352195 = mul i64 4, %_352192
    %_352197 = add i64 %_352189, %_352195
    %_352200 = urem i64 %t_351868, 4
    %_352203 = add i64 %_352197, %_352200
    %_352206 = udiv i64 %_352203, 32768
    %_352211 = urem i64 %_352206, 128
    %_352214 = urem i64 %_352203, 32768
    %_352219 = urem i64 %_352214, 32768
    %_352224 = urem i64 %_352219, 32768
    %_352226 = trunc i64 %_352224 to i15
    %_352228.zext = zext i15 %_352226 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352228 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_352228.zext
    %_352230 = load float, float addrspace(0)* %_352228
    %_352232 = trunc i64 %_352178 to i6
    %_352234.zext = zext i6 %_352232 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352234 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_352234.zext
    %_352235 = trunc i64 %_352184 to i1
    %_352237.zext = zext i1 %_352235 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352237 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352234, i64 0, i2 %_352237.zext
    %_352238 = trunc i64 %_352192 to i13
    %_352240.zext = zext i13 %_352238 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352240 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352237, i64 0, i14 %_352240.zext
    %_352241 = trunc i64 %_352200 to i2
    %_352243.zext = zext i2 %_352241 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352243 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352240, i64 0, i3 %_352243.zext
    %_352247 = fadd fast float %_352175, %_352230
    %_352249 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352247)
    store float %_352249, float addrspace(0)* %_352243
    %_352253 = load float, float addrspace(0)* %fv_0_351728
    %_352256 = udiv i64 %t_352097, 2
    %_352259 = mul i64 65536, %_352256
    %_352262 = urem i64 %t_352097, 2
    %_352265 = mul i64 32768, %_352262
    %_352267 = add i64 %_352259, %_352265
    %_352270 = udiv i64 %t_351949, 4
    %_352273 = mul i64 4, %_352270
    %_352275 = add i64 %_352267, %_352273
    %_352278 = urem i64 %t_351949, 4
    %_352281 = add i64 %_352275, %_352278
    %_352284 = udiv i64 %_352281, 32768
    %_352289 = urem i64 %_352284, 128
    %_352292 = urem i64 %_352281, 32768
    %_352297 = urem i64 %_352292, 32768
    %_352302 = urem i64 %_352297, 32768
    %_352304 = trunc i64 %_352302 to i15
    %_352306.zext = zext i15 %_352304 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352306 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_352306.zext
    %_352308 = load float, float addrspace(0)* %_352306
    %_352310 = trunc i64 %_352256 to i6
    %_352312.zext = zext i6 %_352310 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352312 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_352312.zext
    %_352313 = trunc i64 %_352262 to i1
    %_352315.zext = zext i1 %_352313 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352315 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352312, i64 0, i2 %_352315.zext
    %_352316 = trunc i64 %_352270 to i13
    %_352318.zext = zext i13 %_352316 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352318 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352315, i64 0, i14 %_352318.zext
    %_352319 = trunc i64 %_352278 to i2
    %_352321.zext = zext i2 %_352319 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352321 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352318, i64 0, i3 %_352321.zext
    %_352325 = fadd fast float %_352253, %_352308
    %_352327 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352325)
    store float %_352327, float addrspace(0)* %_352321
    %_352331 = load float, float addrspace(0)* %fv_0_351732
    %_352334 = udiv i64 %t_352097, 2
    %_352337 = mul i64 65536, %_352334
    %_352340 = urem i64 %t_352097, 2
    %_352343 = mul i64 32768, %_352340
    %_352345 = add i64 %_352337, %_352343
    %_352348 = udiv i64 %t_352030, 4
    %_352351 = mul i64 4, %_352348
    %_352353 = add i64 %_352345, %_352351
    %_352356 = urem i64 %t_352030, 4
    %_352359 = add i64 %_352353, %_352356
    %_352362 = udiv i64 %_352359, 32768
    %_352367 = urem i64 %_352362, 128
    %_352370 = urem i64 %_352359, 32768
    %_352375 = urem i64 %_352370, 32768
    %_352380 = urem i64 %_352375, 32768
    %_352382 = trunc i64 %_352380 to i15
    %_352384.zext = zext i15 %_352382 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352384 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351751, i64 0, i16 %_352384.zext
    %_352386 = load float, float addrspace(0)* %_352384
    %_352388 = trunc i64 %_352334 to i6
    %_352390.zext = zext i6 %_352388 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352390 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_352390.zext
    %_352391 = trunc i64 %_352340 to i1
    %_352393.zext = zext i1 %_352391 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352393 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_352390, i64 0, i2 %_352393.zext
    %_352394 = trunc i64 %_352348 to i13
    %_352396.zext = zext i13 %_352394 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352396 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352393, i64 0, i14 %_352396.zext
    %_352397 = trunc i64 %_352356 to i2
    %_352399.zext = zext i2 %_352397 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352399 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352396, i64 0, i3 %_352399.zext
    %_352403 = fadd fast float %_352331, %_352386
    %_352405 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352403)
    store float %_352405, float addrspace(0)* %_352399
    br label %head_351687

new_exit_351694:
    %fv_10_351696 = add nuw nsw i32 1, %iv_350028
    br label %head_350025

new_exit_350031:
    %_350044i8 = call i8* @malloc(i64 8388608)
    %_350044 = bitcast i8* %_350044i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_350047i8 = call i8* @malloc(i64 32)
    %_350047 = bitcast i8* %_350047i8 to [8 x float] addrspace(0)*
    %fv_0_350363.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350363 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350363.zext
    %fv_0_350368.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350368 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350368.zext
    %fv_0_350372.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350372 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350372.zext
    %fv_0_350376.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350376 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350376.zext
    %fv_0_350380.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350380 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350380.zext
    %fv_0_350384.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350384 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350384.zext
    %fv_0_350388.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350388 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350388.zext
    %fv_0_350392.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350392 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350047, i64 0, i4 %fv_0_350392.zext
    br label %head_350050

head_350050:
    %iv_350053 = phi i32 [ 0, %new_exit_350031 ], [ %fv_10_350336, %new_exit_350334 ]
    %_350055 = icmp ult i32 %iv_350053, 64
    %_350416 = trunc i32 %iv_350053 to i6
    %_350424 = zext i6 %_350416 to i64
    %_351104 = mul i64 65536, %_350424
    %t_350426 = mul i64 2, %_350424
    %t_350769 = add i64 1, %t_350426
    %_351427 = mul i64 32768, %t_350769
    br i1 %_350055, label %new_body_350324, label %new_exit_350056

new_body_350324:
    br label %head_350327

head_350327:
    %iv_350330 = phi i32 [ 0, %new_body_350324 ], [ %fv_10_350407, %new_exit_350405 ]
    %_350333 = icmp ult i32 %iv_350330, 4096
    %_350444 = trunc i32 %iv_350330 to i12
    %_350452 = zext i12 %_350444 to i64
    %t_350454 = mul i64 4, %_350452
    %_351189 = trunc i64 %t_350454 to i14
    %_351200.zext = zext i14 %_351189 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351200 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351188, i64 0, i15 %_351200.zext
    %t_350545 = add i64 1, %t_350454
    %_351276 = trunc i64 %t_350545 to i14
    %_351278.zext = zext i14 %_351276 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351278 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351188, i64 0, i15 %_351278.zext
    %t_350624 = add i64 2, %t_350454
    %_351341 = trunc i64 %t_350624 to i14
    %_351343.zext = zext i14 %_351341 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351343 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351188, i64 0, i15 %_351343.zext
    %t_350704 = add i64 3, %t_350454
    %_351406 = trunc i64 %t_350704 to i14
    %_351408.zext = zext i14 %_351406 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351408 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351188, i64 0, i15 %_351408.zext
    br i1 %_350333, label %new_body_350340, label %new_exit_350334

new_body_350340:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350363
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350368
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350372
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350376
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350380
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350384
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350388
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350392
    br label %head_350396, !llvm.loop !1003

head_350396:
    %iv_350399 = phi i32 [ 0, %new_body_350340 ], [ %fv_9_351076, %new_body_351074 ]
    %_350402 = icmp ult i32 %iv_350399, 32768
    br i1 %_350402, label %new_body_351074, label %new_exit_350405

new_body_351074:
    %fv_9_351076 = add nuw nsw i32 1, %iv_350399
    %_351079 = load float, float addrspace(0)* %fv_0_350363
    %_351093 = trunc i32 %iv_350399 to i15
    %_351101 = zext i15 %_351093 to i64
    %_351106 = add i64 %_351101, %_351104
    %_351109 = udiv i64 %_351106, 65536
    %_351114 = urem i64 %_351109, 64
    %_351116 = trunc i64 %_351114 to i6
    %_351127.zext = zext i6 %_351116 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351127 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351127.zext
    %_351131 = udiv i64 %_351106, 32768
    %_351136 = urem i64 %_351131, 2
    %_351138 = trunc i64 %_351136 to i1
    %_351147.zext = zext i1 %_351138 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351147 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351127, i64 0, i2 %_351147.zext
    %_351151 = udiv i64 %_351106, 4
    %_351157 = urem i64 %_351151, 8192
    %_351161 = trunc i64 %_351157 to i13
    %_351174.zext = zext i13 %_351161 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351174 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351147, i64 0, i14 %_351174.zext
    %_351177 = urem i64 %_351106, 4
    %_351179 = trunc i64 %_351177 to i2
    %_351181.zext = zext i2 %_351179 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351181 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351174, i64 0, i3 %_351181.zext
    %_351183 = load float, float addrspace(0)* %_351181
    %_351213.zext = zext i15 %_351093 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351213 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351200, i64 0, i16 %_351213.zext
    %_351215 = load float, float addrspace(0)* %_351213
    %_351222 = fmul fast float %_351215, %_351183
    %accn_351225 = fadd fast float %_351222, %_351079
    store float %accn_351225, float addrspace(0)* %fv_0_350363
    %_351229 = load float, float addrspace(0)* %fv_0_350368
    %_351232 = udiv i64 %_351106, 65536
    %_351237 = urem i64 %_351232, 64
    %_351239 = trunc i64 %_351237 to i6
    %_351241.zext = zext i6 %_351239 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351241 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351241.zext
    %_351244 = udiv i64 %_351106, 32768
    %_351249 = urem i64 %_351244, 2
    %_351251 = trunc i64 %_351249 to i1
    %_351253.zext = zext i1 %_351251 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351253 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351241, i64 0, i2 %_351253.zext
    %_351256 = udiv i64 %_351106, 4
    %_351261 = urem i64 %_351256, 8192
    %_351263 = trunc i64 %_351261 to i13
    %_351265.zext = zext i13 %_351263 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351265 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351253, i64 0, i14 %_351265.zext
    %_351268 = urem i64 %_351106, 4
    %_351270 = trunc i64 %_351268 to i2
    %_351272.zext = zext i2 %_351270 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351272 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351265, i64 0, i3 %_351272.zext
    %_351274 = load float, float addrspace(0)* %_351272
    %_351280.zext = zext i15 %_351093 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351280 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351278, i64 0, i16 %_351280.zext
    %_351282 = load float, float addrspace(0)* %_351280
    %_351287 = fmul fast float %_351282, %_351274
    %accn_351290 = fadd fast float %_351287, %_351229
    store float %accn_351290, float addrspace(0)* %fv_0_350368
    %_351294 = load float, float addrspace(0)* %fv_0_350372
    %_351297 = udiv i64 %_351106, 65536
    %_351302 = urem i64 %_351297, 64
    %_351304 = trunc i64 %_351302 to i6
    %_351306.zext = zext i6 %_351304 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351306 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351306.zext
    %_351309 = udiv i64 %_351106, 32768
    %_351314 = urem i64 %_351309, 2
    %_351316 = trunc i64 %_351314 to i1
    %_351318.zext = zext i1 %_351316 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351318 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351306, i64 0, i2 %_351318.zext
    %_351321 = udiv i64 %_351106, 4
    %_351326 = urem i64 %_351321, 8192
    %_351328 = trunc i64 %_351326 to i13
    %_351330.zext = zext i13 %_351328 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351330 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351318, i64 0, i14 %_351330.zext
    %_351333 = urem i64 %_351106, 4
    %_351335 = trunc i64 %_351333 to i2
    %_351337.zext = zext i2 %_351335 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351337 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351330, i64 0, i3 %_351337.zext
    %_351339 = load float, float addrspace(0)* %_351337
    %_351345.zext = zext i15 %_351093 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351345 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351343, i64 0, i16 %_351345.zext
    %_351347 = load float, float addrspace(0)* %_351345
    %_351352 = fmul fast float %_351347, %_351339
    %accn_351355 = fadd fast float %_351352, %_351294
    store float %accn_351355, float addrspace(0)* %fv_0_350372
    %_351359 = load float, float addrspace(0)* %fv_0_350376
    %_351362 = udiv i64 %_351106, 65536
    %_351367 = urem i64 %_351362, 64
    %_351369 = trunc i64 %_351367 to i6
    %_351371.zext = zext i6 %_351369 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351371 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351371.zext
    %_351374 = udiv i64 %_351106, 32768
    %_351379 = urem i64 %_351374, 2
    %_351381 = trunc i64 %_351379 to i1
    %_351383.zext = zext i1 %_351381 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351383 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351371, i64 0, i2 %_351383.zext
    %_351386 = udiv i64 %_351106, 4
    %_351391 = urem i64 %_351386, 8192
    %_351393 = trunc i64 %_351391 to i13
    %_351395.zext = zext i13 %_351393 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351395 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351383, i64 0, i14 %_351395.zext
    %_351398 = urem i64 %_351106, 4
    %_351400 = trunc i64 %_351398 to i2
    %_351402.zext = zext i2 %_351400 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351402 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351395, i64 0, i3 %_351402.zext
    %_351404 = load float, float addrspace(0)* %_351402
    %_351410.zext = zext i15 %_351093 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351410 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351408, i64 0, i16 %_351410.zext
    %_351412 = load float, float addrspace(0)* %_351410
    %_351417 = fmul fast float %_351412, %_351404
    %accn_351420 = fadd fast float %_351417, %_351359
    store float %accn_351420, float addrspace(0)* %fv_0_350376
    %_351424 = load float, float addrspace(0)* %fv_0_350380
    %_351429 = add i64 %_351101, %_351427
    %_351432 = udiv i64 %_351429, 65536
    %_351437 = urem i64 %_351432, 64
    %_351439 = trunc i64 %_351437 to i6
    %_351441.zext = zext i6 %_351439 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351441 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351441.zext
    %_351445 = udiv i64 %_351429, 32768
    %_351450 = urem i64 %_351445, 2
    %_351452 = trunc i64 %_351450 to i1
    %_351454.zext = zext i1 %_351452 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351454 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351441, i64 0, i2 %_351454.zext
    %_351458 = udiv i64 %_351429, 4
    %_351463 = urem i64 %_351458, 8192
    %_351465 = trunc i64 %_351463 to i13
    %_351467.zext = zext i13 %_351465 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351467 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351454, i64 0, i14 %_351467.zext
    %_351470 = urem i64 %_351429, 4
    %_351472 = trunc i64 %_351470 to i2
    %_351474.zext = zext i2 %_351472 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351474 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351467, i64 0, i3 %_351474.zext
    %_351476 = load float, float addrspace(0)* %_351474
    %_351479 = load float, float addrspace(0)* %_351213
    %_351484 = fmul fast float %_351479, %_351476
    %accn_351487 = fadd fast float %_351484, %_351424
    store float %accn_351487, float addrspace(0)* %fv_0_350380
    %_351491 = load float, float addrspace(0)* %fv_0_350384
    %_351494 = udiv i64 %_351429, 65536
    %_351499 = urem i64 %_351494, 64
    %_351501 = trunc i64 %_351499 to i6
    %_351503.zext = zext i6 %_351501 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351503 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351503.zext
    %_351506 = udiv i64 %_351429, 32768
    %_351511 = urem i64 %_351506, 2
    %_351513 = trunc i64 %_351511 to i1
    %_351515.zext = zext i1 %_351513 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351515 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351503, i64 0, i2 %_351515.zext
    %_351518 = udiv i64 %_351429, 4
    %_351523 = urem i64 %_351518, 8192
    %_351525 = trunc i64 %_351523 to i13
    %_351527.zext = zext i13 %_351525 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351527 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351515, i64 0, i14 %_351527.zext
    %_351530 = urem i64 %_351429, 4
    %_351532 = trunc i64 %_351530 to i2
    %_351534.zext = zext i2 %_351532 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351534 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351527, i64 0, i3 %_351534.zext
    %_351536 = load float, float addrspace(0)* %_351534
    %_351539 = load float, float addrspace(0)* %_351280
    %_351544 = fmul fast float %_351539, %_351536
    %accn_351547 = fadd fast float %_351544, %_351491
    store float %accn_351547, float addrspace(0)* %fv_0_350384
    %_351551 = load float, float addrspace(0)* %fv_0_350388
    %_351554 = udiv i64 %_351429, 65536
    %_351559 = urem i64 %_351554, 64
    %_351561 = trunc i64 %_351559 to i6
    %_351563.zext = zext i6 %_351561 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351563 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351563.zext
    %_351566 = udiv i64 %_351429, 32768
    %_351571 = urem i64 %_351566, 2
    %_351573 = trunc i64 %_351571 to i1
    %_351575.zext = zext i1 %_351573 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351575 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351563, i64 0, i2 %_351575.zext
    %_351578 = udiv i64 %_351429, 4
    %_351583 = urem i64 %_351578, 8192
    %_351585 = trunc i64 %_351583 to i13
    %_351587.zext = zext i13 %_351585 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351587 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351575, i64 0, i14 %_351587.zext
    %_351590 = urem i64 %_351429, 4
    %_351592 = trunc i64 %_351590 to i2
    %_351594.zext = zext i2 %_351592 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351594 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351587, i64 0, i3 %_351594.zext
    %_351596 = load float, float addrspace(0)* %_351594
    %_351599 = load float, float addrspace(0)* %_351345
    %_351604 = fmul fast float %_351599, %_351596
    %accn_351607 = fadd fast float %_351604, %_351551
    store float %accn_351607, float addrspace(0)* %fv_0_350388
    %_351611 = load float, float addrspace(0)* %fv_0_350392
    %_351614 = udiv i64 %_351429, 65536
    %_351619 = urem i64 %_351614, 64
    %_351621 = trunc i64 %_351619 to i6
    %_351623.zext = zext i6 %_351621 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351623 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350019, i64 0, i7 %_351623.zext
    %_351626 = udiv i64 %_351429, 32768
    %_351631 = urem i64 %_351626, 2
    %_351633 = trunc i64 %_351631 to i1
    %_351635.zext = zext i1 %_351633 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351635 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351623, i64 0, i2 %_351635.zext
    %_351638 = udiv i64 %_351429, 4
    %_351643 = urem i64 %_351638, 8192
    %_351645 = trunc i64 %_351643 to i13
    %_351647.zext = zext i13 %_351645 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351647 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351635, i64 0, i14 %_351647.zext
    %_351650 = urem i64 %_351429, 4
    %_351652 = trunc i64 %_351650 to i2
    %_351654.zext = zext i2 %_351652 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351654 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351647, i64 0, i3 %_351654.zext
    %_351656 = load float, float addrspace(0)* %_351654
    %_351659 = load float, float addrspace(0)* %_351410
    %_351664 = fmul fast float %_351659, %_351656
    %accn_351667 = fadd fast float %_351664, %_351611
    store float %accn_351667, float addrspace(0)* %fv_0_350392
    br label %head_350396, !llvm.loop !1003

new_exit_350405:
    %fv_10_350407 = add nuw nsw i32 1, %iv_350330
    %_350410 = load float, float addrspace(0)* %fv_0_350363
    %_350429 = udiv i64 %t_350426, 2
    %_350432 = mul i64 32768, %_350429
    %_350435 = urem i64 %t_350426, 2
    %_350438 = mul i64 16384, %_350435
    %_350440 = add i64 %_350432, %_350438
    %_350457 = udiv i64 %t_350454, 4
    %_350460 = mul i64 4, %_350457
    %_350462 = add i64 %_350440, %_350460
    %_350465 = urem i64 %t_350454, 4
    %_350468 = add i64 %_350462, %_350465
    %_350471 = udiv i64 %_350468, 16384
    %_350477 = urem i64 %_350471, 128
    %_350480 = urem i64 %_350468, 16384
    %_350485 = urem i64 %_350480, 16384
    %_350490 = urem i64 %_350485, 16384
    %_350494 = trunc i64 %_350490 to i14
    %_350496.zext = zext i14 %_350494 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350496 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350496.zext
    %_350498 = load float, float addrspace(0)* %_350496
    %_350500 = trunc i64 %_350429 to i6
    %_350502.zext = zext i6 %_350500 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350502 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350502.zext
    %_350503 = trunc i64 %_350435 to i1
    %_350505.zext = zext i1 %_350503 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350505 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350502, i64 0, i2 %_350505.zext
    %_350506 = trunc i64 %_350457 to i12
    %_350508.zext = zext i12 %_350506 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350508 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350505, i64 0, i13 %_350508.zext
    %_350509 = trunc i64 %_350465 to i2
    %_350511.zext = zext i2 %_350509 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350511 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350508, i64 0, i3 %_350511.zext
    %_350523 = fadd fast float %_350410, %_350498
    store float %_350523, float addrspace(0)* %_350511
    %_350527 = load float, float addrspace(0)* %fv_0_350368
    %_350530 = udiv i64 %t_350426, 2
    %_350533 = mul i64 32768, %_350530
    %_350536 = urem i64 %t_350426, 2
    %_350539 = mul i64 16384, %_350536
    %_350541 = add i64 %_350533, %_350539
    %_350548 = udiv i64 %t_350545, 4
    %_350551 = mul i64 4, %_350548
    %_350553 = add i64 %_350541, %_350551
    %_350556 = urem i64 %t_350545, 4
    %_350559 = add i64 %_350553, %_350556
    %_350562 = udiv i64 %_350559, 16384
    %_350567 = urem i64 %_350562, 128
    %_350570 = urem i64 %_350559, 16384
    %_350575 = urem i64 %_350570, 16384
    %_350580 = urem i64 %_350575, 16384
    %_350582 = trunc i64 %_350580 to i14
    %_350584.zext = zext i14 %_350582 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350584 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350584.zext
    %_350586 = load float, float addrspace(0)* %_350584
    %_350588 = trunc i64 %_350530 to i6
    %_350590.zext = zext i6 %_350588 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350590 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350590.zext
    %_350591 = trunc i64 %_350536 to i1
    %_350593.zext = zext i1 %_350591 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350593 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350590, i64 0, i2 %_350593.zext
    %_350594 = trunc i64 %_350548 to i12
    %_350596.zext = zext i12 %_350594 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350596 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350593, i64 0, i13 %_350596.zext
    %_350597 = trunc i64 %_350556 to i2
    %_350599.zext = zext i2 %_350597 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350599 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350596, i64 0, i3 %_350599.zext
    %_350603 = fadd fast float %_350527, %_350586
    store float %_350603, float addrspace(0)* %_350599
    %_350607 = load float, float addrspace(0)* %fv_0_350372
    %_350610 = udiv i64 %t_350426, 2
    %_350613 = mul i64 32768, %_350610
    %_350616 = urem i64 %t_350426, 2
    %_350619 = mul i64 16384, %_350616
    %_350621 = add i64 %_350613, %_350619
    %_350627 = udiv i64 %t_350624, 4
    %_350630 = mul i64 4, %_350627
    %_350632 = add i64 %_350621, %_350630
    %_350635 = urem i64 %t_350624, 4
    %_350638 = add i64 %_350632, %_350635
    %_350641 = udiv i64 %_350638, 16384
    %_350646 = urem i64 %_350641, 128
    %_350649 = urem i64 %_350638, 16384
    %_350654 = urem i64 %_350649, 16384
    %_350659 = urem i64 %_350654, 16384
    %_350661 = trunc i64 %_350659 to i14
    %_350663.zext = zext i14 %_350661 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350663 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350663.zext
    %_350665 = load float, float addrspace(0)* %_350663
    %_350667 = trunc i64 %_350610 to i6
    %_350669.zext = zext i6 %_350667 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350669 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350669.zext
    %_350670 = trunc i64 %_350616 to i1
    %_350672.zext = zext i1 %_350670 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350672 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350669, i64 0, i2 %_350672.zext
    %_350673 = trunc i64 %_350627 to i12
    %_350675.zext = zext i12 %_350673 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350675 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350672, i64 0, i13 %_350675.zext
    %_350676 = trunc i64 %_350635 to i2
    %_350678.zext = zext i2 %_350676 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350678 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350675, i64 0, i3 %_350678.zext
    %_350682 = fadd fast float %_350607, %_350665
    store float %_350682, float addrspace(0)* %_350678
    %_350686 = load float, float addrspace(0)* %fv_0_350376
    %_350689 = udiv i64 %t_350426, 2
    %_350692 = mul i64 32768, %_350689
    %_350695 = urem i64 %t_350426, 2
    %_350698 = mul i64 16384, %_350695
    %_350700 = add i64 %_350692, %_350698
    %_350707 = udiv i64 %t_350704, 4
    %_350710 = mul i64 4, %_350707
    %_350712 = add i64 %_350700, %_350710
    %_350715 = urem i64 %t_350704, 4
    %_350718 = add i64 %_350712, %_350715
    %_350721 = udiv i64 %_350718, 16384
    %_350726 = urem i64 %_350721, 128
    %_350729 = urem i64 %_350718, 16384
    %_350734 = urem i64 %_350729, 16384
    %_350739 = urem i64 %_350734, 16384
    %_350741 = trunc i64 %_350739 to i14
    %_350743.zext = zext i14 %_350741 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350743 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350743.zext
    %_350745 = load float, float addrspace(0)* %_350743
    %_350747 = trunc i64 %_350689 to i6
    %_350749.zext = zext i6 %_350747 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350749 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350749.zext
    %_350750 = trunc i64 %_350695 to i1
    %_350752.zext = zext i1 %_350750 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350752 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350749, i64 0, i2 %_350752.zext
    %_350753 = trunc i64 %_350707 to i12
    %_350755.zext = zext i12 %_350753 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350755 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350752, i64 0, i13 %_350755.zext
    %_350756 = trunc i64 %_350715 to i2
    %_350758.zext = zext i2 %_350756 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350758 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350755, i64 0, i3 %_350758.zext
    %_350762 = fadd fast float %_350686, %_350745
    store float %_350762, float addrspace(0)* %_350758
    %_350766 = load float, float addrspace(0)* %fv_0_350380
    %_350772 = udiv i64 %t_350769, 2
    %_350775 = mul i64 32768, %_350772
    %_350778 = urem i64 %t_350769, 2
    %_350781 = mul i64 16384, %_350778
    %_350783 = add i64 %_350775, %_350781
    %_350786 = udiv i64 %t_350454, 4
    %_350789 = mul i64 4, %_350786
    %_350791 = add i64 %_350783, %_350789
    %_350794 = urem i64 %t_350454, 4
    %_350797 = add i64 %_350791, %_350794
    %_350800 = udiv i64 %_350797, 16384
    %_350805 = urem i64 %_350800, 128
    %_350808 = urem i64 %_350797, 16384
    %_350813 = urem i64 %_350808, 16384
    %_350818 = urem i64 %_350813, 16384
    %_350820 = trunc i64 %_350818 to i14
    %_350822.zext = zext i14 %_350820 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350822 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350822.zext
    %_350824 = load float, float addrspace(0)* %_350822
    %_350826 = trunc i64 %_350772 to i6
    %_350828.zext = zext i6 %_350826 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350828 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350828.zext
    %_350829 = trunc i64 %_350778 to i1
    %_350831.zext = zext i1 %_350829 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350831 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350828, i64 0, i2 %_350831.zext
    %_350832 = trunc i64 %_350786 to i12
    %_350834.zext = zext i12 %_350832 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350834 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350831, i64 0, i13 %_350834.zext
    %_350835 = trunc i64 %_350794 to i2
    %_350837.zext = zext i2 %_350835 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350837 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350834, i64 0, i3 %_350837.zext
    %_350841 = fadd fast float %_350766, %_350824
    store float %_350841, float addrspace(0)* %_350837
    %_350845 = load float, float addrspace(0)* %fv_0_350384
    %_350848 = udiv i64 %t_350769, 2
    %_350851 = mul i64 32768, %_350848
    %_350854 = urem i64 %t_350769, 2
    %_350857 = mul i64 16384, %_350854
    %_350859 = add i64 %_350851, %_350857
    %_350862 = udiv i64 %t_350545, 4
    %_350865 = mul i64 4, %_350862
    %_350867 = add i64 %_350859, %_350865
    %_350870 = urem i64 %t_350545, 4
    %_350873 = add i64 %_350867, %_350870
    %_350876 = udiv i64 %_350873, 16384
    %_350881 = urem i64 %_350876, 128
    %_350884 = urem i64 %_350873, 16384
    %_350889 = urem i64 %_350884, 16384
    %_350894 = urem i64 %_350889, 16384
    %_350896 = trunc i64 %_350894 to i14
    %_350898.zext = zext i14 %_350896 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350898 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350898.zext
    %_350900 = load float, float addrspace(0)* %_350898
    %_350902 = trunc i64 %_350848 to i6
    %_350904.zext = zext i6 %_350902 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350904 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350904.zext
    %_350905 = trunc i64 %_350854 to i1
    %_350907.zext = zext i1 %_350905 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350907 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350904, i64 0, i2 %_350907.zext
    %_350908 = trunc i64 %_350862 to i12
    %_350910.zext = zext i12 %_350908 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350910 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350907, i64 0, i13 %_350910.zext
    %_350911 = trunc i64 %_350870 to i2
    %_350913.zext = zext i2 %_350911 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350913 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350910, i64 0, i3 %_350913.zext
    %_350917 = fadd fast float %_350845, %_350900
    store float %_350917, float addrspace(0)* %_350913
    %_350921 = load float, float addrspace(0)* %fv_0_350388
    %_350924 = udiv i64 %t_350769, 2
    %_350927 = mul i64 32768, %_350924
    %_350930 = urem i64 %t_350769, 2
    %_350933 = mul i64 16384, %_350930
    %_350935 = add i64 %_350927, %_350933
    %_350938 = udiv i64 %t_350624, 4
    %_350941 = mul i64 4, %_350938
    %_350943 = add i64 %_350935, %_350941
    %_350946 = urem i64 %t_350624, 4
    %_350949 = add i64 %_350943, %_350946
    %_350952 = udiv i64 %_350949, 16384
    %_350957 = urem i64 %_350952, 128
    %_350960 = urem i64 %_350949, 16384
    %_350965 = urem i64 %_350960, 16384
    %_350970 = urem i64 %_350965, 16384
    %_350972 = trunc i64 %_350970 to i14
    %_350974.zext = zext i14 %_350972 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350974 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_350974.zext
    %_350976 = load float, float addrspace(0)* %_350974
    %_350978 = trunc i64 %_350924 to i6
    %_350980.zext = zext i6 %_350978 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350980 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350980.zext
    %_350981 = trunc i64 %_350930 to i1
    %_350983.zext = zext i1 %_350981 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350983 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350980, i64 0, i2 %_350983.zext
    %_350984 = trunc i64 %_350938 to i12
    %_350986.zext = zext i12 %_350984 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350986 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350983, i64 0, i13 %_350986.zext
    %_350987 = trunc i64 %_350946 to i2
    %_350989.zext = zext i2 %_350987 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350989 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350986, i64 0, i3 %_350989.zext
    %_350993 = fadd fast float %_350921, %_350976
    store float %_350993, float addrspace(0)* %_350989
    %_350997 = load float, float addrspace(0)* %fv_0_350392
    %_351000 = udiv i64 %t_350769, 2
    %_351003 = mul i64 32768, %_351000
    %_351006 = urem i64 %t_350769, 2
    %_351009 = mul i64 16384, %_351006
    %_351011 = add i64 %_351003, %_351009
    %_351014 = udiv i64 %t_350704, 4
    %_351017 = mul i64 4, %_351014
    %_351019 = add i64 %_351011, %_351017
    %_351022 = urem i64 %t_350704, 4
    %_351025 = add i64 %_351019, %_351022
    %_351028 = udiv i64 %_351025, 16384
    %_351033 = urem i64 %_351028, 128
    %_351036 = urem i64 %_351025, 16384
    %_351041 = urem i64 %_351036, 16384
    %_351046 = urem i64 %_351041, 16384
    %_351048 = trunc i64 %_351046 to i14
    %_351050.zext = zext i14 %_351048 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351050 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350413, i64 0, i15 %_351050.zext
    %_351052 = load float, float addrspace(0)* %_351050
    %_351054 = trunc i64 %_351000 to i6
    %_351056.zext = zext i6 %_351054 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351056 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_351056.zext
    %_351057 = trunc i64 %_351006 to i1
    %_351059.zext = zext i1 %_351057 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351059 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351056, i64 0, i2 %_351059.zext
    %_351060 = trunc i64 %_351014 to i12
    %_351062.zext = zext i12 %_351060 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351062 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351059, i64 0, i13 %_351062.zext
    %_351063 = trunc i64 %_351022 to i2
    %_351065.zext = zext i2 %_351063 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351065 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351062, i64 0, i3 %_351065.zext
    %_351069 = fadd fast float %_350997, %_351052
    store float %_351069, float addrspace(0)* %_351065
    br label %head_350327

new_exit_350334:
    %fv_10_350336 = add nuw nsw i32 1, %iv_350053
    br label %head_350050

new_exit_350056:
    %_350061i8 = call i8* @malloc(i64 8388608)
    %_350061 = bitcast i8* %_350061i8 to [128 x [16384 x float]] addrspace(0)*
    br label %head_350064

head_350064:
    %iv_350067 = phi i32 [ 0, %new_exit_350056 ], [ %fv_4_350095, %new_exit_350088 ]
    %_350070 = icmp ult i32 %iv_350067, 128
    %_350145 = trunc i32 %iv_350067 to i7
    %_350153 = zext i7 %_350145 to i64
    %_350159 = mul i64 16384, %_350153
    %_350295.zext = zext i7 %_350145 to i8 ; add one more bit for gep index as it is treated as signed value
    %_350295 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %_350061, i64 0, i8 %_350295.zext
    br i1 %_350070, label %new_body_350078, label %new_exit_350071

new_body_350078:
    br label %head_350081

head_350081:
    %iv_350084 = phi i32 [ 0, %new_body_350078 ], [ %fv_4_350101, %new_body_350099 ]
    %_350087 = icmp ult i32 %iv_350084, 16384
    br i1 %_350087, label %new_body_350099, label %new_exit_350088

new_body_350099:
    %fv_4_350101 = add nuw nsw i32 1, %iv_350084
    %_350132 = trunc i32 %iv_350084 to i14
    %_350140 = zext i14 %_350132 to i64
    %_350163 = add i64 %_350140, %_350159
    %_350171 = udiv i64 %_350163, 32768
    %_350178 = urem i64 %_350171, 64
    %_350187 = trunc i64 %_350178 to i6
    %_350200.zext = zext i6 %_350187 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350200 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350044, i64 0, i7 %_350200.zext
    %_350204 = udiv i64 %_350163, 16384
    %_350210 = urem i64 %_350204, 2
    %_350214 = trunc i64 %_350210 to i1
    %_350224.zext = zext i1 %_350214 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350224 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350200, i64 0, i2 %_350224.zext
    %_350229 = udiv i64 %_350163, 4
    %_350235 = urem i64 %_350229, 4096
    %_350239 = trunc i64 %_350235 to i12
    %_350252.zext = zext i12 %_350239 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350252 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350224, i64 0, i13 %_350252.zext
    %_350255 = urem i64 %_350163, 4
    %_350259 = trunc i64 %_350255 to i2
    %_350274.zext = zext i2 %_350259 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350274 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350252, i64 0, i3 %_350274.zext
    %_350279 = load float, float addrspace(0)* %_350274
    %_350308.zext = zext i14 %_350132 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350308 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350295, i64 0, i15 %_350308.zext
    store float %_350279, float addrspace(0)* %_350308
    br label %head_350081

new_exit_350088:
    %fv_4_350095 = add nuw nsw i32 1, %iv_350067
    br label %head_350064

new_exit_350071:
    ret [128 x [16384 x float]] addrspace(0)* %_350061

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1002 = distinct !{!1002, !1000}
!1001 = distinct !{!1001, !1000}
!1003 = distinct !{!1003, !1000}
