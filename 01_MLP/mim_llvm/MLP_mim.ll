
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [8192 x float]] addrspace(0)* @MLP([16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353672, [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, [128 x [16384 x float]] addrspace(0)* %l_x__353650, [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352446, [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351160, [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385) {
mimir_graph_b97b99f88e469887_349940:
    %_349962i8 = call i8* @malloc(i64 8388608)
    %_349962 = bitcast i8* %_349962i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_349972i8 = call i8* @malloc(i64 32)
    %_349972 = bitcast i8* %_349972i8 to [8 x float] addrspace(0)*
    %fv_0_352948.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352948 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352948.zext
    %fv_0_352952.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352952 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352952.zext
    %fv_0_352956.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352956 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352956.zext
    %fv_0_352960.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352960 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352960.zext
    %fv_0_352964.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352964 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352964.zext
    %fv_0_352968.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352968 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352968.zext
    %fv_0_352972.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352972 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352972.zext
    %fv_0_352976.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_352976 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349972, i64 0, i4 %fv_0_352976.zext
    br label %head_349976

head_349976:
    %iv_349980 = phi i32 [ 0, %mimir_graph_b97b99f88e469887_349940 ], [ %fv_10_352940, %new_exit_352938 ]
    %_349985 = icmp ult i32 %iv_349980, 64
    %_352996 = trunc i32 %iv_349980 to i6
    %_352997 = zext i6 %_352996 to i64
    %t_352999 = mul i64 2, %_352997
    %_353653 = trunc i64 %t_352999 to i7
    %_353664.zext = zext i7 %_353653 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353664 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__353650, i64 0, i8 %_353664.zext
    %t_353328 = add i64 1, %t_352999
    %_353762 = trunc i64 %t_353328 to i7
    %_353764.zext = zext i7 %_353762 to i8 ; add one more bit for gep index as it is treated as signed value
    %_353764 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__353650, i64 0, i8 %_353764.zext
    br i1 %_349985, label %new_body_352929, label %new_exit_349988

new_body_352929:
    br label %head_352932

head_352932:
    %iv_352935 = phi i32 [ 0, %new_body_352929 ], [ %fv_10_352989, %new_exit_352987 ]
    %_352937 = icmp ult i32 %iv_352935, 4096
    %_353015 = trunc i32 %iv_352935 to i12
    %_353016 = zext i12 %_353015 to i64
    %t_353018 = mul i64 4, %_353016
    %_353673 = trunc i64 %t_353018 to i14
    %_353675.zext = zext i14 %_353673 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353675 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353672, i64 0, i15 %_353675.zext
    %t_353099 = add i64 1, %t_353018
    %_353696 = trunc i64 %t_353099 to i14
    %_353698.zext = zext i14 %_353696 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353698 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353672, i64 0, i15 %_353698.zext
    %t_353180 = add i64 2, %t_353018
    %_353719 = trunc i64 %t_353180 to i14
    %_353721.zext = zext i14 %_353719 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353721 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353672, i64 0, i15 %_353721.zext
    %t_353261 = add i64 3, %t_353018
    %_353742 = trunc i64 %t_353261 to i14
    %_353744.zext = zext i14 %_353742 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353744 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__353672, i64 0, i15 %_353744.zext
    br i1 %_352937, label %new_body_352944, label %new_exit_352938

new_body_352944:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352948
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352952
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352956
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352960
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352964
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352968
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352972
    store float 0x0000000000000000, float addrspace(0)* %fv_0_352976
    br label %head_352980, !llvm.loop !1001

head_352980:
    %iv_352983 = phi i32 [ 0, %new_body_352944 ], [ %fv_9_353643, %new_body_353641 ]
    %_352985 = icmp ult i32 %iv_352983, 16384
    br i1 %_352985, label %new_body_353641, label %new_exit_352987

new_body_353641:
    %fv_9_353643 = add nuw nsw i32 1, %iv_352983
    %_353646 = load float, float addrspace(0)* %fv_0_352948
    %_353665 = trunc i32 %iv_352983 to i14
    %_353667.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353667 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353664, i64 0, i15 %_353667.zext
    %_353669 = load float, float addrspace(0)* %_353667
    %_353677.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353677 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353675, i64 0, i15 %_353677.zext
    %_353679 = load float, float addrspace(0)* %_353677
    %_353684 = fmul fast float %_353669, %_353679
    %accn_353687 = fadd fast float %_353684, %_353646
    store float %accn_353687, float addrspace(0)* %fv_0_352948
    %_353691 = load float, float addrspace(0)* %fv_0_352952
    %_353694 = load float, float addrspace(0)* %_353667
    %_353700.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353700 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353698, i64 0, i15 %_353700.zext
    %_353702 = load float, float addrspace(0)* %_353700
    %_353707 = fmul fast float %_353694, %_353702
    %accn_353710 = fadd fast float %_353707, %_353691
    store float %accn_353710, float addrspace(0)* %fv_0_352952
    %_353714 = load float, float addrspace(0)* %fv_0_352956
    %_353717 = load float, float addrspace(0)* %_353667
    %_353723.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353723 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353721, i64 0, i15 %_353723.zext
    %_353725 = load float, float addrspace(0)* %_353723
    %_353730 = fmul fast float %_353717, %_353725
    %accn_353733 = fadd fast float %_353730, %_353714
    store float %accn_353733, float addrspace(0)* %fv_0_352956
    %_353737 = load float, float addrspace(0)* %fv_0_352960
    %_353740 = load float, float addrspace(0)* %_353667
    %_353746.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353746 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353744, i64 0, i15 %_353746.zext
    %_353748 = load float, float addrspace(0)* %_353746
    %_353753 = fmul fast float %_353740, %_353748
    %accn_353756 = fadd fast float %_353753, %_353737
    store float %accn_353756, float addrspace(0)* %fv_0_352960
    %_353760 = load float, float addrspace(0)* %fv_0_352964
    %_353766.zext = zext i14 %_353665 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353766 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_353764, i64 0, i15 %_353766.zext
    %_353768 = load float, float addrspace(0)* %_353766
    %_353771 = load float, float addrspace(0)* %_353677
    %_353776 = fmul fast float %_353771, %_353768
    %accn_353779 = fadd fast float %_353776, %_353760
    store float %accn_353779, float addrspace(0)* %fv_0_352964
    %_353783 = load float, float addrspace(0)* %fv_0_352968
    %_353786 = load float, float addrspace(0)* %_353766
    %_353789 = load float, float addrspace(0)* %_353700
    %_353794 = fmul fast float %_353786, %_353789
    %accn_353797 = fadd fast float %_353794, %_353783
    store float %accn_353797, float addrspace(0)* %fv_0_352968
    %_353801 = load float, float addrspace(0)* %fv_0_352972
    %_353804 = load float, float addrspace(0)* %_353766
    %_353807 = load float, float addrspace(0)* %_353723
    %_353812 = fmul fast float %_353804, %_353807
    %accn_353815 = fadd fast float %_353812, %_353801
    store float %accn_353815, float addrspace(0)* %fv_0_352972
    %_353819 = load float, float addrspace(0)* %fv_0_352976
    %_353822 = load float, float addrspace(0)* %_353766
    %_353825 = load float, float addrspace(0)* %_353746
    %_353830 = fmul fast float %_353822, %_353825
    %accn_353833 = fadd fast float %_353830, %_353819
    store float %accn_353833, float addrspace(0)* %fv_0_352976
    br label %head_352980, !llvm.loop !1001

new_exit_352987:
    %fv_10_352989 = add nuw nsw i32 1, %iv_352935
    %_352992 = load float, float addrspace(0)* %fv_0_352948
    %_353002 = udiv i64 %t_352999, 2
    %_353005 = mul i64 32768, %_353002
    %_353008 = urem i64 %t_352999, 2
    %_353011 = mul i64 16384, %_353008
    %_353013 = add i64 %_353005, %_353011
    %_353021 = udiv i64 %t_353018, 4
    %_353024 = mul i64 4, %_353021
    %_353026 = add i64 %_353013, %_353024
    %_353029 = urem i64 %t_353018, 4
    %_353032 = add i64 %_353026, %_353029
    %_353035 = udiv i64 %_353032, 16384
    %_353040 = urem i64 %_353035, 128
    %_353043 = urem i64 %_353032, 16384
    %_353048 = urem i64 %_353043, 16384
    %_353053 = urem i64 %_353048, 16384
    %_353055 = trunc i64 %_353053 to i14
    %_353057.zext = zext i14 %_353055 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353057 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353057.zext
    %_353059 = load float, float addrspace(0)* %_353057
    %_353061 = trunc i64 %_353002 to i6
    %_353063.zext = zext i6 %_353061 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353063 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353063.zext
    %_353064 = trunc i64 %_353008 to i1
    %_353066.zext = zext i1 %_353064 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353066 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353063, i64 0, i2 %_353066.zext
    %_353067 = trunc i64 %_353021 to i12
    %_353069.zext = zext i12 %_353067 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353069 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353066, i64 0, i13 %_353069.zext
    %_353070 = trunc i64 %_353029 to i2
    %_353072.zext = zext i2 %_353070 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353072 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353069, i64 0, i3 %_353072.zext
    %_353076 = fadd fast float %_352992, %_353059
    %_353078 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353076)
    store float %_353078, float addrspace(0)* %_353072
    %_353082 = load float, float addrspace(0)* %fv_0_352952
    %_353085 = udiv i64 %t_352999, 2
    %_353088 = mul i64 32768, %_353085
    %_353091 = urem i64 %t_352999, 2
    %_353094 = mul i64 16384, %_353091
    %_353096 = add i64 %_353088, %_353094
    %_353102 = udiv i64 %t_353099, 4
    %_353105 = mul i64 4, %_353102
    %_353107 = add i64 %_353096, %_353105
    %_353110 = urem i64 %t_353099, 4
    %_353113 = add i64 %_353107, %_353110
    %_353116 = udiv i64 %_353113, 16384
    %_353121 = urem i64 %_353116, 128
    %_353124 = urem i64 %_353113, 16384
    %_353129 = urem i64 %_353124, 16384
    %_353134 = urem i64 %_353129, 16384
    %_353136 = trunc i64 %_353134 to i14
    %_353138.zext = zext i14 %_353136 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353138 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353138.zext
    %_353140 = load float, float addrspace(0)* %_353138
    %_353142 = trunc i64 %_353085 to i6
    %_353144.zext = zext i6 %_353142 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353144 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353144.zext
    %_353145 = trunc i64 %_353091 to i1
    %_353147.zext = zext i1 %_353145 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353147 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353144, i64 0, i2 %_353147.zext
    %_353148 = trunc i64 %_353102 to i12
    %_353150.zext = zext i12 %_353148 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353150 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353147, i64 0, i13 %_353150.zext
    %_353151 = trunc i64 %_353110 to i2
    %_353153.zext = zext i2 %_353151 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353153 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353150, i64 0, i3 %_353153.zext
    %_353157 = fadd fast float %_353082, %_353140
    %_353159 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353157)
    store float %_353159, float addrspace(0)* %_353153
    %_353163 = load float, float addrspace(0)* %fv_0_352956
    %_353166 = udiv i64 %t_352999, 2
    %_353169 = mul i64 32768, %_353166
    %_353172 = urem i64 %t_352999, 2
    %_353175 = mul i64 16384, %_353172
    %_353177 = add i64 %_353169, %_353175
    %_353183 = udiv i64 %t_353180, 4
    %_353186 = mul i64 4, %_353183
    %_353188 = add i64 %_353177, %_353186
    %_353191 = urem i64 %t_353180, 4
    %_353194 = add i64 %_353188, %_353191
    %_353197 = udiv i64 %_353194, 16384
    %_353202 = urem i64 %_353197, 128
    %_353205 = urem i64 %_353194, 16384
    %_353210 = urem i64 %_353205, 16384
    %_353215 = urem i64 %_353210, 16384
    %_353217 = trunc i64 %_353215 to i14
    %_353219.zext = zext i14 %_353217 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353219 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353219.zext
    %_353221 = load float, float addrspace(0)* %_353219
    %_353223 = trunc i64 %_353166 to i6
    %_353225.zext = zext i6 %_353223 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353225 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353225.zext
    %_353226 = trunc i64 %_353172 to i1
    %_353228.zext = zext i1 %_353226 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353228 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353225, i64 0, i2 %_353228.zext
    %_353229 = trunc i64 %_353183 to i12
    %_353231.zext = zext i12 %_353229 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353231 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353228, i64 0, i13 %_353231.zext
    %_353232 = trunc i64 %_353191 to i2
    %_353234.zext = zext i2 %_353232 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353234 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353231, i64 0, i3 %_353234.zext
    %_353238 = fadd fast float %_353163, %_353221
    %_353240 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353238)
    store float %_353240, float addrspace(0)* %_353234
    %_353244 = load float, float addrspace(0)* %fv_0_352960
    %_353247 = udiv i64 %t_352999, 2
    %_353250 = mul i64 32768, %_353247
    %_353253 = urem i64 %t_352999, 2
    %_353256 = mul i64 16384, %_353253
    %_353258 = add i64 %_353250, %_353256
    %_353264 = udiv i64 %t_353261, 4
    %_353267 = mul i64 4, %_353264
    %_353269 = add i64 %_353258, %_353267
    %_353272 = urem i64 %t_353261, 4
    %_353275 = add i64 %_353269, %_353272
    %_353278 = udiv i64 %_353275, 16384
    %_353283 = urem i64 %_353278, 128
    %_353286 = urem i64 %_353275, 16384
    %_353291 = urem i64 %_353286, 16384
    %_353296 = urem i64 %_353291, 16384
    %_353298 = trunc i64 %_353296 to i14
    %_353300.zext = zext i14 %_353298 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353300 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353300.zext
    %_353302 = load float, float addrspace(0)* %_353300
    %_353304 = trunc i64 %_353247 to i6
    %_353306.zext = zext i6 %_353304 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353306 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353306.zext
    %_353307 = trunc i64 %_353253 to i1
    %_353309.zext = zext i1 %_353307 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353309 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353306, i64 0, i2 %_353309.zext
    %_353310 = trunc i64 %_353264 to i12
    %_353312.zext = zext i12 %_353310 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353312 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353309, i64 0, i13 %_353312.zext
    %_353313 = trunc i64 %_353272 to i2
    %_353315.zext = zext i2 %_353313 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353315 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353312, i64 0, i3 %_353315.zext
    %_353319 = fadd fast float %_353244, %_353302
    %_353321 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353319)
    store float %_353321, float addrspace(0)* %_353315
    %_353325 = load float, float addrspace(0)* %fv_0_352964
    %_353331 = udiv i64 %t_353328, 2
    %_353334 = mul i64 32768, %_353331
    %_353337 = urem i64 %t_353328, 2
    %_353340 = mul i64 16384, %_353337
    %_353342 = add i64 %_353334, %_353340
    %_353345 = udiv i64 %t_353018, 4
    %_353348 = mul i64 4, %_353345
    %_353350 = add i64 %_353342, %_353348
    %_353353 = urem i64 %t_353018, 4
    %_353356 = add i64 %_353350, %_353353
    %_353359 = udiv i64 %_353356, 16384
    %_353364 = urem i64 %_353359, 128
    %_353367 = urem i64 %_353356, 16384
    %_353372 = urem i64 %_353367, 16384
    %_353377 = urem i64 %_353372, 16384
    %_353379 = trunc i64 %_353377 to i14
    %_353381.zext = zext i14 %_353379 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353381 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353381.zext
    %_353383 = load float, float addrspace(0)* %_353381
    %_353385 = trunc i64 %_353331 to i6
    %_353387.zext = zext i6 %_353385 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353387 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353387.zext
    %_353388 = trunc i64 %_353337 to i1
    %_353390.zext = zext i1 %_353388 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353390 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353387, i64 0, i2 %_353390.zext
    %_353391 = trunc i64 %_353345 to i12
    %_353393.zext = zext i12 %_353391 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353393 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353390, i64 0, i13 %_353393.zext
    %_353394 = trunc i64 %_353353 to i2
    %_353396.zext = zext i2 %_353394 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353396 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353393, i64 0, i3 %_353396.zext
    %_353400 = fadd fast float %_353325, %_353383
    %_353402 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353400)
    store float %_353402, float addrspace(0)* %_353396
    %_353406 = load float, float addrspace(0)* %fv_0_352968
    %_353409 = udiv i64 %t_353328, 2
    %_353412 = mul i64 32768, %_353409
    %_353415 = urem i64 %t_353328, 2
    %_353418 = mul i64 16384, %_353415
    %_353420 = add i64 %_353412, %_353418
    %_353423 = udiv i64 %t_353099, 4
    %_353426 = mul i64 4, %_353423
    %_353428 = add i64 %_353420, %_353426
    %_353431 = urem i64 %t_353099, 4
    %_353434 = add i64 %_353428, %_353431
    %_353437 = udiv i64 %_353434, 16384
    %_353442 = urem i64 %_353437, 128
    %_353445 = urem i64 %_353434, 16384
    %_353450 = urem i64 %_353445, 16384
    %_353455 = urem i64 %_353450, 16384
    %_353457 = trunc i64 %_353455 to i14
    %_353459.zext = zext i14 %_353457 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353459 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353459.zext
    %_353461 = load float, float addrspace(0)* %_353459
    %_353463 = trunc i64 %_353409 to i6
    %_353465.zext = zext i6 %_353463 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353465 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353465.zext
    %_353466 = trunc i64 %_353415 to i1
    %_353468.zext = zext i1 %_353466 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353468 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353465, i64 0, i2 %_353468.zext
    %_353469 = trunc i64 %_353423 to i12
    %_353471.zext = zext i12 %_353469 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353471 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353468, i64 0, i13 %_353471.zext
    %_353472 = trunc i64 %_353431 to i2
    %_353474.zext = zext i2 %_353472 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353474 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353471, i64 0, i3 %_353474.zext
    %_353478 = fadd fast float %_353406, %_353461
    %_353480 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353478)
    store float %_353480, float addrspace(0)* %_353474
    %_353484 = load float, float addrspace(0)* %fv_0_352972
    %_353487 = udiv i64 %t_353328, 2
    %_353490 = mul i64 32768, %_353487
    %_353493 = urem i64 %t_353328, 2
    %_353496 = mul i64 16384, %_353493
    %_353498 = add i64 %_353490, %_353496
    %_353501 = udiv i64 %t_353180, 4
    %_353504 = mul i64 4, %_353501
    %_353506 = add i64 %_353498, %_353504
    %_353509 = urem i64 %t_353180, 4
    %_353512 = add i64 %_353506, %_353509
    %_353515 = udiv i64 %_353512, 16384
    %_353520 = urem i64 %_353515, 128
    %_353523 = urem i64 %_353512, 16384
    %_353528 = urem i64 %_353523, 16384
    %_353533 = urem i64 %_353528, 16384
    %_353535 = trunc i64 %_353533 to i14
    %_353537.zext = zext i14 %_353535 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353537 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353537.zext
    %_353539 = load float, float addrspace(0)* %_353537
    %_353541 = trunc i64 %_353487 to i6
    %_353543.zext = zext i6 %_353541 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353543 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353543.zext
    %_353544 = trunc i64 %_353493 to i1
    %_353546.zext = zext i1 %_353544 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353546 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353543, i64 0, i2 %_353546.zext
    %_353547 = trunc i64 %_353501 to i12
    %_353549.zext = zext i12 %_353547 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353549 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353546, i64 0, i13 %_353549.zext
    %_353550 = trunc i64 %_353509 to i2
    %_353552.zext = zext i2 %_353550 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353552 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353549, i64 0, i3 %_353552.zext
    %_353556 = fadd fast float %_353484, %_353539
    %_353558 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353556)
    store float %_353558, float addrspace(0)* %_353552
    %_353562 = load float, float addrspace(0)* %fv_0_352976
    %_353565 = udiv i64 %t_353328, 2
    %_353568 = mul i64 32768, %_353565
    %_353571 = urem i64 %t_353328, 2
    %_353574 = mul i64 16384, %_353571
    %_353576 = add i64 %_353568, %_353574
    %_353579 = udiv i64 %t_353261, 4
    %_353582 = mul i64 4, %_353579
    %_353584 = add i64 %_353576, %_353582
    %_353587 = urem i64 %t_353261, 4
    %_353590 = add i64 %_353584, %_353587
    %_353593 = udiv i64 %_353590, 16384
    %_353598 = urem i64 %_353593, 128
    %_353601 = urem i64 %_353590, 16384
    %_353606 = urem i64 %_353601, 16384
    %_353611 = urem i64 %_353606, 16384
    %_353613 = trunc i64 %_353611 to i14
    %_353615.zext = zext i14 %_353613 to i15 ; add one more bit for gep index as it is treated as signed value
    %_353615 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__352995, i64 0, i15 %_353615.zext
    %_353617 = load float, float addrspace(0)* %_353615
    %_353619 = trunc i64 %_353565 to i6
    %_353621.zext = zext i6 %_353619 to i7 ; add one more bit for gep index as it is treated as signed value
    %_353621 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_353621.zext
    %_353622 = trunc i64 %_353571 to i1
    %_353624.zext = zext i1 %_353622 to i2 ; add one more bit for gep index as it is treated as signed value
    %_353624 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_353621, i64 0, i2 %_353624.zext
    %_353625 = trunc i64 %_353579 to i12
    %_353627.zext = zext i12 %_353625 to i13 ; add one more bit for gep index as it is treated as signed value
    %_353627 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_353624, i64 0, i13 %_353627.zext
    %_353628 = trunc i64 %_353587 to i2
    %_353630.zext = zext i2 %_353628 to i3 ; add one more bit for gep index as it is treated as signed value
    %_353630 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_353627, i64 0, i3 %_353630.zext
    %_353634 = fadd fast float %_353562, %_353617
    %_353636 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_353634)
    store float %_353636, float addrspace(0)* %_353630
    br label %head_352932

new_exit_352938:
    %fv_10_352940 = add nuw nsw i32 1, %iv_349980
    br label %head_349976

new_exit_349988:
    %_349991i8 = call i8* @malloc(i64 8388608)
    %_349991 = bitcast i8* %_349991i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_349994i8 = call i8* @malloc(i64 32)
    %_349994 = bitcast i8* %_349994i8 to [8 x float] addrspace(0)*
    %fv_0_351676.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351676 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351676.zext
    %fv_0_351680.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351680 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351680.zext
    %fv_0_351684.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351684 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351684.zext
    %fv_0_351688.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351688 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351688.zext
    %fv_0_351692.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351692 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351692.zext
    %fv_0_351696.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351696 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351696.zext
    %fv_0_351700.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351700 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351700.zext
    %fv_0_351704.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351704 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_349994, i64 0, i4 %fv_0_351704.zext
    br label %head_349997

head_349997:
    %iv_350000 = phi i32 [ 0, %new_exit_349988 ], [ %fv_10_351668, %new_exit_351666 ]
    %_350002 = icmp ult i32 %iv_350000, 64
    %_351724 = trunc i32 %iv_350000 to i6
    %_351725 = zext i6 %_351724 to i64
    %_352393 = mul i64 32768, %_351725
    %t_351727 = mul i64 2, %_351725
    %t_352069 = add i64 1, %t_351727
    %_352672 = mul i64 16384, %t_352069
    br i1 %_350002, label %new_body_351656, label %new_exit_350003

new_body_351656:
    br label %head_351659

head_351659:
    %iv_351662 = phi i32 [ 0, %new_body_351656 ], [ %fv_10_351717, %new_exit_351715 ]
    %_351665 = icmp ult i32 %iv_351662, 4096
    %_351745 = trunc i32 %iv_351662 to i12
    %_351753 = zext i12 %_351745 to i64
    %t_351755 = mul i64 4, %_351753
    %_352447 = trunc i64 %t_351755 to i14
    %_352458.zext = zext i14 %_352447 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352458 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352446, i64 0, i15 %_352458.zext
    %t_351840 = add i64 1, %t_351755
    %_352521 = trunc i64 %t_351840 to i14
    %_352523.zext = zext i14 %_352521 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352523 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352446, i64 0, i15 %_352523.zext
    %t_351921 = add i64 2, %t_351755
    %_352586 = trunc i64 %t_351921 to i14
    %_352588.zext = zext i14 %_352586 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352588 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352446, i64 0, i15 %_352588.zext
    %t_352002 = add i64 3, %t_351755
    %_352651 = trunc i64 %t_352002 to i14
    %_352653.zext = zext i14 %_352651 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352653 = getelementptr inbounds [16384 x [16384 x float]], [16384 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__352446, i64 0, i15 %_352653.zext
    br i1 %_351665, label %new_body_351672, label %new_exit_351666

new_body_351672:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351676
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351680
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351684
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351688
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351692
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351696
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351700
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351704
    br label %head_351708, !llvm.loop !1002

head_351708:
    %iv_351711 = phi i32 [ 0, %new_body_351672 ], [ %fv_9_352384, %new_body_352382 ]
    %_351713 = icmp ult i32 %iv_351711, 16384
    br i1 %_351713, label %new_body_352382, label %new_exit_351715

new_body_352382:
    %fv_9_352384 = add nuw nsw i32 1, %iv_351711
    %_352387 = load float, float addrspace(0)* %fv_0_351676
    %_352390 = trunc i32 %iv_351711 to i14
    %_352391 = zext i14 %_352390 to i64
    %_352395 = add i64 %_352391, %_352393
    %_352398 = udiv i64 %_352395, 32768
    %_352403 = urem i64 %_352398, 64
    %_352405 = trunc i64 %_352403 to i6
    %_352407.zext = zext i6 %_352405 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352407 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352407.zext
    %_352411 = udiv i64 %_352395, 16384
    %_352416 = urem i64 %_352411, 2
    %_352418 = trunc i64 %_352416 to i1
    %_352420.zext = zext i1 %_352418 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352420 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352407, i64 0, i2 %_352420.zext
    %_352424 = udiv i64 %_352395, 4
    %_352429 = urem i64 %_352424, 4096
    %_352431 = trunc i64 %_352429 to i12
    %_352433.zext = zext i12 %_352431 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352433 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352420, i64 0, i13 %_352433.zext
    %_352436 = urem i64 %_352395, 4
    %_352438 = trunc i64 %_352436 to i2
    %_352440.zext = zext i2 %_352438 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352440 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352433, i64 0, i3 %_352440.zext
    %_352442 = load float, float addrspace(0)* %_352440
    %_352460.zext = zext i14 %_352390 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352460 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352458, i64 0, i15 %_352460.zext
    %_352462 = load float, float addrspace(0)* %_352460
    %_352467 = fmul fast float %_352462, %_352442
    %accn_352470 = fadd fast float %_352467, %_352387
    store float %accn_352470, float addrspace(0)* %fv_0_351676
    %_352474 = load float, float addrspace(0)* %fv_0_351680
    %_352477 = udiv i64 %_352395, 32768
    %_352482 = urem i64 %_352477, 64
    %_352484 = trunc i64 %_352482 to i6
    %_352486.zext = zext i6 %_352484 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352486 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352486.zext
    %_352489 = udiv i64 %_352395, 16384
    %_352494 = urem i64 %_352489, 2
    %_352496 = trunc i64 %_352494 to i1
    %_352498.zext = zext i1 %_352496 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352498 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352486, i64 0, i2 %_352498.zext
    %_352501 = udiv i64 %_352395, 4
    %_352506 = urem i64 %_352501, 4096
    %_352508 = trunc i64 %_352506 to i12
    %_352510.zext = zext i12 %_352508 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352510 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352498, i64 0, i13 %_352510.zext
    %_352513 = urem i64 %_352395, 4
    %_352515 = trunc i64 %_352513 to i2
    %_352517.zext = zext i2 %_352515 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352517 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352510, i64 0, i3 %_352517.zext
    %_352519 = load float, float addrspace(0)* %_352517
    %_352525.zext = zext i14 %_352390 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352525 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352523, i64 0, i15 %_352525.zext
    %_352527 = load float, float addrspace(0)* %_352525
    %_352532 = fmul fast float %_352527, %_352519
    %accn_352535 = fadd fast float %_352532, %_352474
    store float %accn_352535, float addrspace(0)* %fv_0_351680
    %_352539 = load float, float addrspace(0)* %fv_0_351684
    %_352542 = udiv i64 %_352395, 32768
    %_352547 = urem i64 %_352542, 64
    %_352549 = trunc i64 %_352547 to i6
    %_352551.zext = zext i6 %_352549 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352551 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352551.zext
    %_352554 = udiv i64 %_352395, 16384
    %_352559 = urem i64 %_352554, 2
    %_352561 = trunc i64 %_352559 to i1
    %_352563.zext = zext i1 %_352561 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352563 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352551, i64 0, i2 %_352563.zext
    %_352566 = udiv i64 %_352395, 4
    %_352571 = urem i64 %_352566, 4096
    %_352573 = trunc i64 %_352571 to i12
    %_352575.zext = zext i12 %_352573 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352575 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352563, i64 0, i13 %_352575.zext
    %_352578 = urem i64 %_352395, 4
    %_352580 = trunc i64 %_352578 to i2
    %_352582.zext = zext i2 %_352580 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352582 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352575, i64 0, i3 %_352582.zext
    %_352584 = load float, float addrspace(0)* %_352582
    %_352590.zext = zext i14 %_352390 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352590 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352588, i64 0, i15 %_352590.zext
    %_352592 = load float, float addrspace(0)* %_352590
    %_352597 = fmul fast float %_352592, %_352584
    %accn_352600 = fadd fast float %_352597, %_352539
    store float %accn_352600, float addrspace(0)* %fv_0_351684
    %_352604 = load float, float addrspace(0)* %fv_0_351688
    %_352607 = udiv i64 %_352395, 32768
    %_352612 = urem i64 %_352607, 64
    %_352614 = trunc i64 %_352612 to i6
    %_352616.zext = zext i6 %_352614 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352616 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352616.zext
    %_352619 = udiv i64 %_352395, 16384
    %_352624 = urem i64 %_352619, 2
    %_352626 = trunc i64 %_352624 to i1
    %_352628.zext = zext i1 %_352626 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352628 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352616, i64 0, i2 %_352628.zext
    %_352631 = udiv i64 %_352395, 4
    %_352636 = urem i64 %_352631, 4096
    %_352638 = trunc i64 %_352636 to i12
    %_352640.zext = zext i12 %_352638 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352640 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352628, i64 0, i13 %_352640.zext
    %_352643 = urem i64 %_352395, 4
    %_352645 = trunc i64 %_352643 to i2
    %_352647.zext = zext i2 %_352645 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352647 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352640, i64 0, i3 %_352647.zext
    %_352649 = load float, float addrspace(0)* %_352647
    %_352655.zext = zext i14 %_352390 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352655 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352653, i64 0, i15 %_352655.zext
    %_352657 = load float, float addrspace(0)* %_352655
    %_352662 = fmul fast float %_352657, %_352649
    %accn_352665 = fadd fast float %_352662, %_352604
    store float %accn_352665, float addrspace(0)* %fv_0_351688
    %_352669 = load float, float addrspace(0)* %fv_0_351692
    %_352674 = add i64 %_352391, %_352672
    %_352677 = udiv i64 %_352674, 32768
    %_352682 = urem i64 %_352677, 64
    %_352684 = trunc i64 %_352682 to i6
    %_352686.zext = zext i6 %_352684 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352686 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352686.zext
    %_352690 = udiv i64 %_352674, 16384
    %_352695 = urem i64 %_352690, 2
    %_352697 = trunc i64 %_352695 to i1
    %_352699.zext = zext i1 %_352697 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352699 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352686, i64 0, i2 %_352699.zext
    %_352703 = udiv i64 %_352674, 4
    %_352708 = urem i64 %_352703, 4096
    %_352710 = trunc i64 %_352708 to i12
    %_352712.zext = zext i12 %_352710 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352712 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352699, i64 0, i13 %_352712.zext
    %_352715 = urem i64 %_352674, 4
    %_352717 = trunc i64 %_352715 to i2
    %_352719.zext = zext i2 %_352717 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352719 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352712, i64 0, i3 %_352719.zext
    %_352721 = load float, float addrspace(0)* %_352719
    %_352724 = load float, float addrspace(0)* %_352460
    %_352729 = fmul fast float %_352724, %_352721
    %accn_352732 = fadd fast float %_352729, %_352669
    store float %accn_352732, float addrspace(0)* %fv_0_351692
    %_352736 = load float, float addrspace(0)* %fv_0_351696
    %_352739 = udiv i64 %_352674, 32768
    %_352744 = urem i64 %_352739, 64
    %_352746 = trunc i64 %_352744 to i6
    %_352748.zext = zext i6 %_352746 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352748 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352748.zext
    %_352751 = udiv i64 %_352674, 16384
    %_352756 = urem i64 %_352751, 2
    %_352758 = trunc i64 %_352756 to i1
    %_352760.zext = zext i1 %_352758 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352760 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352748, i64 0, i2 %_352760.zext
    %_352763 = udiv i64 %_352674, 4
    %_352768 = urem i64 %_352763, 4096
    %_352770 = trunc i64 %_352768 to i12
    %_352772.zext = zext i12 %_352770 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352772 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352760, i64 0, i13 %_352772.zext
    %_352775 = urem i64 %_352674, 4
    %_352777 = trunc i64 %_352775 to i2
    %_352779.zext = zext i2 %_352777 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352779 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352772, i64 0, i3 %_352779.zext
    %_352781 = load float, float addrspace(0)* %_352779
    %_352784 = load float, float addrspace(0)* %_352525
    %_352789 = fmul fast float %_352784, %_352781
    %accn_352792 = fadd fast float %_352789, %_352736
    store float %accn_352792, float addrspace(0)* %fv_0_351696
    %_352796 = load float, float addrspace(0)* %fv_0_351700
    %_352799 = udiv i64 %_352674, 32768
    %_352804 = urem i64 %_352799, 64
    %_352806 = trunc i64 %_352804 to i6
    %_352808.zext = zext i6 %_352806 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352808 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352808.zext
    %_352811 = udiv i64 %_352674, 16384
    %_352816 = urem i64 %_352811, 2
    %_352818 = trunc i64 %_352816 to i1
    %_352820.zext = zext i1 %_352818 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352820 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352808, i64 0, i2 %_352820.zext
    %_352823 = udiv i64 %_352674, 4
    %_352828 = urem i64 %_352823, 4096
    %_352830 = trunc i64 %_352828 to i12
    %_352832.zext = zext i12 %_352830 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352832 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352820, i64 0, i13 %_352832.zext
    %_352835 = urem i64 %_352674, 4
    %_352837 = trunc i64 %_352835 to i2
    %_352839.zext = zext i2 %_352837 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352839 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352832, i64 0, i3 %_352839.zext
    %_352841 = load float, float addrspace(0)* %_352839
    %_352844 = load float, float addrspace(0)* %_352590
    %_352849 = fmul fast float %_352844, %_352841
    %accn_352852 = fadd fast float %_352849, %_352796
    store float %accn_352852, float addrspace(0)* %fv_0_351700
    %_352856 = load float, float addrspace(0)* %fv_0_351704
    %_352859 = udiv i64 %_352674, 32768
    %_352864 = urem i64 %_352859, 64
    %_352866 = trunc i64 %_352864 to i6
    %_352868.zext = zext i6 %_352866 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352868 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349962, i64 0, i7 %_352868.zext
    %_352871 = udiv i64 %_352674, 16384
    %_352876 = urem i64 %_352871, 2
    %_352878 = trunc i64 %_352876 to i1
    %_352880.zext = zext i1 %_352878 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352880 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352868, i64 0, i2 %_352880.zext
    %_352883 = udiv i64 %_352674, 4
    %_352888 = urem i64 %_352883, 4096
    %_352890 = trunc i64 %_352888 to i12
    %_352892.zext = zext i12 %_352890 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352892 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352880, i64 0, i13 %_352892.zext
    %_352895 = urem i64 %_352674, 4
    %_352897 = trunc i64 %_352895 to i2
    %_352899.zext = zext i2 %_352897 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352899 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352892, i64 0, i3 %_352899.zext
    %_352901 = load float, float addrspace(0)* %_352899
    %_352904 = load float, float addrspace(0)* %_352655
    %_352909 = fmul fast float %_352904, %_352901
    %accn_352912 = fadd fast float %_352909, %_352856
    store float %accn_352912, float addrspace(0)* %fv_0_351704
    br label %head_351708, !llvm.loop !1002

new_exit_351715:
    %fv_10_351717 = add nuw nsw i32 1, %iv_351662
    %_351720 = load float, float addrspace(0)* %fv_0_351676
    %_351730 = udiv i64 %t_351727, 2
    %_351733 = mul i64 32768, %_351730
    %_351736 = urem i64 %t_351727, 2
    %_351739 = mul i64 16384, %_351736
    %_351741 = add i64 %_351733, %_351739
    %_351758 = udiv i64 %t_351755, 4
    %_351761 = mul i64 4, %_351758
    %_351763 = add i64 %_351741, %_351761
    %_351766 = urem i64 %t_351755, 4
    %_351769 = add i64 %_351763, %_351766
    %_351772 = udiv i64 %_351769, 16384
    %_351777 = urem i64 %_351772, 128
    %_351780 = urem i64 %_351769, 16384
    %_351785 = urem i64 %_351780, 16384
    %_351790 = urem i64 %_351785, 16384
    %_351794 = trunc i64 %_351790 to i14
    %_351796.zext = zext i14 %_351794 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351796 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_351796.zext
    %_351798 = load float, float addrspace(0)* %_351796
    %_351800 = trunc i64 %_351730 to i6
    %_351802.zext = zext i6 %_351800 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351802 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351802.zext
    %_351803 = trunc i64 %_351736 to i1
    %_351805.zext = zext i1 %_351803 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351805 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351802, i64 0, i2 %_351805.zext
    %_351806 = trunc i64 %_351758 to i12
    %_351808.zext = zext i12 %_351806 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351808 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351805, i64 0, i13 %_351808.zext
    %_351809 = trunc i64 %_351766 to i2
    %_351811.zext = zext i2 %_351809 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351811 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351808, i64 0, i3 %_351811.zext
    %_351815 = fadd fast float %_351720, %_351798
    %_351819 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351815)
    store float %_351819, float addrspace(0)* %_351811
    %_351823 = load float, float addrspace(0)* %fv_0_351680
    %_351826 = udiv i64 %t_351727, 2
    %_351829 = mul i64 32768, %_351826
    %_351832 = urem i64 %t_351727, 2
    %_351835 = mul i64 16384, %_351832
    %_351837 = add i64 %_351829, %_351835
    %_351843 = udiv i64 %t_351840, 4
    %_351846 = mul i64 4, %_351843
    %_351848 = add i64 %_351837, %_351846
    %_351851 = urem i64 %t_351840, 4
    %_351854 = add i64 %_351848, %_351851
    %_351857 = udiv i64 %_351854, 16384
    %_351862 = urem i64 %_351857, 128
    %_351865 = urem i64 %_351854, 16384
    %_351870 = urem i64 %_351865, 16384
    %_351875 = urem i64 %_351870, 16384
    %_351877 = trunc i64 %_351875 to i14
    %_351879.zext = zext i14 %_351877 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351879 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_351879.zext
    %_351881 = load float, float addrspace(0)* %_351879
    %_351883 = trunc i64 %_351826 to i6
    %_351885.zext = zext i6 %_351883 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351885 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351885.zext
    %_351886 = trunc i64 %_351832 to i1
    %_351888.zext = zext i1 %_351886 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351888 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351885, i64 0, i2 %_351888.zext
    %_351889 = trunc i64 %_351843 to i12
    %_351891.zext = zext i12 %_351889 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351891 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351888, i64 0, i13 %_351891.zext
    %_351892 = trunc i64 %_351851 to i2
    %_351894.zext = zext i2 %_351892 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351894 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351891, i64 0, i3 %_351894.zext
    %_351898 = fadd fast float %_351823, %_351881
    %_351900 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351898)
    store float %_351900, float addrspace(0)* %_351894
    %_351904 = load float, float addrspace(0)* %fv_0_351684
    %_351907 = udiv i64 %t_351727, 2
    %_351910 = mul i64 32768, %_351907
    %_351913 = urem i64 %t_351727, 2
    %_351916 = mul i64 16384, %_351913
    %_351918 = add i64 %_351910, %_351916
    %_351924 = udiv i64 %t_351921, 4
    %_351927 = mul i64 4, %_351924
    %_351929 = add i64 %_351918, %_351927
    %_351932 = urem i64 %t_351921, 4
    %_351935 = add i64 %_351929, %_351932
    %_351938 = udiv i64 %_351935, 16384
    %_351943 = urem i64 %_351938, 128
    %_351946 = urem i64 %_351935, 16384
    %_351951 = urem i64 %_351946, 16384
    %_351956 = urem i64 %_351951, 16384
    %_351958 = trunc i64 %_351956 to i14
    %_351960.zext = zext i14 %_351958 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351960 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_351960.zext
    %_351962 = load float, float addrspace(0)* %_351960
    %_351964 = trunc i64 %_351907 to i6
    %_351966.zext = zext i6 %_351964 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351966 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351966.zext
    %_351967 = trunc i64 %_351913 to i1
    %_351969.zext = zext i1 %_351967 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351969 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351966, i64 0, i2 %_351969.zext
    %_351970 = trunc i64 %_351924 to i12
    %_351972.zext = zext i12 %_351970 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351972 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351969, i64 0, i13 %_351972.zext
    %_351973 = trunc i64 %_351932 to i2
    %_351975.zext = zext i2 %_351973 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351975 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351972, i64 0, i3 %_351975.zext
    %_351979 = fadd fast float %_351904, %_351962
    %_351981 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351979)
    store float %_351981, float addrspace(0)* %_351975
    %_351985 = load float, float addrspace(0)* %fv_0_351688
    %_351988 = udiv i64 %t_351727, 2
    %_351991 = mul i64 32768, %_351988
    %_351994 = urem i64 %t_351727, 2
    %_351997 = mul i64 16384, %_351994
    %_351999 = add i64 %_351991, %_351997
    %_352005 = udiv i64 %t_352002, 4
    %_352008 = mul i64 4, %_352005
    %_352010 = add i64 %_351999, %_352008
    %_352013 = urem i64 %t_352002, 4
    %_352016 = add i64 %_352010, %_352013
    %_352019 = udiv i64 %_352016, 16384
    %_352024 = urem i64 %_352019, 128
    %_352027 = urem i64 %_352016, 16384
    %_352032 = urem i64 %_352027, 16384
    %_352037 = urem i64 %_352032, 16384
    %_352039 = trunc i64 %_352037 to i14
    %_352041.zext = zext i14 %_352039 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352041 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_352041.zext
    %_352043 = load float, float addrspace(0)* %_352041
    %_352045 = trunc i64 %_351988 to i6
    %_352047.zext = zext i6 %_352045 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352047 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_352047.zext
    %_352048 = trunc i64 %_351994 to i1
    %_352050.zext = zext i1 %_352048 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352050 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352047, i64 0, i2 %_352050.zext
    %_352051 = trunc i64 %_352005 to i12
    %_352053.zext = zext i12 %_352051 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352053 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352050, i64 0, i13 %_352053.zext
    %_352054 = trunc i64 %_352013 to i2
    %_352056.zext = zext i2 %_352054 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352056 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352053, i64 0, i3 %_352056.zext
    %_352060 = fadd fast float %_351985, %_352043
    %_352062 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352060)
    store float %_352062, float addrspace(0)* %_352056
    %_352066 = load float, float addrspace(0)* %fv_0_351692
    %_352072 = udiv i64 %t_352069, 2
    %_352075 = mul i64 32768, %_352072
    %_352078 = urem i64 %t_352069, 2
    %_352081 = mul i64 16384, %_352078
    %_352083 = add i64 %_352075, %_352081
    %_352086 = udiv i64 %t_351755, 4
    %_352089 = mul i64 4, %_352086
    %_352091 = add i64 %_352083, %_352089
    %_352094 = urem i64 %t_351755, 4
    %_352097 = add i64 %_352091, %_352094
    %_352100 = udiv i64 %_352097, 16384
    %_352105 = urem i64 %_352100, 128
    %_352108 = urem i64 %_352097, 16384
    %_352113 = urem i64 %_352108, 16384
    %_352118 = urem i64 %_352113, 16384
    %_352120 = trunc i64 %_352118 to i14
    %_352122.zext = zext i14 %_352120 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352122 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_352122.zext
    %_352124 = load float, float addrspace(0)* %_352122
    %_352126 = trunc i64 %_352072 to i6
    %_352128.zext = zext i6 %_352126 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352128 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_352128.zext
    %_352129 = trunc i64 %_352078 to i1
    %_352131.zext = zext i1 %_352129 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352131 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352128, i64 0, i2 %_352131.zext
    %_352132 = trunc i64 %_352086 to i12
    %_352134.zext = zext i12 %_352132 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352134 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352131, i64 0, i13 %_352134.zext
    %_352135 = trunc i64 %_352094 to i2
    %_352137.zext = zext i2 %_352135 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352137 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352134, i64 0, i3 %_352137.zext
    %_352141 = fadd fast float %_352066, %_352124
    %_352143 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352141)
    store float %_352143, float addrspace(0)* %_352137
    %_352147 = load float, float addrspace(0)* %fv_0_351696
    %_352150 = udiv i64 %t_352069, 2
    %_352153 = mul i64 32768, %_352150
    %_352156 = urem i64 %t_352069, 2
    %_352159 = mul i64 16384, %_352156
    %_352161 = add i64 %_352153, %_352159
    %_352164 = udiv i64 %t_351840, 4
    %_352167 = mul i64 4, %_352164
    %_352169 = add i64 %_352161, %_352167
    %_352172 = urem i64 %t_351840, 4
    %_352175 = add i64 %_352169, %_352172
    %_352178 = udiv i64 %_352175, 16384
    %_352183 = urem i64 %_352178, 128
    %_352186 = urem i64 %_352175, 16384
    %_352191 = urem i64 %_352186, 16384
    %_352196 = urem i64 %_352191, 16384
    %_352198 = trunc i64 %_352196 to i14
    %_352200.zext = zext i14 %_352198 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352200 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_352200.zext
    %_352202 = load float, float addrspace(0)* %_352200
    %_352204 = trunc i64 %_352150 to i6
    %_352206.zext = zext i6 %_352204 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352206 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_352206.zext
    %_352207 = trunc i64 %_352156 to i1
    %_352209.zext = zext i1 %_352207 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352209 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352206, i64 0, i2 %_352209.zext
    %_352210 = trunc i64 %_352164 to i12
    %_352212.zext = zext i12 %_352210 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352212 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352209, i64 0, i13 %_352212.zext
    %_352213 = trunc i64 %_352172 to i2
    %_352215.zext = zext i2 %_352213 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352215 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352212, i64 0, i3 %_352215.zext
    %_352219 = fadd fast float %_352147, %_352202
    %_352221 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352219)
    store float %_352221, float addrspace(0)* %_352215
    %_352225 = load float, float addrspace(0)* %fv_0_351700
    %_352228 = udiv i64 %t_352069, 2
    %_352231 = mul i64 32768, %_352228
    %_352234 = urem i64 %t_352069, 2
    %_352237 = mul i64 16384, %_352234
    %_352239 = add i64 %_352231, %_352237
    %_352242 = udiv i64 %t_351921, 4
    %_352245 = mul i64 4, %_352242
    %_352247 = add i64 %_352239, %_352245
    %_352250 = urem i64 %t_351921, 4
    %_352253 = add i64 %_352247, %_352250
    %_352256 = udiv i64 %_352253, 16384
    %_352261 = urem i64 %_352256, 128
    %_352264 = urem i64 %_352253, 16384
    %_352269 = urem i64 %_352264, 16384
    %_352274 = urem i64 %_352269, 16384
    %_352276 = trunc i64 %_352274 to i14
    %_352278.zext = zext i14 %_352276 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352278 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_352278.zext
    %_352280 = load float, float addrspace(0)* %_352278
    %_352282 = trunc i64 %_352228 to i6
    %_352284.zext = zext i6 %_352282 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352284 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_352284.zext
    %_352285 = trunc i64 %_352234 to i1
    %_352287.zext = zext i1 %_352285 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352287 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352284, i64 0, i2 %_352287.zext
    %_352288 = trunc i64 %_352242 to i12
    %_352290.zext = zext i12 %_352288 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352290 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352287, i64 0, i13 %_352290.zext
    %_352291 = trunc i64 %_352250 to i2
    %_352293.zext = zext i2 %_352291 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352293 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352290, i64 0, i3 %_352293.zext
    %_352297 = fadd fast float %_352225, %_352280
    %_352299 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352297)
    store float %_352299, float addrspace(0)* %_352293
    %_352303 = load float, float addrspace(0)* %fv_0_351704
    %_352306 = udiv i64 %t_352069, 2
    %_352309 = mul i64 32768, %_352306
    %_352312 = urem i64 %t_352069, 2
    %_352315 = mul i64 16384, %_352312
    %_352317 = add i64 %_352309, %_352315
    %_352320 = udiv i64 %t_352002, 4
    %_352323 = mul i64 4, %_352320
    %_352325 = add i64 %_352317, %_352323
    %_352328 = urem i64 %t_352002, 4
    %_352331 = add i64 %_352325, %_352328
    %_352334 = udiv i64 %_352331, 16384
    %_352339 = urem i64 %_352334, 128
    %_352342 = urem i64 %_352331, 16384
    %_352347 = urem i64 %_352342, 16384
    %_352352 = urem i64 %_352347, 16384
    %_352354 = trunc i64 %_352352 to i14
    %_352356.zext = zext i14 %_352354 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352356 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351723, i64 0, i15 %_352356.zext
    %_352358 = load float, float addrspace(0)* %_352356
    %_352360 = trunc i64 %_352306 to i6
    %_352362.zext = zext i6 %_352360 to i7 ; add one more bit for gep index as it is treated as signed value
    %_352362 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_352362.zext
    %_352363 = trunc i64 %_352312 to i1
    %_352365.zext = zext i1 %_352363 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352365 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_352362, i64 0, i2 %_352365.zext
    %_352366 = trunc i64 %_352320 to i12
    %_352368.zext = zext i12 %_352366 to i13 ; add one more bit for gep index as it is treated as signed value
    %_352368 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_352365, i64 0, i13 %_352368.zext
    %_352369 = trunc i64 %_352328 to i2
    %_352371.zext = zext i2 %_352369 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352371 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352368, i64 0, i3 %_352371.zext
    %_352375 = fadd fast float %_352303, %_352358
    %_352377 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352375)
    store float %_352377, float addrspace(0)* %_352371
    br label %head_351659

new_exit_351666:
    %fv_10_351668 = add nuw nsw i32 1, %iv_350000
    br label %head_349997

new_exit_350003:
    %_350016i8 = call i8* @malloc(i64 4194304)
    %_350016 = bitcast i8* %_350016i8 to [64 x [2 x [2048 x [4 x float]]]] addrspace(0)*
    %_350019i8 = call i8* @malloc(i64 32)
    %_350019 = bitcast i8* %_350019i8 to [8 x float] addrspace(0)*
    %fv_0_350335.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350335 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350335.zext
    %fv_0_350340.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350340 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350340.zext
    %fv_0_350344.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350344 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350344.zext
    %fv_0_350348.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350348 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350348.zext
    %fv_0_350352.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350352 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350352.zext
    %fv_0_350356.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350356 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350356.zext
    %fv_0_350360.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350360 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350360.zext
    %fv_0_350364.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350364 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350019, i64 0, i4 %fv_0_350364.zext
    br label %head_350022

head_350022:
    %iv_350025 = phi i32 [ 0, %new_exit_350003 ], [ %fv_10_350308, %new_exit_350306 ]
    %_350027 = icmp ult i32 %iv_350025, 64
    %_350388 = trunc i32 %iv_350025 to i6
    %_350396 = zext i6 %_350388 to i64
    %_351076 = mul i64 32768, %_350396
    %t_350398 = mul i64 2, %_350396
    %t_350741 = add i64 1, %t_350398
    %_351399 = mul i64 16384, %t_350741
    br i1 %_350027, label %new_body_350296, label %new_exit_350028

new_body_350296:
    br label %head_350299

head_350299:
    %iv_350302 = phi i32 [ 0, %new_body_350296 ], [ %fv_10_350379, %new_exit_350377 ]
    %_350305 = icmp ult i32 %iv_350302, 2048
    %_350416 = trunc i32 %iv_350302 to i11
    %_350424 = zext i11 %_350416 to i64
    %t_350426 = mul i64 4, %_350424
    %_351161 = trunc i64 %t_350426 to i13
    %_351172.zext = zext i13 %_351161 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351172 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351160, i64 0, i14 %_351172.zext
    %t_350517 = add i64 1, %t_350426
    %_351248 = trunc i64 %t_350517 to i13
    %_351250.zext = zext i13 %_351248 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351250 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351160, i64 0, i14 %_351250.zext
    %t_350596 = add i64 2, %t_350426
    %_351313 = trunc i64 %t_350596 to i13
    %_351315.zext = zext i13 %_351313 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351315 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351160, i64 0, i14 %_351315.zext
    %t_350676 = add i64 3, %t_350426
    %_351378 = trunc i64 %t_350676 to i13
    %_351380.zext = zext i13 %_351378 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351380 = getelementptr inbounds [8192 x [16384 x float]], [8192 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__351160, i64 0, i14 %_351380.zext
    br i1 %_350305, label %new_body_350312, label %new_exit_350306

new_body_350312:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350335
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350340
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350344
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350348
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350352
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350356
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350360
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350364
    br label %head_350368, !llvm.loop !1003

head_350368:
    %iv_350371 = phi i32 [ 0, %new_body_350312 ], [ %fv_9_351048, %new_body_351046 ]
    %_350374 = icmp ult i32 %iv_350371, 16384
    br i1 %_350374, label %new_body_351046, label %new_exit_350377

new_body_351046:
    %fv_9_351048 = add nuw nsw i32 1, %iv_350371
    %_351051 = load float, float addrspace(0)* %fv_0_350335
    %_351065 = trunc i32 %iv_350371 to i14
    %_351073 = zext i14 %_351065 to i64
    %_351078 = add i64 %_351073, %_351076
    %_351081 = udiv i64 %_351078, 32768
    %_351086 = urem i64 %_351081, 64
    %_351088 = trunc i64 %_351086 to i6
    %_351099.zext = zext i6 %_351088 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351099 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351099.zext
    %_351103 = udiv i64 %_351078, 16384
    %_351108 = urem i64 %_351103, 2
    %_351110 = trunc i64 %_351108 to i1
    %_351119.zext = zext i1 %_351110 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351119 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351099, i64 0, i2 %_351119.zext
    %_351123 = udiv i64 %_351078, 4
    %_351129 = urem i64 %_351123, 4096
    %_351133 = trunc i64 %_351129 to i12
    %_351146.zext = zext i12 %_351133 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351146 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351119, i64 0, i13 %_351146.zext
    %_351149 = urem i64 %_351078, 4
    %_351151 = trunc i64 %_351149 to i2
    %_351153.zext = zext i2 %_351151 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351153 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351146, i64 0, i3 %_351153.zext
    %_351155 = load float, float addrspace(0)* %_351153
    %_351185.zext = zext i14 %_351065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351185 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351172, i64 0, i15 %_351185.zext
    %_351187 = load float, float addrspace(0)* %_351185
    %_351194 = fmul fast float %_351187, %_351155
    %accn_351197 = fadd fast float %_351194, %_351051
    store float %accn_351197, float addrspace(0)* %fv_0_350335
    %_351201 = load float, float addrspace(0)* %fv_0_350340
    %_351204 = udiv i64 %_351078, 32768
    %_351209 = urem i64 %_351204, 64
    %_351211 = trunc i64 %_351209 to i6
    %_351213.zext = zext i6 %_351211 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351213 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351213.zext
    %_351216 = udiv i64 %_351078, 16384
    %_351221 = urem i64 %_351216, 2
    %_351223 = trunc i64 %_351221 to i1
    %_351225.zext = zext i1 %_351223 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351225 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351213, i64 0, i2 %_351225.zext
    %_351228 = udiv i64 %_351078, 4
    %_351233 = urem i64 %_351228, 4096
    %_351235 = trunc i64 %_351233 to i12
    %_351237.zext = zext i12 %_351235 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351237 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351225, i64 0, i13 %_351237.zext
    %_351240 = urem i64 %_351078, 4
    %_351242 = trunc i64 %_351240 to i2
    %_351244.zext = zext i2 %_351242 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351244 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351237, i64 0, i3 %_351244.zext
    %_351246 = load float, float addrspace(0)* %_351244
    %_351252.zext = zext i14 %_351065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351252 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351250, i64 0, i15 %_351252.zext
    %_351254 = load float, float addrspace(0)* %_351252
    %_351259 = fmul fast float %_351254, %_351246
    %accn_351262 = fadd fast float %_351259, %_351201
    store float %accn_351262, float addrspace(0)* %fv_0_350340
    %_351266 = load float, float addrspace(0)* %fv_0_350344
    %_351269 = udiv i64 %_351078, 32768
    %_351274 = urem i64 %_351269, 64
    %_351276 = trunc i64 %_351274 to i6
    %_351278.zext = zext i6 %_351276 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351278 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351278.zext
    %_351281 = udiv i64 %_351078, 16384
    %_351286 = urem i64 %_351281, 2
    %_351288 = trunc i64 %_351286 to i1
    %_351290.zext = zext i1 %_351288 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351290 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351278, i64 0, i2 %_351290.zext
    %_351293 = udiv i64 %_351078, 4
    %_351298 = urem i64 %_351293, 4096
    %_351300 = trunc i64 %_351298 to i12
    %_351302.zext = zext i12 %_351300 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351302 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351290, i64 0, i13 %_351302.zext
    %_351305 = urem i64 %_351078, 4
    %_351307 = trunc i64 %_351305 to i2
    %_351309.zext = zext i2 %_351307 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351309 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351302, i64 0, i3 %_351309.zext
    %_351311 = load float, float addrspace(0)* %_351309
    %_351317.zext = zext i14 %_351065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351317 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351315, i64 0, i15 %_351317.zext
    %_351319 = load float, float addrspace(0)* %_351317
    %_351324 = fmul fast float %_351319, %_351311
    %accn_351327 = fadd fast float %_351324, %_351266
    store float %accn_351327, float addrspace(0)* %fv_0_350344
    %_351331 = load float, float addrspace(0)* %fv_0_350348
    %_351334 = udiv i64 %_351078, 32768
    %_351339 = urem i64 %_351334, 64
    %_351341 = trunc i64 %_351339 to i6
    %_351343.zext = zext i6 %_351341 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351343 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351343.zext
    %_351346 = udiv i64 %_351078, 16384
    %_351351 = urem i64 %_351346, 2
    %_351353 = trunc i64 %_351351 to i1
    %_351355.zext = zext i1 %_351353 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351355 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351343, i64 0, i2 %_351355.zext
    %_351358 = udiv i64 %_351078, 4
    %_351363 = urem i64 %_351358, 4096
    %_351365 = trunc i64 %_351363 to i12
    %_351367.zext = zext i12 %_351365 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351367 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351355, i64 0, i13 %_351367.zext
    %_351370 = urem i64 %_351078, 4
    %_351372 = trunc i64 %_351370 to i2
    %_351374.zext = zext i2 %_351372 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351374 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351367, i64 0, i3 %_351374.zext
    %_351376 = load float, float addrspace(0)* %_351374
    %_351382.zext = zext i14 %_351065 to i15 ; add one more bit for gep index as it is treated as signed value
    %_351382 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_351380, i64 0, i15 %_351382.zext
    %_351384 = load float, float addrspace(0)* %_351382
    %_351389 = fmul fast float %_351384, %_351376
    %accn_351392 = fadd fast float %_351389, %_351331
    store float %accn_351392, float addrspace(0)* %fv_0_350348
    %_351396 = load float, float addrspace(0)* %fv_0_350352
    %_351401 = add i64 %_351073, %_351399
    %_351404 = udiv i64 %_351401, 32768
    %_351409 = urem i64 %_351404, 64
    %_351411 = trunc i64 %_351409 to i6
    %_351413.zext = zext i6 %_351411 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351413 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351413.zext
    %_351417 = udiv i64 %_351401, 16384
    %_351422 = urem i64 %_351417, 2
    %_351424 = trunc i64 %_351422 to i1
    %_351426.zext = zext i1 %_351424 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351426 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351413, i64 0, i2 %_351426.zext
    %_351430 = udiv i64 %_351401, 4
    %_351435 = urem i64 %_351430, 4096
    %_351437 = trunc i64 %_351435 to i12
    %_351439.zext = zext i12 %_351437 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351439 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351426, i64 0, i13 %_351439.zext
    %_351442 = urem i64 %_351401, 4
    %_351444 = trunc i64 %_351442 to i2
    %_351446.zext = zext i2 %_351444 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351446 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351439, i64 0, i3 %_351446.zext
    %_351448 = load float, float addrspace(0)* %_351446
    %_351451 = load float, float addrspace(0)* %_351185
    %_351456 = fmul fast float %_351451, %_351448
    %accn_351459 = fadd fast float %_351456, %_351396
    store float %accn_351459, float addrspace(0)* %fv_0_350352
    %_351463 = load float, float addrspace(0)* %fv_0_350356
    %_351466 = udiv i64 %_351401, 32768
    %_351471 = urem i64 %_351466, 64
    %_351473 = trunc i64 %_351471 to i6
    %_351475.zext = zext i6 %_351473 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351475 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351475.zext
    %_351478 = udiv i64 %_351401, 16384
    %_351483 = urem i64 %_351478, 2
    %_351485 = trunc i64 %_351483 to i1
    %_351487.zext = zext i1 %_351485 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351487 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351475, i64 0, i2 %_351487.zext
    %_351490 = udiv i64 %_351401, 4
    %_351495 = urem i64 %_351490, 4096
    %_351497 = trunc i64 %_351495 to i12
    %_351499.zext = zext i12 %_351497 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351499 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351487, i64 0, i13 %_351499.zext
    %_351502 = urem i64 %_351401, 4
    %_351504 = trunc i64 %_351502 to i2
    %_351506.zext = zext i2 %_351504 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351506 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351499, i64 0, i3 %_351506.zext
    %_351508 = load float, float addrspace(0)* %_351506
    %_351511 = load float, float addrspace(0)* %_351252
    %_351516 = fmul fast float %_351511, %_351508
    %accn_351519 = fadd fast float %_351516, %_351463
    store float %accn_351519, float addrspace(0)* %fv_0_350356
    %_351523 = load float, float addrspace(0)* %fv_0_350360
    %_351526 = udiv i64 %_351401, 32768
    %_351531 = urem i64 %_351526, 64
    %_351533 = trunc i64 %_351531 to i6
    %_351535.zext = zext i6 %_351533 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351535 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351535.zext
    %_351538 = udiv i64 %_351401, 16384
    %_351543 = urem i64 %_351538, 2
    %_351545 = trunc i64 %_351543 to i1
    %_351547.zext = zext i1 %_351545 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351547 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351535, i64 0, i2 %_351547.zext
    %_351550 = udiv i64 %_351401, 4
    %_351555 = urem i64 %_351550, 4096
    %_351557 = trunc i64 %_351555 to i12
    %_351559.zext = zext i12 %_351557 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351559 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351547, i64 0, i13 %_351559.zext
    %_351562 = urem i64 %_351401, 4
    %_351564 = trunc i64 %_351562 to i2
    %_351566.zext = zext i2 %_351564 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351566 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351559, i64 0, i3 %_351566.zext
    %_351568 = load float, float addrspace(0)* %_351566
    %_351571 = load float, float addrspace(0)* %_351317
    %_351576 = fmul fast float %_351571, %_351568
    %accn_351579 = fadd fast float %_351576, %_351523
    store float %accn_351579, float addrspace(0)* %fv_0_350360
    %_351583 = load float, float addrspace(0)* %fv_0_350364
    %_351586 = udiv i64 %_351401, 32768
    %_351591 = urem i64 %_351586, 64
    %_351593 = trunc i64 %_351591 to i6
    %_351595.zext = zext i6 %_351593 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351595 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_349991, i64 0, i7 %_351595.zext
    %_351598 = udiv i64 %_351401, 16384
    %_351603 = urem i64 %_351598, 2
    %_351605 = trunc i64 %_351603 to i1
    %_351607.zext = zext i1 %_351605 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351607 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_351595, i64 0, i2 %_351607.zext
    %_351610 = udiv i64 %_351401, 4
    %_351615 = urem i64 %_351610, 4096
    %_351617 = trunc i64 %_351615 to i12
    %_351619.zext = zext i12 %_351617 to i13 ; add one more bit for gep index as it is treated as signed value
    %_351619 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_351607, i64 0, i13 %_351619.zext
    %_351622 = urem i64 %_351401, 4
    %_351624 = trunc i64 %_351622 to i2
    %_351626.zext = zext i2 %_351624 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351626 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351619, i64 0, i3 %_351626.zext
    %_351628 = load float, float addrspace(0)* %_351626
    %_351631 = load float, float addrspace(0)* %_351382
    %_351636 = fmul fast float %_351631, %_351628
    %accn_351639 = fadd fast float %_351636, %_351583
    store float %accn_351639, float addrspace(0)* %fv_0_350364
    br label %head_350368, !llvm.loop !1003

new_exit_350377:
    %fv_10_350379 = add nuw nsw i32 1, %iv_350302
    %_350382 = load float, float addrspace(0)* %fv_0_350335
    %_350401 = udiv i64 %t_350398, 2
    %_350404 = mul i64 16384, %_350401
    %_350407 = urem i64 %t_350398, 2
    %_350410 = mul i64 8192, %_350407
    %_350412 = add i64 %_350404, %_350410
    %_350429 = udiv i64 %t_350426, 4
    %_350432 = mul i64 4, %_350429
    %_350434 = add i64 %_350412, %_350432
    %_350437 = urem i64 %t_350426, 4
    %_350440 = add i64 %_350434, %_350437
    %_350443 = udiv i64 %_350440, 8192
    %_350449 = urem i64 %_350443, 128
    %_350452 = urem i64 %_350440, 8192
    %_350457 = urem i64 %_350452, 8192
    %_350462 = urem i64 %_350457, 8192
    %_350466 = trunc i64 %_350462 to i13
    %_350468.zext = zext i13 %_350466 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350468 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350468.zext
    %_350470 = load float, float addrspace(0)* %_350468
    %_350472 = trunc i64 %_350401 to i6
    %_350474.zext = zext i6 %_350472 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350474 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350474.zext
    %_350475 = trunc i64 %_350407 to i1
    %_350477.zext = zext i1 %_350475 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350477 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350474, i64 0, i2 %_350477.zext
    %_350478 = trunc i64 %_350429 to i11
    %_350480.zext = zext i11 %_350478 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350480 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350477, i64 0, i12 %_350480.zext
    %_350481 = trunc i64 %_350437 to i2
    %_350483.zext = zext i2 %_350481 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350483 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350480, i64 0, i3 %_350483.zext
    %_350495 = fadd fast float %_350382, %_350470
    store float %_350495, float addrspace(0)* %_350483
    %_350499 = load float, float addrspace(0)* %fv_0_350340
    %_350502 = udiv i64 %t_350398, 2
    %_350505 = mul i64 16384, %_350502
    %_350508 = urem i64 %t_350398, 2
    %_350511 = mul i64 8192, %_350508
    %_350513 = add i64 %_350505, %_350511
    %_350520 = udiv i64 %t_350517, 4
    %_350523 = mul i64 4, %_350520
    %_350525 = add i64 %_350513, %_350523
    %_350528 = urem i64 %t_350517, 4
    %_350531 = add i64 %_350525, %_350528
    %_350534 = udiv i64 %_350531, 8192
    %_350539 = urem i64 %_350534, 128
    %_350542 = urem i64 %_350531, 8192
    %_350547 = urem i64 %_350542, 8192
    %_350552 = urem i64 %_350547, 8192
    %_350554 = trunc i64 %_350552 to i13
    %_350556.zext = zext i13 %_350554 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350556 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350556.zext
    %_350558 = load float, float addrspace(0)* %_350556
    %_350560 = trunc i64 %_350502 to i6
    %_350562.zext = zext i6 %_350560 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350562 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350562.zext
    %_350563 = trunc i64 %_350508 to i1
    %_350565.zext = zext i1 %_350563 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350565 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350562, i64 0, i2 %_350565.zext
    %_350566 = trunc i64 %_350520 to i11
    %_350568.zext = zext i11 %_350566 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350568 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350565, i64 0, i12 %_350568.zext
    %_350569 = trunc i64 %_350528 to i2
    %_350571.zext = zext i2 %_350569 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350571 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350568, i64 0, i3 %_350571.zext
    %_350575 = fadd fast float %_350499, %_350558
    store float %_350575, float addrspace(0)* %_350571
    %_350579 = load float, float addrspace(0)* %fv_0_350344
    %_350582 = udiv i64 %t_350398, 2
    %_350585 = mul i64 16384, %_350582
    %_350588 = urem i64 %t_350398, 2
    %_350591 = mul i64 8192, %_350588
    %_350593 = add i64 %_350585, %_350591
    %_350599 = udiv i64 %t_350596, 4
    %_350602 = mul i64 4, %_350599
    %_350604 = add i64 %_350593, %_350602
    %_350607 = urem i64 %t_350596, 4
    %_350610 = add i64 %_350604, %_350607
    %_350613 = udiv i64 %_350610, 8192
    %_350618 = urem i64 %_350613, 128
    %_350621 = urem i64 %_350610, 8192
    %_350626 = urem i64 %_350621, 8192
    %_350631 = urem i64 %_350626, 8192
    %_350633 = trunc i64 %_350631 to i13
    %_350635.zext = zext i13 %_350633 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350635 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350635.zext
    %_350637 = load float, float addrspace(0)* %_350635
    %_350639 = trunc i64 %_350582 to i6
    %_350641.zext = zext i6 %_350639 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350641 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350641.zext
    %_350642 = trunc i64 %_350588 to i1
    %_350644.zext = zext i1 %_350642 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350644 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350641, i64 0, i2 %_350644.zext
    %_350645 = trunc i64 %_350599 to i11
    %_350647.zext = zext i11 %_350645 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350647 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350644, i64 0, i12 %_350647.zext
    %_350648 = trunc i64 %_350607 to i2
    %_350650.zext = zext i2 %_350648 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350650 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350647, i64 0, i3 %_350650.zext
    %_350654 = fadd fast float %_350579, %_350637
    store float %_350654, float addrspace(0)* %_350650
    %_350658 = load float, float addrspace(0)* %fv_0_350348
    %_350661 = udiv i64 %t_350398, 2
    %_350664 = mul i64 16384, %_350661
    %_350667 = urem i64 %t_350398, 2
    %_350670 = mul i64 8192, %_350667
    %_350672 = add i64 %_350664, %_350670
    %_350679 = udiv i64 %t_350676, 4
    %_350682 = mul i64 4, %_350679
    %_350684 = add i64 %_350672, %_350682
    %_350687 = urem i64 %t_350676, 4
    %_350690 = add i64 %_350684, %_350687
    %_350693 = udiv i64 %_350690, 8192
    %_350698 = urem i64 %_350693, 128
    %_350701 = urem i64 %_350690, 8192
    %_350706 = urem i64 %_350701, 8192
    %_350711 = urem i64 %_350706, 8192
    %_350713 = trunc i64 %_350711 to i13
    %_350715.zext = zext i13 %_350713 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350715 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350715.zext
    %_350717 = load float, float addrspace(0)* %_350715
    %_350719 = trunc i64 %_350661 to i6
    %_350721.zext = zext i6 %_350719 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350721 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350721.zext
    %_350722 = trunc i64 %_350667 to i1
    %_350724.zext = zext i1 %_350722 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350724 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350721, i64 0, i2 %_350724.zext
    %_350725 = trunc i64 %_350679 to i11
    %_350727.zext = zext i11 %_350725 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350727 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350724, i64 0, i12 %_350727.zext
    %_350728 = trunc i64 %_350687 to i2
    %_350730.zext = zext i2 %_350728 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350730 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350727, i64 0, i3 %_350730.zext
    %_350734 = fadd fast float %_350658, %_350717
    store float %_350734, float addrspace(0)* %_350730
    %_350738 = load float, float addrspace(0)* %fv_0_350352
    %_350744 = udiv i64 %t_350741, 2
    %_350747 = mul i64 16384, %_350744
    %_350750 = urem i64 %t_350741, 2
    %_350753 = mul i64 8192, %_350750
    %_350755 = add i64 %_350747, %_350753
    %_350758 = udiv i64 %t_350426, 4
    %_350761 = mul i64 4, %_350758
    %_350763 = add i64 %_350755, %_350761
    %_350766 = urem i64 %t_350426, 4
    %_350769 = add i64 %_350763, %_350766
    %_350772 = udiv i64 %_350769, 8192
    %_350777 = urem i64 %_350772, 128
    %_350780 = urem i64 %_350769, 8192
    %_350785 = urem i64 %_350780, 8192
    %_350790 = urem i64 %_350785, 8192
    %_350792 = trunc i64 %_350790 to i13
    %_350794.zext = zext i13 %_350792 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350794 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350794.zext
    %_350796 = load float, float addrspace(0)* %_350794
    %_350798 = trunc i64 %_350744 to i6
    %_350800.zext = zext i6 %_350798 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350800 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350800.zext
    %_350801 = trunc i64 %_350750 to i1
    %_350803.zext = zext i1 %_350801 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350803 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350800, i64 0, i2 %_350803.zext
    %_350804 = trunc i64 %_350758 to i11
    %_350806.zext = zext i11 %_350804 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350806 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350803, i64 0, i12 %_350806.zext
    %_350807 = trunc i64 %_350766 to i2
    %_350809.zext = zext i2 %_350807 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350809 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350806, i64 0, i3 %_350809.zext
    %_350813 = fadd fast float %_350738, %_350796
    store float %_350813, float addrspace(0)* %_350809
    %_350817 = load float, float addrspace(0)* %fv_0_350356
    %_350820 = udiv i64 %t_350741, 2
    %_350823 = mul i64 16384, %_350820
    %_350826 = urem i64 %t_350741, 2
    %_350829 = mul i64 8192, %_350826
    %_350831 = add i64 %_350823, %_350829
    %_350834 = udiv i64 %t_350517, 4
    %_350837 = mul i64 4, %_350834
    %_350839 = add i64 %_350831, %_350837
    %_350842 = urem i64 %t_350517, 4
    %_350845 = add i64 %_350839, %_350842
    %_350848 = udiv i64 %_350845, 8192
    %_350853 = urem i64 %_350848, 128
    %_350856 = urem i64 %_350845, 8192
    %_350861 = urem i64 %_350856, 8192
    %_350866 = urem i64 %_350861, 8192
    %_350868 = trunc i64 %_350866 to i13
    %_350870.zext = zext i13 %_350868 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350870 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350870.zext
    %_350872 = load float, float addrspace(0)* %_350870
    %_350874 = trunc i64 %_350820 to i6
    %_350876.zext = zext i6 %_350874 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350876 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350876.zext
    %_350877 = trunc i64 %_350826 to i1
    %_350879.zext = zext i1 %_350877 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350879 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350876, i64 0, i2 %_350879.zext
    %_350880 = trunc i64 %_350834 to i11
    %_350882.zext = zext i11 %_350880 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350882 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350879, i64 0, i12 %_350882.zext
    %_350883 = trunc i64 %_350842 to i2
    %_350885.zext = zext i2 %_350883 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350885 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350882, i64 0, i3 %_350885.zext
    %_350889 = fadd fast float %_350817, %_350872
    store float %_350889, float addrspace(0)* %_350885
    %_350893 = load float, float addrspace(0)* %fv_0_350360
    %_350896 = udiv i64 %t_350741, 2
    %_350899 = mul i64 16384, %_350896
    %_350902 = urem i64 %t_350741, 2
    %_350905 = mul i64 8192, %_350902
    %_350907 = add i64 %_350899, %_350905
    %_350910 = udiv i64 %t_350596, 4
    %_350913 = mul i64 4, %_350910
    %_350915 = add i64 %_350907, %_350913
    %_350918 = urem i64 %t_350596, 4
    %_350921 = add i64 %_350915, %_350918
    %_350924 = udiv i64 %_350921, 8192
    %_350929 = urem i64 %_350924, 128
    %_350932 = urem i64 %_350921, 8192
    %_350937 = urem i64 %_350932, 8192
    %_350942 = urem i64 %_350937, 8192
    %_350944 = trunc i64 %_350942 to i13
    %_350946.zext = zext i13 %_350944 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350946 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_350946.zext
    %_350948 = load float, float addrspace(0)* %_350946
    %_350950 = trunc i64 %_350896 to i6
    %_350952.zext = zext i6 %_350950 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350952 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350952.zext
    %_350953 = trunc i64 %_350902 to i1
    %_350955.zext = zext i1 %_350953 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350955 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350952, i64 0, i2 %_350955.zext
    %_350956 = trunc i64 %_350910 to i11
    %_350958.zext = zext i11 %_350956 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350958 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350955, i64 0, i12 %_350958.zext
    %_350959 = trunc i64 %_350918 to i2
    %_350961.zext = zext i2 %_350959 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350961 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350958, i64 0, i3 %_350961.zext
    %_350965 = fadd fast float %_350893, %_350948
    store float %_350965, float addrspace(0)* %_350961
    %_350969 = load float, float addrspace(0)* %fv_0_350364
    %_350972 = udiv i64 %t_350741, 2
    %_350975 = mul i64 16384, %_350972
    %_350978 = urem i64 %t_350741, 2
    %_350981 = mul i64 8192, %_350978
    %_350983 = add i64 %_350975, %_350981
    %_350986 = udiv i64 %t_350676, 4
    %_350989 = mul i64 4, %_350986
    %_350991 = add i64 %_350983, %_350989
    %_350994 = urem i64 %t_350676, 4
    %_350997 = add i64 %_350991, %_350994
    %_351000 = udiv i64 %_350997, 8192
    %_351005 = urem i64 %_351000, 128
    %_351008 = urem i64 %_350997, 8192
    %_351013 = urem i64 %_351008, 8192
    %_351018 = urem i64 %_351013, 8192
    %_351020 = trunc i64 %_351018 to i13
    %_351022.zext = zext i13 %_351020 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351022 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350385, i64 0, i14 %_351022.zext
    %_351024 = load float, float addrspace(0)* %_351022
    %_351026 = trunc i64 %_350972 to i6
    %_351028.zext = zext i6 %_351026 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351028 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_351028.zext
    %_351029 = trunc i64 %_350978 to i1
    %_351031.zext = zext i1 %_351029 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351031 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_351028, i64 0, i2 %_351031.zext
    %_351032 = trunc i64 %_350986 to i11
    %_351034.zext = zext i11 %_351032 to i12 ; add one more bit for gep index as it is treated as signed value
    %_351034 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_351031, i64 0, i12 %_351034.zext
    %_351035 = trunc i64 %_350994 to i2
    %_351037.zext = zext i2 %_351035 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351037 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351034, i64 0, i3 %_351037.zext
    %_351041 = fadd fast float %_350969, %_351024
    store float %_351041, float addrspace(0)* %_351037
    br label %head_350299

new_exit_350306:
    %fv_10_350308 = add nuw nsw i32 1, %iv_350025
    br label %head_350022

new_exit_350028:
    %_350033i8 = call i8* @malloc(i64 4194304)
    %_350033 = bitcast i8* %_350033i8 to [128 x [8192 x float]] addrspace(0)*
    br label %head_350036

head_350036:
    %iv_350039 = phi i32 [ 0, %new_exit_350028 ], [ %fv_4_350067, %new_exit_350060 ]
    %_350042 = icmp ult i32 %iv_350039, 128
    %_350117 = trunc i32 %iv_350039 to i7
    %_350125 = zext i7 %_350117 to i64
    %_350131 = mul i64 8192, %_350125
    %_350267.zext = zext i7 %_350117 to i8 ; add one more bit for gep index as it is treated as signed value
    %_350267 = getelementptr inbounds [128 x [8192 x float]], [128 x [8192 x float]] addrspace(0)* %_350033, i64 0, i8 %_350267.zext
    br i1 %_350042, label %new_body_350050, label %new_exit_350043

new_body_350050:
    br label %head_350053

head_350053:
    %iv_350056 = phi i32 [ 0, %new_body_350050 ], [ %fv_4_350073, %new_body_350071 ]
    %_350059 = icmp ult i32 %iv_350056, 8192
    br i1 %_350059, label %new_body_350071, label %new_exit_350060

new_body_350071:
    %fv_4_350073 = add nuw nsw i32 1, %iv_350056
    %_350104 = trunc i32 %iv_350056 to i13
    %_350112 = zext i13 %_350104 to i64
    %_350135 = add i64 %_350112, %_350131
    %_350143 = udiv i64 %_350135, 16384
    %_350150 = urem i64 %_350143, 64
    %_350159 = trunc i64 %_350150 to i6
    %_350172.zext = zext i6 %_350159 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350172 = getelementptr inbounds [64 x [2 x [2048 x [4 x float]]]], [64 x [2 x [2048 x [4 x float]]]] addrspace(0)* %_350016, i64 0, i7 %_350172.zext
    %_350176 = udiv i64 %_350135, 8192
    %_350182 = urem i64 %_350176, 2
    %_350186 = trunc i64 %_350182 to i1
    %_350196.zext = zext i1 %_350186 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350196 = getelementptr inbounds [2 x [2048 x [4 x float]]], [2 x [2048 x [4 x float]]] addrspace(0)* %_350172, i64 0, i2 %_350196.zext
    %_350201 = udiv i64 %_350135, 4
    %_350207 = urem i64 %_350201, 2048
    %_350211 = trunc i64 %_350207 to i11
    %_350224.zext = zext i11 %_350211 to i12 ; add one more bit for gep index as it is treated as signed value
    %_350224 = getelementptr inbounds [2048 x [4 x float]], [2048 x [4 x float]] addrspace(0)* %_350196, i64 0, i12 %_350224.zext
    %_350227 = urem i64 %_350135, 4
    %_350231 = trunc i64 %_350227 to i2
    %_350246.zext = zext i2 %_350231 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350246 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350224, i64 0, i3 %_350246.zext
    %_350251 = load float, float addrspace(0)* %_350246
    %_350280.zext = zext i13 %_350104 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350280 = getelementptr inbounds [8192 x float], [8192 x float] addrspace(0)* %_350267, i64 0, i14 %_350280.zext
    store float %_350251, float addrspace(0)* %_350280
    br label %head_350053

new_exit_350060:
    %fv_4_350067 = add nuw nsw i32 1, %iv_350039
    br label %head_350036

new_exit_350043:
    ret [128 x [8192 x float]] addrspace(0)* %_350033

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1002 = distinct !{!1002, !1000}
!1001 = distinct !{!1001, !1000}
!1003 = distinct !{!1003, !1000}
