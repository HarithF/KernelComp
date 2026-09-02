; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @MLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
  %44 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %38, 0
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %44, ptr %39, 1
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, i64 %40, 2
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 %41, 3, 0
  %48 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 %42, 4, 0
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %31, 0
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, ptr %32, 1
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, i64 %33, 2
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, i64 %34, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %52, i64 %36, 4, 0
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, i64 %35, 3, 1
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 %37, 4, 1
  %56 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %26, 0
  %57 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %56, ptr %27, 1
  %58 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %57, i64 %28, 2
  %59 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %58, i64 %29, 3, 0
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %59, i64 %30, 4, 0
  %61 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %19, 0
  %62 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, ptr %20, 1
  %63 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %62, i64 %21, 2
  %64 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %63, i64 %22, 3, 0
  %65 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %64, i64 %24, 4, 0
  %66 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %65, i64 %23, 3, 1
  %67 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %66, i64 %25, 4, 1
  %68 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %12, 0
  %69 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %68, ptr %13, 1
  %70 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %69, i64 %14, 2
  %71 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %70, i64 %15, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %71, i64 %17, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %72, i64 %16, 3, 1
  %74 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %73, i64 %18, 4, 1
  %75 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %7, 0
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %75, ptr %8, 1
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, i64 %9, 2
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 %10, 3, 0
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 %11, 4, 0
  %80 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %0, 0
  %81 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %80, ptr %1, 1
  %82 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %81, i64 %2, 2
  %83 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %82, i64 %3, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %83, i64 %5, 4, 0
  %85 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %84, i64 %4, 3, 1
  %86 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %85, i64 %6, 4, 1
  %87 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %88 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 128, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %91, i64 16384, 3, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %92, i64 16384, 4, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, i64 1, 4, 1
  br label %95

95:                                               ; preds = %108, %43
  %96 = phi i64 [ %109, %108 ], [ 0, %43 ]
  %97 = icmp slt i64 %96, 128
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %102, %98
  %100 = phi i64 [ %107, %102 ], [ 0, %98 ]
  %101 = icmp slt i64 %100, 16384
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %104 = mul nuw nsw i64 %96, 16384
  %105 = add nuw nsw i64 %104, %100
  %106 = getelementptr inbounds nuw float, ptr %103, i64 %105
  store float 0.000000e+00, ptr %106, align 4
  %107 = add i64 %100, 1
  br label %99

108:                                              ; preds = %99
  %109 = add i64 %96, 1
  br label %95

110:                                              ; preds = %95
  %111 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %112 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %111, 0
  %113 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %112, ptr %111, 1
  %114 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %113, i64 0, 2
  %115 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %114, i64 128, 3, 0
  %116 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %115, i64 16384, 3, 1
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %116, i64 16384, 4, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, i64 1, 4, 1
  %119 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 3, 0
  %120 = mul i64 1, %119
  %121 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 3, 1
  %122 = mul i64 %120, %121
  %123 = mul i64 %122, 4
  %124 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %125 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 2
  %126 = getelementptr float, ptr %124, i64 %125
  %127 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 1
  %128 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 2
  %129 = getelementptr float, ptr %127, i64 %128
  call void @llvm.memcpy.p0.p0.i64(ptr %129, ptr %126, i64 %123, i1 false)
  br label %130

130:                                              ; preds = %245, %110
  %131 = phi i64 [ %246, %245 ], [ 0, %110 ]
  %132 = icmp slt i64 %131, 128
  br i1 %132, label %133, label %247

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %243, %133
  %135 = phi i64 [ %244, %243 ], [ 0, %133 ]
  %136 = icmp slt i64 %135, 16384
  br i1 %136, label %137, label %245

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %241, %137
  %139 = phi i64 [ %242, %241 ], [ 0, %137 ]
  %140 = icmp slt i64 %139, 16384
  br i1 %140, label %141, label %243

141:                                              ; preds = %138
  %142 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 0
  %143 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 1
  %144 = insertvalue { ptr, ptr, i64 } poison, ptr %142, 0
  %145 = insertvalue { ptr, ptr, i64 } %144, ptr %143, 1
  %146 = insertvalue { ptr, ptr, i64 } %145, i64 0, 2
  %147 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 2
  %148 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 0
  %149 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 1
  %150 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 0
  %151 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 1
  %152 = mul nsw i64 %131, 16384
  %153 = add i64 %152, %139
  %154 = extractvalue { ptr, ptr, i64 } %146, 0
  %155 = extractvalue { ptr, ptr, i64 } %146, 1
  %156 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %154, 0
  %157 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %156, ptr %155, 1
  %158 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %157, i64 %153, 2
  %159 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, i64 32, 3, 0
  %160 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %159, i64 16384, 4, 0
  %161 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, i64 32, 3, 1
  %162 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %161, i64 1, 4, 1
  %163 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 0
  %164 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %165 = insertvalue { ptr, ptr, i64 } poison, ptr %163, 0
  %166 = insertvalue { ptr, ptr, i64 } %165, ptr %164, 1
  %167 = insertvalue { ptr, ptr, i64 } %166, i64 0, 2
  %168 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 2
  %169 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 0
  %170 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 1
  %171 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 0
  %172 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 1
  %173 = mul nsw i64 %135, 16384
  %174 = add i64 %173, %139
  %175 = extractvalue { ptr, ptr, i64 } %167, 0
  %176 = extractvalue { ptr, ptr, i64 } %167, 1
  %177 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %175, 0
  %178 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %177, ptr %176, 1
  %179 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %178, i64 %174, 2
  %180 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %179, i64 32, 3, 0
  %181 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %180, i64 16384, 4, 0
  %182 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %181, i64 32, 3, 1
  %183 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %182, i64 1, 4, 1
  %184 = mul nsw i64 %131, 16384
  %185 = add i64 %184, %135
  %186 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 0
  %187 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 1
  %188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %186, 0
  %189 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, ptr %187, 1
  %190 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %189, i64 %185, 2
  %191 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %190, i64 32, 3, 0
  %192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %191, i64 16384, 4, 0
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %192, i64 32, 3, 1
  %194 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, i64 1, 4, 1
  br label %195

195:                                              ; preds = %239, %141
  %196 = phi i64 [ %240, %239 ], [ 0, %141 ]
  %197 = icmp slt i64 %196, 32
  br i1 %197, label %198, label %241

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %237, %198
  %200 = phi i64 [ %238, %237 ], [ 0, %198 ]
  %201 = icmp slt i64 %200, 32
  br i1 %201, label %202, label %239

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %206, %202
  %204 = phi i64 [ %236, %206 ], [ 0, %202 ]
  %205 = icmp slt i64 %204, 32
  br i1 %205, label %206, label %237

206:                                              ; preds = %203
  %207 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %162, 1
  %208 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %162, 2
  %209 = getelementptr float, ptr %207, i64 %208
  %210 = mul nuw nsw i64 %196, 16384
  %211 = add nuw nsw i64 %210, %204
  %212 = getelementptr inbounds nuw float, ptr %209, i64 %211
  %213 = load float, ptr %212, align 4
  %214 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %183, 1
  %215 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %183, 2
  %216 = getelementptr float, ptr %214, i64 %215
  %217 = mul nuw nsw i64 %200, 16384
  %218 = add nuw nsw i64 %217, %204
  %219 = getelementptr inbounds nuw float, ptr %216, i64 %218
  %220 = load float, ptr %219, align 4
  %221 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, 1
  %222 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, 2
  %223 = getelementptr float, ptr %221, i64 %222
  %224 = mul nuw nsw i64 %196, 16384
  %225 = add nuw nsw i64 %224, %200
  %226 = getelementptr inbounds nuw float, ptr %223, i64 %225
  %227 = load float, ptr %226, align 4
  %228 = fmul float %220, %213
  %229 = fadd float %228, %227
  %230 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, 1
  %231 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, 2
  %232 = getelementptr float, ptr %230, i64 %231
  %233 = mul nuw nsw i64 %196, 16384
  %234 = add nuw nsw i64 %233, %200
  %235 = getelementptr inbounds nuw float, ptr %232, i64 %234
  store float %229, ptr %235, align 4
  %236 = add i64 %204, 1
  br label %203

237:                                              ; preds = %203
  %238 = add i64 %200, 1
  br label %199

239:                                              ; preds = %199
  %240 = add i64 %196, 1
  br label %195

241:                                              ; preds = %195
  %242 = add i64 %139, 32
  br label %138

243:                                              ; preds = %138
  %244 = add i64 %135, 32
  br label %134

245:                                              ; preds = %134
  %246 = add i64 %131, 32
  br label %130

247:                                              ; preds = %130
  br label %248

248:                                              ; preds = %289, %247
  %249 = phi i64 [ %290, %289 ], [ 0, %247 ]
  %250 = icmp slt i64 %249, 128
  br i1 %250, label %251, label %291

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %287, %251
  %253 = phi i64 [ %288, %287 ], [ 0, %251 ]
  %254 = icmp slt i64 %253, 16384
  br i1 %254, label %255, label %289

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %259, %255
  %257 = phi i64 [ %286, %259 ], [ 0, %255 ]
  %258 = icmp slt i64 %257, 16384
  br i1 %258, label %259, label %287

259:                                              ; preds = %256
  %260 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 1
  %261 = mul nuw nsw i64 %249, 16384
  %262 = add nuw nsw i64 %261, %257
  %263 = getelementptr inbounds nuw float, ptr %260, i64 %262
  %264 = load float, ptr %263, align 4
  %265 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, 1
  %266 = getelementptr inbounds nuw float, ptr %265, i64 %257
  %267 = load float, ptr %266, align 4
  %268 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %269 = mul nuw nsw i64 %253, 16384
  %270 = add nuw nsw i64 %269, %257
  %271 = getelementptr inbounds nuw float, ptr %268, i64 %270
  %272 = load float, ptr %271, align 4
  %273 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %274 = mul nuw nsw i64 %249, 16384
  %275 = add nuw nsw i64 %274, %253
  %276 = getelementptr inbounds nuw float, ptr %273, i64 %275
  %277 = load float, ptr %276, align 4
  %278 = fadd float %264, %267
  %279 = call float @llvm.maxnum.f32(float %278, float 0.000000e+00)
  %280 = fmul float %279, %272
  %281 = fadd float %280, %277
  %282 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %283 = mul nuw nsw i64 %249, 16384
  %284 = add nuw nsw i64 %283, %253
  %285 = getelementptr inbounds nuw float, ptr %282, i64 %284
  store float %281, ptr %285, align 4
  %286 = add i64 %257, 1
  br label %256

287:                                              ; preds = %256
  %288 = add i64 %253, 1
  br label %252

289:                                              ; preds = %252
  %290 = add i64 %249, 1
  br label %248

291:                                              ; preds = %248
  %292 = call ptr @aligned_alloc(i64 64, i64 4194304)
  %293 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %292, 0
  %294 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %293, ptr %292, 1
  %295 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %294, i64 0, 2
  %296 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %295, i64 128, 3, 0
  %297 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %296, i64 8192, 3, 1
  %298 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %297, i64 8192, 4, 0
  %299 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %298, i64 1, 4, 1
  br label %300

300:                                              ; preds = %313, %291
  %301 = phi i64 [ %314, %313 ], [ 0, %291 ]
  %302 = icmp slt i64 %301, 128
  br i1 %302, label %303, label %315

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %307, %303
  %305 = phi i64 [ %312, %307 ], [ 0, %303 ]
  %306 = icmp slt i64 %305, 8192
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, 1
  %309 = mul nuw nsw i64 %301, 8192
  %310 = add nuw nsw i64 %309, %305
  %311 = getelementptr inbounds nuw float, ptr %308, i64 %310
  store float 0.000000e+00, ptr %311, align 4
  %312 = add i64 %305, 1
  br label %304

313:                                              ; preds = %304
  %314 = add i64 %301, 1
  br label %300

315:                                              ; preds = %300
  br label %316

316:                                              ; preds = %357, %315
  %317 = phi i64 [ %358, %357 ], [ 0, %315 ]
  %318 = icmp slt i64 %317, 128
  br i1 %318, label %319, label %359

319:                                              ; preds = %316
  br label %320

320:                                              ; preds = %355, %319
  %321 = phi i64 [ %356, %355 ], [ 0, %319 ]
  %322 = icmp slt i64 %321, 8192
  br i1 %322, label %323, label %357

323:                                              ; preds = %320
  br label %324

324:                                              ; preds = %327, %323
  %325 = phi i64 [ %354, %327 ], [ 0, %323 ]
  %326 = icmp slt i64 %325, 16384
  br i1 %326, label %327, label %355

327:                                              ; preds = %324
  %328 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %329 = mul nuw nsw i64 %317, 16384
  %330 = add nuw nsw i64 %329, %325
  %331 = getelementptr inbounds nuw float, ptr %328, i64 %330
  %332 = load float, ptr %331, align 4
  %333 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %334 = getelementptr inbounds nuw float, ptr %333, i64 %325
  %335 = load float, ptr %334, align 4
  %336 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %337 = mul nuw nsw i64 %321, 16384
  %338 = add nuw nsw i64 %337, %325
  %339 = getelementptr inbounds nuw float, ptr %336, i64 %338
  %340 = load float, ptr %339, align 4
  %341 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, 1
  %342 = mul nuw nsw i64 %317, 8192
  %343 = add nuw nsw i64 %342, %321
  %344 = getelementptr inbounds nuw float, ptr %341, i64 %343
  %345 = load float, ptr %344, align 4
  %346 = fadd float %332, %335
  %347 = call float @llvm.maxnum.f32(float %346, float 0.000000e+00)
  %348 = fmul float %347, %340
  %349 = fadd float %348, %345
  %350 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, 1
  %351 = mul nuw nsw i64 %317, 8192
  %352 = add nuw nsw i64 %351, %321
  %353 = getelementptr inbounds nuw float, ptr %350, i64 %352
  store float %349, ptr %353, align 4
  %354 = add i64 %325, 1
  br label %324

355:                                              ; preds = %324
  %356 = add i64 %321, 1
  br label %320

357:                                              ; preds = %320
  %358 = add i64 %317, 1
  br label %316

359:                                              ; preds = %316
  br label %360

360:                                              ; preds = %382, %359
  %361 = phi i64 [ %383, %382 ], [ 0, %359 ]
  %362 = icmp slt i64 %361, 128
  br i1 %362, label %363, label %384

363:                                              ; preds = %360
  br label %364

364:                                              ; preds = %367, %363
  %365 = phi i64 [ %381, %367 ], [ 0, %363 ]
  %366 = icmp slt i64 %365, 8192
  br i1 %366, label %367, label %382

367:                                              ; preds = %364
  %368 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, 1
  %369 = mul nuw nsw i64 %361, 8192
  %370 = add nuw nsw i64 %369, %365
  %371 = getelementptr inbounds nuw float, ptr %368, i64 %370
  %372 = load float, ptr %371, align 4
  %373 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %374 = getelementptr inbounds nuw float, ptr %373, i64 %365
  %375 = load float, ptr %374, align 4
  %376 = fadd float %375, %372
  %377 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %299, 1
  %378 = mul nuw nsw i64 %361, 8192
  %379 = add nuw nsw i64 %378, %365
  %380 = getelementptr inbounds nuw float, ptr %377, i64 %379
  store float %376, ptr %380, align 4
  %381 = add i64 %365, 1
  br label %364

382:                                              ; preds = %364
  %383 = add i64 %361, 1
  br label %360

384:                                              ; preds = %360
  %385 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  call void @free(ptr %385)
  %386 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, 0
  call void @free(ptr %386)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %299
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
