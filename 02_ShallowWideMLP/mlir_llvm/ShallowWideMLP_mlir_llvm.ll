; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @ShallowWideMLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
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
  %68 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %14, 0
  %69 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %68, ptr %15, 1
  %70 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %69, i64 %16, 2
  %71 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %70, i64 %17, 3, 0
  %72 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %71, i64 %18, 4, 0
  %73 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %7, 0
  %74 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %73, ptr %8, 1
  %75 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, i64 %9, 2
  %76 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %75, i64 %10, 3, 0
  %77 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %76, i64 %12, 4, 0
  %78 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %77, i64 %11, 3, 1
  %79 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %78, i64 %13, 4, 1
  %80 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %0, 0
  %81 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %80, ptr %1, 1
  %82 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %81, i64 %2, 2
  %83 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %82, i64 %3, 3, 0
  %84 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %83, i64 %5, 4, 0
  %85 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %84, i64 %4, 3, 1
  %86 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %85, i64 %6, 4, 1
  %87 = call ptr @malloc(i64 2147483712)
  %88 = ptrtoint ptr %87 to i64
  %89 = add i64 %88, 63
  %90 = urem i64 %89, 64
  %91 = sub i64 %89, %90
  %92 = inttoptr i64 %91 to ptr
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %87, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, ptr %92, 1
  %95 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, i64 0, 2
  %96 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %95, i64 16384, 3, 0
  %97 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %96, i64 32768, 3, 1
  %98 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %97, i64 32768, 4, 0
  %99 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %98, i64 1, 4, 1
  br label %100

100:                                              ; preds = %132, %43
  %101 = phi i64 [ %133, %132 ], [ 0, %43 ]
  %102 = icmp slt i64 %101, 16384
  br i1 %102, label %103, label %134

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %130, %103
  %105 = phi i64 [ %131, %130 ], [ 0, %103 ]
  %106 = icmp slt i64 %105, 32768
  br i1 %106, label %107, label %132

107:                                              ; preds = %104
  %108 = add i64 %101, 32
  br label %109

109:                                              ; preds = %128, %107
  %110 = phi i64 [ %129, %128 ], [ %101, %107 ]
  %111 = icmp slt i64 %110, %108
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = add i64 %105, 32
  br label %114

114:                                              ; preds = %117, %112
  %115 = phi i64 [ %127, %117 ], [ %105, %112 ]
  %116 = icmp slt i64 %115, %113
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 1
  %119 = mul nuw nsw i64 %115, 16384
  %120 = add nuw nsw i64 %119, %110
  %121 = getelementptr inbounds nuw float, ptr %118, i64 %120
  %122 = load float, ptr %121, align 4
  %123 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, 1
  %124 = mul nuw nsw i64 %110, 32768
  %125 = add nuw nsw i64 %124, %115
  %126 = getelementptr inbounds nuw float, ptr %123, i64 %125
  store float %122, ptr %126, align 4
  %127 = add i64 %115, 1
  br label %114

128:                                              ; preds = %114
  %129 = add i64 %110, 1
  br label %109

130:                                              ; preds = %109
  %131 = add i64 %105, 32
  br label %104

132:                                              ; preds = %104
  %133 = add i64 %101, 32
  br label %100

134:                                              ; preds = %100
  %135 = call ptr @malloc(i64 16777280)
  %136 = ptrtoint ptr %135 to i64
  %137 = add i64 %136, 63
  %138 = urem i64 %137, 64
  %139 = sub i64 %137, %138
  %140 = inttoptr i64 %139 to ptr
  %141 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %135, 0
  %142 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %141, ptr %140, 1
  %143 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %142, i64 0, 2
  %144 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %143, i64 128, 3, 0
  %145 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %144, i64 32768, 3, 1
  %146 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %145, i64 32768, 4, 0
  %147 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %146, i64 1, 4, 1
  %148 = call ptr @malloc(i64 16777280)
  %149 = ptrtoint ptr %148 to i64
  %150 = add i64 %149, 63
  %151 = urem i64 %150, 64
  %152 = sub i64 %150, %151
  %153 = inttoptr i64 %152 to ptr
  %154 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %148, 0
  %155 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %154, ptr %153, 1
  %156 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, i64 0, 2
  %157 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %156, i64 128, 3, 0
  %158 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %157, i64 32768, 3, 1
  %159 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %158, i64 32768, 4, 0
  %160 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %159, i64 1, 4, 1
  br label %161

161:                                              ; preds = %188, %134
  %162 = phi i64 [ %189, %188 ], [ 0, %134 ]
  %163 = icmp slt i64 %162, 128
  br i1 %163, label %164, label %190

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %186, %164
  %166 = phi i64 [ %187, %186 ], [ 0, %164 ]
  %167 = icmp slt i64 %166, 32768
  br i1 %167, label %168, label %188

168:                                              ; preds = %165
  %169 = add i64 %162, 32
  br label %170

170:                                              ; preds = %184, %168
  %171 = phi i64 [ %185, %184 ], [ %162, %168 ]
  %172 = icmp slt i64 %171, %169
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = add i64 %166, 32
  br label %175

175:                                              ; preds = %178, %173
  %176 = phi i64 [ %183, %178 ], [ %166, %173 ]
  %177 = icmp slt i64 %176, %174
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 1
  %180 = mul nuw nsw i64 %171, 32768
  %181 = add nuw nsw i64 %180, %176
  %182 = getelementptr inbounds nuw float, ptr %179, i64 %181
  store float 0.000000e+00, ptr %182, align 4
  %183 = add i64 %176, 1
  br label %175

184:                                              ; preds = %175
  %185 = add i64 %171, 1
  br label %170

186:                                              ; preds = %170
  %187 = add i64 %166, 32
  br label %165

188:                                              ; preds = %165
  %189 = add i64 %162, 32
  br label %161

190:                                              ; preds = %161
  %191 = call ptr @malloc(i64 16777280)
  %192 = ptrtoint ptr %191 to i64
  %193 = add i64 %192, 63
  %194 = urem i64 %193, 64
  %195 = sub i64 %193, %194
  %196 = inttoptr i64 %195 to ptr
  %197 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %191, 0
  %198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %197, ptr %196, 1
  %199 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, i64 0, 2
  %200 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, i64 128, 3, 0
  %201 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %200, i64 32768, 3, 1
  %202 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %201, i64 32768, 4, 0
  %203 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %202, i64 1, 4, 1
  %204 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 3, 0
  %205 = mul i64 1, %204
  %206 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 3, 1
  %207 = mul i64 %205, %206
  %208 = mul i64 %207, 4
  %209 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 1
  %210 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 2
  %211 = getelementptr float, ptr %209, i64 %210
  %212 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 1
  %213 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 2
  %214 = getelementptr float, ptr %212, i64 %213
  call void @llvm.memcpy.p0.p0.i64(ptr %214, ptr %211, i64 %208, i1 false)
  br label %215

215:                                              ; preds = %272, %190
  %216 = phi i64 [ %273, %272 ], [ 0, %190 ]
  %217 = icmp slt i64 %216, 128
  br i1 %217, label %218, label %274

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %270, %218
  %220 = phi i64 [ %271, %270 ], [ 0, %218 ]
  %221 = icmp slt i64 %220, 32768
  br i1 %221, label %222, label %272

222:                                              ; preds = %219
  %223 = add i64 %216, 32
  br label %224

224:                                              ; preds = %268, %222
  %225 = phi i64 [ %269, %268 ], [ %216, %222 ]
  %226 = icmp slt i64 %225, %223
  br i1 %226, label %227, label %270

227:                                              ; preds = %224
  %228 = add i64 %220, 32
  br label %229

229:                                              ; preds = %266, %227
  %230 = phi i64 [ %267, %266 ], [ %220, %227 ]
  %231 = icmp slt i64 %230, %228
  br i1 %231, label %232, label %268

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %264, %232
  %234 = phi i64 [ %265, %264 ], [ 0, %232 ]
  %235 = icmp slt i64 %234, 16384
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = add i64 %234, 32
  br label %238

238:                                              ; preds = %241, %236
  %239 = phi i64 [ %263, %241 ], [ %234, %236 ]
  %240 = icmp slt i64 %239, %237
  br i1 %240, label %241, label %264

241:                                              ; preds = %238
  %242 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %243 = mul nuw nsw i64 %225, 16384
  %244 = add nuw nsw i64 %243, %239
  %245 = getelementptr inbounds nuw float, ptr %242, i64 %244
  %246 = load float, ptr %245, align 4
  %247 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, 1
  %248 = mul nuw nsw i64 %239, 32768
  %249 = add nuw nsw i64 %248, %230
  %250 = getelementptr inbounds nuw float, ptr %247, i64 %249
  %251 = load float, ptr %250, align 4
  %252 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 1
  %253 = mul nuw nsw i64 %225, 32768
  %254 = add nuw nsw i64 %253, %230
  %255 = getelementptr inbounds nuw float, ptr %252, i64 %254
  %256 = load float, ptr %255, align 4
  %257 = fmul float %246, %251
  %258 = fadd float %256, %257
  %259 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 1
  %260 = mul nuw nsw i64 %225, 32768
  %261 = add nuw nsw i64 %260, %230
  %262 = getelementptr inbounds nuw float, ptr %259, i64 %261
  store float %258, ptr %262, align 4
  %263 = add i64 %239, 1
  br label %238

264:                                              ; preds = %238
  %265 = add i64 %234, 32
  br label %233

266:                                              ; preds = %233
  %267 = add i64 %230, 1
  br label %229

268:                                              ; preds = %229
  %269 = add i64 %225, 1
  br label %224

270:                                              ; preds = %224
  %271 = add i64 %220, 32
  br label %219

272:                                              ; preds = %219
  %273 = add i64 %216, 32
  br label %215

274:                                              ; preds = %215
  br label %275

275:                                              ; preds = %311, %274
  %276 = phi i64 [ %312, %311 ], [ 0, %274 ]
  %277 = icmp slt i64 %276, 128
  br i1 %277, label %278, label %313

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %309, %278
  %280 = phi i64 [ %310, %309 ], [ 0, %278 ]
  %281 = icmp slt i64 %280, 32768
  br i1 %281, label %282, label %311

282:                                              ; preds = %279
  %283 = add i64 %276, 32
  br label %284

284:                                              ; preds = %307, %282
  %285 = phi i64 [ %308, %307 ], [ %276, %282 ]
  %286 = icmp slt i64 %285, %283
  br i1 %286, label %287, label %309

287:                                              ; preds = %284
  %288 = add i64 %280, 32
  br label %289

289:                                              ; preds = %292, %287
  %290 = phi i64 [ %306, %292 ], [ %280, %287 ]
  %291 = icmp slt i64 %290, %288
  br i1 %291, label %292, label %307

292:                                              ; preds = %289
  %293 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 1
  %294 = mul nuw nsw i64 %285, 32768
  %295 = add nuw nsw i64 %294, %290
  %296 = getelementptr inbounds nuw float, ptr %293, i64 %295
  %297 = load float, ptr %296, align 4
  %298 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, 1
  %299 = getelementptr inbounds nuw float, ptr %298, i64 %290
  %300 = load float, ptr %299, align 4
  %301 = fadd float %297, %300
  %302 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %303 = mul nuw nsw i64 %285, 32768
  %304 = add nuw nsw i64 %303, %290
  %305 = getelementptr inbounds nuw float, ptr %302, i64 %304
  store float %301, ptr %305, align 4
  %306 = add i64 %290, 1
  br label %289

307:                                              ; preds = %289
  %308 = add i64 %285, 1
  br label %284

309:                                              ; preds = %284
  %310 = add i64 %280, 32
  br label %279

311:                                              ; preds = %279
  %312 = add i64 %276, 32
  br label %275

313:                                              ; preds = %275
  br label %314

314:                                              ; preds = %348, %313
  %315 = phi i64 [ %349, %348 ], [ 0, %313 ]
  %316 = icmp slt i64 %315, 128
  br i1 %316, label %317, label %350

317:                                              ; preds = %314
  br label %318

318:                                              ; preds = %346, %317
  %319 = phi i64 [ %347, %346 ], [ 0, %317 ]
  %320 = icmp slt i64 %319, 32768
  br i1 %320, label %321, label %348

321:                                              ; preds = %318
  %322 = add i64 %315, 32
  br label %323

323:                                              ; preds = %344, %321
  %324 = phi i64 [ %345, %344 ], [ %315, %321 ]
  %325 = icmp slt i64 %324, %322
  br i1 %325, label %326, label %346

326:                                              ; preds = %323
  %327 = add i64 %319, 32
  br label %328

328:                                              ; preds = %331, %326
  %329 = phi i64 [ %343, %331 ], [ %319, %326 ]
  %330 = icmp slt i64 %329, %327
  br i1 %330, label %331, label %344

331:                                              ; preds = %328
  %332 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %333 = mul nuw nsw i64 %324, 32768
  %334 = add nuw nsw i64 %333, %329
  %335 = getelementptr inbounds nuw float, ptr %332, i64 %334
  %336 = load float, ptr %335, align 4
  %337 = fcmp ugt float %336, 0.000000e+00
  %338 = select i1 %337, float %336, float 0.000000e+00
  %339 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %340 = mul nuw nsw i64 %324, 32768
  %341 = add nuw nsw i64 %340, %329
  %342 = getelementptr inbounds nuw float, ptr %339, i64 %341
  store float %338, ptr %342, align 4
  %343 = add i64 %329, 1
  br label %328

344:                                              ; preds = %328
  %345 = add i64 %324, 1
  br label %323

346:                                              ; preds = %323
  %347 = add i64 %319, 32
  br label %318

348:                                              ; preds = %318
  %349 = add i64 %315, 32
  br label %314

350:                                              ; preds = %314
  %351 = call ptr @malloc(i64 4294967360)
  %352 = ptrtoint ptr %351 to i64
  %353 = add i64 %352, 63
  %354 = urem i64 %353, 64
  %355 = sub i64 %353, %354
  %356 = inttoptr i64 %355 to ptr
  %357 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %351, 0
  %358 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %357, ptr %356, 1
  %359 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %358, i64 0, 2
  %360 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %359, i64 32768, 3, 0
  %361 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %360, i64 32768, 3, 1
  %362 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %361, i64 32768, 4, 0
  %363 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %362, i64 1, 4, 1
  br label %364

364:                                              ; preds = %396, %350
  %365 = phi i64 [ %397, %396 ], [ 0, %350 ]
  %366 = icmp slt i64 %365, 32768
  br i1 %366, label %367, label %398

367:                                              ; preds = %364
  br label %368

368:                                              ; preds = %394, %367
  %369 = phi i64 [ %395, %394 ], [ 0, %367 ]
  %370 = icmp slt i64 %369, 32768
  br i1 %370, label %371, label %396

371:                                              ; preds = %368
  %372 = add i64 %365, 32
  br label %373

373:                                              ; preds = %392, %371
  %374 = phi i64 [ %393, %392 ], [ %365, %371 ]
  %375 = icmp slt i64 %374, %372
  br i1 %375, label %376, label %394

376:                                              ; preds = %373
  %377 = add i64 %369, 32
  br label %378

378:                                              ; preds = %381, %376
  %379 = phi i64 [ %391, %381 ], [ %369, %376 ]
  %380 = icmp slt i64 %379, %377
  br i1 %380, label %381, label %392

381:                                              ; preds = %378
  %382 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %383 = mul nuw nsw i64 %379, 32768
  %384 = add nuw nsw i64 %383, %374
  %385 = getelementptr inbounds nuw float, ptr %382, i64 %384
  %386 = load float, ptr %385, align 4
  %387 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %363, 1
  %388 = mul nuw nsw i64 %374, 32768
  %389 = add nuw nsw i64 %388, %379
  %390 = getelementptr inbounds nuw float, ptr %387, i64 %389
  store float %386, ptr %390, align 4
  %391 = add i64 %379, 1
  br label %378

392:                                              ; preds = %378
  %393 = add i64 %374, 1
  br label %373

394:                                              ; preds = %373
  %395 = add i64 %369, 32
  br label %368

396:                                              ; preds = %368
  %397 = add i64 %365, 32
  br label %364

398:                                              ; preds = %364
  br label %399

399:                                              ; preds = %456, %398
  %400 = phi i64 [ %457, %456 ], [ 0, %398 ]
  %401 = icmp slt i64 %400, 128
  br i1 %401, label %402, label %458

402:                                              ; preds = %399
  br label %403

403:                                              ; preds = %454, %402
  %404 = phi i64 [ %455, %454 ], [ 0, %402 ]
  %405 = icmp slt i64 %404, 32768
  br i1 %405, label %406, label %456

406:                                              ; preds = %403
  %407 = add i64 %400, 32
  br label %408

408:                                              ; preds = %452, %406
  %409 = phi i64 [ %453, %452 ], [ %400, %406 ]
  %410 = icmp slt i64 %409, %407
  br i1 %410, label %411, label %454

411:                                              ; preds = %408
  %412 = add i64 %404, 32
  br label %413

413:                                              ; preds = %450, %411
  %414 = phi i64 [ %451, %450 ], [ %404, %411 ]
  %415 = icmp slt i64 %414, %412
  br i1 %415, label %416, label %452

416:                                              ; preds = %413
  br label %417

417:                                              ; preds = %448, %416
  %418 = phi i64 [ %449, %448 ], [ 0, %416 ]
  %419 = icmp slt i64 %418, 32768
  br i1 %419, label %420, label %450

420:                                              ; preds = %417
  %421 = add i64 %418, 32
  br label %422

422:                                              ; preds = %425, %420
  %423 = phi i64 [ %447, %425 ], [ %418, %420 ]
  %424 = icmp slt i64 %423, %421
  br i1 %424, label %425, label %448

425:                                              ; preds = %422
  %426 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %427 = mul nuw nsw i64 %409, 32768
  %428 = add nuw nsw i64 %427, %423
  %429 = getelementptr inbounds nuw float, ptr %426, i64 %428
  %430 = load float, ptr %429, align 4
  %431 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %363, 1
  %432 = mul nuw nsw i64 %423, 32768
  %433 = add nuw nsw i64 %432, %414
  %434 = getelementptr inbounds nuw float, ptr %431, i64 %433
  %435 = load float, ptr %434, align 4
  %436 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 1
  %437 = mul nuw nsw i64 %409, 32768
  %438 = add nuw nsw i64 %437, %414
  %439 = getelementptr inbounds nuw float, ptr %436, i64 %438
  %440 = load float, ptr %439, align 4
  %441 = fmul float %430, %435
  %442 = fadd float %440, %441
  %443 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 1
  %444 = mul nuw nsw i64 %409, 32768
  %445 = add nuw nsw i64 %444, %414
  %446 = getelementptr inbounds nuw float, ptr %443, i64 %445
  store float %442, ptr %446, align 4
  %447 = add i64 %423, 1
  br label %422

448:                                              ; preds = %422
  %449 = add i64 %418, 32
  br label %417

450:                                              ; preds = %417
  %451 = add i64 %414, 1
  br label %413

452:                                              ; preds = %413
  %453 = add i64 %409, 1
  br label %408

454:                                              ; preds = %408
  %455 = add i64 %404, 32
  br label %403

456:                                              ; preds = %403
  %457 = add i64 %400, 32
  br label %399

458:                                              ; preds = %399
  br label %459

459:                                              ; preds = %495, %458
  %460 = phi i64 [ %496, %495 ], [ 0, %458 ]
  %461 = icmp slt i64 %460, 128
  br i1 %461, label %462, label %497

462:                                              ; preds = %459
  br label %463

463:                                              ; preds = %493, %462
  %464 = phi i64 [ %494, %493 ], [ 0, %462 ]
  %465 = icmp slt i64 %464, 32768
  br i1 %465, label %466, label %495

466:                                              ; preds = %463
  %467 = add i64 %460, 32
  br label %468

468:                                              ; preds = %491, %466
  %469 = phi i64 [ %492, %491 ], [ %460, %466 ]
  %470 = icmp slt i64 %469, %467
  br i1 %470, label %471, label %493

471:                                              ; preds = %468
  %472 = add i64 %464, 32
  br label %473

473:                                              ; preds = %476, %471
  %474 = phi i64 [ %490, %476 ], [ %464, %471 ]
  %475 = icmp slt i64 %474, %472
  br i1 %475, label %476, label %491

476:                                              ; preds = %473
  %477 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 1
  %478 = mul nuw nsw i64 %469, 32768
  %479 = add nuw nsw i64 %478, %474
  %480 = getelementptr inbounds nuw float, ptr %477, i64 %479
  %481 = load float, ptr %480, align 4
  %482 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %483 = getelementptr inbounds nuw float, ptr %482, i64 %474
  %484 = load float, ptr %483, align 4
  %485 = fadd float %481, %484
  %486 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %487 = mul nuw nsw i64 %469, 32768
  %488 = add nuw nsw i64 %487, %474
  %489 = getelementptr inbounds nuw float, ptr %486, i64 %488
  store float %485, ptr %489, align 4
  %490 = add i64 %474, 1
  br label %473

491:                                              ; preds = %473
  %492 = add i64 %469, 1
  br label %468

493:                                              ; preds = %468
  %494 = add i64 %464, 32
  br label %463

495:                                              ; preds = %463
  %496 = add i64 %460, 32
  br label %459

497:                                              ; preds = %459
  br label %498

498:                                              ; preds = %532, %497
  %499 = phi i64 [ %533, %532 ], [ 0, %497 ]
  %500 = icmp slt i64 %499, 128
  br i1 %500, label %501, label %534

501:                                              ; preds = %498
  br label %502

502:                                              ; preds = %530, %501
  %503 = phi i64 [ %531, %530 ], [ 0, %501 ]
  %504 = icmp slt i64 %503, 32768
  br i1 %504, label %505, label %532

505:                                              ; preds = %502
  %506 = add i64 %499, 32
  br label %507

507:                                              ; preds = %528, %505
  %508 = phi i64 [ %529, %528 ], [ %499, %505 ]
  %509 = icmp slt i64 %508, %506
  br i1 %509, label %510, label %530

510:                                              ; preds = %507
  %511 = add i64 %503, 32
  br label %512

512:                                              ; preds = %515, %510
  %513 = phi i64 [ %527, %515 ], [ %503, %510 ]
  %514 = icmp slt i64 %513, %511
  br i1 %514, label %515, label %528

515:                                              ; preds = %512
  %516 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %517 = mul nuw nsw i64 %508, 32768
  %518 = add nuw nsw i64 %517, %513
  %519 = getelementptr inbounds nuw float, ptr %516, i64 %518
  %520 = load float, ptr %519, align 4
  %521 = fcmp ugt float %520, 0.000000e+00
  %522 = select i1 %521, float %520, float 0.000000e+00
  %523 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %524 = mul nuw nsw i64 %508, 32768
  %525 = add nuw nsw i64 %524, %513
  %526 = getelementptr inbounds nuw float, ptr %523, i64 %525
  store float %522, ptr %526, align 4
  %527 = add i64 %513, 1
  br label %512

528:                                              ; preds = %512
  %529 = add i64 %508, 1
  br label %507

530:                                              ; preds = %507
  %531 = add i64 %503, 32
  br label %502

532:                                              ; preds = %502
  %533 = add i64 %499, 32
  br label %498

534:                                              ; preds = %498
  %535 = call ptr @malloc(i64 2147483712)
  %536 = ptrtoint ptr %535 to i64
  %537 = add i64 %536, 63
  %538 = urem i64 %537, 64
  %539 = sub i64 %537, %538
  %540 = inttoptr i64 %539 to ptr
  %541 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %535, 0
  %542 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %541, ptr %540, 1
  %543 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, i64 0, 2
  %544 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %543, i64 32768, 3, 0
  %545 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %544, i64 16384, 3, 1
  %546 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %545, i64 16384, 4, 0
  %547 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %546, i64 1, 4, 1
  br label %548

548:                                              ; preds = %580, %534
  %549 = phi i64 [ %581, %580 ], [ 0, %534 ]
  %550 = icmp slt i64 %549, 32768
  br i1 %550, label %551, label %582

551:                                              ; preds = %548
  br label %552

552:                                              ; preds = %578, %551
  %553 = phi i64 [ %579, %578 ], [ 0, %551 ]
  %554 = icmp slt i64 %553, 16384
  br i1 %554, label %555, label %580

555:                                              ; preds = %552
  %556 = add i64 %549, 32
  br label %557

557:                                              ; preds = %576, %555
  %558 = phi i64 [ %577, %576 ], [ %549, %555 ]
  %559 = icmp slt i64 %558, %556
  br i1 %559, label %560, label %578

560:                                              ; preds = %557
  %561 = add i64 %553, 32
  br label %562

562:                                              ; preds = %565, %560
  %563 = phi i64 [ %575, %565 ], [ %553, %560 ]
  %564 = icmp slt i64 %563, %561
  br i1 %564, label %565, label %576

565:                                              ; preds = %562
  %566 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %567 = mul nuw nsw i64 %563, 32768
  %568 = add nuw nsw i64 %567, %558
  %569 = getelementptr inbounds nuw float, ptr %566, i64 %568
  %570 = load float, ptr %569, align 4
  %571 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %547, 1
  %572 = mul nuw nsw i64 %558, 16384
  %573 = add nuw nsw i64 %572, %563
  %574 = getelementptr inbounds nuw float, ptr %571, i64 %573
  store float %570, ptr %574, align 4
  %575 = add i64 %563, 1
  br label %562

576:                                              ; preds = %562
  %577 = add i64 %558, 1
  br label %557

578:                                              ; preds = %557
  %579 = add i64 %553, 32
  br label %552

580:                                              ; preds = %552
  %581 = add i64 %549, 32
  br label %548

582:                                              ; preds = %548
  %583 = call ptr @malloc(i64 8388672)
  %584 = ptrtoint ptr %583 to i64
  %585 = add i64 %584, 63
  %586 = urem i64 %585, 64
  %587 = sub i64 %585, %586
  %588 = inttoptr i64 %587 to ptr
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %583, 0
  %590 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, ptr %588, 1
  %591 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %590, i64 0, 2
  %592 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %591, i64 128, 3, 0
  %593 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %592, i64 16384, 3, 1
  %594 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, i64 16384, 4, 0
  %595 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, i64 1, 4, 1
  br label %596

596:                                              ; preds = %623, %582
  %597 = phi i64 [ %624, %623 ], [ 0, %582 ]
  %598 = icmp slt i64 %597, 128
  br i1 %598, label %599, label %625

599:                                              ; preds = %596
  br label %600

600:                                              ; preds = %621, %599
  %601 = phi i64 [ %622, %621 ], [ 0, %599 ]
  %602 = icmp slt i64 %601, 16384
  br i1 %602, label %603, label %623

603:                                              ; preds = %600
  %604 = add i64 %597, 32
  br label %605

605:                                              ; preds = %619, %603
  %606 = phi i64 [ %620, %619 ], [ %597, %603 ]
  %607 = icmp slt i64 %606, %604
  br i1 %607, label %608, label %621

608:                                              ; preds = %605
  %609 = add i64 %601, 32
  br label %610

610:                                              ; preds = %613, %608
  %611 = phi i64 [ %618, %613 ], [ %601, %608 ]
  %612 = icmp slt i64 %611, %609
  br i1 %612, label %613, label %619

613:                                              ; preds = %610
  %614 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %615 = mul nuw nsw i64 %606, 16384
  %616 = add nuw nsw i64 %615, %611
  %617 = getelementptr inbounds nuw float, ptr %614, i64 %616
  store float 0.000000e+00, ptr %617, align 4
  %618 = add i64 %611, 1
  br label %610

619:                                              ; preds = %610
  %620 = add i64 %606, 1
  br label %605

621:                                              ; preds = %605
  %622 = add i64 %601, 32
  br label %600

623:                                              ; preds = %600
  %624 = add i64 %597, 32
  br label %596

625:                                              ; preds = %596
  br label %626

626:                                              ; preds = %683, %625
  %627 = phi i64 [ %684, %683 ], [ 0, %625 ]
  %628 = icmp slt i64 %627, 128
  br i1 %628, label %629, label %685

629:                                              ; preds = %626
  br label %630

630:                                              ; preds = %681, %629
  %631 = phi i64 [ %682, %681 ], [ 0, %629 ]
  %632 = icmp slt i64 %631, 16384
  br i1 %632, label %633, label %683

633:                                              ; preds = %630
  %634 = add i64 %627, 32
  br label %635

635:                                              ; preds = %679, %633
  %636 = phi i64 [ %680, %679 ], [ %627, %633 ]
  %637 = icmp slt i64 %636, %634
  br i1 %637, label %638, label %681

638:                                              ; preds = %635
  %639 = add i64 %631, 32
  br label %640

640:                                              ; preds = %677, %638
  %641 = phi i64 [ %678, %677 ], [ %631, %638 ]
  %642 = icmp slt i64 %641, %639
  br i1 %642, label %643, label %679

643:                                              ; preds = %640
  br label %644

644:                                              ; preds = %675, %643
  %645 = phi i64 [ %676, %675 ], [ 0, %643 ]
  %646 = icmp slt i64 %645, 32768
  br i1 %646, label %647, label %677

647:                                              ; preds = %644
  %648 = add i64 %645, 32
  br label %649

649:                                              ; preds = %652, %647
  %650 = phi i64 [ %674, %652 ], [ %645, %647 ]
  %651 = icmp slt i64 %650, %648
  br i1 %651, label %652, label %675

652:                                              ; preds = %649
  %653 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 1
  %654 = mul nuw nsw i64 %636, 32768
  %655 = add nuw nsw i64 %654, %650
  %656 = getelementptr inbounds nuw float, ptr %653, i64 %655
  %657 = load float, ptr %656, align 4
  %658 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %547, 1
  %659 = mul nuw nsw i64 %650, 16384
  %660 = add nuw nsw i64 %659, %641
  %661 = getelementptr inbounds nuw float, ptr %658, i64 %660
  %662 = load float, ptr %661, align 4
  %663 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %664 = mul nuw nsw i64 %636, 16384
  %665 = add nuw nsw i64 %664, %641
  %666 = getelementptr inbounds nuw float, ptr %663, i64 %665
  %667 = load float, ptr %666, align 4
  %668 = fmul float %657, %662
  %669 = fadd float %667, %668
  %670 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %671 = mul nuw nsw i64 %636, 16384
  %672 = add nuw nsw i64 %671, %641
  %673 = getelementptr inbounds nuw float, ptr %670, i64 %672
  store float %669, ptr %673, align 4
  %674 = add i64 %650, 1
  br label %649

675:                                              ; preds = %649
  %676 = add i64 %645, 32
  br label %644

677:                                              ; preds = %644
  %678 = add i64 %641, 1
  br label %640

679:                                              ; preds = %640
  %680 = add i64 %636, 1
  br label %635

681:                                              ; preds = %635
  %682 = add i64 %631, 32
  br label %630

683:                                              ; preds = %630
  %684 = add i64 %627, 32
  br label %626

685:                                              ; preds = %626
  br label %686

686:                                              ; preds = %722, %685
  %687 = phi i64 [ %723, %722 ], [ 0, %685 ]
  %688 = icmp slt i64 %687, 128
  br i1 %688, label %689, label %724

689:                                              ; preds = %686
  br label %690

690:                                              ; preds = %720, %689
  %691 = phi i64 [ %721, %720 ], [ 0, %689 ]
  %692 = icmp slt i64 %691, 16384
  br i1 %692, label %693, label %722

693:                                              ; preds = %690
  %694 = add i64 %687, 32
  br label %695

695:                                              ; preds = %718, %693
  %696 = phi i64 [ %719, %718 ], [ %687, %693 ]
  %697 = icmp slt i64 %696, %694
  br i1 %697, label %698, label %720

698:                                              ; preds = %695
  %699 = add i64 %691, 32
  br label %700

700:                                              ; preds = %703, %698
  %701 = phi i64 [ %717, %703 ], [ %691, %698 ]
  %702 = icmp slt i64 %701, %699
  br i1 %702, label %703, label %718

703:                                              ; preds = %700
  %704 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %705 = mul nuw nsw i64 %696, 16384
  %706 = add nuw nsw i64 %705, %701
  %707 = getelementptr inbounds nuw float, ptr %704, i64 %706
  %708 = load float, ptr %707, align 4
  %709 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %710 = getelementptr inbounds nuw float, ptr %709, i64 %701
  %711 = load float, ptr %710, align 4
  %712 = fadd float %708, %711
  %713 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %714 = mul nuw nsw i64 %696, 16384
  %715 = add nuw nsw i64 %714, %701
  %716 = getelementptr inbounds nuw float, ptr %713, i64 %715
  store float %712, ptr %716, align 4
  %717 = add i64 %701, 1
  br label %700

718:                                              ; preds = %700
  %719 = add i64 %696, 1
  br label %695

720:                                              ; preds = %695
  %721 = add i64 %691, 32
  br label %690

722:                                              ; preds = %690
  %723 = add i64 %687, 32
  br label %686

724:                                              ; preds = %686
  %725 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %99, 0
  call void @free(ptr %725)
  %726 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %147, 0
  call void @free(ptr %726)
  %727 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %160, 0
  call void @free(ptr %727)
  %728 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %203, 0
  call void @free(ptr %728)
  %729 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %363, 0
  call void @free(ptr %729)
  %730 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %547, 0
  call void @free(ptr %730)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %595
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
