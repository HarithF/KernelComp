
declare float @llvm.maxnum.f32(float, float)
declare i8* @malloc(i64)


define  [128 x [16384 x float]] addrspace(0)* @ShallowWideMLP([32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352091, [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351905, [128 x [16384 x float]] addrspace(0)* %l_x__352074, [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351427, [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351199, [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350707, [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350428) {
mimir_graph_4c7ae5043e8e78b9_349988:
    %_350010i8 = call i8* @malloc(i64 16777216)
    %_350010 = bitcast i8* %_350010i8 to [64 x [2 x [8192 x [4 x float]]]] addrspace(0)*
    %_350020i8 = call i8* @malloc(i64 32)
    %_350020 = bitcast i8* %_350020i8 to [8 x float] addrspace(0)*
    %fv_0_351858.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351858 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351858.zext
    %fv_0_351862.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351862 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351862.zext
    %fv_0_351866.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351866 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351866.zext
    %fv_0_351870.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351870 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351870.zext
    %fv_0_351874.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351874 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351874.zext
    %fv_0_351878.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351878 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351878.zext
    %fv_0_351882.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351882 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351882.zext
    %fv_0_351886.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351886 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350020, i64 0, i4 %fv_0_351886.zext
    br label %head_350024

head_350024:
    %iv_350028 = phi i32 [ 0, %mimir_graph_4c7ae5043e8e78b9_349988 ], [ %fv_10_351850, %new_exit_351848 ]
    %_350033 = icmp ult i32 %iv_350028, 64
    %_351916 = trunc i32 %iv_350028 to i6
    %_352075 = zext i6 %_351916 to i64
    %t_352077 = mul i64 2, %_352075
    %_352080 = trunc i64 %t_352077 to i7
    %_352082.zext = zext i7 %_352080 to i8 ; add one more bit for gep index as it is treated as signed value
    %_352082 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__352074, i64 0, i8 %_352082.zext
    %t_352187 = add i64 1, %t_352077
    %_352188 = trunc i64 %t_352187 to i7
    %_352190.zext = zext i7 %_352188 to i8 ; add one more bit for gep index as it is treated as signed value
    %_352190 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %l_x__352074, i64 0, i8 %_352190.zext
    %_351918.zext = zext i6 %_351916 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351918 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351918.zext
    %_351920.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351920 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351918, i64 0, i2 %_351920.zext
    %_352003.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_352003 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351918, i64 0, i2 %_352003.zext
    br i1 %_350033, label %new_body_351839, label %new_exit_350036

new_body_351839:
    br label %head_351842

head_351842:
    %iv_351845 = phi i32 [ 0, %new_body_351839 ], [ %fv_10_351899, %new_exit_351897 ]
    %_351847 = icmp ult i32 %iv_351845, 8192
    %_351906 = trunc i32 %iv_351845 to i13
    %t_351907 = zext i13 %_351906 to i64
    %t_351909 = mul i64 4, %t_351907
    %_351910 = trunc i64 %t_351909 to i15
    %_352102.zext = zext i15 %_351910 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352102 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352091, i64 0, i16 %_352102.zext
    %t_351937 = add i64 1, %t_351909
    %_351938 = trunc i64 %t_351937 to i15
    %_352124.zext = zext i15 %_351938 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352124 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352091, i64 0, i16 %_352124.zext
    %t_351958 = add i64 2, %t_351909
    %_351959 = trunc i64 %t_351958 to i15
    %_352146.zext = zext i15 %_351959 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352146 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352091, i64 0, i16 %_352146.zext
    %t_351979 = add i64 3, %t_351909
    %_351980 = trunc i64 %t_351979 to i15
    %_352168.zext = zext i15 %_351980 to i16 ; add one more bit for gep index as it is treated as signed value
    %_352168 = getelementptr inbounds [32768 x [16384 x float]], [32768 x [16384 x float]] addrspace(0)* %l_self_modules_network_modules_0_parameters_weight__352091, i64 0, i16 %_352168.zext
    br i1 %_351847, label %new_body_351854, label %new_exit_351848

new_body_351854:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351858
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351862
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351866
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351870
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351874
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351878
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351882
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351886
    br label %head_351890, !llvm.loop !1001

head_351890:
    %iv_351893 = phi i32 [ 0, %new_body_351854 ], [ %fv_9_352068, %new_body_352066 ]
    %_351895 = icmp ult i32 %iv_351893, 16384
    br i1 %_351895, label %new_body_352066, label %new_exit_351897

new_body_352066:
    %fv_9_352068 = add nuw nsw i32 1, %iv_351893
    %_352071 = load float, float addrspace(0)* %fv_0_351858
    %_352083 = trunc i32 %iv_351893 to i14
    %_352085.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352085 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352082, i64 0, i15 %_352085.zext
    %_352087 = load float, float addrspace(0)* %_352085
    %_352104.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352104 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352102, i64 0, i15 %_352104.zext
    %_352106 = load float, float addrspace(0)* %_352104
    %_352111 = fmul fast float %_352087, %_352106
    %accn_352114 = fadd fast float %_352111, %_352071
    store float %accn_352114, float addrspace(0)* %fv_0_351858
    %_352118 = load float, float addrspace(0)* %fv_0_351862
    %_352121 = load float, float addrspace(0)* %_352085
    %_352126.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352126 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352124, i64 0, i15 %_352126.zext
    %_352128 = load float, float addrspace(0)* %_352126
    %_352133 = fmul fast float %_352121, %_352128
    %accn_352136 = fadd fast float %_352133, %_352118
    store float %accn_352136, float addrspace(0)* %fv_0_351862
    %_352140 = load float, float addrspace(0)* %fv_0_351866
    %_352143 = load float, float addrspace(0)* %_352085
    %_352148.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352148 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352146, i64 0, i15 %_352148.zext
    %_352150 = load float, float addrspace(0)* %_352148
    %_352155 = fmul fast float %_352143, %_352150
    %accn_352158 = fadd fast float %_352155, %_352140
    store float %accn_352158, float addrspace(0)* %fv_0_351866
    %_352162 = load float, float addrspace(0)* %fv_0_351870
    %_352165 = load float, float addrspace(0)* %_352085
    %_352170.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352170 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352168, i64 0, i15 %_352170.zext
    %_352172 = load float, float addrspace(0)* %_352170
    %_352177 = fmul fast float %_352165, %_352172
    %accn_352180 = fadd fast float %_352177, %_352162
    store float %accn_352180, float addrspace(0)* %fv_0_351870
    %_352184 = load float, float addrspace(0)* %fv_0_351874
    %_352192.zext = zext i14 %_352083 to i15 ; add one more bit for gep index as it is treated as signed value
    %_352192 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_352190, i64 0, i15 %_352192.zext
    %_352194 = load float, float addrspace(0)* %_352192
    %_352197 = load float, float addrspace(0)* %_352104
    %_352202 = fmul fast float %_352197, %_352194
    %accn_352205 = fadd fast float %_352202, %_352184
    store float %accn_352205, float addrspace(0)* %fv_0_351874
    %_352209 = load float, float addrspace(0)* %fv_0_351878
    %_352212 = load float, float addrspace(0)* %_352192
    %_352215 = load float, float addrspace(0)* %_352126
    %_352220 = fmul fast float %_352212, %_352215
    %accn_352223 = fadd fast float %_352220, %_352209
    store float %accn_352223, float addrspace(0)* %fv_0_351878
    %_352227 = load float, float addrspace(0)* %fv_0_351882
    %_352230 = load float, float addrspace(0)* %_352192
    %_352233 = load float, float addrspace(0)* %_352148
    %_352238 = fmul fast float %_352230, %_352233
    %accn_352241 = fadd fast float %_352238, %_352227
    store float %accn_352241, float addrspace(0)* %fv_0_351882
    %_352245 = load float, float addrspace(0)* %fv_0_351886
    %_352248 = load float, float addrspace(0)* %_352192
    %_352251 = load float, float addrspace(0)* %_352170
    %_352256 = fmul fast float %_352248, %_352251
    %accn_352259 = fadd fast float %_352256, %_352245
    store float %accn_352259, float addrspace(0)* %fv_0_351886
    br label %head_351890, !llvm.loop !1001

new_exit_351897:
    %fv_10_351899 = add nuw nsw i32 1, %iv_351845
    %_351902 = load float, float addrspace(0)* %fv_0_351858
    %_351912.zext = zext i15 %_351910 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351912 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351905, i64 0, i16 %_351912.zext
    %_351914 = load float, float addrspace(0)* %_351912
    %_351922.zext = zext i13 %_351906 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351922 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351920, i64 0, i14 %_351922.zext
    %_351924.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351924 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351922, i64 0, i3 %_351924.zext
    %_351928 = fadd fast float %_351902, %_351914
    %_351930 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351928)
    store float %_351930, float addrspace(0)* %_351924
    %_351934 = load float, float addrspace(0)* %fv_0_351862
    %_351940.zext = zext i15 %_351938 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351940 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351905, i64 0, i16 %_351940.zext
    %_351942 = load float, float addrspace(0)* %_351940
    %_351945.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351945 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351922, i64 0, i3 %_351945.zext
    %_351949 = fadd fast float %_351934, %_351942
    %_351951 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351949)
    store float %_351951, float addrspace(0)* %_351945
    %_351955 = load float, float addrspace(0)* %fv_0_351866
    %_351961.zext = zext i15 %_351959 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351961 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351905, i64 0, i16 %_351961.zext
    %_351963 = load float, float addrspace(0)* %_351961
    %_351966.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351966 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351922, i64 0, i3 %_351966.zext
    %_351970 = fadd fast float %_351955, %_351963
    %_351972 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351970)
    store float %_351972, float addrspace(0)* %_351966
    %_351976 = load float, float addrspace(0)* %fv_0_351870
    %_351982.zext = zext i15 %_351980 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351982 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_0_parameters_bias__351905, i64 0, i16 %_351982.zext
    %_351984 = load float, float addrspace(0)* %_351982
    %_351987.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351987 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351922, i64 0, i3 %_351987.zext
    %_351991 = fadd fast float %_351976, %_351984
    %_351993 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351991)
    store float %_351993, float addrspace(0)* %_351987
    %_351997 = load float, float addrspace(0)* %fv_0_351874
    %_352000 = load float, float addrspace(0)* %_351912
    %_352005.zext = zext i13 %_351906 to i14 ; add one more bit for gep index as it is treated as signed value
    %_352005 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_352003, i64 0, i14 %_352005.zext
    %_352007.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352007 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352005, i64 0, i3 %_352007.zext
    %_352011 = fadd fast float %_351997, %_352000
    %_352013 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352011)
    store float %_352013, float addrspace(0)* %_352007
    %_352017 = load float, float addrspace(0)* %fv_0_351878
    %_352020 = load float, float addrspace(0)* %_351940
    %_352023.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352023 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352005, i64 0, i3 %_352023.zext
    %_352027 = fadd fast float %_352017, %_352020
    %_352029 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352027)
    store float %_352029, float addrspace(0)* %_352023
    %_352033 = load float, float addrspace(0)* %fv_0_351882
    %_352036 = load float, float addrspace(0)* %_351961
    %_352039.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352039 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352005, i64 0, i3 %_352039.zext
    %_352043 = fadd fast float %_352033, %_352036
    %_352045 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352043)
    store float %_352045, float addrspace(0)* %_352039
    %_352049 = load float, float addrspace(0)* %fv_0_351886
    %_352052 = load float, float addrspace(0)* %_351982
    %_352055.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_352055 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_352005, i64 0, i3 %_352055.zext
    %_352059 = fadd fast float %_352049, %_352052
    %_352061 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_352059)
    store float %_352061, float addrspace(0)* %_352055
    br label %head_351842

new_exit_351848:
    %fv_10_351850 = add nuw nsw i32 1, %iv_350028
    br label %head_350024

new_exit_350036:
    %_350039i8 = call i8* @malloc(i64 16777216)
    %_350039 = bitcast i8* %_350039i8 to [64 x [2 x [8192 x [4 x float]]]] addrspace(0)*
    %_350042i8 = call i8* @malloc(i64 32)
    %_350042 = bitcast i8* %_350042i8 to [8 x float] addrspace(0)*
    %fv_0_351152.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351152 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351152.zext
    %fv_0_351156.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351156 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351156.zext
    %fv_0_351160.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351160 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351160.zext
    %fv_0_351164.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351164 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351164.zext
    %fv_0_351168.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351168 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351168.zext
    %fv_0_351172.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351172 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351172.zext
    %fv_0_351176.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351176 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351176.zext
    %fv_0_351180.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_351180 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350042, i64 0, i4 %fv_0_351180.zext
    br label %head_350045

head_350045:
    %iv_350048 = phi i32 [ 0, %new_exit_350036 ], [ %fv_10_351144, %new_exit_351142 ]
    %_350050 = icmp ult i32 %iv_350048, 64
    %_351221 = trunc i32 %iv_350048 to i6
    %_351383 = zext i6 %_351221 to i64
    %_351385 = mul i64 65536, %_351383
    %t_351619 = mul i64 2, %_351383
    %t_351621 = add i64 1, %t_351619
    %_351623 = mul i64 32768, %t_351621
    %_351223.zext = zext i6 %_351221 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351223 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_351223.zext
    %_351225.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351225 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351223, i64 0, i2 %_351225.zext
    %_351310.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351310 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351223, i64 0, i2 %_351310.zext
    br i1 %_350050, label %new_body_351132, label %new_exit_350051

new_body_351132:
    br label %head_351135

head_351135:
    %iv_351138 = phi i32 [ 0, %new_body_351132 ], [ %fv_10_351193, %new_exit_351191 ]
    %_351141 = icmp ult i32 %iv_351138, 8192
    %_351202 = trunc i32 %iv_351138 to i13
    %t_351210 = zext i13 %_351202 to i64
    %t_351212 = mul i64 4, %t_351210
    %_351215 = trunc i64 %t_351212 to i15
    %_351438.zext = zext i15 %_351215 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351438 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351427, i64 0, i16 %_351438.zext
    %t_351244 = add i64 1, %t_351212
    %_351245 = trunc i64 %t_351244 to i15
    %_351492.zext = zext i15 %_351245 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351492 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351427, i64 0, i16 %_351492.zext
    %t_351265 = add i64 2, %t_351212
    %_351266 = trunc i64 %t_351265 to i15
    %_351546.zext = zext i15 %_351266 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351546 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351427, i64 0, i16 %_351546.zext
    %t_351286 = add i64 3, %t_351212
    %_351287 = trunc i64 %t_351286 to i15
    %_351600.zext = zext i15 %_351287 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351600 = getelementptr inbounds [32768 x [32768 x float]], [32768 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_2_parameters_weight__351427, i64 0, i16 %_351600.zext
    br i1 %_351141, label %new_body_351148, label %new_exit_351142

new_body_351148:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351152
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351156
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351160
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351164
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351168
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351172
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351176
    store float 0x0000000000000000, float addrspace(0)* %fv_0_351180
    br label %head_351184, !llvm.loop !1002

head_351184:
    %iv_351187 = phi i32 [ 0, %new_body_351148 ], [ %fv_9_351375, %new_body_351373 ]
    %_351189 = icmp ult i32 %iv_351187, 32768
    br i1 %_351189, label %new_body_351373, label %new_exit_351191

new_body_351373:
    %fv_9_351375 = add nuw nsw i32 1, %iv_351187
    %_351378 = load float, float addrspace(0)* %fv_0_351152
    %_351381 = trunc i32 %iv_351187 to i15
    %_351382 = zext i15 %_351381 to i64
    %_351387 = add i64 %_351382, %_351385
    %_351390 = udiv i64 %_351387, 65536
    %_351395 = urem i64 %_351390, 64
    %_351397 = trunc i64 %_351395 to i6
    %_351399.zext = zext i6 %_351397 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351399 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351399.zext
    %_351401.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351401 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351399, i64 0, i2 %_351401.zext
    %_351405 = udiv i64 %_351387, 4
    %_351410 = urem i64 %_351405, 8192
    %_351412 = trunc i64 %_351410 to i13
    %_351414.zext = zext i13 %_351412 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351414 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351401, i64 0, i14 %_351414.zext
    %_351417 = urem i64 %_351387, 4
    %_351419 = trunc i64 %_351417 to i2
    %_351421.zext = zext i2 %_351419 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351421 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351414, i64 0, i3 %_351421.zext
    %_351423 = load float, float addrspace(0)* %_351421
    %_351440.zext = zext i15 %_351381 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351440 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351438, i64 0, i16 %_351440.zext
    %_351442 = load float, float addrspace(0)* %_351440
    %_351447 = fmul fast float %_351442, %_351423
    %accn_351450 = fadd fast float %_351447, %_351378
    store float %accn_351450, float addrspace(0)* %fv_0_351152
    %_351454 = load float, float addrspace(0)* %fv_0_351156
    %_351457 = udiv i64 %_351387, 65536
    %_351462 = urem i64 %_351457, 64
    %_351464 = trunc i64 %_351462 to i6
    %_351466.zext = zext i6 %_351464 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351466 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351466.zext
    %_351468.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351468 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351466, i64 0, i2 %_351468.zext
    %_351471 = udiv i64 %_351387, 4
    %_351476 = urem i64 %_351471, 8192
    %_351478 = trunc i64 %_351476 to i13
    %_351480.zext = zext i13 %_351478 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351480 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351468, i64 0, i14 %_351480.zext
    %_351483 = urem i64 %_351387, 4
    %_351485 = trunc i64 %_351483 to i2
    %_351487.zext = zext i2 %_351485 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351487 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351480, i64 0, i3 %_351487.zext
    %_351489 = load float, float addrspace(0)* %_351487
    %_351494.zext = zext i15 %_351381 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351494 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351492, i64 0, i16 %_351494.zext
    %_351496 = load float, float addrspace(0)* %_351494
    %_351501 = fmul fast float %_351496, %_351489
    %accn_351504 = fadd fast float %_351501, %_351454
    store float %accn_351504, float addrspace(0)* %fv_0_351156
    %_351508 = load float, float addrspace(0)* %fv_0_351160
    %_351511 = udiv i64 %_351387, 65536
    %_351516 = urem i64 %_351511, 64
    %_351518 = trunc i64 %_351516 to i6
    %_351520.zext = zext i6 %_351518 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351520 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351520.zext
    %_351522.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351522 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351520, i64 0, i2 %_351522.zext
    %_351525 = udiv i64 %_351387, 4
    %_351530 = urem i64 %_351525, 8192
    %_351532 = trunc i64 %_351530 to i13
    %_351534.zext = zext i13 %_351532 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351534 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351522, i64 0, i14 %_351534.zext
    %_351537 = urem i64 %_351387, 4
    %_351539 = trunc i64 %_351537 to i2
    %_351541.zext = zext i2 %_351539 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351541 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351534, i64 0, i3 %_351541.zext
    %_351543 = load float, float addrspace(0)* %_351541
    %_351548.zext = zext i15 %_351381 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351548 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351546, i64 0, i16 %_351548.zext
    %_351550 = load float, float addrspace(0)* %_351548
    %_351555 = fmul fast float %_351550, %_351543
    %accn_351558 = fadd fast float %_351555, %_351508
    store float %accn_351558, float addrspace(0)* %fv_0_351160
    %_351562 = load float, float addrspace(0)* %fv_0_351164
    %_351565 = udiv i64 %_351387, 65536
    %_351570 = urem i64 %_351565, 64
    %_351572 = trunc i64 %_351570 to i6
    %_351574.zext = zext i6 %_351572 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351574 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351574.zext
    %_351576.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351576 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351574, i64 0, i2 %_351576.zext
    %_351579 = udiv i64 %_351387, 4
    %_351584 = urem i64 %_351579, 8192
    %_351586 = trunc i64 %_351584 to i13
    %_351588.zext = zext i13 %_351586 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351588 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351576, i64 0, i14 %_351588.zext
    %_351591 = urem i64 %_351387, 4
    %_351593 = trunc i64 %_351591 to i2
    %_351595.zext = zext i2 %_351593 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351595 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351588, i64 0, i3 %_351595.zext
    %_351597 = load float, float addrspace(0)* %_351595
    %_351602.zext = zext i15 %_351381 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351602 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_351600, i64 0, i16 %_351602.zext
    %_351604 = load float, float addrspace(0)* %_351602
    %_351609 = fmul fast float %_351604, %_351597
    %accn_351612 = fadd fast float %_351609, %_351562
    store float %accn_351612, float addrspace(0)* %fv_0_351164
    %_351616 = load float, float addrspace(0)* %fv_0_351168
    %_351625 = add i64 %_351382, %_351623
    %_351628 = udiv i64 %_351625, 65536
    %_351633 = urem i64 %_351628, 64
    %_351635 = trunc i64 %_351633 to i6
    %_351637.zext = zext i6 %_351635 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351637 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351637.zext
    %_351639.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351639 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351637, i64 0, i2 %_351639.zext
    %_351643 = udiv i64 %_351625, 4
    %_351648 = urem i64 %_351643, 8192
    %_351650 = trunc i64 %_351648 to i13
    %_351652.zext = zext i13 %_351650 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351652 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351639, i64 0, i14 %_351652.zext
    %_351655 = urem i64 %_351625, 4
    %_351657 = trunc i64 %_351655 to i2
    %_351659.zext = zext i2 %_351657 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351659 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351652, i64 0, i3 %_351659.zext
    %_351661 = load float, float addrspace(0)* %_351659
    %_351664 = load float, float addrspace(0)* %_351440
    %_351669 = fmul fast float %_351664, %_351661
    %accn_351672 = fadd fast float %_351669, %_351616
    store float %accn_351672, float addrspace(0)* %fv_0_351168
    %_351676 = load float, float addrspace(0)* %fv_0_351172
    %_351679 = udiv i64 %_351625, 65536
    %_351684 = urem i64 %_351679, 64
    %_351686 = trunc i64 %_351684 to i6
    %_351688.zext = zext i6 %_351686 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351688 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351688.zext
    %_351690.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351690 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351688, i64 0, i2 %_351690.zext
    %_351693 = udiv i64 %_351625, 4
    %_351698 = urem i64 %_351693, 8192
    %_351700 = trunc i64 %_351698 to i13
    %_351702.zext = zext i13 %_351700 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351702 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351690, i64 0, i14 %_351702.zext
    %_351705 = urem i64 %_351625, 4
    %_351707 = trunc i64 %_351705 to i2
    %_351709.zext = zext i2 %_351707 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351709 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351702, i64 0, i3 %_351709.zext
    %_351711 = load float, float addrspace(0)* %_351709
    %_351714 = load float, float addrspace(0)* %_351494
    %_351719 = fmul fast float %_351714, %_351711
    %accn_351722 = fadd fast float %_351719, %_351676
    store float %accn_351722, float addrspace(0)* %fv_0_351172
    %_351726 = load float, float addrspace(0)* %fv_0_351176
    %_351729 = udiv i64 %_351625, 65536
    %_351734 = urem i64 %_351729, 64
    %_351736 = trunc i64 %_351734 to i6
    %_351738.zext = zext i6 %_351736 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351738 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351738.zext
    %_351740.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351740 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351738, i64 0, i2 %_351740.zext
    %_351743 = udiv i64 %_351625, 4
    %_351748 = urem i64 %_351743, 8192
    %_351750 = trunc i64 %_351748 to i13
    %_351752.zext = zext i13 %_351750 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351752 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351740, i64 0, i14 %_351752.zext
    %_351755 = urem i64 %_351625, 4
    %_351757 = trunc i64 %_351755 to i2
    %_351759.zext = zext i2 %_351757 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351759 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351752, i64 0, i3 %_351759.zext
    %_351761 = load float, float addrspace(0)* %_351759
    %_351764 = load float, float addrspace(0)* %_351548
    %_351769 = fmul fast float %_351764, %_351761
    %accn_351772 = fadd fast float %_351769, %_351726
    store float %accn_351772, float addrspace(0)* %fv_0_351176
    %_351776 = load float, float addrspace(0)* %fv_0_351180
    %_351779 = udiv i64 %_351625, 65536
    %_351784 = urem i64 %_351779, 64
    %_351786 = trunc i64 %_351784 to i6
    %_351788.zext = zext i6 %_351786 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351788 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350010, i64 0, i7 %_351788.zext
    %_351790.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351790 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351788, i64 0, i2 %_351790.zext
    %_351793 = udiv i64 %_351625, 4
    %_351798 = urem i64 %_351793, 8192
    %_351800 = trunc i64 %_351798 to i13
    %_351802.zext = zext i13 %_351800 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351802 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351790, i64 0, i14 %_351802.zext
    %_351805 = urem i64 %_351625, 4
    %_351807 = trunc i64 %_351805 to i2
    %_351809.zext = zext i2 %_351807 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351809 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351802, i64 0, i3 %_351809.zext
    %_351811 = load float, float addrspace(0)* %_351809
    %_351814 = load float, float addrspace(0)* %_351602
    %_351819 = fmul fast float %_351814, %_351811
    %accn_351822 = fadd fast float %_351819, %_351776
    store float %accn_351822, float addrspace(0)* %fv_0_351180
    br label %head_351184, !llvm.loop !1002

new_exit_351191:
    %fv_10_351193 = add nuw nsw i32 1, %iv_351138
    %_351196 = load float, float addrspace(0)* %fv_0_351152
    %_351217.zext = zext i15 %_351215 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351217 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351199, i64 0, i16 %_351217.zext
    %_351219 = load float, float addrspace(0)* %_351217
    %_351227.zext = zext i13 %_351202 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351227 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351225, i64 0, i14 %_351227.zext
    %_351229.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351229 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351227, i64 0, i3 %_351229.zext
    %_351233 = fadd fast float %_351196, %_351219
    %_351237 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351233)
    store float %_351237, float addrspace(0)* %_351229
    %_351241 = load float, float addrspace(0)* %fv_0_351156
    %_351247.zext = zext i15 %_351245 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351247 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351199, i64 0, i16 %_351247.zext
    %_351249 = load float, float addrspace(0)* %_351247
    %_351252.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351252 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351227, i64 0, i3 %_351252.zext
    %_351256 = fadd fast float %_351241, %_351249
    %_351258 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351256)
    store float %_351258, float addrspace(0)* %_351252
    %_351262 = load float, float addrspace(0)* %fv_0_351160
    %_351268.zext = zext i15 %_351266 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351268 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351199, i64 0, i16 %_351268.zext
    %_351270 = load float, float addrspace(0)* %_351268
    %_351273.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351273 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351227, i64 0, i3 %_351273.zext
    %_351277 = fadd fast float %_351262, %_351270
    %_351279 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351277)
    store float %_351279, float addrspace(0)* %_351273
    %_351283 = load float, float addrspace(0)* %fv_0_351164
    %_351289.zext = zext i15 %_351287 to i16 ; add one more bit for gep index as it is treated as signed value
    %_351289 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %l_self_modules_network_modules_2_parameters_bias__351199, i64 0, i16 %_351289.zext
    %_351291 = load float, float addrspace(0)* %_351289
    %_351294.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351294 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351227, i64 0, i3 %_351294.zext
    %_351298 = fadd fast float %_351283, %_351291
    %_351300 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351298)
    store float %_351300, float addrspace(0)* %_351294
    %_351304 = load float, float addrspace(0)* %fv_0_351168
    %_351307 = load float, float addrspace(0)* %_351217
    %_351312.zext = zext i13 %_351202 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351312 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351310, i64 0, i14 %_351312.zext
    %_351314.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351314 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351312, i64 0, i3 %_351314.zext
    %_351318 = fadd fast float %_351304, %_351307
    %_351320 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351318)
    store float %_351320, float addrspace(0)* %_351314
    %_351324 = load float, float addrspace(0)* %fv_0_351172
    %_351327 = load float, float addrspace(0)* %_351247
    %_351330.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351330 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351312, i64 0, i3 %_351330.zext
    %_351334 = fadd fast float %_351324, %_351327
    %_351336 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351334)
    store float %_351336, float addrspace(0)* %_351330
    %_351340 = load float, float addrspace(0)* %fv_0_351176
    %_351343 = load float, float addrspace(0)* %_351268
    %_351346.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351346 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351312, i64 0, i3 %_351346.zext
    %_351350 = fadd fast float %_351340, %_351343
    %_351352 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351350)
    store float %_351352, float addrspace(0)* %_351346
    %_351356 = load float, float addrspace(0)* %fv_0_351180
    %_351359 = load float, float addrspace(0)* %_351289
    %_351362.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351362 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351312, i64 0, i3 %_351362.zext
    %_351366 = fadd fast float %_351356, %_351359
    %_351368 = tail call float @llvm.maxnum.f32(float 0x0000000000000000, float %_351366)
    store float %_351368, float addrspace(0)* %_351362
    br label %head_351135

new_exit_351142:
    %fv_10_351144 = add nuw nsw i32 1, %iv_350048
    br label %head_350045

new_exit_350051:
    %_350064i8 = call i8* @malloc(i64 8388608)
    %_350064 = bitcast i8* %_350064i8 to [64 x [2 x [4096 x [4 x float]]]] addrspace(0)*
    %_350067i8 = call i8* @malloc(i64 32)
    %_350067 = bitcast i8* %_350067i8 to [8 x float] addrspace(0)*
    %fv_0_350378.zext = zext i3 0 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350378 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350378.zext
    %fv_0_350383.zext = zext i3 2 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350383 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350383.zext
    %fv_0_350387.zext = zext i3 4 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350387 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350387.zext
    %fv_0_350391.zext = zext i3 6 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350391 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350391.zext
    %fv_0_350395.zext = zext i3 1 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350395 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350395.zext
    %fv_0_350399.zext = zext i3 3 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350399 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350399.zext
    %fv_0_350403.zext = zext i3 5 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350403 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350403.zext
    %fv_0_350407.zext = zext i3 7 to i4 ; add one more bit for gep index as it is treated as signed value
    %fv_0_350407 = getelementptr inbounds [8 x float], [8 x float] addrspace(0)* %_350067, i64 0, i4 %fv_0_350407.zext
    br label %head_350070

head_350070:
    %iv_350073 = phi i32 [ 0, %new_exit_350051 ], [ %fv_10_350351, %new_exit_350349 ]
    %_350075 = icmp ult i32 %iv_350073, 64
    %_350452 = trunc i32 %iv_350073 to i6
    %_350632 = zext i6 %_350452 to i64
    %_350634 = mul i64 65536, %_350632
    %t_350912 = mul i64 2, %_350632
    %t_350914 = add i64 1, %t_350912
    %_350916 = mul i64 32768, %t_350914
    %_350454.zext = zext i6 %_350452 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350454 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350064, i64 0, i7 %_350454.zext
    %_350456.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350456 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350454, i64 0, i2 %_350456.zext
    %_350541.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350541 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350454, i64 0, i2 %_350541.zext
    br i1 %_350075, label %new_body_350339, label %new_exit_350076

new_body_350339:
    br label %head_350342

head_350342:
    %iv_350345 = phi i32 [ 0, %new_body_350339 ], [ %fv_10_350422, %new_exit_350420 ]
    %_350348 = icmp ult i32 %iv_350345, 4096
    %_350431 = trunc i32 %iv_350345 to i12
    %t_350439 = zext i12 %_350431 to i64
    %t_350441 = mul i64 4, %t_350439
    %_350444 = trunc i64 %t_350441 to i14
    %_350718.zext = zext i14 %_350444 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350718 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350707, i64 0, i15 %_350718.zext
    %t_350480 = add i64 1, %t_350441
    %_350481 = trunc i64 %t_350480 to i14
    %_350785.zext = zext i14 %_350481 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350785 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350707, i64 0, i15 %_350785.zext
    %t_350499 = add i64 2, %t_350441
    %_350500 = trunc i64 %t_350499 to i14
    %_350839.zext = zext i14 %_350500 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350839 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350707, i64 0, i15 %_350839.zext
    %t_350519 = add i64 3, %t_350441
    %_350520 = trunc i64 %t_350519 to i14
    %_350893.zext = zext i14 %_350520 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350893 = getelementptr inbounds [16384 x [32768 x float]], [16384 x [32768 x float]] addrspace(0)* %l_self_modules_network_modules_4_parameters_weight__350707, i64 0, i15 %_350893.zext
    br i1 %_350348, label %new_body_350355, label %new_exit_350349

new_body_350355:
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350378
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350383
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350387
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350391
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350395
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350399
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350403
    store float 0x0000000000000000, float addrspace(0)* %fv_0_350407
    br label %head_350411, !llvm.loop !1003

head_350411:
    %iv_350414 = phi i32 [ 0, %new_body_350355 ], [ %fv_9_350598, %new_body_350596 ]
    %_350417 = icmp ult i32 %iv_350414, 32768
    br i1 %_350417, label %new_body_350596, label %new_exit_350420

new_body_350596:
    %fv_9_350598 = add nuw nsw i32 1, %iv_350414
    %_350601 = load float, float addrspace(0)* %fv_0_350378
    %_350615 = trunc i32 %iv_350414 to i15
    %_350623 = zext i15 %_350615 to i64
    %_350636 = add i64 %_350623, %_350634
    %_350639 = udiv i64 %_350636, 65536
    %_350644 = urem i64 %_350639, 64
    %_350646 = trunc i64 %_350644 to i6
    %_350657.zext = zext i6 %_350646 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350657 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350657.zext
    %_350666.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350666 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350657, i64 0, i2 %_350666.zext
    %_350670 = udiv i64 %_350636, 4
    %_350676 = urem i64 %_350670, 8192
    %_350680 = trunc i64 %_350676 to i13
    %_350693.zext = zext i13 %_350680 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350693 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350666, i64 0, i14 %_350693.zext
    %_350696 = urem i64 %_350636, 4
    %_350698 = trunc i64 %_350696 to i2
    %_350700.zext = zext i2 %_350698 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350700 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350693, i64 0, i3 %_350700.zext
    %_350702 = load float, float addrspace(0)* %_350700
    %_350731.zext = zext i15 %_350615 to i16 ; add one more bit for gep index as it is treated as signed value
    %_350731 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_350718, i64 0, i16 %_350731.zext
    %_350733 = load float, float addrspace(0)* %_350731
    %_350740 = fmul fast float %_350733, %_350702
    %accn_350743 = fadd fast float %_350740, %_350601
    store float %accn_350743, float addrspace(0)* %fv_0_350378
    %_350747 = load float, float addrspace(0)* %fv_0_350383
    %_350750 = udiv i64 %_350636, 65536
    %_350755 = urem i64 %_350750, 64
    %_350757 = trunc i64 %_350755 to i6
    %_350759.zext = zext i6 %_350757 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350759 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350759.zext
    %_350761.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350761 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350759, i64 0, i2 %_350761.zext
    %_350764 = udiv i64 %_350636, 4
    %_350769 = urem i64 %_350764, 8192
    %_350771 = trunc i64 %_350769 to i13
    %_350773.zext = zext i13 %_350771 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350773 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350761, i64 0, i14 %_350773.zext
    %_350776 = urem i64 %_350636, 4
    %_350778 = trunc i64 %_350776 to i2
    %_350780.zext = zext i2 %_350778 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350780 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350773, i64 0, i3 %_350780.zext
    %_350782 = load float, float addrspace(0)* %_350780
    %_350787.zext = zext i15 %_350615 to i16 ; add one more bit for gep index as it is treated as signed value
    %_350787 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_350785, i64 0, i16 %_350787.zext
    %_350789 = load float, float addrspace(0)* %_350787
    %_350794 = fmul fast float %_350789, %_350782
    %accn_350797 = fadd fast float %_350794, %_350747
    store float %accn_350797, float addrspace(0)* %fv_0_350383
    %_350801 = load float, float addrspace(0)* %fv_0_350387
    %_350804 = udiv i64 %_350636, 65536
    %_350809 = urem i64 %_350804, 64
    %_350811 = trunc i64 %_350809 to i6
    %_350813.zext = zext i6 %_350811 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350813 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350813.zext
    %_350815.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350815 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350813, i64 0, i2 %_350815.zext
    %_350818 = udiv i64 %_350636, 4
    %_350823 = urem i64 %_350818, 8192
    %_350825 = trunc i64 %_350823 to i13
    %_350827.zext = zext i13 %_350825 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350827 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350815, i64 0, i14 %_350827.zext
    %_350830 = urem i64 %_350636, 4
    %_350832 = trunc i64 %_350830 to i2
    %_350834.zext = zext i2 %_350832 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350834 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350827, i64 0, i3 %_350834.zext
    %_350836 = load float, float addrspace(0)* %_350834
    %_350841.zext = zext i15 %_350615 to i16 ; add one more bit for gep index as it is treated as signed value
    %_350841 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_350839, i64 0, i16 %_350841.zext
    %_350843 = load float, float addrspace(0)* %_350841
    %_350848 = fmul fast float %_350843, %_350836
    %accn_350851 = fadd fast float %_350848, %_350801
    store float %accn_350851, float addrspace(0)* %fv_0_350387
    %_350855 = load float, float addrspace(0)* %fv_0_350391
    %_350858 = udiv i64 %_350636, 65536
    %_350863 = urem i64 %_350858, 64
    %_350865 = trunc i64 %_350863 to i6
    %_350867.zext = zext i6 %_350865 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350867 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350867.zext
    %_350869.zext = zext i1 0 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350869 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350867, i64 0, i2 %_350869.zext
    %_350872 = udiv i64 %_350636, 4
    %_350877 = urem i64 %_350872, 8192
    %_350879 = trunc i64 %_350877 to i13
    %_350881.zext = zext i13 %_350879 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350881 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350869, i64 0, i14 %_350881.zext
    %_350884 = urem i64 %_350636, 4
    %_350886 = trunc i64 %_350884 to i2
    %_350888.zext = zext i2 %_350886 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350888 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350881, i64 0, i3 %_350888.zext
    %_350890 = load float, float addrspace(0)* %_350888
    %_350895.zext = zext i15 %_350615 to i16 ; add one more bit for gep index as it is treated as signed value
    %_350895 = getelementptr inbounds [32768 x float], [32768 x float] addrspace(0)* %_350893, i64 0, i16 %_350895.zext
    %_350897 = load float, float addrspace(0)* %_350895
    %_350902 = fmul fast float %_350897, %_350890
    %accn_350905 = fadd fast float %_350902, %_350855
    store float %accn_350905, float addrspace(0)* %fv_0_350391
    %_350909 = load float, float addrspace(0)* %fv_0_350395
    %_350918 = add i64 %_350623, %_350916
    %_350921 = udiv i64 %_350918, 65536
    %_350926 = urem i64 %_350921, 64
    %_350928 = trunc i64 %_350926 to i6
    %_350930.zext = zext i6 %_350928 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350930 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350930.zext
    %_350932.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350932 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350930, i64 0, i2 %_350932.zext
    %_350936 = udiv i64 %_350918, 4
    %_350941 = urem i64 %_350936, 8192
    %_350943 = trunc i64 %_350941 to i13
    %_350945.zext = zext i13 %_350943 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350945 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350932, i64 0, i14 %_350945.zext
    %_350948 = urem i64 %_350918, 4
    %_350950 = trunc i64 %_350948 to i2
    %_350952.zext = zext i2 %_350950 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350952 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350945, i64 0, i3 %_350952.zext
    %_350954 = load float, float addrspace(0)* %_350952
    %_350957 = load float, float addrspace(0)* %_350731
    %_350962 = fmul fast float %_350957, %_350954
    %accn_350965 = fadd fast float %_350962, %_350909
    store float %accn_350965, float addrspace(0)* %fv_0_350395
    %_350969 = load float, float addrspace(0)* %fv_0_350399
    %_350972 = udiv i64 %_350918, 65536
    %_350977 = urem i64 %_350972, 64
    %_350979 = trunc i64 %_350977 to i6
    %_350981.zext = zext i6 %_350979 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350981 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_350981.zext
    %_350983.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350983 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_350981, i64 0, i2 %_350983.zext
    %_350986 = udiv i64 %_350918, 4
    %_350991 = urem i64 %_350986, 8192
    %_350993 = trunc i64 %_350991 to i13
    %_350995.zext = zext i13 %_350993 to i14 ; add one more bit for gep index as it is treated as signed value
    %_350995 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_350983, i64 0, i14 %_350995.zext
    %_350998 = urem i64 %_350918, 4
    %_351000 = trunc i64 %_350998 to i2
    %_351002.zext = zext i2 %_351000 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351002 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350995, i64 0, i3 %_351002.zext
    %_351004 = load float, float addrspace(0)* %_351002
    %_351007 = load float, float addrspace(0)* %_350787
    %_351012 = fmul fast float %_351007, %_351004
    %accn_351015 = fadd fast float %_351012, %_350969
    store float %accn_351015, float addrspace(0)* %fv_0_350399
    %_351019 = load float, float addrspace(0)* %fv_0_350403
    %_351022 = udiv i64 %_350918, 65536
    %_351027 = urem i64 %_351022, 64
    %_351029 = trunc i64 %_351027 to i6
    %_351031.zext = zext i6 %_351029 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351031 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_351031.zext
    %_351033.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351033 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351031, i64 0, i2 %_351033.zext
    %_351036 = udiv i64 %_350918, 4
    %_351041 = urem i64 %_351036, 8192
    %_351043 = trunc i64 %_351041 to i13
    %_351045.zext = zext i13 %_351043 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351045 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351033, i64 0, i14 %_351045.zext
    %_351048 = urem i64 %_350918, 4
    %_351050 = trunc i64 %_351048 to i2
    %_351052.zext = zext i2 %_351050 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351052 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351045, i64 0, i3 %_351052.zext
    %_351054 = load float, float addrspace(0)* %_351052
    %_351057 = load float, float addrspace(0)* %_350841
    %_351062 = fmul fast float %_351057, %_351054
    %accn_351065 = fadd fast float %_351062, %_351019
    store float %accn_351065, float addrspace(0)* %fv_0_350403
    %_351069 = load float, float addrspace(0)* %fv_0_350407
    %_351072 = udiv i64 %_350918, 65536
    %_351077 = urem i64 %_351072, 64
    %_351079 = trunc i64 %_351077 to i6
    %_351081.zext = zext i6 %_351079 to i7 ; add one more bit for gep index as it is treated as signed value
    %_351081 = getelementptr inbounds [64 x [2 x [8192 x [4 x float]]]], [64 x [2 x [8192 x [4 x float]]]] addrspace(0)* %_350039, i64 0, i7 %_351081.zext
    %_351083.zext = zext i1 1 to i2 ; add one more bit for gep index as it is treated as signed value
    %_351083 = getelementptr inbounds [2 x [8192 x [4 x float]]], [2 x [8192 x [4 x float]]] addrspace(0)* %_351081, i64 0, i2 %_351083.zext
    %_351086 = udiv i64 %_350918, 4
    %_351091 = urem i64 %_351086, 8192
    %_351093 = trunc i64 %_351091 to i13
    %_351095.zext = zext i13 %_351093 to i14 ; add one more bit for gep index as it is treated as signed value
    %_351095 = getelementptr inbounds [8192 x [4 x float]], [8192 x [4 x float]] addrspace(0)* %_351083, i64 0, i14 %_351095.zext
    %_351098 = urem i64 %_350918, 4
    %_351100 = trunc i64 %_351098 to i2
    %_351102.zext = zext i2 %_351100 to i3 ; add one more bit for gep index as it is treated as signed value
    %_351102 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_351095, i64 0, i3 %_351102.zext
    %_351104 = load float, float addrspace(0)* %_351102
    %_351107 = load float, float addrspace(0)* %_350895
    %_351112 = fmul fast float %_351107, %_351104
    %accn_351115 = fadd fast float %_351112, %_351069
    store float %accn_351115, float addrspace(0)* %fv_0_350407
    br label %head_350411, !llvm.loop !1003

new_exit_350420:
    %fv_10_350422 = add nuw nsw i32 1, %iv_350345
    %_350425 = load float, float addrspace(0)* %fv_0_350378
    %_350446.zext = zext i14 %_350444 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350446 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350428, i64 0, i15 %_350446.zext
    %_350448 = load float, float addrspace(0)* %_350446
    %_350458.zext = zext i12 %_350431 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350458 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350456, i64 0, i13 %_350458.zext
    %_350460.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350460 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350458, i64 0, i3 %_350460.zext
    %_350472 = fadd fast float %_350425, %_350448
    store float %_350472, float addrspace(0)* %_350460
    %_350476 = load float, float addrspace(0)* %fv_0_350383
    %_350483.zext = zext i14 %_350481 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350483 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350428, i64 0, i15 %_350483.zext
    %_350485 = load float, float addrspace(0)* %_350483
    %_350488.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350488 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350458, i64 0, i3 %_350488.zext
    %_350492 = fadd fast float %_350476, %_350485
    store float %_350492, float addrspace(0)* %_350488
    %_350496 = load float, float addrspace(0)* %fv_0_350387
    %_350502.zext = zext i14 %_350500 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350502 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350428, i64 0, i15 %_350502.zext
    %_350504 = load float, float addrspace(0)* %_350502
    %_350507.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350507 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350458, i64 0, i3 %_350507.zext
    %_350511 = fadd fast float %_350496, %_350504
    store float %_350511, float addrspace(0)* %_350507
    %_350515 = load float, float addrspace(0)* %fv_0_350391
    %_350522.zext = zext i14 %_350520 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350522 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %l_self_modules_network_modules_4_parameters_bias__350428, i64 0, i15 %_350522.zext
    %_350524 = load float, float addrspace(0)* %_350522
    %_350527.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350527 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350458, i64 0, i3 %_350527.zext
    %_350531 = fadd fast float %_350515, %_350524
    store float %_350531, float addrspace(0)* %_350527
    %_350535 = load float, float addrspace(0)* %fv_0_350395
    %_350538 = load float, float addrspace(0)* %_350446
    %_350543.zext = zext i12 %_350431 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350543 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350541, i64 0, i13 %_350543.zext
    %_350545.zext = zext i2 0 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350545 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350543, i64 0, i3 %_350545.zext
    %_350549 = fadd fast float %_350535, %_350538
    store float %_350549, float addrspace(0)* %_350545
    %_350553 = load float, float addrspace(0)* %fv_0_350399
    %_350556 = load float, float addrspace(0)* %_350483
    %_350559.zext = zext i2 1 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350559 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350543, i64 0, i3 %_350559.zext
    %_350563 = fadd fast float %_350553, %_350556
    store float %_350563, float addrspace(0)* %_350559
    %_350567 = load float, float addrspace(0)* %fv_0_350403
    %_350570 = load float, float addrspace(0)* %_350502
    %_350573.zext = zext i2 2 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350573 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350543, i64 0, i3 %_350573.zext
    %_350577 = fadd fast float %_350567, %_350570
    store float %_350577, float addrspace(0)* %_350573
    %_350581 = load float, float addrspace(0)* %fv_0_350407
    %_350584 = load float, float addrspace(0)* %_350522
    %_350587.zext = zext i2 3 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350587 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350543, i64 0, i3 %_350587.zext
    %_350591 = fadd fast float %_350581, %_350584
    store float %_350591, float addrspace(0)* %_350587
    br label %head_350342

new_exit_350349:
    %fv_10_350351 = add nuw nsw i32 1, %iv_350073
    br label %head_350070

new_exit_350076:
    %_350081i8 = call i8* @malloc(i64 8388608)
    %_350081 = bitcast i8* %_350081i8 to [128 x [16384 x float]] addrspace(0)*
    br label %head_350084

head_350084:
    %iv_350087 = phi i32 [ 0, %new_exit_350076 ], [ %fv_4_350115, %new_exit_350108 ]
    %_350090 = icmp ult i32 %iv_350087, 128
    %_350165 = trunc i32 %iv_350087 to i7
    %_350173 = zext i7 %_350165 to i64
    %_350179 = mul i64 16384, %_350173
    %_350310.zext = zext i7 %_350165 to i8 ; add one more bit for gep index as it is treated as signed value
    %_350310 = getelementptr inbounds [128 x [16384 x float]], [128 x [16384 x float]] addrspace(0)* %_350081, i64 0, i8 %_350310.zext
    br i1 %_350090, label %new_body_350098, label %new_exit_350091

new_body_350098:
    br label %head_350101

head_350101:
    %iv_350104 = phi i32 [ 0, %new_body_350098 ], [ %fv_4_350121, %new_body_350119 ]
    %_350107 = icmp ult i32 %iv_350104, 16384
    br i1 %_350107, label %new_body_350119, label %new_exit_350108

new_body_350119:
    %fv_4_350121 = add nuw nsw i32 1, %iv_350104
    %_350152 = trunc i32 %iv_350104 to i14
    %_350160 = zext i14 %_350152 to i64
    %_350183 = add i64 %_350160, %_350179
    %_350191 = udiv i64 %_350183, 32768
    %_350198 = urem i64 %_350191, 64
    %_350207 = trunc i64 %_350198 to i6
    %_350220.zext = zext i6 %_350207 to i7 ; add one more bit for gep index as it is treated as signed value
    %_350220 = getelementptr inbounds [64 x [2 x [4096 x [4 x float]]]], [64 x [2 x [4096 x [4 x float]]]] addrspace(0)* %_350064, i64 0, i7 %_350220.zext
    %_350225 = urem i64 %_350173, 2
    %_350229 = trunc i64 %_350225 to i1
    %_350239.zext = zext i1 %_350229 to i2 ; add one more bit for gep index as it is treated as signed value
    %_350239 = getelementptr inbounds [2 x [4096 x [4 x float]]], [2 x [4096 x [4 x float]]] addrspace(0)* %_350220, i64 0, i2 %_350239.zext
    %_350244 = udiv i64 %_350183, 4
    %_350250 = urem i64 %_350244, 4096
    %_350254 = trunc i64 %_350250 to i12
    %_350267.zext = zext i12 %_350254 to i13 ; add one more bit for gep index as it is treated as signed value
    %_350267 = getelementptr inbounds [4096 x [4 x float]], [4096 x [4 x float]] addrspace(0)* %_350239, i64 0, i13 %_350267.zext
    %_350270 = urem i64 %_350183, 4
    %_350274 = trunc i64 %_350270 to i2
    %_350289.zext = zext i2 %_350274 to i3 ; add one more bit for gep index as it is treated as signed value
    %_350289 = getelementptr inbounds [4 x float], [4 x float] addrspace(0)* %_350267, i64 0, i3 %_350289.zext
    %_350294 = load float, float addrspace(0)* %_350289
    %_350323.zext = zext i14 %_350152 to i15 ; add one more bit for gep index as it is treated as signed value
    %_350323 = getelementptr inbounds [16384 x float], [16384 x float] addrspace(0)* %_350310, i64 0, i15 %_350323.zext
    store float %_350294, float addrspace(0)* %_350323
    br label %head_350101

new_exit_350108:
    %fv_4_350115 = add nuw nsw i32 1, %iv_350087
    br label %head_350084

new_exit_350091:
    ret [128 x [16384 x float]] addrspace(0)* %_350081

}


!1000 = !{!"llvm.loop.vectorize.enable", i1 true}
!1003 = distinct !{!1003, !1000}
!1001 = distinct !{!1001, !1000}
!1002 = distinct !{!1002, !1000}
