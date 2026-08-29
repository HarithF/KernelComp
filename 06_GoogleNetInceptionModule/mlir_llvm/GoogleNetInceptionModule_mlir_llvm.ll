; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @GoogleNetInceptionModule(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, ptr %54, ptr %55, i64 %56, i64 %57, i64 %58, ptr %59, ptr %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, ptr %70, ptr %71, i64 %72, i64 %73, i64 %74, ptr %75, ptr %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, ptr %86, ptr %87, i64 %88, i64 %89, i64 %90, ptr %91, ptr %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, ptr %102, ptr %103, i64 %104, i64 %105, i64 %106) {
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %102, 0
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, ptr %103, 1
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, i64 %104, 2
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, i64 %105, 3, 0
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, i64 %106, 4, 0
  %113 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %91, 0
  %114 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %113, ptr %92, 1
  %115 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %114, i64 %93, 2
  %116 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %115, i64 %94, 3, 0
  %117 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %116, i64 %98, 4, 0
  %118 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %117, i64 %95, 3, 1
  %119 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %118, i64 %99, 4, 1
  %120 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %119, i64 %96, 3, 2
  %121 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %120, i64 %100, 4, 2
  %122 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %121, i64 %97, 3, 3
  %123 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %122, i64 %101, 4, 3
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %86, 0
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, ptr %87, 1
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 %88, 2
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, i64 %89, 3, 0
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, i64 %90, 4, 0
  %129 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %75, 0
  %130 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %129, ptr %76, 1
  %131 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, i64 %77, 2
  %132 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %131, i64 %78, 3, 0
  %133 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %132, i64 %82, 4, 0
  %134 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %133, i64 %79, 3, 1
  %135 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %134, i64 %83, 4, 1
  %136 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %135, i64 %80, 3, 2
  %137 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %136, i64 %84, 4, 2
  %138 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %137, i64 %81, 3, 3
  %139 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %138, i64 %85, 4, 3
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %70, 0
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, ptr %71, 1
  %142 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, i64 %72, 2
  %143 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %142, i64 %73, 3, 0
  %144 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %143, i64 %74, 4, 0
  %145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %59, 0
  %146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %145, ptr %60, 1
  %147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %146, i64 %61, 2
  %148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %147, i64 %62, 3, 0
  %149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %148, i64 %66, 4, 0
  %150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %149, i64 %63, 3, 1
  %151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %150, i64 %67, 4, 1
  %152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %151, i64 %64, 3, 2
  %153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %152, i64 %68, 4, 2
  %154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %153, i64 %65, 3, 3
  %155 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %154, i64 %69, 4, 3
  %156 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %54, 0
  %157 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %156, ptr %55, 1
  %158 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, i64 %56, 2
  %159 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %158, i64 %57, 3, 0
  %160 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, i64 %58, 4, 0
  %161 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %43, 0
  %162 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %161, ptr %44, 1
  %163 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %162, i64 %45, 2
  %164 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %163, i64 %46, 3, 0
  %165 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %164, i64 %50, 4, 0
  %166 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %165, i64 %47, 3, 1
  %167 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %166, i64 %51, 4, 1
  %168 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %167, i64 %48, 3, 2
  %169 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %168, i64 %52, 4, 2
  %170 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %169, i64 %49, 3, 3
  %171 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %170, i64 %53, 4, 3
  %172 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %38, 0
  %173 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %172, ptr %39, 1
  %174 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %173, i64 %40, 2
  %175 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %174, i64 %41, 3, 0
  %176 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %175, i64 %42, 4, 0
  %177 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %27, 0
  %178 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %177, ptr %28, 1
  %179 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %178, i64 %29, 2
  %180 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %179, i64 %30, 3, 0
  %181 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %180, i64 %34, 4, 0
  %182 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %181, i64 %31, 3, 1
  %183 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %182, i64 %35, 4, 1
  %184 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %183, i64 %32, 3, 2
  %185 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %184, i64 %36, 4, 2
  %186 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %185, i64 %33, 3, 3
  %187 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %186, i64 %37, 4, 3
  %188 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %22, 0
  %189 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %188, ptr %23, 1
  %190 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %189, i64 %24, 2
  %191 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %190, i64 %25, 3, 0
  %192 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %191, i64 %26, 4, 0
  %193 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %11, 0
  %194 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %193, ptr %12, 1
  %195 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %194, i64 %13, 2
  %196 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %195, i64 %14, 3, 0
  %197 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %196, i64 %18, 4, 0
  %198 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %197, i64 %15, 3, 1
  %199 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %198, i64 %19, 4, 1
  %200 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %199, i64 %16, 3, 2
  %201 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %200, i64 %20, 4, 2
  %202 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %201, i64 %17, 3, 3
  %203 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %202, i64 %21, 4, 3
  %204 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %205 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %204, ptr %1, 1
  %206 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %205, i64 %2, 2
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %206, i64 %3, 3, 0
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, i64 %7, 4, 0
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 %4, 3, 1
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 %8, 4, 1
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 %5, 3, 2
  %212 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, i64 %9, 4, 2
  %213 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %212, i64 %6, 3, 3
  %214 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %213, i64 %10, 4, 3
  %215 = call ptr @aligned_alloc(i64 64, i64 385351680)
  %216 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %215, 0
  %217 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %216, ptr %215, 1
  %218 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %217, i64 0, 2
  %219 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %218, i64 10, 3, 0
  %220 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %219, i64 192, 3, 1
  %221 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %220, i64 224, 3, 2
  %222 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %221, i64 224, 3, 3
  %223 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %222, i64 9633792, 4, 0
  %224 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %223, i64 50176, 4, 1
  %225 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %224, i64 224, 4, 2
  %226 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %225, i64 1, 4, 3
  br label %227

227:                                              ; preds = %259, %107
  %228 = phi i64 [ %260, %259 ], [ 0, %107 ]
  %229 = icmp slt i64 %228, 10
  br i1 %229, label %230, label %261

230:                                              ; preds = %227
  br label %231

231:                                              ; preds = %257, %230
  %232 = phi i64 [ %258, %257 ], [ 0, %230 ]
  %233 = icmp slt i64 %232, 192
  br i1 %233, label %234, label %259

234:                                              ; preds = %231
  br label %235

235:                                              ; preds = %255, %234
  %236 = phi i64 [ %256, %255 ], [ 0, %234 ]
  %237 = icmp slt i64 %236, 224
  br i1 %237, label %238, label %257

238:                                              ; preds = %235
  br label %239

239:                                              ; preds = %242, %238
  %240 = phi i64 [ %254, %242 ], [ 0, %238 ]
  %241 = icmp slt i64 %240, 224
  br i1 %241, label %242, label %255

242:                                              ; preds = %239
  %243 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %192, 1
  %244 = getelementptr inbounds nuw float, ptr %243, i64 %232
  %245 = load float, ptr %244, align 4
  %246 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %226, 1
  %247 = mul nuw nsw i64 %228, 9633792
  %248 = mul nuw nsw i64 %232, 50176
  %249 = add nuw nsw i64 %247, %248
  %250 = mul nuw nsw i64 %236, 224
  %251 = add nuw nsw i64 %249, %250
  %252 = add nuw nsw i64 %251, %240
  %253 = getelementptr inbounds nuw float, ptr %246, i64 %252
  store float %245, ptr %253, align 4
  %254 = add i64 %240, 1
  br label %239

255:                                              ; preds = %239
  %256 = add i64 %236, 1
  br label %235

257:                                              ; preds = %235
  %258 = add i64 %232, 1
  br label %231

259:                                              ; preds = %231
  %260 = add i64 %228, 1
  br label %227

261:                                              ; preds = %227
  br label %262

262:                                              ; preds = %338, %261
  %263 = phi i64 [ %339, %338 ], [ 0, %261 ]
  %264 = icmp slt i64 %263, 10
  br i1 %264, label %265, label %340

265:                                              ; preds = %262
  br label %266

266:                                              ; preds = %336, %265
  %267 = phi i64 [ %337, %336 ], [ 0, %265 ]
  %268 = icmp slt i64 %267, 192
  br i1 %268, label %269, label %338

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %334, %269
  %271 = phi i64 [ %335, %334 ], [ 0, %269 ]
  %272 = icmp slt i64 %271, 224
  br i1 %272, label %273, label %336

273:                                              ; preds = %270
  br label %274

274:                                              ; preds = %332, %273
  %275 = phi i64 [ %333, %332 ], [ 0, %273 ]
  %276 = icmp slt i64 %275, 480
  br i1 %276, label %277, label %334

277:                                              ; preds = %274
  br label %278

278:                                              ; preds = %330, %277
  %279 = phi i64 [ %331, %330 ], [ 0, %277 ]
  %280 = icmp slt i64 %279, 1
  br i1 %280, label %281, label %332

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %328, %281
  %283 = phi i64 [ %329, %328 ], [ 0, %281 ]
  %284 = icmp slt i64 %283, 1
  br i1 %284, label %285, label %330

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %289, %285
  %287 = phi i64 [ %327, %289 ], [ 0, %285 ]
  %288 = icmp slt i64 %287, 224
  br i1 %288, label %289, label %328

289:                                              ; preds = %286
  %290 = add i64 %271, %279
  %291 = add i64 %283, %287
  %292 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, 1
  %293 = mul nuw nsw i64 %263, 24084480
  %294 = mul nuw nsw i64 %275, 50176
  %295 = add nuw nsw i64 %293, %294
  %296 = mul nuw nsw i64 %290, 224
  %297 = add nuw nsw i64 %295, %296
  %298 = add nuw nsw i64 %297, %291
  %299 = getelementptr inbounds nuw float, ptr %292, i64 %298
  %300 = load float, ptr %299, align 4
  %301 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %203, 1
  %302 = mul nuw nsw i64 %267, 480
  %303 = add nuw nsw i64 %302, %275
  %304 = add nuw nsw i64 %303, %279
  %305 = add nuw nsw i64 %304, %283
  %306 = getelementptr inbounds nuw float, ptr %301, i64 %305
  %307 = load float, ptr %306, align 4
  %308 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %226, 1
  %309 = mul nuw nsw i64 %263, 9633792
  %310 = mul nuw nsw i64 %267, 50176
  %311 = add nuw nsw i64 %309, %310
  %312 = mul nuw nsw i64 %271, 224
  %313 = add nuw nsw i64 %311, %312
  %314 = add nuw nsw i64 %313, %287
  %315 = getelementptr inbounds nuw float, ptr %308, i64 %314
  %316 = load float, ptr %315, align 4
  %317 = fmul float %300, %307
  %318 = fadd float %316, %317
  %319 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %226, 1
  %320 = mul nuw nsw i64 %263, 9633792
  %321 = mul nuw nsw i64 %267, 50176
  %322 = add nuw nsw i64 %320, %321
  %323 = mul nuw nsw i64 %271, 224
  %324 = add nuw nsw i64 %322, %323
  %325 = add nuw nsw i64 %324, %287
  %326 = getelementptr inbounds nuw float, ptr %319, i64 %325
  store float %318, ptr %326, align 4
  %327 = add i64 %287, 1
  br label %286

328:                                              ; preds = %286
  %329 = add i64 %283, 1
  br label %282

330:                                              ; preds = %282
  %331 = add i64 %279, 1
  br label %278

332:                                              ; preds = %278
  %333 = add i64 %275, 1
  br label %274

334:                                              ; preds = %274
  %335 = add i64 %271, 1
  br label %270

336:                                              ; preds = %270
  %337 = add i64 %267, 1
  br label %266

338:                                              ; preds = %266
  %339 = add i64 %263, 1
  br label %262

340:                                              ; preds = %262
  %341 = call ptr @aligned_alloc(i64 64, i64 192675840)
  %342 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %341, 0
  %343 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %342, ptr %341, 1
  %344 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %343, i64 0, 2
  %345 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %344, i64 10, 3, 0
  %346 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %345, i64 96, 3, 1
  %347 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %346, i64 224, 3, 2
  %348 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %347, i64 224, 3, 3
  %349 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %348, i64 4816896, 4, 0
  %350 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %349, i64 50176, 4, 1
  %351 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %350, i64 224, 4, 2
  %352 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %351, i64 1, 4, 3
  br label %353

353:                                              ; preds = %385, %340
  %354 = phi i64 [ %386, %385 ], [ 0, %340 ]
  %355 = icmp slt i64 %354, 10
  br i1 %355, label %356, label %387

356:                                              ; preds = %353
  br label %357

357:                                              ; preds = %383, %356
  %358 = phi i64 [ %384, %383 ], [ 0, %356 ]
  %359 = icmp slt i64 %358, 96
  br i1 %359, label %360, label %385

360:                                              ; preds = %357
  br label %361

361:                                              ; preds = %381, %360
  %362 = phi i64 [ %382, %381 ], [ 0, %360 ]
  %363 = icmp slt i64 %362, 224
  br i1 %363, label %364, label %383

364:                                              ; preds = %361
  br label %365

365:                                              ; preds = %368, %364
  %366 = phi i64 [ %380, %368 ], [ 0, %364 ]
  %367 = icmp slt i64 %366, 224
  br i1 %367, label %368, label %381

368:                                              ; preds = %365
  %369 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %176, 1
  %370 = getelementptr inbounds nuw float, ptr %369, i64 %358
  %371 = load float, ptr %370, align 4
  %372 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, 1
  %373 = mul nuw nsw i64 %354, 4816896
  %374 = mul nuw nsw i64 %358, 50176
  %375 = add nuw nsw i64 %373, %374
  %376 = mul nuw nsw i64 %362, 224
  %377 = add nuw nsw i64 %375, %376
  %378 = add nuw nsw i64 %377, %366
  %379 = getelementptr inbounds nuw float, ptr %372, i64 %378
  store float %371, ptr %379, align 4
  %380 = add i64 %366, 1
  br label %365

381:                                              ; preds = %365
  %382 = add i64 %362, 1
  br label %361

383:                                              ; preds = %361
  %384 = add i64 %358, 1
  br label %357

385:                                              ; preds = %357
  %386 = add i64 %354, 1
  br label %353

387:                                              ; preds = %353
  br label %388

388:                                              ; preds = %464, %387
  %389 = phi i64 [ %465, %464 ], [ 0, %387 ]
  %390 = icmp slt i64 %389, 10
  br i1 %390, label %391, label %466

391:                                              ; preds = %388
  br label %392

392:                                              ; preds = %462, %391
  %393 = phi i64 [ %463, %462 ], [ 0, %391 ]
  %394 = icmp slt i64 %393, 96
  br i1 %394, label %395, label %464

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %460, %395
  %397 = phi i64 [ %461, %460 ], [ 0, %395 ]
  %398 = icmp slt i64 %397, 224
  br i1 %398, label %399, label %462

399:                                              ; preds = %396
  br label %400

400:                                              ; preds = %458, %399
  %401 = phi i64 [ %459, %458 ], [ 0, %399 ]
  %402 = icmp slt i64 %401, 480
  br i1 %402, label %403, label %460

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %456, %403
  %405 = phi i64 [ %457, %456 ], [ 0, %403 ]
  %406 = icmp slt i64 %405, 1
  br i1 %406, label %407, label %458

407:                                              ; preds = %404
  br label %408

408:                                              ; preds = %454, %407
  %409 = phi i64 [ %455, %454 ], [ 0, %407 ]
  %410 = icmp slt i64 %409, 1
  br i1 %410, label %411, label %456

411:                                              ; preds = %408
  br label %412

412:                                              ; preds = %415, %411
  %413 = phi i64 [ %453, %415 ], [ 0, %411 ]
  %414 = icmp slt i64 %413, 224
  br i1 %414, label %415, label %454

415:                                              ; preds = %412
  %416 = add i64 %397, %405
  %417 = add i64 %409, %413
  %418 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, 1
  %419 = mul nuw nsw i64 %389, 24084480
  %420 = mul nuw nsw i64 %401, 50176
  %421 = add nuw nsw i64 %419, %420
  %422 = mul nuw nsw i64 %416, 224
  %423 = add nuw nsw i64 %421, %422
  %424 = add nuw nsw i64 %423, %417
  %425 = getelementptr inbounds nuw float, ptr %418, i64 %424
  %426 = load float, ptr %425, align 4
  %427 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %187, 1
  %428 = mul nuw nsw i64 %393, 480
  %429 = add nuw nsw i64 %428, %401
  %430 = add nuw nsw i64 %429, %405
  %431 = add nuw nsw i64 %430, %409
  %432 = getelementptr inbounds nuw float, ptr %427, i64 %431
  %433 = load float, ptr %432, align 4
  %434 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, 1
  %435 = mul nuw nsw i64 %389, 4816896
  %436 = mul nuw nsw i64 %393, 50176
  %437 = add nuw nsw i64 %435, %436
  %438 = mul nuw nsw i64 %397, 224
  %439 = add nuw nsw i64 %437, %438
  %440 = add nuw nsw i64 %439, %413
  %441 = getelementptr inbounds nuw float, ptr %434, i64 %440
  %442 = load float, ptr %441, align 4
  %443 = fmul float %426, %433
  %444 = fadd float %442, %443
  %445 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, 1
  %446 = mul nuw nsw i64 %389, 4816896
  %447 = mul nuw nsw i64 %393, 50176
  %448 = add nuw nsw i64 %446, %447
  %449 = mul nuw nsw i64 %397, 224
  %450 = add nuw nsw i64 %448, %449
  %451 = add nuw nsw i64 %450, %413
  %452 = getelementptr inbounds nuw float, ptr %445, i64 %451
  store float %444, ptr %452, align 4
  %453 = add i64 %413, 1
  br label %412

454:                                              ; preds = %412
  %455 = add i64 %409, 1
  br label %408

456:                                              ; preds = %408
  %457 = add i64 %405, 1
  br label %404

458:                                              ; preds = %404
  %459 = add i64 %401, 1
  br label %400

460:                                              ; preds = %400
  %461 = add i64 %397, 1
  br label %396

462:                                              ; preds = %396
  %463 = add i64 %393, 1
  br label %392

464:                                              ; preds = %392
  %465 = add i64 %389, 1
  br label %388

466:                                              ; preds = %388
  %467 = call ptr @aligned_alloc(i64 64, i64 196131840)
  %468 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %467, 0
  %469 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %468, ptr %467, 1
  %470 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %469, i64 0, 2
  %471 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %470, i64 10, 3, 0
  %472 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %471, i64 96, 3, 1
  %473 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %472, i64 226, 3, 2
  %474 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %473, i64 226, 3, 3
  %475 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %474, i64 4903296, 4, 0
  %476 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %475, i64 51076, 4, 1
  %477 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %476, i64 226, 4, 2
  %478 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %477, i64 1, 4, 3
  br label %479

479:                                              ; preds = %508, %466
  %480 = phi i64 [ %509, %508 ], [ 0, %466 ]
  %481 = icmp slt i64 %480, 10
  br i1 %481, label %482, label %510

482:                                              ; preds = %479
  br label %483

483:                                              ; preds = %506, %482
  %484 = phi i64 [ %507, %506 ], [ 0, %482 ]
  %485 = icmp slt i64 %484, 96
  br i1 %485, label %486, label %508

486:                                              ; preds = %483
  br label %487

487:                                              ; preds = %504, %486
  %488 = phi i64 [ %505, %504 ], [ 0, %486 ]
  %489 = icmp slt i64 %488, 226
  br i1 %489, label %490, label %506

490:                                              ; preds = %487
  br label %491

491:                                              ; preds = %494, %490
  %492 = phi i64 [ %503, %494 ], [ 0, %490 ]
  %493 = icmp slt i64 %492, 226
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, 1
  %496 = mul nuw nsw i64 %480, 4903296
  %497 = mul nuw nsw i64 %484, 51076
  %498 = add nuw nsw i64 %496, %497
  %499 = mul nuw nsw i64 %488, 226
  %500 = add nuw nsw i64 %498, %499
  %501 = add nuw nsw i64 %500, %492
  %502 = getelementptr inbounds nuw float, ptr %495, i64 %501
  store float 0.000000e+00, ptr %502, align 4
  %503 = add i64 %492, 1
  br label %491

504:                                              ; preds = %491
  %505 = add i64 %488, 1
  br label %487

506:                                              ; preds = %487
  %507 = add i64 %484, 1
  br label %483

508:                                              ; preds = %483
  %509 = add i64 %480, 1
  br label %479

510:                                              ; preds = %479
  %511 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, 0
  %512 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, 1
  %513 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %511, 0
  %514 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %513, ptr %512, 1
  %515 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %514, i64 227, 2
  %516 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %515, i64 10, 3, 0
  %517 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %516, i64 4903296, 4, 0
  %518 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %517, i64 96, 3, 1
  %519 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %518, i64 51076, 4, 1
  %520 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %519, i64 224, 3, 2
  %521 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %520, i64 226, 4, 2
  %522 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %521, i64 224, 3, 3
  %523 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %522, i64 1, 4, 3
  %524 = call ptr @llvm.stacksave.p0()
  %525 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, ptr %525, align 8
  %526 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %525, 1
  %527 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %523, ptr %527, align 8
  %528 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %527, 1
  %529 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %526, ptr %529, align 8
  %530 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %528, ptr %530, align 8
  call void @memrefCopy(i64 4, ptr %529, ptr %530)
  call void @llvm.stackrestore.p0(ptr %524)
  %531 = call ptr @aligned_alloc(i64 64, i64 417464320)
  %532 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %531, 0
  %533 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %532, ptr %531, 1
  %534 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %533, i64 0, 2
  %535 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %534, i64 10, 3, 0
  %536 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %535, i64 208, 3, 1
  %537 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %536, i64 224, 3, 2
  %538 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %537, i64 224, 3, 3
  %539 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %538, i64 10436608, 4, 0
  %540 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %539, i64 50176, 4, 1
  %541 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %540, i64 224, 4, 2
  %542 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %541, i64 1, 4, 3
  br label %543

543:                                              ; preds = %575, %510
  %544 = phi i64 [ %576, %575 ], [ 0, %510 ]
  %545 = icmp slt i64 %544, 10
  br i1 %545, label %546, label %577

546:                                              ; preds = %543
  br label %547

547:                                              ; preds = %573, %546
  %548 = phi i64 [ %574, %573 ], [ 0, %546 ]
  %549 = icmp slt i64 %548, 208
  br i1 %549, label %550, label %575

550:                                              ; preds = %547
  br label %551

551:                                              ; preds = %571, %550
  %552 = phi i64 [ %572, %571 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 224
  br i1 %553, label %554, label %573

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %558, %554
  %556 = phi i64 [ %570, %558 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 224
  br i1 %557, label %558, label %571

558:                                              ; preds = %555
  %559 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 1
  %560 = getelementptr inbounds nuw float, ptr %559, i64 %548
  %561 = load float, ptr %560, align 4
  %562 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, 1
  %563 = mul nuw nsw i64 %544, 10436608
  %564 = mul nuw nsw i64 %548, 50176
  %565 = add nuw nsw i64 %563, %564
  %566 = mul nuw nsw i64 %552, 224
  %567 = add nuw nsw i64 %565, %566
  %568 = add nuw nsw i64 %567, %556
  %569 = getelementptr inbounds nuw float, ptr %562, i64 %568
  store float %561, ptr %569, align 4
  %570 = add i64 %556, 1
  br label %555

571:                                              ; preds = %555
  %572 = add i64 %552, 1
  br label %551

573:                                              ; preds = %551
  %574 = add i64 %548, 1
  br label %547

575:                                              ; preds = %547
  %576 = add i64 %544, 1
  br label %543

577:                                              ; preds = %543
  br label %578

578:                                              ; preds = %656, %577
  %579 = phi i64 [ %657, %656 ], [ 0, %577 ]
  %580 = icmp slt i64 %579, 10
  br i1 %580, label %581, label %658

581:                                              ; preds = %578
  br label %582

582:                                              ; preds = %654, %581
  %583 = phi i64 [ %655, %654 ], [ 0, %581 ]
  %584 = icmp slt i64 %583, 208
  br i1 %584, label %585, label %656

585:                                              ; preds = %582
  br label %586

586:                                              ; preds = %652, %585
  %587 = phi i64 [ %653, %652 ], [ 0, %585 ]
  %588 = icmp slt i64 %587, 224
  br i1 %588, label %589, label %654

589:                                              ; preds = %586
  br label %590

590:                                              ; preds = %650, %589
  %591 = phi i64 [ %651, %650 ], [ 0, %589 ]
  %592 = icmp slt i64 %591, 96
  br i1 %592, label %593, label %652

593:                                              ; preds = %590
  br label %594

594:                                              ; preds = %648, %593
  %595 = phi i64 [ %649, %648 ], [ 0, %593 ]
  %596 = icmp slt i64 %595, 3
  br i1 %596, label %597, label %650

597:                                              ; preds = %594
  br label %598

598:                                              ; preds = %646, %597
  %599 = phi i64 [ %647, %646 ], [ 0, %597 ]
  %600 = icmp slt i64 %599, 3
  br i1 %600, label %601, label %648

601:                                              ; preds = %598
  br label %602

602:                                              ; preds = %605, %601
  %603 = phi i64 [ %645, %605 ], [ 0, %601 ]
  %604 = icmp slt i64 %603, 224
  br i1 %604, label %605, label %646

605:                                              ; preds = %602
  %606 = add i64 %587, %595
  %607 = add i64 %599, %603
  %608 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, 1
  %609 = mul nuw nsw i64 %579, 4903296
  %610 = mul nuw nsw i64 %591, 51076
  %611 = add nuw nsw i64 %609, %610
  %612 = mul nuw nsw i64 %606, 226
  %613 = add nuw nsw i64 %611, %612
  %614 = add nuw nsw i64 %613, %607
  %615 = getelementptr inbounds nuw float, ptr %608, i64 %614
  %616 = load float, ptr %615, align 4
  %617 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %171, 1
  %618 = mul nuw nsw i64 %583, 864
  %619 = mul nuw nsw i64 %591, 9
  %620 = add nuw nsw i64 %618, %619
  %621 = mul nuw nsw i64 %595, 3
  %622 = add nuw nsw i64 %620, %621
  %623 = add nuw nsw i64 %622, %599
  %624 = getelementptr inbounds nuw float, ptr %617, i64 %623
  %625 = load float, ptr %624, align 4
  %626 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, 1
  %627 = mul nuw nsw i64 %579, 10436608
  %628 = mul nuw nsw i64 %583, 50176
  %629 = add nuw nsw i64 %627, %628
  %630 = mul nuw nsw i64 %587, 224
  %631 = add nuw nsw i64 %629, %630
  %632 = add nuw nsw i64 %631, %603
  %633 = getelementptr inbounds nuw float, ptr %626, i64 %632
  %634 = load float, ptr %633, align 4
  %635 = fmul float %616, %625
  %636 = fadd float %634, %635
  %637 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, 1
  %638 = mul nuw nsw i64 %579, 10436608
  %639 = mul nuw nsw i64 %583, 50176
  %640 = add nuw nsw i64 %638, %639
  %641 = mul nuw nsw i64 %587, 224
  %642 = add nuw nsw i64 %640, %641
  %643 = add nuw nsw i64 %642, %603
  %644 = getelementptr inbounds nuw float, ptr %637, i64 %643
  store float %636, ptr %644, align 4
  %645 = add i64 %603, 1
  br label %602

646:                                              ; preds = %602
  %647 = add i64 %599, 1
  br label %598

648:                                              ; preds = %598
  %649 = add i64 %595, 1
  br label %594

650:                                              ; preds = %594
  %651 = add i64 %591, 1
  br label %590

652:                                              ; preds = %590
  %653 = add i64 %587, 1
  br label %586

654:                                              ; preds = %586
  %655 = add i64 %583, 1
  br label %582

656:                                              ; preds = %582
  %657 = add i64 %579, 1
  br label %578

658:                                              ; preds = %578
  %659 = call ptr @aligned_alloc(i64 64, i64 32112640)
  %660 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %659, 0
  %661 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %660, ptr %659, 1
  %662 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %661, i64 0, 2
  %663 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %662, i64 10, 3, 0
  %664 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %663, i64 16, 3, 1
  %665 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %664, i64 224, 3, 2
  %666 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %665, i64 224, 3, 3
  %667 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %666, i64 802816, 4, 0
  %668 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %667, i64 50176, 4, 1
  %669 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %668, i64 224, 4, 2
  %670 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %669, i64 1, 4, 3
  br label %671

671:                                              ; preds = %703, %658
  %672 = phi i64 [ %704, %703 ], [ 0, %658 ]
  %673 = icmp slt i64 %672, 10
  br i1 %673, label %674, label %705

674:                                              ; preds = %671
  br label %675

675:                                              ; preds = %701, %674
  %676 = phi i64 [ %702, %701 ], [ 0, %674 ]
  %677 = icmp slt i64 %676, 16
  br i1 %677, label %678, label %703

678:                                              ; preds = %675
  br label %679

679:                                              ; preds = %699, %678
  %680 = phi i64 [ %700, %699 ], [ 0, %678 ]
  %681 = icmp slt i64 %680, 224
  br i1 %681, label %682, label %701

682:                                              ; preds = %679
  br label %683

683:                                              ; preds = %686, %682
  %684 = phi i64 [ %698, %686 ], [ 0, %682 ]
  %685 = icmp slt i64 %684, 224
  br i1 %685, label %686, label %699

686:                                              ; preds = %683
  %687 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %144, 1
  %688 = getelementptr inbounds nuw float, ptr %687, i64 %676
  %689 = load float, ptr %688, align 4
  %690 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, 1
  %691 = mul nuw nsw i64 %672, 802816
  %692 = mul nuw nsw i64 %676, 50176
  %693 = add nuw nsw i64 %691, %692
  %694 = mul nuw nsw i64 %680, 224
  %695 = add nuw nsw i64 %693, %694
  %696 = add nuw nsw i64 %695, %684
  %697 = getelementptr inbounds nuw float, ptr %690, i64 %696
  store float %689, ptr %697, align 4
  %698 = add i64 %684, 1
  br label %683

699:                                              ; preds = %683
  %700 = add i64 %680, 1
  br label %679

701:                                              ; preds = %679
  %702 = add i64 %676, 1
  br label %675

703:                                              ; preds = %675
  %704 = add i64 %672, 1
  br label %671

705:                                              ; preds = %671
  br label %706

706:                                              ; preds = %782, %705
  %707 = phi i64 [ %783, %782 ], [ 0, %705 ]
  %708 = icmp slt i64 %707, 10
  br i1 %708, label %709, label %784

709:                                              ; preds = %706
  br label %710

710:                                              ; preds = %780, %709
  %711 = phi i64 [ %781, %780 ], [ 0, %709 ]
  %712 = icmp slt i64 %711, 16
  br i1 %712, label %713, label %782

713:                                              ; preds = %710
  br label %714

714:                                              ; preds = %778, %713
  %715 = phi i64 [ %779, %778 ], [ 0, %713 ]
  %716 = icmp slt i64 %715, 224
  br i1 %716, label %717, label %780

717:                                              ; preds = %714
  br label %718

718:                                              ; preds = %776, %717
  %719 = phi i64 [ %777, %776 ], [ 0, %717 ]
  %720 = icmp slt i64 %719, 480
  br i1 %720, label %721, label %778

721:                                              ; preds = %718
  br label %722

722:                                              ; preds = %774, %721
  %723 = phi i64 [ %775, %774 ], [ 0, %721 ]
  %724 = icmp slt i64 %723, 1
  br i1 %724, label %725, label %776

725:                                              ; preds = %722
  br label %726

726:                                              ; preds = %772, %725
  %727 = phi i64 [ %773, %772 ], [ 0, %725 ]
  %728 = icmp slt i64 %727, 1
  br i1 %728, label %729, label %774

729:                                              ; preds = %726
  br label %730

730:                                              ; preds = %733, %729
  %731 = phi i64 [ %771, %733 ], [ 0, %729 ]
  %732 = icmp slt i64 %731, 224
  br i1 %732, label %733, label %772

733:                                              ; preds = %730
  %734 = add i64 %715, %723
  %735 = add i64 %727, %731
  %736 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, 1
  %737 = mul nuw nsw i64 %707, 24084480
  %738 = mul nuw nsw i64 %719, 50176
  %739 = add nuw nsw i64 %737, %738
  %740 = mul nuw nsw i64 %734, 224
  %741 = add nuw nsw i64 %739, %740
  %742 = add nuw nsw i64 %741, %735
  %743 = getelementptr inbounds nuw float, ptr %736, i64 %742
  %744 = load float, ptr %743, align 4
  %745 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %155, 1
  %746 = mul nuw nsw i64 %711, 480
  %747 = add nuw nsw i64 %746, %719
  %748 = add nuw nsw i64 %747, %723
  %749 = add nuw nsw i64 %748, %727
  %750 = getelementptr inbounds nuw float, ptr %745, i64 %749
  %751 = load float, ptr %750, align 4
  %752 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, 1
  %753 = mul nuw nsw i64 %707, 802816
  %754 = mul nuw nsw i64 %711, 50176
  %755 = add nuw nsw i64 %753, %754
  %756 = mul nuw nsw i64 %715, 224
  %757 = add nuw nsw i64 %755, %756
  %758 = add nuw nsw i64 %757, %731
  %759 = getelementptr inbounds nuw float, ptr %752, i64 %758
  %760 = load float, ptr %759, align 4
  %761 = fmul float %744, %751
  %762 = fadd float %760, %761
  %763 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, 1
  %764 = mul nuw nsw i64 %707, 802816
  %765 = mul nuw nsw i64 %711, 50176
  %766 = add nuw nsw i64 %764, %765
  %767 = mul nuw nsw i64 %715, 224
  %768 = add nuw nsw i64 %766, %767
  %769 = add nuw nsw i64 %768, %731
  %770 = getelementptr inbounds nuw float, ptr %763, i64 %769
  store float %762, ptr %770, align 4
  %771 = add i64 %731, 1
  br label %730

772:                                              ; preds = %730
  %773 = add i64 %727, 1
  br label %726

774:                                              ; preds = %726
  %775 = add i64 %723, 1
  br label %722

776:                                              ; preds = %722
  %777 = add i64 %719, 1
  br label %718

778:                                              ; preds = %718
  %779 = add i64 %715, 1
  br label %714

780:                                              ; preds = %714
  %781 = add i64 %711, 1
  br label %710

782:                                              ; preds = %710
  %783 = add i64 %707, 1
  br label %706

784:                                              ; preds = %706
  %785 = call ptr @aligned_alloc(i64 64, i64 33269760)
  %786 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %785, 0
  %787 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %786, ptr %785, 1
  %788 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %787, i64 0, 2
  %789 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %788, i64 10, 3, 0
  %790 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %789, i64 16, 3, 1
  %791 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %790, i64 228, 3, 2
  %792 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %791, i64 228, 3, 3
  %793 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %792, i64 831744, 4, 0
  %794 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %793, i64 51984, 4, 1
  %795 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %794, i64 228, 4, 2
  %796 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %795, i64 1, 4, 3
  br label %797

797:                                              ; preds = %826, %784
  %798 = phi i64 [ %827, %826 ], [ 0, %784 ]
  %799 = icmp slt i64 %798, 10
  br i1 %799, label %800, label %828

800:                                              ; preds = %797
  br label %801

801:                                              ; preds = %824, %800
  %802 = phi i64 [ %825, %824 ], [ 0, %800 ]
  %803 = icmp slt i64 %802, 16
  br i1 %803, label %804, label %826

804:                                              ; preds = %801
  br label %805

805:                                              ; preds = %822, %804
  %806 = phi i64 [ %823, %822 ], [ 0, %804 ]
  %807 = icmp slt i64 %806, 228
  br i1 %807, label %808, label %824

808:                                              ; preds = %805
  br label %809

809:                                              ; preds = %812, %808
  %810 = phi i64 [ %821, %812 ], [ 0, %808 ]
  %811 = icmp slt i64 %810, 228
  br i1 %811, label %812, label %822

812:                                              ; preds = %809
  %813 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %796, 1
  %814 = mul nuw nsw i64 %798, 831744
  %815 = mul nuw nsw i64 %802, 51984
  %816 = add nuw nsw i64 %814, %815
  %817 = mul nuw nsw i64 %806, 228
  %818 = add nuw nsw i64 %816, %817
  %819 = add nuw nsw i64 %818, %810
  %820 = getelementptr inbounds nuw float, ptr %813, i64 %819
  store float 0.000000e+00, ptr %820, align 4
  %821 = add i64 %810, 1
  br label %809

822:                                              ; preds = %809
  %823 = add i64 %806, 1
  br label %805

824:                                              ; preds = %805
  %825 = add i64 %802, 1
  br label %801

826:                                              ; preds = %801
  %827 = add i64 %798, 1
  br label %797

828:                                              ; preds = %797
  %829 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %796, 0
  %830 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %796, 1
  %831 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %829, 0
  %832 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %831, ptr %830, 1
  %833 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %832, i64 458, 2
  %834 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %833, i64 10, 3, 0
  %835 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %834, i64 831744, 4, 0
  %836 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %835, i64 16, 3, 1
  %837 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %836, i64 51984, 4, 1
  %838 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %837, i64 224, 3, 2
  %839 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %838, i64 228, 4, 2
  %840 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %839, i64 224, 3, 3
  %841 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %840, i64 1, 4, 3
  %842 = call ptr @llvm.stacksave.p0()
  %843 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, ptr %843, align 8
  %844 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %843, 1
  %845 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %841, ptr %845, align 8
  %846 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %845, 1
  %847 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %844, ptr %847, align 8
  %848 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %846, ptr %848, align 8
  call void @memrefCopy(i64 4, ptr %847, ptr %848)
  call void @llvm.stackrestore.p0(ptr %842)
  %849 = call ptr @aligned_alloc(i64 64, i64 96337920)
  %850 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %849, 0
  %851 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %850, ptr %849, 1
  %852 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %851, i64 0, 2
  %853 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %852, i64 10, 3, 0
  %854 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %853, i64 48, 3, 1
  %855 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %854, i64 224, 3, 2
  %856 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %855, i64 224, 3, 3
  %857 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %856, i64 2408448, 4, 0
  %858 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %857, i64 50176, 4, 1
  %859 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %858, i64 224, 4, 2
  %860 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %859, i64 1, 4, 3
  br label %861

861:                                              ; preds = %893, %828
  %862 = phi i64 [ %894, %893 ], [ 0, %828 ]
  %863 = icmp slt i64 %862, 10
  br i1 %863, label %864, label %895

864:                                              ; preds = %861
  br label %865

865:                                              ; preds = %891, %864
  %866 = phi i64 [ %892, %891 ], [ 0, %864 ]
  %867 = icmp slt i64 %866, 48
  br i1 %867, label %868, label %893

868:                                              ; preds = %865
  br label %869

869:                                              ; preds = %889, %868
  %870 = phi i64 [ %890, %889 ], [ 0, %868 ]
  %871 = icmp slt i64 %870, 224
  br i1 %871, label %872, label %891

872:                                              ; preds = %869
  br label %873

873:                                              ; preds = %876, %872
  %874 = phi i64 [ %888, %876 ], [ 0, %872 ]
  %875 = icmp slt i64 %874, 224
  br i1 %875, label %876, label %889

876:                                              ; preds = %873
  %877 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, 1
  %878 = getelementptr inbounds nuw float, ptr %877, i64 %866
  %879 = load float, ptr %878, align 4
  %880 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %860, 1
  %881 = mul nuw nsw i64 %862, 2408448
  %882 = mul nuw nsw i64 %866, 50176
  %883 = add nuw nsw i64 %881, %882
  %884 = mul nuw nsw i64 %870, 224
  %885 = add nuw nsw i64 %883, %884
  %886 = add nuw nsw i64 %885, %874
  %887 = getelementptr inbounds nuw float, ptr %880, i64 %886
  store float %879, ptr %887, align 4
  %888 = add i64 %874, 1
  br label %873

889:                                              ; preds = %873
  %890 = add i64 %870, 1
  br label %869

891:                                              ; preds = %869
  %892 = add i64 %866, 1
  br label %865

893:                                              ; preds = %865
  %894 = add i64 %862, 1
  br label %861

895:                                              ; preds = %861
  br label %896

896:                                              ; preds = %974, %895
  %897 = phi i64 [ %975, %974 ], [ 0, %895 ]
  %898 = icmp slt i64 %897, 10
  br i1 %898, label %899, label %976

899:                                              ; preds = %896
  br label %900

900:                                              ; preds = %972, %899
  %901 = phi i64 [ %973, %972 ], [ 0, %899 ]
  %902 = icmp slt i64 %901, 48
  br i1 %902, label %903, label %974

903:                                              ; preds = %900
  br label %904

904:                                              ; preds = %970, %903
  %905 = phi i64 [ %971, %970 ], [ 0, %903 ]
  %906 = icmp slt i64 %905, 224
  br i1 %906, label %907, label %972

907:                                              ; preds = %904
  br label %908

908:                                              ; preds = %968, %907
  %909 = phi i64 [ %969, %968 ], [ 0, %907 ]
  %910 = icmp slt i64 %909, 16
  br i1 %910, label %911, label %970

911:                                              ; preds = %908
  br label %912

912:                                              ; preds = %966, %911
  %913 = phi i64 [ %967, %966 ], [ 0, %911 ]
  %914 = icmp slt i64 %913, 5
  br i1 %914, label %915, label %968

915:                                              ; preds = %912
  br label %916

916:                                              ; preds = %964, %915
  %917 = phi i64 [ %965, %964 ], [ 0, %915 ]
  %918 = icmp slt i64 %917, 5
  br i1 %918, label %919, label %966

919:                                              ; preds = %916
  br label %920

920:                                              ; preds = %923, %919
  %921 = phi i64 [ %963, %923 ], [ 0, %919 ]
  %922 = icmp slt i64 %921, 224
  br i1 %922, label %923, label %964

923:                                              ; preds = %920
  %924 = add i64 %905, %913
  %925 = add i64 %917, %921
  %926 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %796, 1
  %927 = mul nuw nsw i64 %897, 831744
  %928 = mul nuw nsw i64 %909, 51984
  %929 = add nuw nsw i64 %927, %928
  %930 = mul nuw nsw i64 %924, 228
  %931 = add nuw nsw i64 %929, %930
  %932 = add nuw nsw i64 %931, %925
  %933 = getelementptr inbounds nuw float, ptr %926, i64 %932
  %934 = load float, ptr %933, align 4
  %935 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %139, 1
  %936 = mul nuw nsw i64 %901, 400
  %937 = mul nuw nsw i64 %909, 25
  %938 = add nuw nsw i64 %936, %937
  %939 = mul nuw nsw i64 %913, 5
  %940 = add nuw nsw i64 %938, %939
  %941 = add nuw nsw i64 %940, %917
  %942 = getelementptr inbounds nuw float, ptr %935, i64 %941
  %943 = load float, ptr %942, align 4
  %944 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %860, 1
  %945 = mul nuw nsw i64 %897, 2408448
  %946 = mul nuw nsw i64 %901, 50176
  %947 = add nuw nsw i64 %945, %946
  %948 = mul nuw nsw i64 %905, 224
  %949 = add nuw nsw i64 %947, %948
  %950 = add nuw nsw i64 %949, %921
  %951 = getelementptr inbounds nuw float, ptr %944, i64 %950
  %952 = load float, ptr %951, align 4
  %953 = fmul float %934, %943
  %954 = fadd float %952, %953
  %955 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %860, 1
  %956 = mul nuw nsw i64 %897, 2408448
  %957 = mul nuw nsw i64 %901, 50176
  %958 = add nuw nsw i64 %956, %957
  %959 = mul nuw nsw i64 %905, 224
  %960 = add nuw nsw i64 %958, %959
  %961 = add nuw nsw i64 %960, %921
  %962 = getelementptr inbounds nuw float, ptr %955, i64 %961
  store float %954, ptr %962, align 4
  %963 = add i64 %921, 1
  br label %920

964:                                              ; preds = %920
  %965 = add i64 %917, 1
  br label %916

966:                                              ; preds = %916
  %967 = add i64 %913, 1
  br label %912

968:                                              ; preds = %912
  %969 = add i64 %909, 1
  br label %908

970:                                              ; preds = %908
  %971 = add i64 %905, 1
  br label %904

972:                                              ; preds = %904
  %973 = add i64 %901, 1
  br label %900

974:                                              ; preds = %900
  %975 = add i64 %897, 1
  br label %896

976:                                              ; preds = %896
  %977 = call ptr @aligned_alloc(i64 64, i64 980659200)
  %978 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %977, 0
  %979 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %978, ptr %977, 1
  %980 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %979, i64 0, 2
  %981 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %980, i64 10, 3, 0
  %982 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %981, i64 480, 3, 1
  %983 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %982, i64 226, 3, 2
  %984 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %983, i64 226, 3, 3
  %985 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %984, i64 24516480, 4, 0
  %986 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %985, i64 51076, 4, 1
  %987 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %986, i64 226, 4, 2
  %988 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %987, i64 1, 4, 3
  br label %989

989:                                              ; preds = %1018, %976
  %990 = phi i64 [ %1019, %1018 ], [ 0, %976 ]
  %991 = icmp slt i64 %990, 10
  br i1 %991, label %992, label %1020

992:                                              ; preds = %989
  br label %993

993:                                              ; preds = %1016, %992
  %994 = phi i64 [ %1017, %1016 ], [ 0, %992 ]
  %995 = icmp slt i64 %994, 480
  br i1 %995, label %996, label %1018

996:                                              ; preds = %993
  br label %997

997:                                              ; preds = %1014, %996
  %998 = phi i64 [ %1015, %1014 ], [ 0, %996 ]
  %999 = icmp slt i64 %998, 226
  br i1 %999, label %1000, label %1016

1000:                                             ; preds = %997
  br label %1001

1001:                                             ; preds = %1004, %1000
  %1002 = phi i64 [ %1013, %1004 ], [ 0, %1000 ]
  %1003 = icmp slt i64 %1002, 226
  br i1 %1003, label %1004, label %1014

1004:                                             ; preds = %1001
  %1005 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 1
  %1006 = mul nuw nsw i64 %990, 24516480
  %1007 = mul nuw nsw i64 %994, 51076
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = mul nuw nsw i64 %998, 226
  %1010 = add nuw nsw i64 %1008, %1009
  %1011 = add nuw nsw i64 %1010, %1002
  %1012 = getelementptr inbounds nuw float, ptr %1005, i64 %1011
  store float -inf, ptr %1012, align 4
  %1013 = add i64 %1002, 1
  br label %1001

1014:                                             ; preds = %1001
  %1015 = add i64 %998, 1
  br label %997

1016:                                             ; preds = %997
  %1017 = add i64 %994, 1
  br label %993

1018:                                             ; preds = %993
  %1019 = add i64 %990, 1
  br label %989

1020:                                             ; preds = %989
  %1021 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 0
  %1022 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 1
  %1023 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1021, 0
  %1024 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1023, ptr %1022, 1
  %1025 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1024, i64 227, 2
  %1026 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1025, i64 10, 3, 0
  %1027 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1026, i64 24516480, 4, 0
  %1028 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1027, i64 480, 3, 1
  %1029 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1028, i64 51076, 4, 1
  %1030 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1029, i64 224, 3, 2
  %1031 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1030, i64 226, 4, 2
  %1032 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1031, i64 224, 3, 3
  %1033 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1032, i64 1, 4, 3
  %1034 = call ptr @llvm.stacksave.p0()
  %1035 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %214, ptr %1035, align 8
  %1036 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1035, 1
  %1037 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1033, ptr %1037, align 8
  %1038 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1037, 1
  %1039 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1036, ptr %1039, align 8
  %1040 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1038, ptr %1040, align 8
  call void @memrefCopy(i64 4, ptr %1039, ptr %1040)
  call void @llvm.stackrestore.p0(ptr %1034)
  %1041 = call ptr @aligned_alloc(i64 64, i64 963379200)
  %1042 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1041, 0
  %1043 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1042, ptr %1041, 1
  %1044 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1043, i64 0, 2
  %1045 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1044, i64 10, 3, 0
  %1046 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1045, i64 480, 3, 1
  %1047 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1046, i64 224, 3, 2
  %1048 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1047, i64 224, 3, 3
  %1049 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1048, i64 24084480, 4, 0
  %1050 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1049, i64 50176, 4, 1
  %1051 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1050, i64 224, 4, 2
  %1052 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1051, i64 1, 4, 3
  br label %1053

1053:                                             ; preds = %1082, %1020
  %1054 = phi i64 [ %1083, %1082 ], [ 0, %1020 ]
  %1055 = icmp slt i64 %1054, 10
  br i1 %1055, label %1056, label %1084

1056:                                             ; preds = %1053
  br label %1057

1057:                                             ; preds = %1080, %1056
  %1058 = phi i64 [ %1081, %1080 ], [ 0, %1056 ]
  %1059 = icmp slt i64 %1058, 480
  br i1 %1059, label %1060, label %1082

1060:                                             ; preds = %1057
  br label %1061

1061:                                             ; preds = %1078, %1060
  %1062 = phi i64 [ %1079, %1078 ], [ 0, %1060 ]
  %1063 = icmp slt i64 %1062, 224
  br i1 %1063, label %1064, label %1080

1064:                                             ; preds = %1061
  br label %1065

1065:                                             ; preds = %1068, %1064
  %1066 = phi i64 [ %1077, %1068 ], [ 0, %1064 ]
  %1067 = icmp slt i64 %1066, 224
  br i1 %1067, label %1068, label %1078

1068:                                             ; preds = %1065
  %1069 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1052, 1
  %1070 = mul nuw nsw i64 %1054, 24084480
  %1071 = mul nuw nsw i64 %1058, 50176
  %1072 = add nuw nsw i64 %1070, %1071
  %1073 = mul nuw nsw i64 %1062, 224
  %1074 = add nuw nsw i64 %1072, %1073
  %1075 = add nuw nsw i64 %1074, %1066
  %1076 = getelementptr inbounds nuw float, ptr %1069, i64 %1075
  store float -inf, ptr %1076, align 4
  %1077 = add i64 %1066, 1
  br label %1065

1078:                                             ; preds = %1065
  %1079 = add i64 %1062, 1
  br label %1061

1080:                                             ; preds = %1061
  %1081 = add i64 %1058, 1
  br label %1057

1082:                                             ; preds = %1057
  %1083 = add i64 %1054, 1
  br label %1053

1084:                                             ; preds = %1053
  %1085 = call ptr @aligned_alloc(i64 64, i64 64)
  %1086 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %1085, 0
  %1087 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1086, ptr %1085, 1
  %1088 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1087, i64 0, 2
  %1089 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1088, i64 3, 3, 0
  %1090 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1089, i64 3, 3, 1
  %1091 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1090, i64 3, 4, 0
  %1092 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1091, i64 1, 4, 1
  br label %1093

1093:                                             ; preds = %1155, %1084
  %1094 = phi i64 [ %1156, %1155 ], [ 0, %1084 ]
  %1095 = icmp slt i64 %1094, 10
  br i1 %1095, label %1096, label %1157

1096:                                             ; preds = %1093
  br label %1097

1097:                                             ; preds = %1153, %1096
  %1098 = phi i64 [ %1154, %1153 ], [ 0, %1096 ]
  %1099 = icmp slt i64 %1098, 480
  br i1 %1099, label %1100, label %1155

1100:                                             ; preds = %1097
  br label %1101

1101:                                             ; preds = %1151, %1100
  %1102 = phi i64 [ %1152, %1151 ], [ 0, %1100 ]
  %1103 = icmp slt i64 %1102, 224
  br i1 %1103, label %1104, label %1153

1104:                                             ; preds = %1101
  br label %1105

1105:                                             ; preds = %1149, %1104
  %1106 = phi i64 [ %1150, %1149 ], [ 0, %1104 ]
  %1107 = icmp slt i64 %1106, 224
  br i1 %1107, label %1108, label %1151

1108:                                             ; preds = %1105
  br label %1109

1109:                                             ; preds = %1147, %1108
  %1110 = phi i64 [ %1148, %1147 ], [ 0, %1108 ]
  %1111 = icmp slt i64 %1110, 3
  br i1 %1111, label %1112, label %1149

1112:                                             ; preds = %1109
  br label %1113

1113:                                             ; preds = %1116, %1112
  %1114 = phi i64 [ %1146, %1116 ], [ 0, %1112 ]
  %1115 = icmp slt i64 %1114, 3
  br i1 %1115, label %1116, label %1147

1116:                                             ; preds = %1113
  %1117 = add i64 %1102, %1110
  %1118 = add i64 %1106, %1114
  %1119 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 1
  %1120 = mul nuw nsw i64 %1094, 24516480
  %1121 = mul nuw nsw i64 %1098, 51076
  %1122 = add nuw nsw i64 %1120, %1121
  %1123 = mul nuw nsw i64 %1117, 226
  %1124 = add nuw nsw i64 %1122, %1123
  %1125 = add nuw nsw i64 %1124, %1118
  %1126 = getelementptr inbounds nuw float, ptr %1119, i64 %1125
  %1127 = load float, ptr %1126, align 4
  %1128 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1052, 1
  %1129 = mul nuw nsw i64 %1094, 24084480
  %1130 = mul nuw nsw i64 %1098, 50176
  %1131 = add nuw nsw i64 %1129, %1130
  %1132 = mul nuw nsw i64 %1102, 224
  %1133 = add nuw nsw i64 %1131, %1132
  %1134 = add nuw nsw i64 %1133, %1106
  %1135 = getelementptr inbounds nuw float, ptr %1128, i64 %1134
  %1136 = load float, ptr %1135, align 4
  %1137 = call float @llvm.maximum.f32(float %1136, float %1127)
  %1138 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1052, 1
  %1139 = mul nuw nsw i64 %1094, 24084480
  %1140 = mul nuw nsw i64 %1098, 50176
  %1141 = add nuw nsw i64 %1139, %1140
  %1142 = mul nuw nsw i64 %1102, 224
  %1143 = add nuw nsw i64 %1141, %1142
  %1144 = add nuw nsw i64 %1143, %1106
  %1145 = getelementptr inbounds nuw float, ptr %1138, i64 %1144
  store float %1137, ptr %1145, align 4
  %1146 = add i64 %1114, 1
  br label %1113

1147:                                             ; preds = %1113
  %1148 = add i64 %1110, 1
  br label %1109

1149:                                             ; preds = %1109
  %1150 = add i64 %1106, 1
  br label %1105

1151:                                             ; preds = %1105
  %1152 = add i64 %1102, 1
  br label %1101

1153:                                             ; preds = %1101
  %1154 = add i64 %1098, 1
  br label %1097

1155:                                             ; preds = %1097
  %1156 = add i64 %1094, 1
  br label %1093

1157:                                             ; preds = %1093
  %1158 = call ptr @aligned_alloc(i64 64, i64 128450560)
  %1159 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1158, 0
  %1160 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1159, ptr %1158, 1
  %1161 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1160, i64 0, 2
  %1162 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1161, i64 10, 3, 0
  %1163 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1162, i64 64, 3, 1
  %1164 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1163, i64 224, 3, 2
  %1165 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1164, i64 224, 3, 3
  %1166 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1165, i64 3211264, 4, 0
  %1167 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1166, i64 50176, 4, 1
  %1168 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1167, i64 224, 4, 2
  %1169 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1168, i64 1, 4, 3
  br label %1170

1170:                                             ; preds = %1202, %1157
  %1171 = phi i64 [ %1203, %1202 ], [ 0, %1157 ]
  %1172 = icmp slt i64 %1171, 10
  br i1 %1172, label %1173, label %1204

1173:                                             ; preds = %1170
  br label %1174

1174:                                             ; preds = %1200, %1173
  %1175 = phi i64 [ %1201, %1200 ], [ 0, %1173 ]
  %1176 = icmp slt i64 %1175, 64
  br i1 %1176, label %1177, label %1202

1177:                                             ; preds = %1174
  br label %1178

1178:                                             ; preds = %1198, %1177
  %1179 = phi i64 [ %1199, %1198 ], [ 0, %1177 ]
  %1180 = icmp slt i64 %1179, 224
  br i1 %1180, label %1181, label %1200

1181:                                             ; preds = %1178
  br label %1182

1182:                                             ; preds = %1185, %1181
  %1183 = phi i64 [ %1197, %1185 ], [ 0, %1181 ]
  %1184 = icmp slt i64 %1183, 224
  br i1 %1184, label %1185, label %1198

1185:                                             ; preds = %1182
  %1186 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, 1
  %1187 = getelementptr inbounds nuw float, ptr %1186, i64 %1175
  %1188 = load float, ptr %1187, align 4
  %1189 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1169, 1
  %1190 = mul nuw nsw i64 %1171, 3211264
  %1191 = mul nuw nsw i64 %1175, 50176
  %1192 = add nuw nsw i64 %1190, %1191
  %1193 = mul nuw nsw i64 %1179, 224
  %1194 = add nuw nsw i64 %1192, %1193
  %1195 = add nuw nsw i64 %1194, %1183
  %1196 = getelementptr inbounds nuw float, ptr %1189, i64 %1195
  store float %1188, ptr %1196, align 4
  %1197 = add i64 %1183, 1
  br label %1182

1198:                                             ; preds = %1182
  %1199 = add i64 %1179, 1
  br label %1178

1200:                                             ; preds = %1178
  %1201 = add i64 %1175, 1
  br label %1174

1202:                                             ; preds = %1174
  %1203 = add i64 %1171, 1
  br label %1170

1204:                                             ; preds = %1170
  br label %1205

1205:                                             ; preds = %1281, %1204
  %1206 = phi i64 [ %1282, %1281 ], [ 0, %1204 ]
  %1207 = icmp slt i64 %1206, 10
  br i1 %1207, label %1208, label %1283

1208:                                             ; preds = %1205
  br label %1209

1209:                                             ; preds = %1279, %1208
  %1210 = phi i64 [ %1280, %1279 ], [ 0, %1208 ]
  %1211 = icmp slt i64 %1210, 64
  br i1 %1211, label %1212, label %1281

1212:                                             ; preds = %1209
  br label %1213

1213:                                             ; preds = %1277, %1212
  %1214 = phi i64 [ %1278, %1277 ], [ 0, %1212 ]
  %1215 = icmp slt i64 %1214, 224
  br i1 %1215, label %1216, label %1279

1216:                                             ; preds = %1213
  br label %1217

1217:                                             ; preds = %1275, %1216
  %1218 = phi i64 [ %1276, %1275 ], [ 0, %1216 ]
  %1219 = icmp slt i64 %1218, 480
  br i1 %1219, label %1220, label %1277

1220:                                             ; preds = %1217
  br label %1221

1221:                                             ; preds = %1273, %1220
  %1222 = phi i64 [ %1274, %1273 ], [ 0, %1220 ]
  %1223 = icmp slt i64 %1222, 1
  br i1 %1223, label %1224, label %1275

1224:                                             ; preds = %1221
  br label %1225

1225:                                             ; preds = %1271, %1224
  %1226 = phi i64 [ %1272, %1271 ], [ 0, %1224 ]
  %1227 = icmp slt i64 %1226, 1
  br i1 %1227, label %1228, label %1273

1228:                                             ; preds = %1225
  br label %1229

1229:                                             ; preds = %1232, %1228
  %1230 = phi i64 [ %1270, %1232 ], [ 0, %1228 ]
  %1231 = icmp slt i64 %1230, 224
  br i1 %1231, label %1232, label %1271

1232:                                             ; preds = %1229
  %1233 = add i64 %1214, %1222
  %1234 = add i64 %1226, %1230
  %1235 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1052, 1
  %1236 = mul nuw nsw i64 %1206, 24084480
  %1237 = mul nuw nsw i64 %1218, 50176
  %1238 = add nuw nsw i64 %1236, %1237
  %1239 = mul nuw nsw i64 %1233, 224
  %1240 = add nuw nsw i64 %1238, %1239
  %1241 = add nuw nsw i64 %1240, %1234
  %1242 = getelementptr inbounds nuw float, ptr %1235, i64 %1241
  %1243 = load float, ptr %1242, align 4
  %1244 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %123, 1
  %1245 = mul nuw nsw i64 %1210, 480
  %1246 = add nuw nsw i64 %1245, %1218
  %1247 = add nuw nsw i64 %1246, %1222
  %1248 = add nuw nsw i64 %1247, %1226
  %1249 = getelementptr inbounds nuw float, ptr %1244, i64 %1248
  %1250 = load float, ptr %1249, align 4
  %1251 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1169, 1
  %1252 = mul nuw nsw i64 %1206, 3211264
  %1253 = mul nuw nsw i64 %1210, 50176
  %1254 = add nuw nsw i64 %1252, %1253
  %1255 = mul nuw nsw i64 %1214, 224
  %1256 = add nuw nsw i64 %1254, %1255
  %1257 = add nuw nsw i64 %1256, %1230
  %1258 = getelementptr inbounds nuw float, ptr %1251, i64 %1257
  %1259 = load float, ptr %1258, align 4
  %1260 = fmul float %1243, %1250
  %1261 = fadd float %1259, %1260
  %1262 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1169, 1
  %1263 = mul nuw nsw i64 %1206, 3211264
  %1264 = mul nuw nsw i64 %1210, 50176
  %1265 = add nuw nsw i64 %1263, %1264
  %1266 = mul nuw nsw i64 %1214, 224
  %1267 = add nuw nsw i64 %1265, %1266
  %1268 = add nuw nsw i64 %1267, %1230
  %1269 = getelementptr inbounds nuw float, ptr %1262, i64 %1268
  store float %1261, ptr %1269, align 4
  %1270 = add i64 %1230, 1
  br label %1229

1271:                                             ; preds = %1229
  %1272 = add i64 %1226, 1
  br label %1225

1273:                                             ; preds = %1225
  %1274 = add i64 %1222, 1
  br label %1221

1275:                                             ; preds = %1221
  %1276 = add i64 %1218, 1
  br label %1217

1277:                                             ; preds = %1217
  %1278 = add i64 %1214, 1
  br label %1213

1279:                                             ; preds = %1213
  %1280 = add i64 %1210, 1
  br label %1209

1281:                                             ; preds = %1209
  %1282 = add i64 %1206, 1
  br label %1205

1283:                                             ; preds = %1205
  %1284 = call ptr @aligned_alloc(i64 64, i64 1027604480)
  %1285 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1284, 0
  %1286 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1285, ptr %1284, 1
  %1287 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1286, i64 0, 2
  %1288 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1287, i64 10, 3, 0
  %1289 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1288, i64 512, 3, 1
  %1290 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1289, i64 224, 3, 2
  %1291 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1290, i64 224, 3, 3
  %1292 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1291, i64 25690112, 4, 0
  %1293 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1292, i64 50176, 4, 1
  %1294 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1293, i64 224, 4, 2
  %1295 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1294, i64 1, 4, 3
  %1296 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 0
  %1297 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 1
  %1298 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1296, 0
  %1299 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1298, ptr %1297, 1
  %1300 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1299, i64 0, 2
  %1301 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1300, i64 10, 3, 0
  %1302 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1301, i64 25690112, 4, 0
  %1303 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1302, i64 192, 3, 1
  %1304 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1303, i64 50176, 4, 1
  %1305 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1304, i64 224, 3, 2
  %1306 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1305, i64 224, 4, 2
  %1307 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1306, i64 224, 3, 3
  %1308 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1307, i64 1, 4, 3
  %1309 = call ptr @llvm.stacksave.p0()
  %1310 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %226, ptr %1310, align 8
  %1311 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1310, 1
  %1312 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1308, ptr %1312, align 8
  %1313 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1312, 1
  %1314 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1311, ptr %1314, align 8
  %1315 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1313, ptr %1315, align 8
  call void @memrefCopy(i64 4, ptr %1314, ptr %1315)
  call void @llvm.stackrestore.p0(ptr %1309)
  %1316 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 0
  %1317 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 1
  %1318 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1316, 0
  %1319 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1318, ptr %1317, 1
  %1320 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1319, i64 9633792, 2
  %1321 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1320, i64 10, 3, 0
  %1322 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1321, i64 25690112, 4, 0
  %1323 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1322, i64 208, 3, 1
  %1324 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1323, i64 50176, 4, 1
  %1325 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1324, i64 224, 3, 2
  %1326 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1325, i64 224, 4, 2
  %1327 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1326, i64 224, 3, 3
  %1328 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1327, i64 1, 4, 3
  %1329 = call ptr @llvm.stacksave.p0()
  %1330 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, ptr %1330, align 8
  %1331 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1330, 1
  %1332 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1328, ptr %1332, align 8
  %1333 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1332, 1
  %1334 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1331, ptr %1334, align 8
  %1335 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1333, ptr %1335, align 8
  call void @memrefCopy(i64 4, ptr %1334, ptr %1335)
  call void @llvm.stackrestore.p0(ptr %1329)
  %1336 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 0
  %1337 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 1
  %1338 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1336, 0
  %1339 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1338, ptr %1337, 1
  %1340 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1339, i64 20070400, 2
  %1341 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1340, i64 10, 3, 0
  %1342 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1341, i64 25690112, 4, 0
  %1343 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1342, i64 48, 3, 1
  %1344 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1343, i64 50176, 4, 1
  %1345 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1344, i64 224, 3, 2
  %1346 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1345, i64 224, 4, 2
  %1347 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1346, i64 224, 3, 3
  %1348 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1347, i64 1, 4, 3
  %1349 = call ptr @llvm.stacksave.p0()
  %1350 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %860, ptr %1350, align 8
  %1351 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1350, 1
  %1352 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1348, ptr %1352, align 8
  %1353 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1352, 1
  %1354 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1351, ptr %1354, align 8
  %1355 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1353, ptr %1355, align 8
  call void @memrefCopy(i64 4, ptr %1354, ptr %1355)
  call void @llvm.stackrestore.p0(ptr %1349)
  %1356 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 0
  %1357 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295, 1
  %1358 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1356, 0
  %1359 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1358, ptr %1357, 1
  %1360 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1359, i64 22478848, 2
  %1361 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1360, i64 10, 3, 0
  %1362 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1361, i64 25690112, 4, 0
  %1363 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1362, i64 64, 3, 1
  %1364 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1363, i64 50176, 4, 1
  %1365 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1364, i64 224, 3, 2
  %1366 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1365, i64 224, 4, 2
  %1367 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1366, i64 224, 3, 3
  %1368 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1367, i64 1, 4, 3
  %1369 = call ptr @llvm.stacksave.p0()
  %1370 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1169, ptr %1370, align 8
  %1371 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1370, 1
  %1372 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %1368, ptr %1372, align 8
  %1373 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %1372, 1
  %1374 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1371, ptr %1374, align 8
  %1375 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %1373, ptr %1375, align 8
  call void @memrefCopy(i64 4, ptr %1374, ptr %1375)
  call void @llvm.stackrestore.p0(ptr %1369)
  %1376 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %226, 0
  call void @free(ptr %1376)
  %1377 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %352, 0
  call void @free(ptr %1377)
  %1378 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, 0
  call void @free(ptr %1378)
  %1379 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, 0
  call void @free(ptr %1379)
  %1380 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %670, 0
  call void @free(ptr %1380)
  %1381 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %796, 0
  call void @free(ptr %1381)
  %1382 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %860, 0
  call void @free(ptr %1382)
  %1383 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %988, 0
  call void @free(ptr %1383)
  %1384 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1052, 0
  call void @free(ptr %1384)
  %1385 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %1092, 0
  call void @free(ptr %1385)
  %1386 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1169, 0
  call void @free(ptr %1386)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %1295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
