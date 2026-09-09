; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @EfficientNetMBConv(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, ptr %18, ptr %19, i64 %20, i64 %21, i64 %22, ptr %23, ptr %24, i64 %25, i64 %26, i64 %27, ptr %28, ptr %29, i64 %30, i64 %31, i64 %32, ptr %33, ptr %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, ptr %47, ptr %48, i64 %49, i64 %50, i64 %51, ptr %52, ptr %53, i64 %54, i64 %55, i64 %56, ptr %57, ptr %58, i64 %59, i64 %60, i64 %61, ptr %62, ptr %63, i64 %64, i64 %65, i64 %66, ptr %67, ptr %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, ptr %74, ptr %75, i64 %76, i64 %77, i64 %78, ptr %79, ptr %80, i64 %81, i64 %82, i64 %83, ptr %84, ptr %85, i64 %86, i64 %87, i64 %88, ptr %89, ptr %90, i64 %91, i64 %92, i64 %93) {
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %89, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, ptr %90, 1
  %97 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, i64 %91, 2
  %98 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %97, i64 %92, 3, 0
  %99 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %98, i64 %93, 4, 0
  %100 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %84, 0
  %101 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %100, ptr %85, 1
  %102 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %101, i64 %86, 2
  %103 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %102, i64 %87, 3, 0
  %104 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %103, i64 %88, 4, 0
  %105 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %79, 0
  %106 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %105, ptr %80, 1
  %107 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %106, i64 %81, 2
  %108 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %107, i64 %82, 3, 0
  %109 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %108, i64 %83, 4, 0
  %110 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %74, 0
  %111 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %110, ptr %75, 1
  %112 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %111, i64 %76, 2
  %113 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %112, i64 %77, 3, 0
  %114 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %113, i64 %78, 4, 0
  %115 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %67, 0
  %116 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %115, ptr %68, 1
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %116, i64 %69, 2
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, i64 %70, 3, 0
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 %72, 4, 0
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 %71, 3, 1
  %121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %120, i64 %73, 4, 1
  %122 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %62, 0
  %123 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %122, ptr %63, 1
  %124 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %123, i64 %64, 2
  %125 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %124, i64 %65, 3, 0
  %126 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %125, i64 %66, 4, 0
  %127 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %57, 0
  %128 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %127, ptr %58, 1
  %129 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %128, i64 %59, 2
  %130 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %129, i64 %60, 3, 0
  %131 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %130, i64 %61, 4, 0
  %132 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %52, 0
  %133 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %132, ptr %53, 1
  %134 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %133, i64 %54, 2
  %135 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %134, i64 %55, 3, 0
  %136 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %135, i64 %56, 4, 0
  %137 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %47, 0
  %138 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %137, ptr %48, 1
  %139 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %138, i64 %49, 2
  %140 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %139, i64 %50, 3, 0
  %141 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %140, i64 %51, 4, 0
  %142 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } poison, ptr %38, 0
  %143 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %142, ptr %39, 1
  %144 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %143, i64 %40, 2
  %145 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %144, i64 %41, 3, 0
  %146 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %145, i64 %44, 4, 0
  %147 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %146, i64 %42, 3, 1
  %148 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %147, i64 %45, 4, 1
  %149 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %148, i64 %43, 3, 2
  %150 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %149, i64 %46, 4, 2
  %151 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %33, 0
  %152 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %151, ptr %34, 1
  %153 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %152, i64 %35, 2
  %154 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %153, i64 %36, 3, 0
  %155 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %154, i64 %37, 4, 0
  %156 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %28, 0
  %157 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %156, ptr %29, 1
  %158 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %157, i64 %30, 2
  %159 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %158, i64 %31, 3, 0
  %160 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %159, i64 %32, 4, 0
  %161 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %23, 0
  %162 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %161, ptr %24, 1
  %163 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %162, i64 %25, 2
  %164 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %163, i64 %26, 3, 0
  %165 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %164, i64 %27, 4, 0
  %166 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %18, 0
  %167 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %166, ptr %19, 1
  %168 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %167, i64 %20, 2
  %169 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %168, i64 %21, 3, 0
  %170 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %169, i64 %22, 4, 0
  %171 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %7, 0
  %172 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %171, ptr %8, 1
  %173 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %172, i64 %9, 2
  %174 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %173, i64 %10, 3, 0
  %175 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %174, i64 %14, 4, 0
  %176 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %175, i64 %11, 3, 1
  %177 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %176, i64 %15, 4, 1
  %178 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %177, i64 %12, 3, 2
  %179 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %178, i64 %16, 4, 2
  %180 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %179, i64 %13, 3, 3
  %181 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %180, i64 %17, 4, 3
  %182 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %0, 0
  %183 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %182, ptr %1, 1
  %184 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %183, i64 %2, 2
  %185 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %184, i64 %3, 3, 0
  %186 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %185, i64 %5, 4, 0
  %187 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %186, i64 %4, 3, 1
  %188 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %187, i64 %6, 4, 1
  %189 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 0
  %190 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 1
  %191 = insertvalue { ptr, ptr, i64 } poison, ptr %189, 0
  %192 = insertvalue { ptr, ptr, i64 } %191, ptr %190, 1
  %193 = insertvalue { ptr, ptr, i64 } %192, i64 0, 2
  %194 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 2
  %195 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 3, 0
  %196 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 3, 1
  %197 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 4, 0
  %198 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %188, 4, 1
  %199 = extractvalue { ptr, ptr, i64 } %193, 0
  %200 = extractvalue { ptr, ptr, i64 } %193, 1
  %201 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %199, 0
  %202 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %201, ptr %200, 1
  %203 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %202, i64 0, 2
  %204 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %203, i64 672, 3, 0
  %205 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %204, i64 112, 4, 0
  %206 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %205, i64 112, 3, 1
  %207 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %206, i64 1, 4, 1
  %208 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %207, i64 1, 3, 2
  %209 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %208, i64 1, 4, 2
  %210 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %209, i64 1, 3, 3
  %211 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %210, i64 1, 4, 3
  %212 = call ptr @aligned_alloc(i64 64, i64 1348730880)
  %213 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %212, 0
  %214 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %213, ptr %212, 1
  %215 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %214, i64 0, 2
  %216 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %215, i64 10, 3, 0
  %217 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %216, i64 672, 3, 1
  %218 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %217, i64 224, 3, 2
  %219 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %218, i64 1, 3, 3
  %220 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %219, i64 224, 3, 4
  %221 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %220, i64 33718272, 4, 0
  %222 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %221, i64 50176, 4, 1
  %223 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %222, i64 224, 4, 2
  %224 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %223, i64 224, 4, 3
  %225 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %224, i64 1, 4, 4
  br label %226

226:                                              ; preds = %263, %94
  %227 = phi i64 [ %264, %263 ], [ 0, %94 ]
  %228 = icmp slt i64 %227, 10
  br i1 %228, label %229, label %265

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %261, %229
  %231 = phi i64 [ %262, %261 ], [ 0, %229 ]
  %232 = icmp slt i64 %231, 672
  br i1 %232, label %233, label %263

233:                                              ; preds = %230
  br label %234

234:                                              ; preds = %259, %233
  %235 = phi i64 [ %260, %259 ], [ 0, %233 ]
  %236 = icmp slt i64 %235, 224
  br i1 %236, label %237, label %261

237:                                              ; preds = %234
  br label %238

238:                                              ; preds = %257, %237
  %239 = phi i64 [ %258, %257 ], [ 0, %237 ]
  %240 = icmp slt i64 %239, 1
  br i1 %240, label %241, label %259

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %245, %241
  %243 = phi i64 [ %256, %245 ], [ 0, %241 ]
  %244 = icmp slt i64 %243, 224
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %247 = mul nuw nsw i64 %227, 33718272
  %248 = mul nuw nsw i64 %231, 50176
  %249 = add nuw nsw i64 %247, %248
  %250 = mul nuw nsw i64 %235, 224
  %251 = add nuw nsw i64 %249, %250
  %252 = mul nuw nsw i64 %239, 224
  %253 = add nuw nsw i64 %251, %252
  %254 = add nuw nsw i64 %253, %243
  %255 = getelementptr inbounds nuw float, ptr %246, i64 %254
  store float 0.000000e+00, ptr %255, align 4
  %256 = add i64 %243, 1
  br label %242

257:                                              ; preds = %242
  %258 = add i64 %239, 1
  br label %238

259:                                              ; preds = %238
  %260 = add i64 %235, 1
  br label %234

261:                                              ; preds = %234
  %262 = add i64 %231, 1
  br label %230

263:                                              ; preds = %230
  %264 = add i64 %227, 1
  br label %226

265:                                              ; preds = %226
  %266 = call ptr @aligned_alloc(i64 64, i64 896)
  %267 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %266, 0
  %268 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %267, ptr %266, 1
  %269 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %268, i64 0, 2
  %270 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %269, i64 224, 3, 0
  %271 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %270, i64 1, 3, 1
  %272 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %271, i64 1, 4, 0
  %273 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %272, i64 1, 4, 1
  br label %274

274:                                              ; preds = %361, %265
  %275 = phi i64 [ %362, %361 ], [ 0, %265 ]
  %276 = icmp slt i64 %275, 10
  br i1 %276, label %277, label %363

277:                                              ; preds = %274
  br label %278

278:                                              ; preds = %359, %277
  %279 = phi i64 [ %360, %359 ], [ 0, %277 ]
  %280 = icmp slt i64 %279, 672
  br i1 %280, label %281, label %361

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %357, %281
  %283 = phi i64 [ %358, %357 ], [ 0, %281 ]
  %284 = icmp slt i64 %283, 224
  br i1 %284, label %285, label %359

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %355, %285
  %287 = phi i64 [ %356, %355 ], [ 0, %285 ]
  %288 = icmp slt i64 %287, 1
  br i1 %288, label %289, label %357

289:                                              ; preds = %286
  br label %290

290:                                              ; preds = %353, %289
  %291 = phi i64 [ %354, %353 ], [ 0, %289 ]
  %292 = icmp slt i64 %291, 112
  br i1 %292, label %293, label %355

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %351, %293
  %295 = phi i64 [ %352, %351 ], [ 0, %293 ]
  %296 = icmp slt i64 %295, 1
  br i1 %296, label %297, label %353

297:                                              ; preds = %294
  br label %298

298:                                              ; preds = %349, %297
  %299 = phi i64 [ %350, %349 ], [ 0, %297 ]
  %300 = icmp slt i64 %299, 1
  br i1 %300, label %301, label %351

301:                                              ; preds = %298
  br label %302

302:                                              ; preds = %305, %301
  %303 = phi i64 [ %348, %305 ], [ 0, %301 ]
  %304 = icmp slt i64 %303, 224
  br i1 %304, label %305, label %349

305:                                              ; preds = %302
  %306 = add i64 %283, %287
  %307 = add i64 %306, %295
  %308 = add i64 %299, %303
  %309 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %181, 1
  %310 = mul nuw nsw i64 %275, 5619712
  %311 = mul nuw nsw i64 %291, 50176
  %312 = add nuw nsw i64 %310, %311
  %313 = mul nuw nsw i64 %307, 224
  %314 = add nuw nsw i64 %312, %313
  %315 = add nuw nsw i64 %314, %308
  %316 = getelementptr inbounds nuw float, ptr %309, i64 %315
  %317 = load float, ptr %316, align 4
  %318 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %211, 1
  %319 = mul nuw nsw i64 %279, 112
  %320 = add nuw nsw i64 %319, %291
  %321 = add nuw nsw i64 %320, %295
  %322 = add nuw nsw i64 %321, %299
  %323 = getelementptr inbounds nuw float, ptr %318, i64 %322
  %324 = load float, ptr %323, align 4
  %325 = add i64 %283, %287
  %326 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %327 = mul nuw nsw i64 %275, 33718272
  %328 = mul nuw nsw i64 %279, 50176
  %329 = add nuw nsw i64 %327, %328
  %330 = mul nuw nsw i64 %325, 224
  %331 = add nuw nsw i64 %329, %330
  %332 = add nuw nsw i64 %331, 0
  %333 = add nuw nsw i64 %332, %303
  %334 = getelementptr inbounds nuw float, ptr %326, i64 %333
  %335 = load float, ptr %334, align 4
  %336 = add i64 %283, %287
  %337 = fmul float %317, %324
  %338 = fadd float %337, %335
  %339 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %340 = mul nuw nsw i64 %275, 33718272
  %341 = mul nuw nsw i64 %279, 50176
  %342 = add nuw nsw i64 %340, %341
  %343 = mul nuw nsw i64 %336, 224
  %344 = add nuw nsw i64 %342, %343
  %345 = add nuw nsw i64 %344, 0
  %346 = add nuw nsw i64 %345, %303
  %347 = getelementptr inbounds nuw float, ptr %339, i64 %346
  store float %338, ptr %347, align 4
  %348 = add i64 %303, 1
  br label %302

349:                                              ; preds = %302
  %350 = add i64 %299, 1
  br label %298

351:                                              ; preds = %298
  %352 = add i64 %295, 1
  br label %294

353:                                              ; preds = %294
  %354 = add i64 %291, 1
  br label %290

355:                                              ; preds = %290
  %356 = add i64 %287, 1
  br label %286

357:                                              ; preds = %286
  %358 = add i64 %283, 1
  br label %282

359:                                              ; preds = %282
  %360 = add i64 %279, 1
  br label %278

361:                                              ; preds = %278
  %362 = add i64 %275, 1
  br label %274

363:                                              ; preds = %274
  %364 = call ptr @aligned_alloc(i64 64, i64 2688)
  %365 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %364, 0
  %366 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %365, ptr %364, 1
  %367 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %366, i64 0, 2
  %368 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %367, i64 672, 3, 0
  %369 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %368, i64 1, 4, 0
  %370 = call ptr @aligned_alloc(i64 64, i64 2688)
  %371 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %370, 0
  %372 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %371, ptr %370, 1
  %373 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %372, i64 0, 2
  %374 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %373, i64 672, 3, 0
  %375 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %374, i64 1, 4, 0
  br label %376

376:                                              ; preds = %379, %363
  %377 = phi i64 [ %392, %379 ], [ 0, %363 ]
  %378 = icmp slt i64 %377, 672
  br i1 %378, label %379, label %393

379:                                              ; preds = %376
  %380 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 1
  %381 = getelementptr inbounds nuw float, ptr %380, i64 %377
  %382 = load float, ptr %381, align 4
  %383 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 1
  %384 = getelementptr inbounds nuw float, ptr %383, i64 %377
  %385 = load float, ptr %384, align 4
  %386 = fadd float %382, f0x3727C5AC
  %387 = call float @llvm.sqrt.f32(float %386)
  %388 = fdiv float 1.000000e+00, %387
  %389 = fmul float %388, %385
  %390 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %375, 1
  %391 = getelementptr inbounds nuw float, ptr %390, i64 %377
  store float %389, ptr %391, align 4
  %392 = add i64 %377, 1
  br label %376

393:                                              ; preds = %376
  br label %394

394:                                              ; preds = %397, %393
  %395 = phi i64 [ %414, %397 ], [ 0, %393 ]
  %396 = icmp slt i64 %395, 672
  br i1 %396, label %397, label %415

397:                                              ; preds = %394
  %398 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %170, 1
  %399 = getelementptr inbounds nuw float, ptr %398, i64 %395
  %400 = load float, ptr %399, align 4
  %401 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %165, 1
  %402 = getelementptr inbounds nuw float, ptr %401, i64 %395
  %403 = load float, ptr %402, align 4
  %404 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %160, 1
  %405 = getelementptr inbounds nuw float, ptr %404, i64 %395
  %406 = load float, ptr %405, align 4
  %407 = fadd float %403, f0x3727C5AC
  %408 = call float @llvm.sqrt.f32(float %407)
  %409 = fdiv float 1.000000e+00, %408
  %410 = fmul float %409, %406
  %411 = fmul float %410, %400
  %412 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, 1
  %413 = getelementptr inbounds nuw float, ptr %412, i64 %395
  store float %411, ptr %413, align 4
  %414 = add i64 %395, 1
  br label %394

415:                                              ; preds = %394
  br label %416

416:                                              ; preds = %478, %415
  %417 = phi i64 [ %479, %478 ], [ 0, %415 ]
  %418 = icmp slt i64 %417, 10
  br i1 %418, label %419, label %480

419:                                              ; preds = %416
  br label %420

420:                                              ; preds = %476, %419
  %421 = phi i64 [ %477, %476 ], [ 0, %419 ]
  %422 = icmp slt i64 %421, 672
  br i1 %422, label %423, label %478

423:                                              ; preds = %420
  br label %424

424:                                              ; preds = %474, %423
  %425 = phi i64 [ %475, %474 ], [ 0, %423 ]
  %426 = icmp slt i64 %425, 224
  br i1 %426, label %427, label %476

427:                                              ; preds = %424
  br label %428

428:                                              ; preds = %472, %427
  %429 = phi i64 [ %473, %472 ], [ 0, %427 ]
  %430 = icmp slt i64 %429, 1
  br i1 %430, label %431, label %474

431:                                              ; preds = %428
  br label %432

432:                                              ; preds = %435, %431
  %433 = phi i64 [ %471, %435 ], [ 0, %431 ]
  %434 = icmp slt i64 %433, 224
  br i1 %434, label %435, label %472

435:                                              ; preds = %432
  %436 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %437 = mul nuw nsw i64 %417, 33718272
  %438 = mul nuw nsw i64 %421, 50176
  %439 = add nuw nsw i64 %437, %438
  %440 = mul nuw nsw i64 %425, 224
  %441 = add nuw nsw i64 %439, %440
  %442 = mul nuw nsw i64 %429, 224
  %443 = add nuw nsw i64 %441, %442
  %444 = add nuw nsw i64 %443, %433
  %445 = getelementptr inbounds nuw float, ptr %436, i64 %444
  %446 = load float, ptr %445, align 4
  %447 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %375, 1
  %448 = getelementptr inbounds nuw float, ptr %447, i64 %421
  %449 = load float, ptr %448, align 4
  %450 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, 1
  %451 = getelementptr inbounds nuw float, ptr %450, i64 %421
  %452 = load float, ptr %451, align 4
  %453 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %155, 1
  %454 = getelementptr inbounds nuw float, ptr %453, i64 %421
  %455 = load float, ptr %454, align 4
  %456 = fmul float %446, %449
  %457 = fsub float %456, %452
  %458 = fadd float %457, %455
  %459 = call float @llvm.maxnum.f32(float %458, float 0.000000e+00)
  %460 = call float @llvm.minnum.f32(float %459, float 6.000000e+00)
  %461 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %462 = mul nuw nsw i64 %417, 33718272
  %463 = mul nuw nsw i64 %421, 50176
  %464 = add nuw nsw i64 %462, %463
  %465 = mul nuw nsw i64 %425, 224
  %466 = add nuw nsw i64 %464, %465
  %467 = mul nuw nsw i64 %429, 224
  %468 = add nuw nsw i64 %466, %467
  %469 = add nuw nsw i64 %468, %433
  %470 = getelementptr inbounds nuw float, ptr %461, i64 %469
  store float %460, ptr %470, align 4
  %471 = add i64 %433, 1
  br label %432

472:                                              ; preds = %432
  %473 = add i64 %429, 1
  br label %428

474:                                              ; preds = %428
  %475 = add i64 %425, 1
  br label %424

476:                                              ; preds = %424
  %477 = add i64 %421, 1
  br label %420

478:                                              ; preds = %420
  %479 = add i64 %417, 1
  br label %416

480:                                              ; preds = %416
  %481 = call ptr @aligned_alloc(i64 64, i64 1348730880)
  %482 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %481, 0
  %483 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %482, ptr %481, 1
  %484 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %483, i64 0, 2
  %485 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %484, i64 10, 3, 0
  %486 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %485, i64 672, 3, 1
  %487 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %486, i64 224, 3, 2
  %488 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %487, i64 224, 3, 3
  %489 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %488, i64 33718272, 4, 0
  %490 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %489, i64 50176, 4, 1
  %491 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %490, i64 224, 4, 2
  %492 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %491, i64 1, 4, 3
  br label %493

493:                                              ; preds = %532, %480
  %494 = phi i64 [ %533, %532 ], [ 0, %480 ]
  %495 = icmp slt i64 %494, 10
  br i1 %495, label %496, label %534

496:                                              ; preds = %493
  br label %497

497:                                              ; preds = %530, %496
  %498 = phi i64 [ %531, %530 ], [ 0, %496 ]
  %499 = icmp slt i64 %498, 672
  br i1 %499, label %500, label %532

500:                                              ; preds = %497
  br label %501

501:                                              ; preds = %528, %500
  %502 = phi i64 [ %529, %528 ], [ 0, %500 ]
  %503 = icmp slt i64 %502, 224
  br i1 %503, label %504, label %530

504:                                              ; preds = %501
  br label %505

505:                                              ; preds = %508, %504
  %506 = phi i64 [ %527, %508 ], [ 0, %504 ]
  %507 = icmp slt i64 %506, 224
  br i1 %507, label %508, label %528

508:                                              ; preds = %505
  %509 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 1
  %510 = mul nuw nsw i64 %494, 33718272
  %511 = mul nuw nsw i64 %498, 50176
  %512 = add nuw nsw i64 %510, %511
  %513 = mul nuw nsw i64 %502, 224
  %514 = add nuw nsw i64 %512, %513
  %515 = add nuw nsw i64 %514, 0
  %516 = add nuw nsw i64 %515, %506
  %517 = getelementptr inbounds nuw float, ptr %509, i64 %516
  %518 = load float, ptr %517, align 4
  %519 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %492, 1
  %520 = mul nuw nsw i64 %494, 33718272
  %521 = mul nuw nsw i64 %498, 50176
  %522 = add nuw nsw i64 %520, %521
  %523 = mul nuw nsw i64 %502, 224
  %524 = add nuw nsw i64 %522, %523
  %525 = add nuw nsw i64 %524, %506
  %526 = getelementptr inbounds nuw float, ptr %519, i64 %525
  store float %518, ptr %526, align 4
  %527 = add i64 %506, 1
  br label %505

528:                                              ; preds = %505
  %529 = add i64 %502, 1
  br label %501

530:                                              ; preds = %501
  %531 = add i64 %498, 1
  br label %497

532:                                              ; preds = %497
  %533 = add i64 %494, 1
  br label %493

534:                                              ; preds = %493
  %535 = call ptr @aligned_alloc(i64 64, i64 1397329920)
  %536 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %535, 0
  %537 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %536, ptr %535, 1
  %538 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %537, i64 0, 2
  %539 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %538, i64 10, 3, 0
  %540 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %539, i64 672, 3, 1
  %541 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %540, i64 228, 3, 2
  %542 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %541, i64 228, 3, 3
  %543 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %542, i64 34933248, 4, 0
  %544 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %543, i64 51984, 4, 1
  %545 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %544, i64 228, 4, 2
  %546 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %545, i64 1, 4, 3
  br label %547

547:                                              ; preds = %576, %534
  %548 = phi i64 [ %577, %576 ], [ 0, %534 ]
  %549 = icmp slt i64 %548, 10
  br i1 %549, label %550, label %578

550:                                              ; preds = %547
  br label %551

551:                                              ; preds = %574, %550
  %552 = phi i64 [ %575, %574 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 672
  br i1 %553, label %554, label %576

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %572, %554
  %556 = phi i64 [ %573, %572 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 228
  br i1 %557, label %558, label %574

558:                                              ; preds = %555
  br label %559

559:                                              ; preds = %562, %558
  %560 = phi i64 [ %571, %562 ], [ 0, %558 ]
  %561 = icmp slt i64 %560, 228
  br i1 %561, label %562, label %572

562:                                              ; preds = %559
  %563 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %546, 1
  %564 = mul nuw nsw i64 %548, 34933248
  %565 = mul nuw nsw i64 %552, 51984
  %566 = add nuw nsw i64 %564, %565
  %567 = mul nuw nsw i64 %556, 228
  %568 = add nuw nsw i64 %566, %567
  %569 = add nuw nsw i64 %568, %560
  %570 = getelementptr inbounds nuw float, ptr %563, i64 %569
  store float 0.000000e+00, ptr %570, align 4
  %571 = add i64 %560, 1
  br label %559

572:                                              ; preds = %559
  %573 = add i64 %556, 1
  br label %555

574:                                              ; preds = %555
  %575 = add i64 %552, 1
  br label %551

576:                                              ; preds = %551
  %577 = add i64 %548, 1
  br label %547

578:                                              ; preds = %547
  %579 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %546, 0
  %580 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %546, 1
  %581 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %579, 0
  %582 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %581, ptr %580, 1
  %583 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %582, i64 458, 2
  %584 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %583, i64 10, 3, 0
  %585 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %584, i64 34933248, 4, 0
  %586 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %585, i64 672, 3, 1
  %587 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %586, i64 51984, 4, 1
  %588 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %587, i64 224, 3, 2
  %589 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %588, i64 228, 4, 2
  %590 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %589, i64 224, 3, 3
  %591 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %590, i64 1, 4, 3
  %592 = call ptr @llvm.stacksave.p0()
  %593 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %492, ptr %593, align 8
  %594 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %593, 1
  %595 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %591, ptr %595, align 8
  %596 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %595, 1
  %597 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %594, ptr %597, align 8
  %598 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %596, ptr %598, align 8
  call void @memrefCopy(i64 4, ptr %597, ptr %598)
  call void @llvm.stackrestore.p0(ptr %592)
  %599 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 0
  %600 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 1
  %601 = insertvalue { ptr, ptr, i64 } poison, ptr %599, 0
  %602 = insertvalue { ptr, ptr, i64 } %601, ptr %600, 1
  %603 = insertvalue { ptr, ptr, i64 } %602, i64 0, 2
  %604 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 2
  %605 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 3, 0
  %606 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 3, 1
  %607 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 3, 2
  %608 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 4, 0
  %609 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 4, 1
  %610 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %150, 4, 2
  %611 = extractvalue { ptr, ptr, i64 } %603, 0
  %612 = extractvalue { ptr, ptr, i64 } %603, 1
  %613 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %611, 0
  %614 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %613, ptr %612, 1
  %615 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %614, i64 0, 2
  %616 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %615, i64 672, 3, 0
  %617 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %616, i64 25, 4, 0
  %618 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %617, i64 1, 3, 1
  %619 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %618, i64 25, 4, 1
  %620 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %619, i64 5, 3, 2
  %621 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %620, i64 5, 4, 2
  %622 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %621, i64 5, 3, 3
  %623 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %622, i64 1, 4, 3
  %624 = call ptr @aligned_alloc(i64 64, i64 337182720)
  %625 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %624, 0
  %626 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %625, ptr %624, 1
  %627 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %626, i64 0, 2
  %628 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %627, i64 10, 3, 0
  %629 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %628, i64 672, 3, 1
  %630 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %629, i64 112, 3, 2
  %631 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %630, i64 112, 3, 3
  %632 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %631, i64 8429568, 4, 0
  %633 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %632, i64 12544, 4, 1
  %634 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %633, i64 112, 4, 2
  %635 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %634, i64 1, 4, 3
  br label %636

636:                                              ; preds = %665, %578
  %637 = phi i64 [ %666, %665 ], [ 0, %578 ]
  %638 = icmp slt i64 %637, 10
  br i1 %638, label %639, label %667

639:                                              ; preds = %636
  br label %640

640:                                              ; preds = %663, %639
  %641 = phi i64 [ %664, %663 ], [ 0, %639 ]
  %642 = icmp slt i64 %641, 672
  br i1 %642, label %643, label %665

643:                                              ; preds = %640
  br label %644

644:                                              ; preds = %661, %643
  %645 = phi i64 [ %662, %661 ], [ 0, %643 ]
  %646 = icmp slt i64 %645, 112
  br i1 %646, label %647, label %663

647:                                              ; preds = %644
  br label %648

648:                                              ; preds = %651, %647
  %649 = phi i64 [ %660, %651 ], [ 0, %647 ]
  %650 = icmp slt i64 %649, 112
  br i1 %650, label %651, label %661

651:                                              ; preds = %648
  %652 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %653 = mul nuw nsw i64 %637, 8429568
  %654 = mul nuw nsw i64 %641, 12544
  %655 = add nuw nsw i64 %653, %654
  %656 = mul nuw nsw i64 %645, 112
  %657 = add nuw nsw i64 %655, %656
  %658 = add nuw nsw i64 %657, %649
  %659 = getelementptr inbounds nuw float, ptr %652, i64 %658
  store float 0.000000e+00, ptr %659, align 4
  %660 = add i64 %649, 1
  br label %648

661:                                              ; preds = %648
  %662 = add i64 %645, 1
  br label %644

663:                                              ; preds = %644
  %664 = add i64 %641, 1
  br label %640

665:                                              ; preds = %640
  %666 = add i64 %637, 1
  br label %636

667:                                              ; preds = %636
  br label %668

668:                                              ; preds = %749, %667
  %669 = phi i64 [ %750, %749 ], [ 0, %667 ]
  %670 = icmp slt i64 %669, 10
  br i1 %670, label %671, label %751

671:                                              ; preds = %668
  br label %672

672:                                              ; preds = %747, %671
  %673 = phi i64 [ %748, %747 ], [ 0, %671 ]
  %674 = icmp slt i64 %673, 672
  br i1 %674, label %675, label %749

675:                                              ; preds = %672
  br label %676

676:                                              ; preds = %745, %675
  %677 = phi i64 [ %746, %745 ], [ 0, %675 ]
  %678 = icmp slt i64 %677, 112
  br i1 %678, label %679, label %747

679:                                              ; preds = %676
  br label %680

680:                                              ; preds = %743, %679
  %681 = phi i64 [ %744, %743 ], [ 0, %679 ]
  %682 = icmp slt i64 %681, 1
  br i1 %682, label %683, label %745

683:                                              ; preds = %680
  br label %684

684:                                              ; preds = %741, %683
  %685 = phi i64 [ %742, %741 ], [ 0, %683 ]
  %686 = icmp slt i64 %685, 5
  br i1 %686, label %687, label %743

687:                                              ; preds = %684
  br label %688

688:                                              ; preds = %739, %687
  %689 = phi i64 [ %740, %739 ], [ 0, %687 ]
  %690 = icmp slt i64 %689, 5
  br i1 %690, label %691, label %741

691:                                              ; preds = %688
  br label %692

692:                                              ; preds = %695, %691
  %693 = phi i64 [ %738, %695 ], [ 0, %691 ]
  %694 = icmp slt i64 %693, 112
  br i1 %694, label %695, label %739

695:                                              ; preds = %692
  %696 = add i64 %673, %681
  %697 = mul nsw i64 %677, 2
  %698 = add i64 %697, %685
  %699 = mul nsw i64 %693, 2
  %700 = add i64 %689, %699
  %701 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %546, 1
  %702 = mul nuw nsw i64 %669, 34933248
  %703 = mul nuw nsw i64 %696, 51984
  %704 = add nuw nsw i64 %702, %703
  %705 = mul nuw nsw i64 %698, 228
  %706 = add nuw nsw i64 %704, %705
  %707 = add nuw nsw i64 %706, %700
  %708 = getelementptr inbounds nuw float, ptr %701, i64 %707
  %709 = load float, ptr %708, align 4
  %710 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %623, 1
  %711 = mul nuw nsw i64 %673, 25
  %712 = mul nuw nsw i64 %681, 25
  %713 = add nuw nsw i64 %711, %712
  %714 = mul nuw nsw i64 %685, 5
  %715 = add nuw nsw i64 %713, %714
  %716 = add nuw nsw i64 %715, %689
  %717 = getelementptr inbounds nuw float, ptr %710, i64 %716
  %718 = load float, ptr %717, align 4
  %719 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %720 = mul nuw nsw i64 %669, 8429568
  %721 = mul nuw nsw i64 %673, 12544
  %722 = add nuw nsw i64 %720, %721
  %723 = mul nuw nsw i64 %677, 112
  %724 = add nuw nsw i64 %722, %723
  %725 = add nuw nsw i64 %724, %693
  %726 = getelementptr inbounds nuw float, ptr %719, i64 %725
  %727 = load float, ptr %726, align 4
  %728 = fmul float %709, %718
  %729 = fadd float %728, %727
  %730 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %731 = mul nuw nsw i64 %669, 8429568
  %732 = mul nuw nsw i64 %673, 12544
  %733 = add nuw nsw i64 %731, %732
  %734 = mul nuw nsw i64 %677, 112
  %735 = add nuw nsw i64 %733, %734
  %736 = add nuw nsw i64 %735, %693
  %737 = getelementptr inbounds nuw float, ptr %730, i64 %736
  store float %729, ptr %737, align 4
  %738 = add i64 %693, 1
  br label %692

739:                                              ; preds = %692
  %740 = add i64 %689, 1
  br label %688

741:                                              ; preds = %688
  %742 = add i64 %685, 1
  br label %684

743:                                              ; preds = %684
  %744 = add i64 %681, 1
  br label %680

745:                                              ; preds = %680
  %746 = add i64 %677, 1
  br label %676

747:                                              ; preds = %676
  %748 = add i64 %673, 1
  br label %672

749:                                              ; preds = %672
  %750 = add i64 %669, 1
  br label %668

751:                                              ; preds = %668
  %752 = call ptr @aligned_alloc(i64 64, i64 2688)
  %753 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %752, 0
  %754 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %753, ptr %752, 1
  %755 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %754, i64 0, 2
  %756 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %755, i64 672, 3, 0
  %757 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %756, i64 1, 4, 0
  br label %758

758:                                              ; preds = %761, %751
  %759 = phi i64 [ %774, %761 ], [ 0, %751 ]
  %760 = icmp slt i64 %759, 672
  br i1 %760, label %761, label %775

761:                                              ; preds = %758
  %762 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %763 = getelementptr inbounds nuw float, ptr %762, i64 %759
  %764 = load float, ptr %763, align 4
  %765 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, 1
  %766 = getelementptr inbounds nuw float, ptr %765, i64 %759
  %767 = load float, ptr %766, align 4
  %768 = fadd float %764, f0x3727C5AC
  %769 = call float @llvm.sqrt.f32(float %768)
  %770 = fdiv float 1.000000e+00, %769
  %771 = fmul float %770, %767
  %772 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %757, 1
  %773 = getelementptr inbounds nuw float, ptr %772, i64 %759
  store float %771, ptr %773, align 4
  %774 = add i64 %759, 1
  br label %758

775:                                              ; preds = %758
  br label %776

776:                                              ; preds = %779, %775
  %777 = phi i64 [ %796, %779 ], [ 0, %775 ]
  %778 = icmp slt i64 %777, 672
  br i1 %778, label %779, label %797

779:                                              ; preds = %776
  %780 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %141, 1
  %781 = getelementptr inbounds nuw float, ptr %780, i64 %777
  %782 = load float, ptr %781, align 4
  %783 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %136, 1
  %784 = getelementptr inbounds nuw float, ptr %783, i64 %777
  %785 = load float, ptr %784, align 4
  %786 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %131, 1
  %787 = getelementptr inbounds nuw float, ptr %786, i64 %777
  %788 = load float, ptr %787, align 4
  %789 = fadd float %785, f0x3727C5AC
  %790 = call float @llvm.sqrt.f32(float %789)
  %791 = fdiv float 1.000000e+00, %790
  %792 = fmul float %791, %788
  %793 = fmul float %792, %782
  %794 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, 1
  %795 = getelementptr inbounds nuw float, ptr %794, i64 %777
  store float %793, ptr %795, align 4
  %796 = add i64 %777, 1
  br label %776

797:                                              ; preds = %776
  br label %798

798:                                              ; preds = %850, %797
  %799 = phi i64 [ %851, %850 ], [ 0, %797 ]
  %800 = icmp slt i64 %799, 10
  br i1 %800, label %801, label %852

801:                                              ; preds = %798
  br label %802

802:                                              ; preds = %848, %801
  %803 = phi i64 [ %849, %848 ], [ 0, %801 ]
  %804 = icmp slt i64 %803, 672
  br i1 %804, label %805, label %850

805:                                              ; preds = %802
  br label %806

806:                                              ; preds = %846, %805
  %807 = phi i64 [ %847, %846 ], [ 0, %805 ]
  %808 = icmp slt i64 %807, 112
  br i1 %808, label %809, label %848

809:                                              ; preds = %806
  br label %810

810:                                              ; preds = %813, %809
  %811 = phi i64 [ %845, %813 ], [ 0, %809 ]
  %812 = icmp slt i64 %811, 112
  br i1 %812, label %813, label %846

813:                                              ; preds = %810
  %814 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %815 = mul nuw nsw i64 %799, 8429568
  %816 = mul nuw nsw i64 %803, 12544
  %817 = add nuw nsw i64 %815, %816
  %818 = mul nuw nsw i64 %807, 112
  %819 = add nuw nsw i64 %817, %818
  %820 = add nuw nsw i64 %819, %811
  %821 = getelementptr inbounds nuw float, ptr %814, i64 %820
  %822 = load float, ptr %821, align 4
  %823 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %757, 1
  %824 = getelementptr inbounds nuw float, ptr %823, i64 %803
  %825 = load float, ptr %824, align 4
  %826 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, 1
  %827 = getelementptr inbounds nuw float, ptr %826, i64 %803
  %828 = load float, ptr %827, align 4
  %829 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %126, 1
  %830 = getelementptr inbounds nuw float, ptr %829, i64 %803
  %831 = load float, ptr %830, align 4
  %832 = fmul float %822, %825
  %833 = fsub float %832, %828
  %834 = fadd float %833, %831
  %835 = call float @llvm.maxnum.f32(float %834, float 0.000000e+00)
  %836 = call float @llvm.minnum.f32(float %835, float 6.000000e+00)
  %837 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %838 = mul nuw nsw i64 %799, 8429568
  %839 = mul nuw nsw i64 %803, 12544
  %840 = add nuw nsw i64 %838, %839
  %841 = mul nuw nsw i64 %807, 112
  %842 = add nuw nsw i64 %840, %841
  %843 = add nuw nsw i64 %842, %811
  %844 = getelementptr inbounds nuw float, ptr %837, i64 %843
  store float %836, ptr %844, align 4
  %845 = add i64 %811, 1
  br label %810

846:                                              ; preds = %810
  %847 = add i64 %807, 1
  br label %806

848:                                              ; preds = %806
  %849 = add i64 %803, 1
  br label %802

850:                                              ; preds = %802
  %851 = add i64 %799, 1
  br label %798

852:                                              ; preds = %798
  %853 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 0
  %854 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 1
  %855 = insertvalue { ptr, ptr, i64 } poison, ptr %853, 0
  %856 = insertvalue { ptr, ptr, i64 } %855, ptr %854, 1
  %857 = insertvalue { ptr, ptr, i64 } %856, i64 0, 2
  %858 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 2
  %859 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 3, 0
  %860 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 3, 1
  %861 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 4, 0
  %862 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, 4, 1
  %863 = extractvalue { ptr, ptr, i64 } %857, 0
  %864 = extractvalue { ptr, ptr, i64 } %857, 1
  %865 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %863, 0
  %866 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %865, ptr %864, 1
  %867 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %866, i64 0, 2
  %868 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %867, i64 192, 3, 0
  %869 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %868, i64 672, 4, 0
  %870 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %869, i64 672, 3, 1
  %871 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %870, i64 1, 4, 1
  %872 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %871, i64 1, 3, 2
  %873 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %872, i64 1, 4, 2
  %874 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %873, i64 1, 3, 3
  %875 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %874, i64 1, 4, 3
  %876 = call ptr @aligned_alloc(i64 64, i64 96337920)
  %877 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } poison, ptr %876, 0
  %878 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %877, ptr %876, 1
  %879 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %878, i64 0, 2
  %880 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %879, i64 10, 3, 0
  %881 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %880, i64 192, 3, 1
  %882 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %881, i64 112, 3, 2
  %883 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %882, i64 1, 3, 3
  %884 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %883, i64 112, 3, 4
  %885 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %884, i64 2408448, 4, 0
  %886 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %885, i64 12544, 4, 1
  %887 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %886, i64 112, 4, 2
  %888 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %887, i64 112, 4, 3
  %889 = insertvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %888, i64 1, 4, 4
  br label %890

890:                                              ; preds = %927, %852
  %891 = phi i64 [ %928, %927 ], [ 0, %852 ]
  %892 = icmp slt i64 %891, 10
  br i1 %892, label %893, label %929

893:                                              ; preds = %890
  br label %894

894:                                              ; preds = %925, %893
  %895 = phi i64 [ %926, %925 ], [ 0, %893 ]
  %896 = icmp slt i64 %895, 192
  br i1 %896, label %897, label %927

897:                                              ; preds = %894
  br label %898

898:                                              ; preds = %923, %897
  %899 = phi i64 [ %924, %923 ], [ 0, %897 ]
  %900 = icmp slt i64 %899, 112
  br i1 %900, label %901, label %925

901:                                              ; preds = %898
  br label %902

902:                                              ; preds = %921, %901
  %903 = phi i64 [ %922, %921 ], [ 0, %901 ]
  %904 = icmp slt i64 %903, 1
  br i1 %904, label %905, label %923

905:                                              ; preds = %902
  br label %906

906:                                              ; preds = %909, %905
  %907 = phi i64 [ %920, %909 ], [ 0, %905 ]
  %908 = icmp slt i64 %907, 112
  br i1 %908, label %909, label %921

909:                                              ; preds = %906
  %910 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %911 = mul nuw nsw i64 %891, 2408448
  %912 = mul nuw nsw i64 %895, 12544
  %913 = add nuw nsw i64 %911, %912
  %914 = mul nuw nsw i64 %899, 112
  %915 = add nuw nsw i64 %913, %914
  %916 = mul nuw nsw i64 %903, 112
  %917 = add nuw nsw i64 %915, %916
  %918 = add nuw nsw i64 %917, %907
  %919 = getelementptr inbounds nuw float, ptr %910, i64 %918
  store float 0.000000e+00, ptr %919, align 4
  %920 = add i64 %907, 1
  br label %906

921:                                              ; preds = %906
  %922 = add i64 %903, 1
  br label %902

923:                                              ; preds = %902
  %924 = add i64 %899, 1
  br label %898

925:                                              ; preds = %898
  %926 = add i64 %895, 1
  br label %894

927:                                              ; preds = %894
  %928 = add i64 %891, 1
  br label %890

929:                                              ; preds = %890
  %930 = call ptr @aligned_alloc(i64 64, i64 448)
  %931 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %930, 0
  %932 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %931, ptr %930, 1
  %933 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %932, i64 0, 2
  %934 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %933, i64 112, 3, 0
  %935 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %934, i64 1, 3, 1
  %936 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %935, i64 1, 4, 0
  %937 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %936, i64 1, 4, 1
  br label %938

938:                                              ; preds = %1025, %929
  %939 = phi i64 [ %1026, %1025 ], [ 0, %929 ]
  %940 = icmp slt i64 %939, 10
  br i1 %940, label %941, label %1027

941:                                              ; preds = %938
  br label %942

942:                                              ; preds = %1023, %941
  %943 = phi i64 [ %1024, %1023 ], [ 0, %941 ]
  %944 = icmp slt i64 %943, 192
  br i1 %944, label %945, label %1025

945:                                              ; preds = %942
  br label %946

946:                                              ; preds = %1021, %945
  %947 = phi i64 [ %1022, %1021 ], [ 0, %945 ]
  %948 = icmp slt i64 %947, 112
  br i1 %948, label %949, label %1023

949:                                              ; preds = %946
  br label %950

950:                                              ; preds = %1019, %949
  %951 = phi i64 [ %1020, %1019 ], [ 0, %949 ]
  %952 = icmp slt i64 %951, 1
  br i1 %952, label %953, label %1021

953:                                              ; preds = %950
  br label %954

954:                                              ; preds = %1017, %953
  %955 = phi i64 [ %1018, %1017 ], [ 0, %953 ]
  %956 = icmp slt i64 %955, 672
  br i1 %956, label %957, label %1019

957:                                              ; preds = %954
  br label %958

958:                                              ; preds = %1015, %957
  %959 = phi i64 [ %1016, %1015 ], [ 0, %957 ]
  %960 = icmp slt i64 %959, 1
  br i1 %960, label %961, label %1017

961:                                              ; preds = %958
  br label %962

962:                                              ; preds = %1013, %961
  %963 = phi i64 [ %1014, %1013 ], [ 0, %961 ]
  %964 = icmp slt i64 %963, 1
  br i1 %964, label %965, label %1015

965:                                              ; preds = %962
  br label %966

966:                                              ; preds = %969, %965
  %967 = phi i64 [ %1012, %969 ], [ 0, %965 ]
  %968 = icmp slt i64 %967, 112
  br i1 %968, label %969, label %1013

969:                                              ; preds = %966
  %970 = add i64 %947, %951
  %971 = add i64 %970, %959
  %972 = add i64 %963, %967
  %973 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 1
  %974 = mul nuw nsw i64 %939, 8429568
  %975 = mul nuw nsw i64 %955, 12544
  %976 = add nuw nsw i64 %974, %975
  %977 = mul nuw nsw i64 %971, 112
  %978 = add nuw nsw i64 %976, %977
  %979 = add nuw nsw i64 %978, %972
  %980 = getelementptr inbounds nuw float, ptr %973, i64 %979
  %981 = load float, ptr %980, align 4
  %982 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %875, 1
  %983 = mul nuw nsw i64 %943, 672
  %984 = add nuw nsw i64 %983, %955
  %985 = add nuw nsw i64 %984, %959
  %986 = add nuw nsw i64 %985, %963
  %987 = getelementptr inbounds nuw float, ptr %982, i64 %986
  %988 = load float, ptr %987, align 4
  %989 = add i64 %947, %951
  %990 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %991 = mul nuw nsw i64 %939, 2408448
  %992 = mul nuw nsw i64 %943, 12544
  %993 = add nuw nsw i64 %991, %992
  %994 = mul nuw nsw i64 %989, 112
  %995 = add nuw nsw i64 %993, %994
  %996 = add nuw nsw i64 %995, 0
  %997 = add nuw nsw i64 %996, %967
  %998 = getelementptr inbounds nuw float, ptr %990, i64 %997
  %999 = load float, ptr %998, align 4
  %1000 = add i64 %947, %951
  %1001 = fmul float %981, %988
  %1002 = fadd float %1001, %999
  %1003 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %1004 = mul nuw nsw i64 %939, 2408448
  %1005 = mul nuw nsw i64 %943, 12544
  %1006 = add nuw nsw i64 %1004, %1005
  %1007 = mul nuw nsw i64 %1000, 112
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = add nuw nsw i64 %1008, 0
  %1010 = add nuw nsw i64 %1009, %967
  %1011 = getelementptr inbounds nuw float, ptr %1003, i64 %1010
  store float %1002, ptr %1011, align 4
  %1012 = add i64 %967, 1
  br label %966

1013:                                             ; preds = %966
  %1014 = add i64 %963, 1
  br label %962

1015:                                             ; preds = %962
  %1016 = add i64 %959, 1
  br label %958

1017:                                             ; preds = %958
  %1018 = add i64 %955, 1
  br label %954

1019:                                             ; preds = %954
  %1020 = add i64 %951, 1
  br label %950

1021:                                             ; preds = %950
  %1022 = add i64 %947, 1
  br label %946

1023:                                             ; preds = %946
  %1024 = add i64 %943, 1
  br label %942

1025:                                             ; preds = %942
  %1026 = add i64 %939, 1
  br label %938

1027:                                             ; preds = %938
  %1028 = call ptr @aligned_alloc(i64 64, i64 768)
  %1029 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %1028, 0
  %1030 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1029, ptr %1028, 1
  %1031 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1030, i64 0, 2
  %1032 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1031, i64 192, 3, 0
  %1033 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1032, i64 1, 4, 0
  %1034 = call ptr @aligned_alloc(i64 64, i64 768)
  %1035 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %1034, 0
  %1036 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1035, ptr %1034, 1
  %1037 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1036, i64 0, 2
  %1038 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1037, i64 192, 3, 0
  %1039 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1038, i64 1, 4, 0
  br label %1040

1040:                                             ; preds = %1043, %1027
  %1041 = phi i64 [ %1056, %1043 ], [ 0, %1027 ]
  %1042 = icmp slt i64 %1041, 192
  br i1 %1042, label %1043, label %1057

1043:                                             ; preds = %1040
  %1044 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, 1
  %1045 = getelementptr inbounds nuw float, ptr %1044, i64 %1041
  %1046 = load float, ptr %1045, align 4
  %1047 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, 1
  %1048 = getelementptr inbounds nuw float, ptr %1047, i64 %1041
  %1049 = load float, ptr %1048, align 4
  %1050 = fadd float %1046, f0x3727C5AC
  %1051 = call float @llvm.sqrt.f32(float %1050)
  %1052 = fdiv float 1.000000e+00, %1051
  %1053 = fmul float %1052, %1049
  %1054 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1039, 1
  %1055 = getelementptr inbounds nuw float, ptr %1054, i64 %1041
  store float %1053, ptr %1055, align 4
  %1056 = add i64 %1041, 1
  br label %1040

1057:                                             ; preds = %1040
  br label %1058

1058:                                             ; preds = %1061, %1057
  %1059 = phi i64 [ %1078, %1061 ], [ 0, %1057 ]
  %1060 = icmp slt i64 %1059, 192
  br i1 %1060, label %1061, label %1079

1061:                                             ; preds = %1058
  %1062 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %114, 1
  %1063 = getelementptr inbounds nuw float, ptr %1062, i64 %1059
  %1064 = load float, ptr %1063, align 4
  %1065 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %109, 1
  %1066 = getelementptr inbounds nuw float, ptr %1065, i64 %1059
  %1067 = load float, ptr %1066, align 4
  %1068 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %104, 1
  %1069 = getelementptr inbounds nuw float, ptr %1068, i64 %1059
  %1070 = load float, ptr %1069, align 4
  %1071 = fadd float %1067, f0x3727C5AC
  %1072 = call float @llvm.sqrt.f32(float %1071)
  %1073 = fdiv float 1.000000e+00, %1072
  %1074 = fmul float %1073, %1070
  %1075 = fmul float %1074, %1064
  %1076 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1033, 1
  %1077 = getelementptr inbounds nuw float, ptr %1076, i64 %1059
  store float %1075, ptr %1077, align 4
  %1078 = add i64 %1059, 1
  br label %1058

1079:                                             ; preds = %1058
  br label %1080

1080:                                             ; preds = %1140, %1079
  %1081 = phi i64 [ %1141, %1140 ], [ 0, %1079 ]
  %1082 = icmp slt i64 %1081, 10
  br i1 %1082, label %1083, label %1142

1083:                                             ; preds = %1080
  br label %1084

1084:                                             ; preds = %1138, %1083
  %1085 = phi i64 [ %1139, %1138 ], [ 0, %1083 ]
  %1086 = icmp slt i64 %1085, 192
  br i1 %1086, label %1087, label %1140

1087:                                             ; preds = %1084
  br label %1088

1088:                                             ; preds = %1136, %1087
  %1089 = phi i64 [ %1137, %1136 ], [ 0, %1087 ]
  %1090 = icmp slt i64 %1089, 112
  br i1 %1090, label %1091, label %1138

1091:                                             ; preds = %1088
  br label %1092

1092:                                             ; preds = %1134, %1091
  %1093 = phi i64 [ %1135, %1134 ], [ 0, %1091 ]
  %1094 = icmp slt i64 %1093, 1
  br i1 %1094, label %1095, label %1136

1095:                                             ; preds = %1092
  br label %1096

1096:                                             ; preds = %1099, %1095
  %1097 = phi i64 [ %1133, %1099 ], [ 0, %1095 ]
  %1098 = icmp slt i64 %1097, 112
  br i1 %1098, label %1099, label %1134

1099:                                             ; preds = %1096
  %1100 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %1101 = mul nuw nsw i64 %1081, 2408448
  %1102 = mul nuw nsw i64 %1085, 12544
  %1103 = add nuw nsw i64 %1101, %1102
  %1104 = mul nuw nsw i64 %1089, 112
  %1105 = add nuw nsw i64 %1103, %1104
  %1106 = mul nuw nsw i64 %1093, 112
  %1107 = add nuw nsw i64 %1105, %1106
  %1108 = add nuw nsw i64 %1107, %1097
  %1109 = getelementptr inbounds nuw float, ptr %1100, i64 %1108
  %1110 = load float, ptr %1109, align 4
  %1111 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1039, 1
  %1112 = getelementptr inbounds nuw float, ptr %1111, i64 %1085
  %1113 = load float, ptr %1112, align 4
  %1114 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1033, 1
  %1115 = getelementptr inbounds nuw float, ptr %1114, i64 %1085
  %1116 = load float, ptr %1115, align 4
  %1117 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %99, 1
  %1118 = getelementptr inbounds nuw float, ptr %1117, i64 %1085
  %1119 = load float, ptr %1118, align 4
  %1120 = fmul float %1110, %1113
  %1121 = fsub float %1120, %1116
  %1122 = fadd float %1121, %1119
  %1123 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %1124 = mul nuw nsw i64 %1081, 2408448
  %1125 = mul nuw nsw i64 %1085, 12544
  %1126 = add nuw nsw i64 %1124, %1125
  %1127 = mul nuw nsw i64 %1089, 112
  %1128 = add nuw nsw i64 %1126, %1127
  %1129 = mul nuw nsw i64 %1093, 112
  %1130 = add nuw nsw i64 %1128, %1129
  %1131 = add nuw nsw i64 %1130, %1097
  %1132 = getelementptr inbounds nuw float, ptr %1123, i64 %1131
  store float %1122, ptr %1132, align 4
  %1133 = add i64 %1097, 1
  br label %1096

1134:                                             ; preds = %1096
  %1135 = add i64 %1093, 1
  br label %1092

1136:                                             ; preds = %1092
  %1137 = add i64 %1089, 1
  br label %1088

1138:                                             ; preds = %1088
  %1139 = add i64 %1085, 1
  br label %1084

1140:                                             ; preds = %1084
  %1141 = add i64 %1081, 1
  br label %1080

1142:                                             ; preds = %1080
  %1143 = call ptr @aligned_alloc(i64 64, i64 96337920)
  %1144 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %1143, 0
  %1145 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1144, ptr %1143, 1
  %1146 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1145, i64 0, 2
  %1147 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1146, i64 10, 3, 0
  %1148 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1147, i64 192, 3, 1
  %1149 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1148, i64 112, 3, 2
  %1150 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1149, i64 112, 3, 3
  %1151 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1150, i64 2408448, 4, 0
  %1152 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1151, i64 12544, 4, 1
  %1153 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1152, i64 112, 4, 2
  %1154 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1153, i64 1, 4, 3
  br label %1155

1155:                                             ; preds = %1194, %1142
  %1156 = phi i64 [ %1195, %1194 ], [ 0, %1142 ]
  %1157 = icmp slt i64 %1156, 10
  br i1 %1157, label %1158, label %1196

1158:                                             ; preds = %1155
  br label %1159

1159:                                             ; preds = %1192, %1158
  %1160 = phi i64 [ %1193, %1192 ], [ 0, %1158 ]
  %1161 = icmp slt i64 %1160, 192
  br i1 %1161, label %1162, label %1194

1162:                                             ; preds = %1159
  br label %1163

1163:                                             ; preds = %1190, %1162
  %1164 = phi i64 [ %1191, %1190 ], [ 0, %1162 ]
  %1165 = icmp slt i64 %1164, 112
  br i1 %1165, label %1166, label %1192

1166:                                             ; preds = %1163
  br label %1167

1167:                                             ; preds = %1170, %1166
  %1168 = phi i64 [ %1189, %1170 ], [ 0, %1166 ]
  %1169 = icmp slt i64 %1168, 112
  br i1 %1169, label %1170, label %1190

1170:                                             ; preds = %1167
  %1171 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 1
  %1172 = mul nuw nsw i64 %1156, 2408448
  %1173 = mul nuw nsw i64 %1160, 12544
  %1174 = add nuw nsw i64 %1172, %1173
  %1175 = mul nuw nsw i64 %1164, 112
  %1176 = add nuw nsw i64 %1174, %1175
  %1177 = add nuw nsw i64 %1176, 0
  %1178 = add nuw nsw i64 %1177, %1168
  %1179 = getelementptr inbounds nuw float, ptr %1171, i64 %1178
  %1180 = load float, ptr %1179, align 4
  %1181 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %1154, 1
  %1182 = mul nuw nsw i64 %1156, 2408448
  %1183 = mul nuw nsw i64 %1160, 12544
  %1184 = add nuw nsw i64 %1182, %1183
  %1185 = mul nuw nsw i64 %1164, 112
  %1186 = add nuw nsw i64 %1184, %1185
  %1187 = add nuw nsw i64 %1186, %1168
  %1188 = getelementptr inbounds nuw float, ptr %1181, i64 %1187
  store float %1180, ptr %1188, align 4
  %1189 = add i64 %1168, 1
  br label %1167

1190:                                             ; preds = %1167
  %1191 = add i64 %1164, 1
  br label %1163

1192:                                             ; preds = %1163
  %1193 = add i64 %1160, 1
  br label %1159

1194:                                             ; preds = %1159
  %1195 = add i64 %1156, 1
  br label %1155

1196:                                             ; preds = %1155
  %1197 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %225, 0
  call void @free(ptr %1197)
  %1198 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %273, 0
  call void @free(ptr %1198)
  %1199 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %369, 0
  call void @free(ptr %1199)
  %1200 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %375, 0
  call void @free(ptr %1200)
  %1201 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %492, 0
  call void @free(ptr %1201)
  %1202 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %546, 0
  call void @free(ptr %1202)
  %1203 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %635, 0
  call void @free(ptr %1203)
  %1204 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %757, 0
  call void @free(ptr %1204)
  %1205 = extractvalue { ptr, ptr, i64, [5 x i64], [5 x i64] } %889, 0
  call void @free(ptr %1205)
  %1206 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %937, 0
  call void @free(ptr %1206)
  %1207 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1033, 0
  call void @free(ptr %1207)
  %1208 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %1039, 0
  call void @free(ptr %1208)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %1154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
