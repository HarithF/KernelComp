; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @LeNet5(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, ptr %50, ptr %51, i64 %52, i64 %53, i64 %54, ptr %55, ptr %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, ptr %62, ptr %63, i64 %64, i64 %65, i64 %66, ptr %67, ptr %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, ptr %74, ptr %75, i64 %76, i64 %77, i64 %78) {
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %74, 0
  %81 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, ptr %75, 1
  %82 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %81, i64 %76, 2
  %83 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %82, i64 %77, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %83, i64 %78, 4, 0
  %85 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %67, 0
  %86 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %85, ptr %68, 1
  %87 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, i64 %69, 2
  %88 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %87, i64 %70, 3, 0
  %89 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %88, i64 %72, 4, 0
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, i64 %71, 3, 1
  %91 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 %73, 4, 1
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %62, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %63, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 %64, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 %65, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 %66, 4, 0
  %97 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %55, 0
  %98 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %97, ptr %56, 1
  %99 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %98, i64 %57, 2
  %100 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, i64 %58, 3, 0
  %101 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %100, i64 %60, 4, 0
  %102 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %101, i64 %59, 3, 1
  %103 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %102, i64 %61, 4, 1
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %50, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, ptr %51, 1
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, i64 %52, 2
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 %53, 3, 0
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 %54, 4, 0
  %109 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %43, 0
  %110 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %109, ptr %44, 1
  %111 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %110, i64 %45, 2
  %112 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %111, i64 %46, 3, 0
  %113 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %112, i64 %48, 4, 0
  %114 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %113, i64 %47, 3, 1
  %115 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %114, i64 %49, 4, 1
  %116 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %38, 0
  %117 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %116, ptr %39, 1
  %118 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %117, i64 %40, 2
  %119 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %118, i64 %41, 3, 0
  %120 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %119, i64 %42, 4, 0
  %121 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %27, 0
  %122 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %121, ptr %28, 1
  %123 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %122, i64 %29, 2
  %124 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %123, i64 %30, 3, 0
  %125 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %124, i64 %34, 4, 0
  %126 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %125, i64 %31, 3, 1
  %127 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %126, i64 %35, 4, 1
  %128 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %127, i64 %32, 3, 2
  %129 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %128, i64 %36, 4, 2
  %130 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %129, i64 %33, 3, 3
  %131 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, i64 %37, 4, 3
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %22, 0
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, ptr %23, 1
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 %24, 2
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 %25, 3, 0
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 %26, 4, 0
  %137 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %11, 0
  %138 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %137, ptr %12, 1
  %139 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %138, i64 %13, 2
  %140 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %139, i64 %14, 3, 0
  %141 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %140, i64 %18, 4, 0
  %142 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %141, i64 %15, 3, 1
  %143 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %142, i64 %19, 4, 1
  %144 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %143, i64 %16, 3, 2
  %145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %144, i64 %20, 4, 2
  %146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %145, i64 %17, 3, 3
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %146, i64 %21, 4, 3
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, ptr %1, 1
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 %2, 2
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 %3, 3, 0
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 %7, 4, 0
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 %4, 3, 1
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 %8, 4, 1
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 %5, 3, 2
  %156 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %155, i64 %9, 4, 2
  %157 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %156, i64 %6, 3, 3
  %158 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %157, i64 %10, 4, 3
  %159 = call ptr @aligned_alloc(i64 64, i64 77070336)
  %160 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %159, 0
  %161 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %160, ptr %159, 1
  %162 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %161, i64 0, 2
  %163 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %162, i64 4096, 3, 0
  %164 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %163, i64 6, 3, 1
  %165 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %164, i64 28, 3, 2
  %166 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %165, i64 28, 3, 3
  %167 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %166, i64 4704, 4, 0
  %168 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %167, i64 784, 4, 1
  %169 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %168, i64 28, 4, 2
  %170 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %169, i64 1, 4, 3
  br label %171

171:                                              ; preds = %203, %79
  %172 = phi i64 [ %204, %203 ], [ 0, %79 ]
  %173 = icmp slt i64 %172, 4096
  br i1 %173, label %174, label %205

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %201, %174
  %176 = phi i64 [ %202, %201 ], [ 0, %174 ]
  %177 = icmp slt i64 %176, 6
  br i1 %177, label %178, label %203

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %199, %178
  %180 = phi i64 [ %200, %199 ], [ 0, %178 ]
  %181 = icmp slt i64 %180, 28
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %186, %182
  %184 = phi i64 [ %198, %186 ], [ 0, %182 ]
  %185 = icmp slt i64 %184, 28
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %188 = getelementptr inbounds nuw float, ptr %187, i64 %176
  %189 = load float, ptr %188, align 4
  %190 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %191 = mul nuw nsw i64 %172, 4704
  %192 = mul nuw nsw i64 %176, 784
  %193 = add nuw nsw i64 %191, %192
  %194 = mul nuw nsw i64 %180, 28
  %195 = add nuw nsw i64 %193, %194
  %196 = add nuw nsw i64 %195, %184
  %197 = getelementptr inbounds nuw float, ptr %190, i64 %196
  store float %189, ptr %197, align 4
  %198 = add i64 %184, 1
  br label %183

199:                                              ; preds = %183
  %200 = add i64 %180, 1
  br label %179

201:                                              ; preds = %179
  %202 = add i64 %176, 1
  br label %175

203:                                              ; preds = %175
  %204 = add i64 %172, 1
  br label %171

205:                                              ; preds = %171
  br label %206

206:                                              ; preds = %284, %205
  %207 = phi i64 [ %285, %284 ], [ 0, %205 ]
  %208 = icmp slt i64 %207, 4096
  br i1 %208, label %209, label %286

209:                                              ; preds = %206
  br label %210

210:                                              ; preds = %282, %209
  %211 = phi i64 [ %283, %282 ], [ 0, %209 ]
  %212 = icmp slt i64 %211, 6
  br i1 %212, label %213, label %284

213:                                              ; preds = %210
  br label %214

214:                                              ; preds = %280, %213
  %215 = phi i64 [ %281, %280 ], [ 0, %213 ]
  %216 = icmp slt i64 %215, 28
  br i1 %216, label %217, label %282

217:                                              ; preds = %214
  br label %218

218:                                              ; preds = %278, %217
  %219 = phi i64 [ %279, %278 ], [ 0, %217 ]
  %220 = icmp slt i64 %219, 1
  br i1 %220, label %221, label %280

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %276, %221
  %223 = phi i64 [ %277, %276 ], [ 0, %221 ]
  %224 = icmp slt i64 %223, 5
  br i1 %224, label %225, label %278

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %274, %225
  %227 = phi i64 [ %275, %274 ], [ 0, %225 ]
  %228 = icmp slt i64 %227, 5
  br i1 %228, label %229, label %276

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %233, %229
  %231 = phi i64 [ %273, %233 ], [ 0, %229 ]
  %232 = icmp slt i64 %231, 28
  br i1 %232, label %233, label %274

233:                                              ; preds = %230
  %234 = add i64 %215, %223
  %235 = add i64 %227, %231
  %236 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %158, 1
  %237 = mul nuw nsw i64 %207, 1024
  %238 = mul nuw nsw i64 %219, 1024
  %239 = add nuw nsw i64 %237, %238
  %240 = mul nuw nsw i64 %234, 32
  %241 = add nuw nsw i64 %239, %240
  %242 = add nuw nsw i64 %241, %235
  %243 = getelementptr inbounds nuw float, ptr %236, i64 %242
  %244 = load float, ptr %243, align 4
  %245 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, 1
  %246 = mul nuw nsw i64 %211, 25
  %247 = mul nuw nsw i64 %219, 25
  %248 = add nuw nsw i64 %246, %247
  %249 = mul nuw nsw i64 %223, 5
  %250 = add nuw nsw i64 %248, %249
  %251 = add nuw nsw i64 %250, %227
  %252 = getelementptr inbounds nuw float, ptr %245, i64 %251
  %253 = load float, ptr %252, align 4
  %254 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %255 = mul nuw nsw i64 %207, 4704
  %256 = mul nuw nsw i64 %211, 784
  %257 = add nuw nsw i64 %255, %256
  %258 = mul nuw nsw i64 %215, 28
  %259 = add nuw nsw i64 %257, %258
  %260 = add nuw nsw i64 %259, %231
  %261 = getelementptr inbounds nuw float, ptr %254, i64 %260
  %262 = load float, ptr %261, align 4
  %263 = fmul float %244, %253
  %264 = fadd float %262, %263
  %265 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %266 = mul nuw nsw i64 %207, 4704
  %267 = mul nuw nsw i64 %211, 784
  %268 = add nuw nsw i64 %266, %267
  %269 = mul nuw nsw i64 %215, 28
  %270 = add nuw nsw i64 %268, %269
  %271 = add nuw nsw i64 %270, %231
  %272 = getelementptr inbounds nuw float, ptr %265, i64 %271
  store float %264, ptr %272, align 4
  %273 = add i64 %231, 1
  br label %230

274:                                              ; preds = %230
  %275 = add i64 %227, 1
  br label %226

276:                                              ; preds = %226
  %277 = add i64 %223, 1
  br label %222

278:                                              ; preds = %222
  %279 = add i64 %219, 1
  br label %218

280:                                              ; preds = %218
  %281 = add i64 %215, 1
  br label %214

282:                                              ; preds = %214
  %283 = add i64 %211, 1
  br label %210

284:                                              ; preds = %210
  %285 = add i64 %207, 1
  br label %206

286:                                              ; preds = %206
  br label %287

287:                                              ; preds = %327, %286
  %288 = phi i64 [ %328, %327 ], [ 0, %286 ]
  %289 = icmp slt i64 %288, 4096
  br i1 %289, label %290, label %329

290:                                              ; preds = %287
  br label %291

291:                                              ; preds = %325, %290
  %292 = phi i64 [ %326, %325 ], [ 0, %290 ]
  %293 = icmp slt i64 %292, 6
  br i1 %293, label %294, label %327

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %323, %294
  %296 = phi i64 [ %324, %323 ], [ 0, %294 ]
  %297 = icmp slt i64 %296, 28
  br i1 %297, label %298, label %325

298:                                              ; preds = %295
  br label %299

299:                                              ; preds = %302, %298
  %300 = phi i64 [ %322, %302 ], [ 0, %298 ]
  %301 = icmp slt i64 %300, 28
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  %303 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %304 = mul nuw nsw i64 %288, 4704
  %305 = mul nuw nsw i64 %292, 784
  %306 = add nuw nsw i64 %304, %305
  %307 = mul nuw nsw i64 %296, 28
  %308 = add nuw nsw i64 %306, %307
  %309 = add nuw nsw i64 %308, %300
  %310 = getelementptr inbounds nuw float, ptr %303, i64 %309
  %311 = load float, ptr %310, align 4
  %312 = fcmp ugt float %311, 0.000000e+00
  %313 = select i1 %312, float %311, float 0.000000e+00
  %314 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %315 = mul nuw nsw i64 %288, 4704
  %316 = mul nuw nsw i64 %292, 784
  %317 = add nuw nsw i64 %315, %316
  %318 = mul nuw nsw i64 %296, 28
  %319 = add nuw nsw i64 %317, %318
  %320 = add nuw nsw i64 %319, %300
  %321 = getelementptr inbounds nuw float, ptr %314, i64 %320
  store float %313, ptr %321, align 4
  %322 = add i64 %300, 1
  br label %299

323:                                              ; preds = %299
  %324 = add i64 %296, 1
  br label %295

325:                                              ; preds = %295
  %326 = add i64 %292, 1
  br label %291

327:                                              ; preds = %291
  %328 = add i64 %288, 1
  br label %287

329:                                              ; preds = %287
  %330 = call ptr @aligned_alloc(i64 64, i64 19267584)
  %331 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %330, 0
  %332 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %331, ptr %330, 1
  %333 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %332, i64 0, 2
  %334 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %333, i64 4096, 3, 0
  %335 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %334, i64 6, 3, 1
  %336 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %335, i64 14, 3, 2
  %337 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %336, i64 14, 3, 3
  %338 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %337, i64 1176, 4, 0
  %339 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %338, i64 196, 4, 1
  %340 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %339, i64 14, 4, 2
  %341 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %340, i64 1, 4, 3
  br label %342

342:                                              ; preds = %371, %329
  %343 = phi i64 [ %372, %371 ], [ 0, %329 ]
  %344 = icmp slt i64 %343, 4096
  br i1 %344, label %345, label %373

345:                                              ; preds = %342
  br label %346

346:                                              ; preds = %369, %345
  %347 = phi i64 [ %370, %369 ], [ 0, %345 ]
  %348 = icmp slt i64 %347, 6
  br i1 %348, label %349, label %371

349:                                              ; preds = %346
  br label %350

350:                                              ; preds = %367, %349
  %351 = phi i64 [ %368, %367 ], [ 0, %349 ]
  %352 = icmp slt i64 %351, 14
  br i1 %352, label %353, label %369

353:                                              ; preds = %350
  br label %354

354:                                              ; preds = %357, %353
  %355 = phi i64 [ %366, %357 ], [ 0, %353 ]
  %356 = icmp slt i64 %355, 14
  br i1 %356, label %357, label %367

357:                                              ; preds = %354
  %358 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %341, 1
  %359 = mul nuw nsw i64 %343, 1176
  %360 = mul nuw nsw i64 %347, 196
  %361 = add nuw nsw i64 %359, %360
  %362 = mul nuw nsw i64 %351, 14
  %363 = add nuw nsw i64 %361, %362
  %364 = add nuw nsw i64 %363, %355
  %365 = getelementptr inbounds nuw float, ptr %358, i64 %364
  store float -inf, ptr %365, align 4
  %366 = add i64 %355, 1
  br label %354

367:                                              ; preds = %354
  %368 = add i64 %351, 1
  br label %350

369:                                              ; preds = %350
  %370 = add i64 %347, 1
  br label %346

371:                                              ; preds = %346
  %372 = add i64 %343, 1
  br label %342

373:                                              ; preds = %342
  %374 = call ptr @aligned_alloc(i64 64, i64 64)
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %374, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, ptr %374, 1
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 0, 2
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 2, 3, 0
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, i64 2, 3, 1
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, i64 2, 4, 0
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, i64 1, 4, 1
  br label %382

382:                                              ; preds = %446, %373
  %383 = phi i64 [ %447, %446 ], [ 0, %373 ]
  %384 = icmp slt i64 %383, 4096
  br i1 %384, label %385, label %448

385:                                              ; preds = %382
  br label %386

386:                                              ; preds = %444, %385
  %387 = phi i64 [ %445, %444 ], [ 0, %385 ]
  %388 = icmp slt i64 %387, 6
  br i1 %388, label %389, label %446

389:                                              ; preds = %386
  br label %390

390:                                              ; preds = %442, %389
  %391 = phi i64 [ %443, %442 ], [ 0, %389 ]
  %392 = icmp slt i64 %391, 14
  br i1 %392, label %393, label %444

393:                                              ; preds = %390
  br label %394

394:                                              ; preds = %440, %393
  %395 = phi i64 [ %441, %440 ], [ 0, %393 ]
  %396 = icmp slt i64 %395, 14
  br i1 %396, label %397, label %442

397:                                              ; preds = %394
  br label %398

398:                                              ; preds = %438, %397
  %399 = phi i64 [ %439, %438 ], [ 0, %397 ]
  %400 = icmp slt i64 %399, 2
  br i1 %400, label %401, label %440

401:                                              ; preds = %398
  br label %402

402:                                              ; preds = %405, %401
  %403 = phi i64 [ %437, %405 ], [ 0, %401 ]
  %404 = icmp slt i64 %403, 2
  br i1 %404, label %405, label %438

405:                                              ; preds = %402
  %406 = mul nsw i64 %391, 2
  %407 = add i64 %406, %399
  %408 = mul nsw i64 %395, 2
  %409 = add i64 %408, %403
  %410 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 1
  %411 = mul nuw nsw i64 %383, 4704
  %412 = mul nuw nsw i64 %387, 784
  %413 = add nuw nsw i64 %411, %412
  %414 = mul nuw nsw i64 %407, 28
  %415 = add nuw nsw i64 %413, %414
  %416 = add nuw nsw i64 %415, %409
  %417 = getelementptr inbounds nuw float, ptr %410, i64 %416
  %418 = load float, ptr %417, align 4
  %419 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %341, 1
  %420 = mul nuw nsw i64 %383, 1176
  %421 = mul nuw nsw i64 %387, 196
  %422 = add nuw nsw i64 %420, %421
  %423 = mul nuw nsw i64 %391, 14
  %424 = add nuw nsw i64 %422, %423
  %425 = add nuw nsw i64 %424, %395
  %426 = getelementptr inbounds nuw float, ptr %419, i64 %425
  %427 = load float, ptr %426, align 4
  %428 = call float @llvm.maximum.f32(float %427, float %418)
  %429 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %341, 1
  %430 = mul nuw nsw i64 %383, 1176
  %431 = mul nuw nsw i64 %387, 196
  %432 = add nuw nsw i64 %430, %431
  %433 = mul nuw nsw i64 %391, 14
  %434 = add nuw nsw i64 %432, %433
  %435 = add nuw nsw i64 %434, %395
  %436 = getelementptr inbounds nuw float, ptr %429, i64 %435
  store float %428, ptr %436, align 4
  %437 = add i64 %403, 1
  br label %402

438:                                              ; preds = %402
  %439 = add i64 %399, 1
  br label %398

440:                                              ; preds = %398
  %441 = add i64 %395, 1
  br label %394

442:                                              ; preds = %394
  %443 = add i64 %391, 1
  br label %390

444:                                              ; preds = %390
  %445 = add i64 %387, 1
  br label %386

446:                                              ; preds = %386
  %447 = add i64 %383, 1
  br label %382

448:                                              ; preds = %382
  %449 = call ptr @aligned_alloc(i64 64, i64 26214400)
  %450 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %449, 0
  %451 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %450, ptr %449, 1
  %452 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %451, i64 0, 2
  %453 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %452, i64 4096, 3, 0
  %454 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %453, i64 16, 3, 1
  %455 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %454, i64 10, 3, 2
  %456 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %455, i64 10, 3, 3
  %457 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %456, i64 1600, 4, 0
  %458 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %457, i64 100, 4, 1
  %459 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %458, i64 10, 4, 2
  %460 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %459, i64 1, 4, 3
  br label %461

461:                                              ; preds = %493, %448
  %462 = phi i64 [ %494, %493 ], [ 0, %448 ]
  %463 = icmp slt i64 %462, 4096
  br i1 %463, label %464, label %495

464:                                              ; preds = %461
  br label %465

465:                                              ; preds = %491, %464
  %466 = phi i64 [ %492, %491 ], [ 0, %464 ]
  %467 = icmp slt i64 %466, 16
  br i1 %467, label %468, label %493

468:                                              ; preds = %465
  br label %469

469:                                              ; preds = %489, %468
  %470 = phi i64 [ %490, %489 ], [ 0, %468 ]
  %471 = icmp slt i64 %470, 10
  br i1 %471, label %472, label %491

472:                                              ; preds = %469
  br label %473

473:                                              ; preds = %476, %472
  %474 = phi i64 [ %488, %476 ], [ 0, %472 ]
  %475 = icmp slt i64 %474, 10
  br i1 %475, label %476, label %489

476:                                              ; preds = %473
  %477 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %120, 1
  %478 = getelementptr inbounds nuw float, ptr %477, i64 %466
  %479 = load float, ptr %478, align 4
  %480 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %481 = mul nuw nsw i64 %462, 1600
  %482 = mul nuw nsw i64 %466, 100
  %483 = add nuw nsw i64 %481, %482
  %484 = mul nuw nsw i64 %470, 10
  %485 = add nuw nsw i64 %483, %484
  %486 = add nuw nsw i64 %485, %474
  %487 = getelementptr inbounds nuw float, ptr %480, i64 %486
  store float %479, ptr %487, align 4
  %488 = add i64 %474, 1
  br label %473

489:                                              ; preds = %473
  %490 = add i64 %470, 1
  br label %469

491:                                              ; preds = %469
  %492 = add i64 %466, 1
  br label %465

493:                                              ; preds = %465
  %494 = add i64 %462, 1
  br label %461

495:                                              ; preds = %461
  br label %496

496:                                              ; preds = %574, %495
  %497 = phi i64 [ %575, %574 ], [ 0, %495 ]
  %498 = icmp slt i64 %497, 4096
  br i1 %498, label %499, label %576

499:                                              ; preds = %496
  br label %500

500:                                              ; preds = %572, %499
  %501 = phi i64 [ %573, %572 ], [ 0, %499 ]
  %502 = icmp slt i64 %501, 16
  br i1 %502, label %503, label %574

503:                                              ; preds = %500
  br label %504

504:                                              ; preds = %570, %503
  %505 = phi i64 [ %571, %570 ], [ 0, %503 ]
  %506 = icmp slt i64 %505, 10
  br i1 %506, label %507, label %572

507:                                              ; preds = %504
  br label %508

508:                                              ; preds = %568, %507
  %509 = phi i64 [ %569, %568 ], [ 0, %507 ]
  %510 = icmp slt i64 %509, 6
  br i1 %510, label %511, label %570

511:                                              ; preds = %508
  br label %512

512:                                              ; preds = %566, %511
  %513 = phi i64 [ %567, %566 ], [ 0, %511 ]
  %514 = icmp slt i64 %513, 5
  br i1 %514, label %515, label %568

515:                                              ; preds = %512
  br label %516

516:                                              ; preds = %564, %515
  %517 = phi i64 [ %565, %564 ], [ 0, %515 ]
  %518 = icmp slt i64 %517, 5
  br i1 %518, label %519, label %566

519:                                              ; preds = %516
  br label %520

520:                                              ; preds = %523, %519
  %521 = phi i64 [ %563, %523 ], [ 0, %519 ]
  %522 = icmp slt i64 %521, 10
  br i1 %522, label %523, label %564

523:                                              ; preds = %520
  %524 = add i64 %505, %513
  %525 = add i64 %517, %521
  %526 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %341, 1
  %527 = mul nuw nsw i64 %497, 1176
  %528 = mul nuw nsw i64 %509, 196
  %529 = add nuw nsw i64 %527, %528
  %530 = mul nuw nsw i64 %524, 14
  %531 = add nuw nsw i64 %529, %530
  %532 = add nuw nsw i64 %531, %525
  %533 = getelementptr inbounds nuw float, ptr %526, i64 %532
  %534 = load float, ptr %533, align 4
  %535 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %131, 1
  %536 = mul nuw nsw i64 %501, 150
  %537 = mul nuw nsw i64 %509, 25
  %538 = add nuw nsw i64 %536, %537
  %539 = mul nuw nsw i64 %513, 5
  %540 = add nuw nsw i64 %538, %539
  %541 = add nuw nsw i64 %540, %517
  %542 = getelementptr inbounds nuw float, ptr %535, i64 %541
  %543 = load float, ptr %542, align 4
  %544 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %545 = mul nuw nsw i64 %497, 1600
  %546 = mul nuw nsw i64 %501, 100
  %547 = add nuw nsw i64 %545, %546
  %548 = mul nuw nsw i64 %505, 10
  %549 = add nuw nsw i64 %547, %548
  %550 = add nuw nsw i64 %549, %521
  %551 = getelementptr inbounds nuw float, ptr %544, i64 %550
  %552 = load float, ptr %551, align 4
  %553 = fmul float %534, %543
  %554 = fadd float %552, %553
  %555 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %556 = mul nuw nsw i64 %497, 1600
  %557 = mul nuw nsw i64 %501, 100
  %558 = add nuw nsw i64 %556, %557
  %559 = mul nuw nsw i64 %505, 10
  %560 = add nuw nsw i64 %558, %559
  %561 = add nuw nsw i64 %560, %521
  %562 = getelementptr inbounds nuw float, ptr %555, i64 %561
  store float %554, ptr %562, align 4
  %563 = add i64 %521, 1
  br label %520

564:                                              ; preds = %520
  %565 = add i64 %517, 1
  br label %516

566:                                              ; preds = %516
  %567 = add i64 %513, 1
  br label %512

568:                                              ; preds = %512
  %569 = add i64 %509, 1
  br label %508

570:                                              ; preds = %508
  %571 = add i64 %505, 1
  br label %504

572:                                              ; preds = %504
  %573 = add i64 %501, 1
  br label %500

574:                                              ; preds = %500
  %575 = add i64 %497, 1
  br label %496

576:                                              ; preds = %496
  br label %577

577:                                              ; preds = %617, %576
  %578 = phi i64 [ %618, %617 ], [ 0, %576 ]
  %579 = icmp slt i64 %578, 4096
  br i1 %579, label %580, label %619

580:                                              ; preds = %577
  br label %581

581:                                              ; preds = %615, %580
  %582 = phi i64 [ %616, %615 ], [ 0, %580 ]
  %583 = icmp slt i64 %582, 16
  br i1 %583, label %584, label %617

584:                                              ; preds = %581
  br label %585

585:                                              ; preds = %613, %584
  %586 = phi i64 [ %614, %613 ], [ 0, %584 ]
  %587 = icmp slt i64 %586, 10
  br i1 %587, label %588, label %615

588:                                              ; preds = %585
  br label %589

589:                                              ; preds = %592, %588
  %590 = phi i64 [ %612, %592 ], [ 0, %588 ]
  %591 = icmp slt i64 %590, 10
  br i1 %591, label %592, label %613

592:                                              ; preds = %589
  %593 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %594 = mul nuw nsw i64 %578, 1600
  %595 = mul nuw nsw i64 %582, 100
  %596 = add nuw nsw i64 %594, %595
  %597 = mul nuw nsw i64 %586, 10
  %598 = add nuw nsw i64 %596, %597
  %599 = add nuw nsw i64 %598, %590
  %600 = getelementptr inbounds nuw float, ptr %593, i64 %599
  %601 = load float, ptr %600, align 4
  %602 = fcmp ugt float %601, 0.000000e+00
  %603 = select i1 %602, float %601, float 0.000000e+00
  %604 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %605 = mul nuw nsw i64 %578, 1600
  %606 = mul nuw nsw i64 %582, 100
  %607 = add nuw nsw i64 %605, %606
  %608 = mul nuw nsw i64 %586, 10
  %609 = add nuw nsw i64 %607, %608
  %610 = add nuw nsw i64 %609, %590
  %611 = getelementptr inbounds nuw float, ptr %604, i64 %610
  store float %603, ptr %611, align 4
  %612 = add i64 %590, 1
  br label %589

613:                                              ; preds = %589
  %614 = add i64 %586, 1
  br label %585

615:                                              ; preds = %585
  %616 = add i64 %582, 1
  br label %581

617:                                              ; preds = %581
  %618 = add i64 %578, 1
  br label %577

619:                                              ; preds = %577
  %620 = call ptr @aligned_alloc(i64 64, i64 6553600)
  %621 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %620, 0
  %622 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %621, ptr %620, 1
  %623 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %622, i64 0, 2
  %624 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %623, i64 4096, 3, 0
  %625 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %624, i64 16, 3, 1
  %626 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %625, i64 5, 3, 2
  %627 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, i64 5, 3, 3
  %628 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %627, i64 400, 4, 0
  %629 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %628, i64 25, 4, 1
  %630 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, i64 5, 4, 2
  %631 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %630, i64 1, 4, 3
  br label %632

632:                                              ; preds = %661, %619
  %633 = phi i64 [ %662, %661 ], [ 0, %619 ]
  %634 = icmp slt i64 %633, 4096
  br i1 %634, label %635, label %663

635:                                              ; preds = %632
  br label %636

636:                                              ; preds = %659, %635
  %637 = phi i64 [ %660, %659 ], [ 0, %635 ]
  %638 = icmp slt i64 %637, 16
  br i1 %638, label %639, label %661

639:                                              ; preds = %636
  br label %640

640:                                              ; preds = %657, %639
  %641 = phi i64 [ %658, %657 ], [ 0, %639 ]
  %642 = icmp slt i64 %641, 5
  br i1 %642, label %643, label %659

643:                                              ; preds = %640
  br label %644

644:                                              ; preds = %647, %643
  %645 = phi i64 [ %656, %647 ], [ 0, %643 ]
  %646 = icmp slt i64 %645, 5
  br i1 %646, label %647, label %657

647:                                              ; preds = %644
  %648 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 1
  %649 = mul nuw nsw i64 %633, 400
  %650 = mul nuw nsw i64 %637, 25
  %651 = add nuw nsw i64 %649, %650
  %652 = mul nuw nsw i64 %641, 5
  %653 = add nuw nsw i64 %651, %652
  %654 = add nuw nsw i64 %653, %645
  %655 = getelementptr inbounds nuw float, ptr %648, i64 %654
  store float -inf, ptr %655, align 4
  %656 = add i64 %645, 1
  br label %644

657:                                              ; preds = %644
  %658 = add i64 %641, 1
  br label %640

659:                                              ; preds = %640
  %660 = add i64 %637, 1
  br label %636

661:                                              ; preds = %636
  %662 = add i64 %633, 1
  br label %632

663:                                              ; preds = %632
  br label %664

664:                                              ; preds = %728, %663
  %665 = phi i64 [ %729, %728 ], [ 0, %663 ]
  %666 = icmp slt i64 %665, 4096
  br i1 %666, label %667, label %730

667:                                              ; preds = %664
  br label %668

668:                                              ; preds = %726, %667
  %669 = phi i64 [ %727, %726 ], [ 0, %667 ]
  %670 = icmp slt i64 %669, 16
  br i1 %670, label %671, label %728

671:                                              ; preds = %668
  br label %672

672:                                              ; preds = %724, %671
  %673 = phi i64 [ %725, %724 ], [ 0, %671 ]
  %674 = icmp slt i64 %673, 5
  br i1 %674, label %675, label %726

675:                                              ; preds = %672
  br label %676

676:                                              ; preds = %722, %675
  %677 = phi i64 [ %723, %722 ], [ 0, %675 ]
  %678 = icmp slt i64 %677, 5
  br i1 %678, label %679, label %724

679:                                              ; preds = %676
  br label %680

680:                                              ; preds = %720, %679
  %681 = phi i64 [ %721, %720 ], [ 0, %679 ]
  %682 = icmp slt i64 %681, 2
  br i1 %682, label %683, label %722

683:                                              ; preds = %680
  br label %684

684:                                              ; preds = %687, %683
  %685 = phi i64 [ %719, %687 ], [ 0, %683 ]
  %686 = icmp slt i64 %685, 2
  br i1 %686, label %687, label %720

687:                                              ; preds = %684
  %688 = mul nsw i64 %673, 2
  %689 = add i64 %688, %681
  %690 = mul nsw i64 %677, 2
  %691 = add i64 %690, %685
  %692 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 1
  %693 = mul nuw nsw i64 %665, 1600
  %694 = mul nuw nsw i64 %669, 100
  %695 = add nuw nsw i64 %693, %694
  %696 = mul nuw nsw i64 %689, 10
  %697 = add nuw nsw i64 %695, %696
  %698 = add nuw nsw i64 %697, %691
  %699 = getelementptr inbounds nuw float, ptr %692, i64 %698
  %700 = load float, ptr %699, align 4
  %701 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 1
  %702 = mul nuw nsw i64 %665, 400
  %703 = mul nuw nsw i64 %669, 25
  %704 = add nuw nsw i64 %702, %703
  %705 = mul nuw nsw i64 %673, 5
  %706 = add nuw nsw i64 %704, %705
  %707 = add nuw nsw i64 %706, %677
  %708 = getelementptr inbounds nuw float, ptr %701, i64 %707
  %709 = load float, ptr %708, align 4
  %710 = call float @llvm.maximum.f32(float %709, float %700)
  %711 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 1
  %712 = mul nuw nsw i64 %665, 400
  %713 = mul nuw nsw i64 %669, 25
  %714 = add nuw nsw i64 %712, %713
  %715 = mul nuw nsw i64 %673, 5
  %716 = add nuw nsw i64 %714, %715
  %717 = add nuw nsw i64 %716, %677
  %718 = getelementptr inbounds nuw float, ptr %711, i64 %717
  store float %710, ptr %718, align 4
  %719 = add i64 %685, 1
  br label %684

720:                                              ; preds = %684
  %721 = add i64 %681, 1
  br label %680

722:                                              ; preds = %680
  %723 = add i64 %677, 1
  br label %676

724:                                              ; preds = %676
  %725 = add i64 %673, 1
  br label %672

726:                                              ; preds = %672
  %727 = add i64 %669, 1
  br label %668

728:                                              ; preds = %668
  %729 = add i64 %665, 1
  br label %664

730:                                              ; preds = %664
  %731 = call ptr @aligned_alloc(i64 64, i64 192000)
  %732 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %731, 0
  %733 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %732, ptr %731, 1
  %734 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %733, i64 0, 2
  %735 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %734, i64 400, 3, 0
  %736 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %735, i64 120, 3, 1
  %737 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %736, i64 120, 4, 0
  %738 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %737, i64 1, 4, 1
  br label %739

739:                                              ; preds = %757, %730
  %740 = phi i64 [ %758, %757 ], [ 0, %730 ]
  %741 = icmp slt i64 %740, 400
  br i1 %741, label %742, label %759

742:                                              ; preds = %739
  br label %743

743:                                              ; preds = %746, %742
  %744 = phi i64 [ %756, %746 ], [ 0, %742 ]
  %745 = icmp slt i64 %744, 120
  br i1 %745, label %746, label %757

746:                                              ; preds = %743
  %747 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %115, 1
  %748 = mul nuw nsw i64 %744, 400
  %749 = add nuw nsw i64 %748, %740
  %750 = getelementptr inbounds nuw float, ptr %747, i64 %749
  %751 = load float, ptr %750, align 4
  %752 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 1
  %753 = mul nuw nsw i64 %740, 120
  %754 = add nuw nsw i64 %753, %744
  %755 = getelementptr inbounds nuw float, ptr %752, i64 %754
  store float %751, ptr %755, align 4
  %756 = add i64 %744, 1
  br label %743

757:                                              ; preds = %743
  %758 = add i64 %740, 1
  br label %739

759:                                              ; preds = %739
  %760 = call ptr @aligned_alloc(i64 64, i64 1966080)
  %761 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %760, 0
  %762 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %761, ptr %760, 1
  %763 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %762, i64 0, 2
  %764 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %763, i64 4096, 3, 0
  %765 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %764, i64 120, 3, 1
  %766 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %765, i64 120, 4, 0
  %767 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %766, i64 1, 4, 1
  %768 = call ptr @aligned_alloc(i64 64, i64 1966080)
  %769 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %768, 0
  %770 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %769, ptr %768, 1
  %771 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %770, i64 0, 2
  %772 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %771, i64 4096, 3, 0
  %773 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %772, i64 120, 3, 1
  %774 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %773, i64 120, 4, 0
  %775 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %774, i64 1, 4, 1
  br label %776

776:                                              ; preds = %789, %759
  %777 = phi i64 [ %790, %789 ], [ 0, %759 ]
  %778 = icmp slt i64 %777, 4096
  br i1 %778, label %779, label %791

779:                                              ; preds = %776
  br label %780

780:                                              ; preds = %783, %779
  %781 = phi i64 [ %788, %783 ], [ 0, %779 ]
  %782 = icmp slt i64 %781, 120
  br i1 %782, label %783, label %789

783:                                              ; preds = %780
  %784 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %775, 1
  %785 = mul nuw nsw i64 %777, 120
  %786 = add nuw nsw i64 %785, %781
  %787 = getelementptr inbounds nuw float, ptr %784, i64 %786
  store float 0.000000e+00, ptr %787, align 4
  %788 = add i64 %781, 1
  br label %780

789:                                              ; preds = %780
  %790 = add i64 %777, 1
  br label %776

791:                                              ; preds = %776
  br label %792

792:                                              ; preds = %893, %791
  %793 = phi i64 [ %894, %893 ], [ 0, %791 ]
  %794 = icmp slt i64 %793, 4096
  br i1 %794, label %795, label %895

795:                                              ; preds = %792
  br label %796

796:                                              ; preds = %891, %795
  %797 = phi i64 [ %892, %891 ], [ 0, %795 ]
  %798 = icmp slt i64 %797, 120
  br i1 %798, label %799, label %893

799:                                              ; preds = %796
  br label %800

800:                                              ; preds = %889, %799
  %801 = phi i64 [ %890, %889 ], [ 0, %799 ]
  %802 = icmp slt i64 %801, 400
  br i1 %802, label %803, label %891

803:                                              ; preds = %800
  %804 = mul nsw i64 %797, -1
  %805 = add i64 %804, 120
  %806 = call i64 @llvm.smin.i64(i64 %805, i64 32)
  %807 = mul nsw i64 %801, -1
  %808 = add i64 %807, 400
  %809 = call i64 @llvm.smin.i64(i64 %808, i64 32)
  %810 = mul nsw i64 %793, 400
  %811 = add i64 %810, %801
  %812 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 0
  %813 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 1
  %814 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %812, 0
  %815 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %814, ptr %813, 1
  %816 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %815, i64 %811, 2
  %817 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %816, i64 32, 3, 0
  %818 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %817, i64 400, 4, 0
  %819 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %818, i64 %809, 3, 1
  %820 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %819, i64 1, 4, 1
  %821 = mul nsw i64 %801, 120
  %822 = add i64 %821, %797
  %823 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 0
  %824 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 1
  %825 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %823, 0
  %826 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %825, ptr %824, 1
  %827 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %826, i64 %822, 2
  %828 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %827, i64 %809, 3, 0
  %829 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %828, i64 120, 4, 0
  %830 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %829, i64 %806, 3, 1
  %831 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %830, i64 1, 4, 1
  %832 = mul nsw i64 %793, 120
  %833 = add i64 %832, %797
  %834 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %775, 0
  %835 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %775, 1
  %836 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %834, 0
  %837 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %836, ptr %835, 1
  %838 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %837, i64 %833, 2
  %839 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %838, i64 32, 3, 0
  %840 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %839, i64 120, 4, 0
  %841 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %840, i64 %806, 3, 1
  %842 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %841, i64 1, 4, 1
  br label %843

843:                                              ; preds = %887, %803
  %844 = phi i64 [ %888, %887 ], [ 0, %803 ]
  %845 = icmp slt i64 %844, 32
  br i1 %845, label %846, label %889

846:                                              ; preds = %843
  br label %847

847:                                              ; preds = %885, %846
  %848 = phi i64 [ %886, %885 ], [ 0, %846 ]
  %849 = icmp slt i64 %848, %806
  br i1 %849, label %850, label %887

850:                                              ; preds = %847
  br label %851

851:                                              ; preds = %854, %850
  %852 = phi i64 [ %884, %854 ], [ 0, %850 ]
  %853 = icmp slt i64 %852, %809
  br i1 %853, label %854, label %885

854:                                              ; preds = %851
  %855 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %820, 1
  %856 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %820, 2
  %857 = getelementptr float, ptr %855, i64 %856
  %858 = mul nuw nsw i64 %844, 400
  %859 = add nuw nsw i64 %858, %852
  %860 = getelementptr inbounds nuw float, ptr %857, i64 %859
  %861 = load float, ptr %860, align 4
  %862 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %831, 1
  %863 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %831, 2
  %864 = getelementptr float, ptr %862, i64 %863
  %865 = mul nuw nsw i64 %852, 120
  %866 = add nuw nsw i64 %865, %848
  %867 = getelementptr inbounds nuw float, ptr %864, i64 %866
  %868 = load float, ptr %867, align 4
  %869 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %842, 1
  %870 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %842, 2
  %871 = getelementptr float, ptr %869, i64 %870
  %872 = mul nuw nsw i64 %844, 120
  %873 = add nuw nsw i64 %872, %848
  %874 = getelementptr inbounds nuw float, ptr %871, i64 %873
  %875 = load float, ptr %874, align 4
  %876 = fmul float %861, %868
  %877 = fadd float %875, %876
  %878 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %842, 1
  %879 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %842, 2
  %880 = getelementptr float, ptr %878, i64 %879
  %881 = mul nuw nsw i64 %844, 120
  %882 = add nuw nsw i64 %881, %848
  %883 = getelementptr inbounds nuw float, ptr %880, i64 %882
  store float %877, ptr %883, align 4
  %884 = add i64 %852, 1
  br label %851

885:                                              ; preds = %851
  %886 = add i64 %848, 1
  br label %847

887:                                              ; preds = %847
  %888 = add i64 %844, 1
  br label %843

889:                                              ; preds = %843
  %890 = add i64 %801, 32
  br label %800

891:                                              ; preds = %800
  %892 = add i64 %797, 32
  br label %796

893:                                              ; preds = %796
  %894 = add i64 %793, 32
  br label %792

895:                                              ; preds = %792
  br label %896

896:                                              ; preds = %918, %895
  %897 = phi i64 [ %919, %918 ], [ 0, %895 ]
  %898 = icmp slt i64 %897, 4096
  br i1 %898, label %899, label %920

899:                                              ; preds = %896
  br label %900

900:                                              ; preds = %903, %899
  %901 = phi i64 [ %917, %903 ], [ 0, %899 ]
  %902 = icmp slt i64 %901, 120
  br i1 %902, label %903, label %918

903:                                              ; preds = %900
  %904 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %775, 1
  %905 = mul nuw nsw i64 %897, 120
  %906 = add nuw nsw i64 %905, %901
  %907 = getelementptr inbounds nuw float, ptr %904, i64 %906
  %908 = load float, ptr %907, align 4
  %909 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, 1
  %910 = getelementptr inbounds nuw float, ptr %909, i64 %901
  %911 = load float, ptr %910, align 4
  %912 = fadd float %908, %911
  %913 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 1
  %914 = mul nuw nsw i64 %897, 120
  %915 = add nuw nsw i64 %914, %901
  %916 = getelementptr inbounds nuw float, ptr %913, i64 %915
  store float %912, ptr %916, align 4
  %917 = add i64 %901, 1
  br label %900

918:                                              ; preds = %900
  %919 = add i64 %897, 1
  br label %896

920:                                              ; preds = %896
  br label %921

921:                                              ; preds = %941, %920
  %922 = phi i64 [ %942, %941 ], [ 0, %920 ]
  %923 = icmp slt i64 %922, 4096
  br i1 %923, label %924, label %943

924:                                              ; preds = %921
  br label %925

925:                                              ; preds = %928, %924
  %926 = phi i64 [ %940, %928 ], [ 0, %924 ]
  %927 = icmp slt i64 %926, 120
  br i1 %927, label %928, label %941

928:                                              ; preds = %925
  %929 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 1
  %930 = mul nuw nsw i64 %922, 120
  %931 = add nuw nsw i64 %930, %926
  %932 = getelementptr inbounds nuw float, ptr %929, i64 %931
  %933 = load float, ptr %932, align 4
  %934 = fcmp ugt float %933, 0.000000e+00
  %935 = select i1 %934, float %933, float 0.000000e+00
  %936 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 1
  %937 = mul nuw nsw i64 %922, 120
  %938 = add nuw nsw i64 %937, %926
  %939 = getelementptr inbounds nuw float, ptr %936, i64 %938
  store float %935, ptr %939, align 4
  %940 = add i64 %926, 1
  br label %925

941:                                              ; preds = %925
  %942 = add i64 %922, 1
  br label %921

943:                                              ; preds = %921
  %944 = call ptr @aligned_alloc(i64 64, i64 40320)
  %945 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %944, 0
  %946 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %945, ptr %944, 1
  %947 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %946, i64 0, 2
  %948 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %947, i64 120, 3, 0
  %949 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %948, i64 84, 3, 1
  %950 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %949, i64 84, 4, 0
  %951 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %950, i64 1, 4, 1
  br label %952

952:                                              ; preds = %970, %943
  %953 = phi i64 [ %971, %970 ], [ 0, %943 ]
  %954 = icmp slt i64 %953, 120
  br i1 %954, label %955, label %972

955:                                              ; preds = %952
  br label %956

956:                                              ; preds = %959, %955
  %957 = phi i64 [ %969, %959 ], [ 0, %955 ]
  %958 = icmp slt i64 %957, 84
  br i1 %958, label %959, label %970

959:                                              ; preds = %956
  %960 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %103, 1
  %961 = mul nuw nsw i64 %957, 120
  %962 = add nuw nsw i64 %961, %953
  %963 = getelementptr inbounds nuw float, ptr %960, i64 %962
  %964 = load float, ptr %963, align 4
  %965 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %951, 1
  %966 = mul nuw nsw i64 %953, 84
  %967 = add nuw nsw i64 %966, %957
  %968 = getelementptr inbounds nuw float, ptr %965, i64 %967
  store float %964, ptr %968, align 4
  %969 = add i64 %957, 1
  br label %956

970:                                              ; preds = %956
  %971 = add i64 %953, 1
  br label %952

972:                                              ; preds = %952
  %973 = call ptr @aligned_alloc(i64 64, i64 1376256)
  %974 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %973, 0
  %975 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %974, ptr %973, 1
  %976 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %975, i64 0, 2
  %977 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %976, i64 4096, 3, 0
  %978 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %977, i64 84, 3, 1
  %979 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %978, i64 84, 4, 0
  %980 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %979, i64 1, 4, 1
  %981 = call ptr @aligned_alloc(i64 64, i64 1376256)
  %982 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %981, 0
  %983 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %982, ptr %981, 1
  %984 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %983, i64 0, 2
  %985 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %984, i64 4096, 3, 0
  %986 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %985, i64 84, 3, 1
  %987 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %986, i64 84, 4, 0
  %988 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %987, i64 1, 4, 1
  br label %989

989:                                              ; preds = %1002, %972
  %990 = phi i64 [ %1003, %1002 ], [ 0, %972 ]
  %991 = icmp slt i64 %990, 4096
  br i1 %991, label %992, label %1004

992:                                              ; preds = %989
  br label %993

993:                                              ; preds = %996, %992
  %994 = phi i64 [ %1001, %996 ], [ 0, %992 ]
  %995 = icmp slt i64 %994, 84
  br i1 %995, label %996, label %1002

996:                                              ; preds = %993
  %997 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %988, 1
  %998 = mul nuw nsw i64 %990, 84
  %999 = add nuw nsw i64 %998, %994
  %1000 = getelementptr inbounds nuw float, ptr %997, i64 %999
  store float 0.000000e+00, ptr %1000, align 4
  %1001 = add i64 %994, 1
  br label %993

1002:                                             ; preds = %993
  %1003 = add i64 %990, 1
  br label %989

1004:                                             ; preds = %989
  br label %1005

1005:                                             ; preds = %1106, %1004
  %1006 = phi i64 [ %1107, %1106 ], [ 0, %1004 ]
  %1007 = icmp slt i64 %1006, 4096
  br i1 %1007, label %1008, label %1108

1008:                                             ; preds = %1005
  br label %1009

1009:                                             ; preds = %1104, %1008
  %1010 = phi i64 [ %1105, %1104 ], [ 0, %1008 ]
  %1011 = icmp slt i64 %1010, 84
  br i1 %1011, label %1012, label %1106

1012:                                             ; preds = %1009
  br label %1013

1013:                                             ; preds = %1102, %1012
  %1014 = phi i64 [ %1103, %1102 ], [ 0, %1012 ]
  %1015 = icmp slt i64 %1014, 120
  br i1 %1015, label %1016, label %1104

1016:                                             ; preds = %1013
  %1017 = mul nsw i64 %1010, -1
  %1018 = add i64 %1017, 84
  %1019 = call i64 @llvm.smin.i64(i64 %1018, i64 32)
  %1020 = mul nsw i64 %1014, -1
  %1021 = add i64 %1020, 120
  %1022 = call i64 @llvm.smin.i64(i64 %1021, i64 32)
  %1023 = mul nsw i64 %1006, 120
  %1024 = add i64 %1023, %1014
  %1025 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 0
  %1026 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 1
  %1027 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1025, 0
  %1028 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1027, ptr %1026, 1
  %1029 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1028, i64 %1024, 2
  %1030 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1029, i64 32, 3, 0
  %1031 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1030, i64 120, 4, 0
  %1032 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1031, i64 %1022, 3, 1
  %1033 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1032, i64 1, 4, 1
  %1034 = mul nsw i64 %1014, 84
  %1035 = add i64 %1034, %1010
  %1036 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %951, 0
  %1037 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %951, 1
  %1038 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1036, 0
  %1039 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1038, ptr %1037, 1
  %1040 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1039, i64 %1035, 2
  %1041 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1040, i64 %1022, 3, 0
  %1042 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1041, i64 84, 4, 0
  %1043 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1042, i64 %1019, 3, 1
  %1044 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1043, i64 1, 4, 1
  %1045 = mul nsw i64 %1006, 84
  %1046 = add i64 %1045, %1010
  %1047 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %988, 0
  %1048 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %988, 1
  %1049 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1047, 0
  %1050 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1049, ptr %1048, 1
  %1051 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1050, i64 %1046, 2
  %1052 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1051, i64 32, 3, 0
  %1053 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1052, i64 84, 4, 0
  %1054 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1053, i64 %1019, 3, 1
  %1055 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1054, i64 1, 4, 1
  br label %1056

1056:                                             ; preds = %1100, %1016
  %1057 = phi i64 [ %1101, %1100 ], [ 0, %1016 ]
  %1058 = icmp slt i64 %1057, 32
  br i1 %1058, label %1059, label %1102

1059:                                             ; preds = %1056
  br label %1060

1060:                                             ; preds = %1098, %1059
  %1061 = phi i64 [ %1099, %1098 ], [ 0, %1059 ]
  %1062 = icmp slt i64 %1061, %1019
  br i1 %1062, label %1063, label %1100

1063:                                             ; preds = %1060
  br label %1064

1064:                                             ; preds = %1067, %1063
  %1065 = phi i64 [ %1097, %1067 ], [ 0, %1063 ]
  %1066 = icmp slt i64 %1065, %1022
  br i1 %1066, label %1067, label %1098

1067:                                             ; preds = %1064
  %1068 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1033, 1
  %1069 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1033, 2
  %1070 = getelementptr float, ptr %1068, i64 %1069
  %1071 = mul nuw nsw i64 %1057, 120
  %1072 = add nuw nsw i64 %1071, %1065
  %1073 = getelementptr inbounds nuw float, ptr %1070, i64 %1072
  %1074 = load float, ptr %1073, align 4
  %1075 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1044, 1
  %1076 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1044, 2
  %1077 = getelementptr float, ptr %1075, i64 %1076
  %1078 = mul nuw nsw i64 %1065, 84
  %1079 = add nuw nsw i64 %1078, %1061
  %1080 = getelementptr inbounds nuw float, ptr %1077, i64 %1079
  %1081 = load float, ptr %1080, align 4
  %1082 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1055, 1
  %1083 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1055, 2
  %1084 = getelementptr float, ptr %1082, i64 %1083
  %1085 = mul nuw nsw i64 %1057, 84
  %1086 = add nuw nsw i64 %1085, %1061
  %1087 = getelementptr inbounds nuw float, ptr %1084, i64 %1086
  %1088 = load float, ptr %1087, align 4
  %1089 = fmul float %1074, %1081
  %1090 = fadd float %1088, %1089
  %1091 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1055, 1
  %1092 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1055, 2
  %1093 = getelementptr float, ptr %1091, i64 %1092
  %1094 = mul nuw nsw i64 %1057, 84
  %1095 = add nuw nsw i64 %1094, %1061
  %1096 = getelementptr inbounds nuw float, ptr %1093, i64 %1095
  store float %1090, ptr %1096, align 4
  %1097 = add i64 %1065, 1
  br label %1064

1098:                                             ; preds = %1064
  %1099 = add i64 %1061, 1
  br label %1060

1100:                                             ; preds = %1060
  %1101 = add i64 %1057, 1
  br label %1056

1102:                                             ; preds = %1056
  %1103 = add i64 %1014, 32
  br label %1013

1104:                                             ; preds = %1013
  %1105 = add i64 %1010, 32
  br label %1009

1106:                                             ; preds = %1009
  %1107 = add i64 %1006, 32
  br label %1005

1108:                                             ; preds = %1005
  br label %1109

1109:                                             ; preds = %1131, %1108
  %1110 = phi i64 [ %1132, %1131 ], [ 0, %1108 ]
  %1111 = icmp slt i64 %1110, 4096
  br i1 %1111, label %1112, label %1133

1112:                                             ; preds = %1109
  br label %1113

1113:                                             ; preds = %1116, %1112
  %1114 = phi i64 [ %1130, %1116 ], [ 0, %1112 ]
  %1115 = icmp slt i64 %1114, 84
  br i1 %1115, label %1116, label %1131

1116:                                             ; preds = %1113
  %1117 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %988, 1
  %1118 = mul nuw nsw i64 %1110, 84
  %1119 = add nuw nsw i64 %1118, %1114
  %1120 = getelementptr inbounds nuw float, ptr %1117, i64 %1119
  %1121 = load float, ptr %1120, align 4
  %1122 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, 1
  %1123 = getelementptr inbounds nuw float, ptr %1122, i64 %1114
  %1124 = load float, ptr %1123, align 4
  %1125 = fadd float %1121, %1124
  %1126 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 1
  %1127 = mul nuw nsw i64 %1110, 84
  %1128 = add nuw nsw i64 %1127, %1114
  %1129 = getelementptr inbounds nuw float, ptr %1126, i64 %1128
  store float %1125, ptr %1129, align 4
  %1130 = add i64 %1114, 1
  br label %1113

1131:                                             ; preds = %1113
  %1132 = add i64 %1110, 1
  br label %1109

1133:                                             ; preds = %1109
  br label %1134

1134:                                             ; preds = %1154, %1133
  %1135 = phi i64 [ %1155, %1154 ], [ 0, %1133 ]
  %1136 = icmp slt i64 %1135, 4096
  br i1 %1136, label %1137, label %1156

1137:                                             ; preds = %1134
  br label %1138

1138:                                             ; preds = %1141, %1137
  %1139 = phi i64 [ %1153, %1141 ], [ 0, %1137 ]
  %1140 = icmp slt i64 %1139, 84
  br i1 %1140, label %1141, label %1154

1141:                                             ; preds = %1138
  %1142 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 1
  %1143 = mul nuw nsw i64 %1135, 84
  %1144 = add nuw nsw i64 %1143, %1139
  %1145 = getelementptr inbounds nuw float, ptr %1142, i64 %1144
  %1146 = load float, ptr %1145, align 4
  %1147 = fcmp ugt float %1146, 0.000000e+00
  %1148 = select i1 %1147, float %1146, float 0.000000e+00
  %1149 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 1
  %1150 = mul nuw nsw i64 %1135, 84
  %1151 = add nuw nsw i64 %1150, %1139
  %1152 = getelementptr inbounds nuw float, ptr %1149, i64 %1151
  store float %1148, ptr %1152, align 4
  %1153 = add i64 %1139, 1
  br label %1138

1154:                                             ; preds = %1138
  %1155 = add i64 %1135, 1
  br label %1134

1156:                                             ; preds = %1134
  %1157 = call ptr @aligned_alloc(i64 64, i64 6720)
  %1158 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1157, 0
  %1159 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1158, ptr %1157, 1
  %1160 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1159, i64 0, 2
  %1161 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1160, i64 84, 3, 0
  %1162 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1161, i64 20, 3, 1
  %1163 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1162, i64 20, 4, 0
  %1164 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1163, i64 1, 4, 1
  br label %1165

1165:                                             ; preds = %1183, %1156
  %1166 = phi i64 [ %1184, %1183 ], [ 0, %1156 ]
  %1167 = icmp slt i64 %1166, 84
  br i1 %1167, label %1168, label %1185

1168:                                             ; preds = %1165
  br label %1169

1169:                                             ; preds = %1172, %1168
  %1170 = phi i64 [ %1182, %1172 ], [ 0, %1168 ]
  %1171 = icmp slt i64 %1170, 20
  br i1 %1171, label %1172, label %1183

1172:                                             ; preds = %1169
  %1173 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %91, 1
  %1174 = mul nuw nsw i64 %1170, 84
  %1175 = add nuw nsw i64 %1174, %1166
  %1176 = getelementptr inbounds nuw float, ptr %1173, i64 %1175
  %1177 = load float, ptr %1176, align 4
  %1178 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1164, 1
  %1179 = mul nuw nsw i64 %1166, 20
  %1180 = add nuw nsw i64 %1179, %1170
  %1181 = getelementptr inbounds nuw float, ptr %1178, i64 %1180
  store float %1177, ptr %1181, align 4
  %1182 = add i64 %1170, 1
  br label %1169

1183:                                             ; preds = %1169
  %1184 = add i64 %1166, 1
  br label %1165

1185:                                             ; preds = %1165
  %1186 = call ptr @aligned_alloc(i64 64, i64 327680)
  %1187 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1186, 0
  %1188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1187, ptr %1186, 1
  %1189 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1188, i64 0, 2
  %1190 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1189, i64 4096, 3, 0
  %1191 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1190, i64 20, 3, 1
  %1192 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1191, i64 20, 4, 0
  %1193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1192, i64 1, 4, 1
  %1194 = call ptr @aligned_alloc(i64 64, i64 327680)
  %1195 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1194, 0
  %1196 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1195, ptr %1194, 1
  %1197 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1196, i64 0, 2
  %1198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1197, i64 4096, 3, 0
  %1199 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1198, i64 20, 3, 1
  %1200 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1199, i64 20, 4, 0
  %1201 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1200, i64 1, 4, 1
  br label %1202

1202:                                             ; preds = %1215, %1185
  %1203 = phi i64 [ %1216, %1215 ], [ 0, %1185 ]
  %1204 = icmp slt i64 %1203, 4096
  br i1 %1204, label %1205, label %1217

1205:                                             ; preds = %1202
  br label %1206

1206:                                             ; preds = %1209, %1205
  %1207 = phi i64 [ %1214, %1209 ], [ 0, %1205 ]
  %1208 = icmp slt i64 %1207, 20
  br i1 %1208, label %1209, label %1215

1209:                                             ; preds = %1206
  %1210 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1201, 1
  %1211 = mul nuw nsw i64 %1203, 20
  %1212 = add nuw nsw i64 %1211, %1207
  %1213 = getelementptr inbounds nuw float, ptr %1210, i64 %1212
  store float 0.000000e+00, ptr %1213, align 4
  %1214 = add i64 %1207, 1
  br label %1206

1215:                                             ; preds = %1206
  %1216 = add i64 %1203, 1
  br label %1202

1217:                                             ; preds = %1202
  br label %1218

1218:                                             ; preds = %1308, %1217
  %1219 = phi i64 [ %1309, %1308 ], [ 0, %1217 ]
  %1220 = icmp slt i64 %1219, 4096
  br i1 %1220, label %1221, label %1310

1221:                                             ; preds = %1218
  br label %1222

1222:                                             ; preds = %1306, %1221
  %1223 = phi i64 [ %1307, %1306 ], [ 0, %1221 ]
  %1224 = icmp slt i64 %1223, 84
  br i1 %1224, label %1225, label %1308

1225:                                             ; preds = %1222
  %1226 = mul nsw i64 %1223, -1
  %1227 = add i64 %1226, 84
  %1228 = call i64 @llvm.smin.i64(i64 %1227, i64 32)
  %1229 = mul nsw i64 %1219, 84
  %1230 = add i64 %1229, %1223
  %1231 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 0
  %1232 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 1
  %1233 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1231, 0
  %1234 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1233, ptr %1232, 1
  %1235 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1234, i64 %1230, 2
  %1236 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1235, i64 32, 3, 0
  %1237 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1236, i64 84, 4, 0
  %1238 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1237, i64 %1228, 3, 1
  %1239 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1238, i64 1, 4, 1
  %1240 = mul nsw i64 %1223, 20
  %1241 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1164, 0
  %1242 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1164, 1
  %1243 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1241, 0
  %1244 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1243, ptr %1242, 1
  %1245 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1244, i64 %1240, 2
  %1246 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1245, i64 %1228, 3, 0
  %1247 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1246, i64 20, 4, 0
  %1248 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1247, i64 20, 3, 1
  %1249 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1248, i64 1, 4, 1
  %1250 = mul nsw i64 %1219, 20
  %1251 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1201, 0
  %1252 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1201, 1
  %1253 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1251, 0
  %1254 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1253, ptr %1252, 1
  %1255 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1254, i64 %1250, 2
  %1256 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1255, i64 32, 3, 0
  %1257 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1256, i64 20, 4, 0
  %1258 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1257, i64 20, 3, 1
  %1259 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1258, i64 1, 4, 1
  br label %1260

1260:                                             ; preds = %1304, %1225
  %1261 = phi i64 [ %1305, %1304 ], [ 0, %1225 ]
  %1262 = icmp slt i64 %1261, 32
  br i1 %1262, label %1263, label %1306

1263:                                             ; preds = %1260
  br label %1264

1264:                                             ; preds = %1302, %1263
  %1265 = phi i64 [ %1303, %1302 ], [ 0, %1263 ]
  %1266 = icmp slt i64 %1265, 20
  br i1 %1266, label %1267, label %1304

1267:                                             ; preds = %1264
  br label %1268

1268:                                             ; preds = %1271, %1267
  %1269 = phi i64 [ %1301, %1271 ], [ 0, %1267 ]
  %1270 = icmp slt i64 %1269, %1228
  br i1 %1270, label %1271, label %1302

1271:                                             ; preds = %1268
  %1272 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1239, 1
  %1273 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1239, 2
  %1274 = getelementptr float, ptr %1272, i64 %1273
  %1275 = mul nuw nsw i64 %1261, 84
  %1276 = add nuw nsw i64 %1275, %1269
  %1277 = getelementptr inbounds nuw float, ptr %1274, i64 %1276
  %1278 = load float, ptr %1277, align 4
  %1279 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1249, 1
  %1280 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1249, 2
  %1281 = getelementptr float, ptr %1279, i64 %1280
  %1282 = mul nuw nsw i64 %1269, 20
  %1283 = add nuw nsw i64 %1282, %1265
  %1284 = getelementptr inbounds nuw float, ptr %1281, i64 %1283
  %1285 = load float, ptr %1284, align 4
  %1286 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1259, 1
  %1287 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1259, 2
  %1288 = getelementptr float, ptr %1286, i64 %1287
  %1289 = mul nuw nsw i64 %1261, 20
  %1290 = add nuw nsw i64 %1289, %1265
  %1291 = getelementptr inbounds nuw float, ptr %1288, i64 %1290
  %1292 = load float, ptr %1291, align 4
  %1293 = fmul float %1278, %1285
  %1294 = fadd float %1292, %1293
  %1295 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1259, 1
  %1296 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1259, 2
  %1297 = getelementptr float, ptr %1295, i64 %1296
  %1298 = mul nuw nsw i64 %1261, 20
  %1299 = add nuw nsw i64 %1298, %1265
  %1300 = getelementptr inbounds nuw float, ptr %1297, i64 %1299
  store float %1294, ptr %1300, align 4
  %1301 = add i64 %1269, 1
  br label %1268

1302:                                             ; preds = %1268
  %1303 = add i64 %1265, 1
  br label %1264

1304:                                             ; preds = %1264
  %1305 = add i64 %1261, 1
  br label %1260

1306:                                             ; preds = %1260
  %1307 = add i64 %1223, 32
  br label %1222

1308:                                             ; preds = %1222
  %1309 = add i64 %1219, 32
  br label %1218

1310:                                             ; preds = %1218
  br label %1311

1311:                                             ; preds = %1333, %1310
  %1312 = phi i64 [ %1334, %1333 ], [ 0, %1310 ]
  %1313 = icmp slt i64 %1312, 4096
  br i1 %1313, label %1314, label %1335

1314:                                             ; preds = %1311
  br label %1315

1315:                                             ; preds = %1318, %1314
  %1316 = phi i64 [ %1332, %1318 ], [ 0, %1314 ]
  %1317 = icmp slt i64 %1316, 20
  br i1 %1317, label %1318, label %1333

1318:                                             ; preds = %1315
  %1319 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1201, 1
  %1320 = mul nuw nsw i64 %1312, 20
  %1321 = add nuw nsw i64 %1320, %1316
  %1322 = getelementptr inbounds nuw float, ptr %1319, i64 %1321
  %1323 = load float, ptr %1322, align 4
  %1324 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %84, 1
  %1325 = getelementptr inbounds nuw float, ptr %1324, i64 %1316
  %1326 = load float, ptr %1325, align 4
  %1327 = fadd float %1323, %1326
  %1328 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1193, 1
  %1329 = mul nuw nsw i64 %1312, 20
  %1330 = add nuw nsw i64 %1329, %1316
  %1331 = getelementptr inbounds nuw float, ptr %1328, i64 %1330
  store float %1327, ptr %1331, align 4
  %1332 = add i64 %1316, 1
  br label %1315

1333:                                             ; preds = %1315
  %1334 = add i64 %1312, 1
  br label %1311

1335:                                             ; preds = %1311
  %1336 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, 0
  call void @free(ptr %1336)
  %1337 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %341, 0
  call void @free(ptr %1337)
  %1338 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %381, 0
  call void @free(ptr %1338)
  %1339 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %460, 0
  call void @free(ptr %1339)
  %1340 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, 0
  call void @free(ptr %1340)
  %1341 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %738, 0
  call void @free(ptr %1341)
  %1342 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %767, 0
  call void @free(ptr %1342)
  %1343 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %775, 0
  call void @free(ptr %1343)
  %1344 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %951, 0
  call void @free(ptr %1344)
  %1345 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %980, 0
  call void @free(ptr %1345)
  %1346 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %988, 0
  call void @free(ptr %1346)
  %1347 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1164, 0
  call void @free(ptr %1347)
  %1348 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1201, 0
  call void @free(ptr %1348)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %1193
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximum.f32(float, float) #0

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
