; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare void @memrefCopy(i64, ptr, ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @SqueezeNetFireModule(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, ptr %11, ptr %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, ptr %27, ptr %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42, ptr %43, ptr %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, ptr %54, ptr %55, i64 %56, i64 %57, i64 %58) {
  %60 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %54, 0
  %61 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, ptr %55, 1
  %62 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %61, i64 %56, 2
  %63 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %62, i64 %57, 3, 0
  %64 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %63, i64 %58, 4, 0
  %65 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %43, 0
  %66 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %65, ptr %44, 1
  %67 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %66, i64 %45, 2
  %68 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %67, i64 %46, 3, 0
  %69 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %68, i64 %50, 4, 0
  %70 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %69, i64 %47, 3, 1
  %71 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %70, i64 %51, 4, 1
  %72 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %71, i64 %48, 3, 2
  %73 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %72, i64 %52, 4, 2
  %74 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %73, i64 %49, 3, 3
  %75 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %74, i64 %53, 4, 3
  %76 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %38, 0
  %77 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %76, ptr %39, 1
  %78 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %77, i64 %40, 2
  %79 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %78, i64 %41, 3, 0
  %80 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, i64 %42, 4, 0
  %81 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %27, 0
  %82 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %81, ptr %28, 1
  %83 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %82, i64 %29, 2
  %84 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %83, i64 %30, 3, 0
  %85 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %84, i64 %34, 4, 0
  %86 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %85, i64 %31, 3, 1
  %87 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %86, i64 %35, 4, 1
  %88 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %87, i64 %32, 3, 2
  %89 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %88, i64 %36, 4, 2
  %90 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %89, i64 %33, 3, 3
  %91 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %90, i64 %37, 4, 3
  %92 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } poison, ptr %22, 0
  %93 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %92, ptr %23, 1
  %94 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %93, i64 %24, 2
  %95 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %94, i64 %25, 3, 0
  %96 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %95, i64 %26, 4, 0
  %97 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %11, 0
  %98 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %97, ptr %12, 1
  %99 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %98, i64 %13, 2
  %100 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %99, i64 %14, 3, 0
  %101 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %100, i64 %18, 4, 0
  %102 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %101, i64 %15, 3, 1
  %103 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %102, i64 %19, 4, 1
  %104 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %103, i64 %16, 3, 2
  %105 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %104, i64 %20, 4, 2
  %106 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %105, i64 %17, 3, 3
  %107 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %106, i64 %21, 4, 3
  %108 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %0, 0
  %109 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %108, ptr %1, 1
  %110 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %109, i64 %2, 2
  %111 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %110, i64 %3, 3, 0
  %112 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %111, i64 %7, 4, 0
  %113 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %112, i64 %4, 3, 1
  %114 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %113, i64 %8, 4, 1
  %115 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %114, i64 %5, 3, 2
  %116 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %115, i64 %9, 4, 2
  %117 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %116, i64 %6, 3, 3
  %118 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %117, i64 %10, 4, 3
  %119 = call ptr @aligned_alloc(i64 64, i64 201326592)
  %120 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %119, 0
  %121 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %120, ptr %119, 1
  %122 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %121, i64 0, 2
  %123 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %122, i64 128, 3, 0
  %124 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %123, i64 6, 3, 1
  %125 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %124, i64 256, 3, 2
  %126 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %125, i64 256, 3, 3
  %127 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %126, i64 393216, 4, 0
  %128 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %127, i64 65536, 4, 1
  %129 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %128, i64 256, 4, 2
  %130 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %129, i64 1, 4, 3
  br label %131

131:                                              ; preds = %163, %59
  %132 = phi i64 [ %164, %163 ], [ 0, %59 ]
  %133 = icmp slt i64 %132, 128
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %161, %134
  %136 = phi i64 [ %162, %161 ], [ 0, %134 ]
  %137 = icmp slt i64 %136, 6
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %159, %138
  %140 = phi i64 [ %160, %159 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 256
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  br label %143

143:                                              ; preds = %146, %142
  %144 = phi i64 [ %158, %146 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 256
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %96, 1
  %148 = getelementptr inbounds nuw float, ptr %147, i64 %136
  %149 = load float, ptr %148, align 4
  %150 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %151 = mul nuw nsw i64 %132, 393216
  %152 = mul nuw nsw i64 %136, 65536
  %153 = add nuw nsw i64 %151, %152
  %154 = mul nuw nsw i64 %140, 256
  %155 = add nuw nsw i64 %153, %154
  %156 = add nuw nsw i64 %155, %144
  %157 = getelementptr inbounds nuw float, ptr %150, i64 %156
  store float %149, ptr %157, align 4
  %158 = add i64 %144, 1
  br label %143

159:                                              ; preds = %143
  %160 = add i64 %140, 1
  br label %139

161:                                              ; preds = %139
  %162 = add i64 %136, 1
  br label %135

163:                                              ; preds = %135
  %164 = add i64 %132, 1
  br label %131

165:                                              ; preds = %131
  br label %166

166:                                              ; preds = %242, %165
  %167 = phi i64 [ %243, %242 ], [ 0, %165 ]
  %168 = icmp slt i64 %167, 128
  br i1 %168, label %169, label %244

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %240, %169
  %171 = phi i64 [ %241, %240 ], [ 0, %169 ]
  %172 = icmp slt i64 %171, 6
  br i1 %172, label %173, label %242

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %238, %173
  %175 = phi i64 [ %239, %238 ], [ 0, %173 ]
  %176 = icmp slt i64 %175, 256
  br i1 %176, label %177, label %240

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %236, %177
  %179 = phi i64 [ %237, %236 ], [ 0, %177 ]
  %180 = icmp slt i64 %179, 3
  br i1 %180, label %181, label %238

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %234, %181
  %183 = phi i64 [ %235, %234 ], [ 0, %181 ]
  %184 = icmp slt i64 %183, 1
  br i1 %184, label %185, label %236

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %232, %185
  %187 = phi i64 [ %233, %232 ], [ 0, %185 ]
  %188 = icmp slt i64 %187, 1
  br i1 %188, label %189, label %234

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %193, %189
  %191 = phi i64 [ %231, %193 ], [ 0, %189 ]
  %192 = icmp slt i64 %191, 256
  br i1 %192, label %193, label %232

193:                                              ; preds = %190
  %194 = add i64 %175, %183
  %195 = add i64 %187, %191
  %196 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %118, 1
  %197 = mul nuw nsw i64 %167, 196608
  %198 = mul nuw nsw i64 %179, 65536
  %199 = add nuw nsw i64 %197, %198
  %200 = mul nuw nsw i64 %194, 256
  %201 = add nuw nsw i64 %199, %200
  %202 = add nuw nsw i64 %201, %195
  %203 = getelementptr inbounds nuw float, ptr %196, i64 %202
  %204 = load float, ptr %203, align 4
  %205 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %107, 1
  %206 = mul nuw nsw i64 %171, 3
  %207 = add nuw nsw i64 %206, %179
  %208 = add nuw nsw i64 %207, %183
  %209 = add nuw nsw i64 %208, %187
  %210 = getelementptr inbounds nuw float, ptr %205, i64 %209
  %211 = load float, ptr %210, align 4
  %212 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %213 = mul nuw nsw i64 %167, 393216
  %214 = mul nuw nsw i64 %171, 65536
  %215 = add nuw nsw i64 %213, %214
  %216 = mul nuw nsw i64 %175, 256
  %217 = add nuw nsw i64 %215, %216
  %218 = add nuw nsw i64 %217, %191
  %219 = getelementptr inbounds nuw float, ptr %212, i64 %218
  %220 = load float, ptr %219, align 4
  %221 = fmul float %204, %211
  %222 = fadd float %220, %221
  %223 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %224 = mul nuw nsw i64 %167, 393216
  %225 = mul nuw nsw i64 %171, 65536
  %226 = add nuw nsw i64 %224, %225
  %227 = mul nuw nsw i64 %175, 256
  %228 = add nuw nsw i64 %226, %227
  %229 = add nuw nsw i64 %228, %191
  %230 = getelementptr inbounds nuw float, ptr %223, i64 %229
  store float %222, ptr %230, align 4
  %231 = add i64 %191, 1
  br label %190

232:                                              ; preds = %190
  %233 = add i64 %187, 1
  br label %186

234:                                              ; preds = %186
  %235 = add i64 %183, 1
  br label %182

236:                                              ; preds = %182
  %237 = add i64 %179, 1
  br label %178

238:                                              ; preds = %178
  %239 = add i64 %175, 1
  br label %174

240:                                              ; preds = %174
  %241 = add i64 %171, 1
  br label %170

242:                                              ; preds = %170
  %243 = add i64 %167, 1
  br label %166

244:                                              ; preds = %166
  br label %245

245:                                              ; preds = %285, %244
  %246 = phi i64 [ %286, %285 ], [ 0, %244 ]
  %247 = icmp slt i64 %246, 128
  br i1 %247, label %248, label %287

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %283, %248
  %250 = phi i64 [ %284, %283 ], [ 0, %248 ]
  %251 = icmp slt i64 %250, 6
  br i1 %251, label %252, label %285

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %281, %252
  %254 = phi i64 [ %282, %281 ], [ 0, %252 ]
  %255 = icmp slt i64 %254, 256
  br i1 %255, label %256, label %283

256:                                              ; preds = %253
  br label %257

257:                                              ; preds = %260, %256
  %258 = phi i64 [ %280, %260 ], [ 0, %256 ]
  %259 = icmp slt i64 %258, 256
  br i1 %259, label %260, label %281

260:                                              ; preds = %257
  %261 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %262 = mul nuw nsw i64 %246, 393216
  %263 = mul nuw nsw i64 %250, 65536
  %264 = add nuw nsw i64 %262, %263
  %265 = mul nuw nsw i64 %254, 256
  %266 = add nuw nsw i64 %264, %265
  %267 = add nuw nsw i64 %266, %258
  %268 = getelementptr inbounds nuw float, ptr %261, i64 %267
  %269 = load float, ptr %268, align 4
  %270 = fcmp ugt float %269, 0.000000e+00
  %271 = select i1 %270, float %269, float 0.000000e+00
  %272 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %273 = mul nuw nsw i64 %246, 393216
  %274 = mul nuw nsw i64 %250, 65536
  %275 = add nuw nsw i64 %273, %274
  %276 = mul nuw nsw i64 %254, 256
  %277 = add nuw nsw i64 %275, %276
  %278 = add nuw nsw i64 %277, %258
  %279 = getelementptr inbounds nuw float, ptr %272, i64 %278
  store float %271, ptr %279, align 4
  %280 = add i64 %258, 1
  br label %257

281:                                              ; preds = %257
  %282 = add i64 %254, 1
  br label %253

283:                                              ; preds = %253
  %284 = add i64 %250, 1
  br label %249

285:                                              ; preds = %249
  %286 = add i64 %246, 1
  br label %245

287:                                              ; preds = %245
  %288 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %289 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %288, 0
  %290 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %289, ptr %288, 1
  %291 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %290, i64 0, 2
  %292 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %291, i64 128, 3, 0
  %293 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %292, i64 64, 3, 1
  %294 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %293, i64 256, 3, 2
  %295 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %294, i64 256, 3, 3
  %296 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %295, i64 4194304, 4, 0
  %297 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %296, i64 65536, 4, 1
  %298 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %297, i64 256, 4, 2
  %299 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %298, i64 1, 4, 3
  br label %300

300:                                              ; preds = %332, %287
  %301 = phi i64 [ %333, %332 ], [ 0, %287 ]
  %302 = icmp slt i64 %301, 128
  br i1 %302, label %303, label %334

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %330, %303
  %305 = phi i64 [ %331, %330 ], [ 0, %303 ]
  %306 = icmp slt i64 %305, 64
  br i1 %306, label %307, label %332

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %328, %307
  %309 = phi i64 [ %329, %328 ], [ 0, %307 ]
  %310 = icmp slt i64 %309, 256
  br i1 %310, label %311, label %330

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %315, %311
  %313 = phi i64 [ %327, %315 ], [ 0, %311 ]
  %314 = icmp slt i64 %313, 256
  br i1 %314, label %315, label %328

315:                                              ; preds = %312
  %316 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %80, 1
  %317 = getelementptr inbounds nuw float, ptr %316, i64 %305
  %318 = load float, ptr %317, align 4
  %319 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %320 = mul nuw nsw i64 %301, 4194304
  %321 = mul nuw nsw i64 %305, 65536
  %322 = add nuw nsw i64 %320, %321
  %323 = mul nuw nsw i64 %309, 256
  %324 = add nuw nsw i64 %322, %323
  %325 = add nuw nsw i64 %324, %313
  %326 = getelementptr inbounds nuw float, ptr %319, i64 %325
  store float %318, ptr %326, align 4
  %327 = add i64 %313, 1
  br label %312

328:                                              ; preds = %312
  %329 = add i64 %309, 1
  br label %308

330:                                              ; preds = %308
  %331 = add i64 %305, 1
  br label %304

332:                                              ; preds = %304
  %333 = add i64 %301, 1
  br label %300

334:                                              ; preds = %300
  br label %335

335:                                              ; preds = %411, %334
  %336 = phi i64 [ %412, %411 ], [ 0, %334 ]
  %337 = icmp slt i64 %336, 128
  br i1 %337, label %338, label %413

338:                                              ; preds = %335
  br label %339

339:                                              ; preds = %409, %338
  %340 = phi i64 [ %410, %409 ], [ 0, %338 ]
  %341 = icmp slt i64 %340, 64
  br i1 %341, label %342, label %411

342:                                              ; preds = %339
  br label %343

343:                                              ; preds = %407, %342
  %344 = phi i64 [ %408, %407 ], [ 0, %342 ]
  %345 = icmp slt i64 %344, 256
  br i1 %345, label %346, label %409

346:                                              ; preds = %343
  br label %347

347:                                              ; preds = %405, %346
  %348 = phi i64 [ %406, %405 ], [ 0, %346 ]
  %349 = icmp slt i64 %348, 6
  br i1 %349, label %350, label %407

350:                                              ; preds = %347
  br label %351

351:                                              ; preds = %403, %350
  %352 = phi i64 [ %404, %403 ], [ 0, %350 ]
  %353 = icmp slt i64 %352, 1
  br i1 %353, label %354, label %405

354:                                              ; preds = %351
  br label %355

355:                                              ; preds = %401, %354
  %356 = phi i64 [ %402, %401 ], [ 0, %354 ]
  %357 = icmp slt i64 %356, 1
  br i1 %357, label %358, label %403

358:                                              ; preds = %355
  br label %359

359:                                              ; preds = %362, %358
  %360 = phi i64 [ %400, %362 ], [ 0, %358 ]
  %361 = icmp slt i64 %360, 256
  br i1 %361, label %362, label %401

362:                                              ; preds = %359
  %363 = add i64 %344, %352
  %364 = add i64 %356, %360
  %365 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 1
  %366 = mul nuw nsw i64 %336, 393216
  %367 = mul nuw nsw i64 %348, 65536
  %368 = add nuw nsw i64 %366, %367
  %369 = mul nuw nsw i64 %363, 256
  %370 = add nuw nsw i64 %368, %369
  %371 = add nuw nsw i64 %370, %364
  %372 = getelementptr inbounds nuw float, ptr %365, i64 %371
  %373 = load float, ptr %372, align 4
  %374 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %91, 1
  %375 = mul nuw nsw i64 %340, 6
  %376 = add nuw nsw i64 %375, %348
  %377 = add nuw nsw i64 %376, %352
  %378 = add nuw nsw i64 %377, %356
  %379 = getelementptr inbounds nuw float, ptr %374, i64 %378
  %380 = load float, ptr %379, align 4
  %381 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %382 = mul nuw nsw i64 %336, 4194304
  %383 = mul nuw nsw i64 %340, 65536
  %384 = add nuw nsw i64 %382, %383
  %385 = mul nuw nsw i64 %344, 256
  %386 = add nuw nsw i64 %384, %385
  %387 = add nuw nsw i64 %386, %360
  %388 = getelementptr inbounds nuw float, ptr %381, i64 %387
  %389 = load float, ptr %388, align 4
  %390 = fmul float %373, %380
  %391 = fadd float %389, %390
  %392 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %393 = mul nuw nsw i64 %336, 4194304
  %394 = mul nuw nsw i64 %340, 65536
  %395 = add nuw nsw i64 %393, %394
  %396 = mul nuw nsw i64 %344, 256
  %397 = add nuw nsw i64 %395, %396
  %398 = add nuw nsw i64 %397, %360
  %399 = getelementptr inbounds nuw float, ptr %392, i64 %398
  store float %391, ptr %399, align 4
  %400 = add i64 %360, 1
  br label %359

401:                                              ; preds = %359
  %402 = add i64 %356, 1
  br label %355

403:                                              ; preds = %355
  %404 = add i64 %352, 1
  br label %351

405:                                              ; preds = %351
  %406 = add i64 %348, 1
  br label %347

407:                                              ; preds = %347
  %408 = add i64 %344, 1
  br label %343

409:                                              ; preds = %343
  %410 = add i64 %340, 1
  br label %339

411:                                              ; preds = %339
  %412 = add i64 %336, 1
  br label %335

413:                                              ; preds = %335
  %414 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %415 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %414, 0
  %416 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %415, ptr %414, 1
  %417 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %416, i64 0, 2
  %418 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %417, i64 128, 3, 0
  %419 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %418, i64 64, 3, 1
  %420 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %419, i64 256, 3, 2
  %421 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %420, i64 256, 3, 3
  %422 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %421, i64 4194304, 4, 0
  %423 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %422, i64 65536, 4, 1
  %424 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %423, i64 256, 4, 2
  %425 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %424, i64 1, 4, 3
  br label %426

426:                                              ; preds = %466, %413
  %427 = phi i64 [ %467, %466 ], [ 0, %413 ]
  %428 = icmp slt i64 %427, 128
  br i1 %428, label %429, label %468

429:                                              ; preds = %426
  br label %430

430:                                              ; preds = %464, %429
  %431 = phi i64 [ %465, %464 ], [ 0, %429 ]
  %432 = icmp slt i64 %431, 64
  br i1 %432, label %433, label %466

433:                                              ; preds = %430
  br label %434

434:                                              ; preds = %462, %433
  %435 = phi i64 [ %463, %462 ], [ 0, %433 ]
  %436 = icmp slt i64 %435, 256
  br i1 %436, label %437, label %464

437:                                              ; preds = %434
  br label %438

438:                                              ; preds = %441, %437
  %439 = phi i64 [ %461, %441 ], [ 0, %437 ]
  %440 = icmp slt i64 %439, 256
  br i1 %440, label %441, label %462

441:                                              ; preds = %438
  %442 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %443 = mul nuw nsw i64 %427, 4194304
  %444 = mul nuw nsw i64 %431, 65536
  %445 = add nuw nsw i64 %443, %444
  %446 = mul nuw nsw i64 %435, 256
  %447 = add nuw nsw i64 %445, %446
  %448 = add nuw nsw i64 %447, %439
  %449 = getelementptr inbounds nuw float, ptr %442, i64 %448
  %450 = load float, ptr %449, align 4
  %451 = fcmp ugt float %450, 0.000000e+00
  %452 = select i1 %451, float %450, float 0.000000e+00
  %453 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %425, 1
  %454 = mul nuw nsw i64 %427, 4194304
  %455 = mul nuw nsw i64 %431, 65536
  %456 = add nuw nsw i64 %454, %455
  %457 = mul nuw nsw i64 %435, 256
  %458 = add nuw nsw i64 %456, %457
  %459 = add nuw nsw i64 %458, %439
  %460 = getelementptr inbounds nuw float, ptr %453, i64 %459
  store float %452, ptr %460, align 4
  %461 = add i64 %439, 1
  br label %438

462:                                              ; preds = %438
  %463 = add i64 %435, 1
  br label %434

464:                                              ; preds = %434
  %465 = add i64 %431, 1
  br label %430

466:                                              ; preds = %430
  %467 = add i64 %427, 1
  br label %426

468:                                              ; preds = %426
  %469 = call ptr @aligned_alloc(i64 64, i64 204484608)
  %470 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %469, 0
  %471 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %470, ptr %469, 1
  %472 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %471, i64 0, 2
  %473 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %472, i64 128, 3, 0
  %474 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %473, i64 6, 3, 1
  %475 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %474, i64 258, 3, 2
  %476 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %475, i64 258, 3, 3
  %477 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %476, i64 399384, 4, 0
  %478 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %477, i64 66564, 4, 1
  %479 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %478, i64 258, 4, 2
  %480 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %479, i64 1, 4, 3
  br label %481

481:                                              ; preds = %510, %468
  %482 = phi i64 [ %511, %510 ], [ 0, %468 ]
  %483 = icmp slt i64 %482, 128
  br i1 %483, label %484, label %512

484:                                              ; preds = %481
  br label %485

485:                                              ; preds = %508, %484
  %486 = phi i64 [ %509, %508 ], [ 0, %484 ]
  %487 = icmp slt i64 %486, 6
  br i1 %487, label %488, label %510

488:                                              ; preds = %485
  br label %489

489:                                              ; preds = %506, %488
  %490 = phi i64 [ %507, %506 ], [ 0, %488 ]
  %491 = icmp slt i64 %490, 258
  br i1 %491, label %492, label %508

492:                                              ; preds = %489
  br label %493

493:                                              ; preds = %496, %492
  %494 = phi i64 [ %505, %496 ], [ 0, %492 ]
  %495 = icmp slt i64 %494, 258
  br i1 %495, label %496, label %506

496:                                              ; preds = %493
  %497 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %480, 1
  %498 = mul nuw nsw i64 %482, 399384
  %499 = mul nuw nsw i64 %486, 66564
  %500 = add nuw nsw i64 %498, %499
  %501 = mul nuw nsw i64 %490, 258
  %502 = add nuw nsw i64 %500, %501
  %503 = add nuw nsw i64 %502, %494
  %504 = getelementptr inbounds nuw float, ptr %497, i64 %503
  store float 0.000000e+00, ptr %504, align 4
  %505 = add i64 %494, 1
  br label %493

506:                                              ; preds = %493
  %507 = add i64 %490, 1
  br label %489

508:                                              ; preds = %489
  %509 = add i64 %486, 1
  br label %485

510:                                              ; preds = %485
  %511 = add i64 %482, 1
  br label %481

512:                                              ; preds = %481
  %513 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %480, 0
  %514 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %480, 1
  %515 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %513, 0
  %516 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %515, ptr %514, 1
  %517 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %516, i64 259, 2
  %518 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %517, i64 128, 3, 0
  %519 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %518, i64 399384, 4, 0
  %520 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %519, i64 6, 3, 1
  %521 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %520, i64 66564, 4, 1
  %522 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %521, i64 256, 3, 2
  %523 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %522, i64 258, 4, 2
  %524 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %523, i64 256, 3, 3
  %525 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %524, i64 1, 4, 3
  %526 = call ptr @llvm.stacksave.p0()
  %527 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, ptr %527, align 8
  %528 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %527, 1
  %529 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %525, ptr %529, align 8
  %530 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %529, 1
  %531 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %528, ptr %531, align 8
  %532 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %530, ptr %532, align 8
  call void @memrefCopy(i64 4, ptr %531, ptr %532)
  call void @llvm.stackrestore.p0(ptr %526)
  br label %533

533:                                              ; preds = %565, %512
  %534 = phi i64 [ %566, %565 ], [ 0, %512 ]
  %535 = icmp slt i64 %534, 128
  br i1 %535, label %536, label %567

536:                                              ; preds = %533
  br label %537

537:                                              ; preds = %563, %536
  %538 = phi i64 [ %564, %563 ], [ 0, %536 ]
  %539 = icmp slt i64 %538, 64
  br i1 %539, label %540, label %565

540:                                              ; preds = %537
  br label %541

541:                                              ; preds = %561, %540
  %542 = phi i64 [ %562, %561 ], [ 0, %540 ]
  %543 = icmp slt i64 %542, 256
  br i1 %543, label %544, label %563

544:                                              ; preds = %541
  br label %545

545:                                              ; preds = %548, %544
  %546 = phi i64 [ %560, %548 ], [ 0, %544 ]
  %547 = icmp slt i64 %546, 256
  br i1 %547, label %548, label %561

548:                                              ; preds = %545
  %549 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %64, 1
  %550 = getelementptr inbounds nuw float, ptr %549, i64 %538
  %551 = load float, ptr %550, align 4
  %552 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %553 = mul nuw nsw i64 %534, 4194304
  %554 = mul nuw nsw i64 %538, 65536
  %555 = add nuw nsw i64 %553, %554
  %556 = mul nuw nsw i64 %542, 256
  %557 = add nuw nsw i64 %555, %556
  %558 = add nuw nsw i64 %557, %546
  %559 = getelementptr inbounds nuw float, ptr %552, i64 %558
  store float %551, ptr %559, align 4
  %560 = add i64 %546, 1
  br label %545

561:                                              ; preds = %545
  %562 = add i64 %542, 1
  br label %541

563:                                              ; preds = %541
  %564 = add i64 %538, 1
  br label %537

565:                                              ; preds = %537
  %566 = add i64 %534, 1
  br label %533

567:                                              ; preds = %533
  br label %568

568:                                              ; preds = %646, %567
  %569 = phi i64 [ %647, %646 ], [ 0, %567 ]
  %570 = icmp slt i64 %569, 128
  br i1 %570, label %571, label %648

571:                                              ; preds = %568
  br label %572

572:                                              ; preds = %644, %571
  %573 = phi i64 [ %645, %644 ], [ 0, %571 ]
  %574 = icmp slt i64 %573, 64
  br i1 %574, label %575, label %646

575:                                              ; preds = %572
  br label %576

576:                                              ; preds = %642, %575
  %577 = phi i64 [ %643, %642 ], [ 0, %575 ]
  %578 = icmp slt i64 %577, 256
  br i1 %578, label %579, label %644

579:                                              ; preds = %576
  br label %580

580:                                              ; preds = %640, %579
  %581 = phi i64 [ %641, %640 ], [ 0, %579 ]
  %582 = icmp slt i64 %581, 6
  br i1 %582, label %583, label %642

583:                                              ; preds = %580
  br label %584

584:                                              ; preds = %638, %583
  %585 = phi i64 [ %639, %638 ], [ 0, %583 ]
  %586 = icmp slt i64 %585, 3
  br i1 %586, label %587, label %640

587:                                              ; preds = %584
  br label %588

588:                                              ; preds = %636, %587
  %589 = phi i64 [ %637, %636 ], [ 0, %587 ]
  %590 = icmp slt i64 %589, 3
  br i1 %590, label %591, label %638

591:                                              ; preds = %588
  br label %592

592:                                              ; preds = %595, %591
  %593 = phi i64 [ %635, %595 ], [ 0, %591 ]
  %594 = icmp slt i64 %593, 256
  br i1 %594, label %595, label %636

595:                                              ; preds = %592
  %596 = add i64 %577, %585
  %597 = add i64 %589, %593
  %598 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %480, 1
  %599 = mul nuw nsw i64 %569, 399384
  %600 = mul nuw nsw i64 %581, 66564
  %601 = add nuw nsw i64 %599, %600
  %602 = mul nuw nsw i64 %596, 258
  %603 = add nuw nsw i64 %601, %602
  %604 = add nuw nsw i64 %603, %597
  %605 = getelementptr inbounds nuw float, ptr %598, i64 %604
  %606 = load float, ptr %605, align 4
  %607 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %75, 1
  %608 = mul nuw nsw i64 %573, 54
  %609 = mul nuw nsw i64 %581, 9
  %610 = add nuw nsw i64 %608, %609
  %611 = mul nuw nsw i64 %585, 3
  %612 = add nuw nsw i64 %610, %611
  %613 = add nuw nsw i64 %612, %589
  %614 = getelementptr inbounds nuw float, ptr %607, i64 %613
  %615 = load float, ptr %614, align 4
  %616 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %617 = mul nuw nsw i64 %569, 4194304
  %618 = mul nuw nsw i64 %573, 65536
  %619 = add nuw nsw i64 %617, %618
  %620 = mul nuw nsw i64 %577, 256
  %621 = add nuw nsw i64 %619, %620
  %622 = add nuw nsw i64 %621, %593
  %623 = getelementptr inbounds nuw float, ptr %616, i64 %622
  %624 = load float, ptr %623, align 4
  %625 = fmul float %606, %615
  %626 = fadd float %624, %625
  %627 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %628 = mul nuw nsw i64 %569, 4194304
  %629 = mul nuw nsw i64 %573, 65536
  %630 = add nuw nsw i64 %628, %629
  %631 = mul nuw nsw i64 %577, 256
  %632 = add nuw nsw i64 %630, %631
  %633 = add nuw nsw i64 %632, %593
  %634 = getelementptr inbounds nuw float, ptr %627, i64 %633
  store float %626, ptr %634, align 4
  %635 = add i64 %593, 1
  br label %592

636:                                              ; preds = %592
  %637 = add i64 %589, 1
  br label %588

638:                                              ; preds = %588
  %639 = add i64 %585, 1
  br label %584

640:                                              ; preds = %584
  %641 = add i64 %581, 1
  br label %580

642:                                              ; preds = %580
  %643 = add i64 %577, 1
  br label %576

644:                                              ; preds = %576
  %645 = add i64 %573, 1
  br label %572

646:                                              ; preds = %572
  %647 = add i64 %569, 1
  br label %568

648:                                              ; preds = %568
  br label %649

649:                                              ; preds = %689, %648
  %650 = phi i64 [ %690, %689 ], [ 0, %648 ]
  %651 = icmp slt i64 %650, 128
  br i1 %651, label %652, label %691

652:                                              ; preds = %649
  br label %653

653:                                              ; preds = %687, %652
  %654 = phi i64 [ %688, %687 ], [ 0, %652 ]
  %655 = icmp slt i64 %654, 64
  br i1 %655, label %656, label %689

656:                                              ; preds = %653
  br label %657

657:                                              ; preds = %685, %656
  %658 = phi i64 [ %686, %685 ], [ 0, %656 ]
  %659 = icmp slt i64 %658, 256
  br i1 %659, label %660, label %687

660:                                              ; preds = %657
  br label %661

661:                                              ; preds = %664, %660
  %662 = phi i64 [ %684, %664 ], [ 0, %660 ]
  %663 = icmp slt i64 %662, 256
  br i1 %663, label %664, label %685

664:                                              ; preds = %661
  %665 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %666 = mul nuw nsw i64 %650, 4194304
  %667 = mul nuw nsw i64 %654, 65536
  %668 = add nuw nsw i64 %666, %667
  %669 = mul nuw nsw i64 %658, 256
  %670 = add nuw nsw i64 %668, %669
  %671 = add nuw nsw i64 %670, %662
  %672 = getelementptr inbounds nuw float, ptr %665, i64 %671
  %673 = load float, ptr %672, align 4
  %674 = fcmp ugt float %673, 0.000000e+00
  %675 = select i1 %674, float %673, float 0.000000e+00
  %676 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 1
  %677 = mul nuw nsw i64 %650, 4194304
  %678 = mul nuw nsw i64 %654, 65536
  %679 = add nuw nsw i64 %677, %678
  %680 = mul nuw nsw i64 %658, 256
  %681 = add nuw nsw i64 %679, %680
  %682 = add nuw nsw i64 %681, %662
  %683 = getelementptr inbounds nuw float, ptr %676, i64 %682
  store float %675, ptr %683, align 4
  %684 = add i64 %662, 1
  br label %661

685:                                              ; preds = %661
  %686 = add i64 %658, 1
  br label %657

687:                                              ; preds = %657
  %688 = add i64 %654, 1
  br label %653

689:                                              ; preds = %653
  %690 = add i64 %650, 1
  br label %649

691:                                              ; preds = %649
  %692 = call ptr @aligned_alloc(i64 64, i64 4294967296)
  %693 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %692, 0
  %694 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %693, ptr %692, 1
  %695 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %694, i64 0, 2
  %696 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %695, i64 128, 3, 0
  %697 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %696, i64 128, 3, 1
  %698 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %697, i64 256, 3, 2
  %699 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %698, i64 256, 3, 3
  %700 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %699, i64 8388608, 4, 0
  %701 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %700, i64 65536, 4, 1
  %702 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %701, i64 256, 4, 2
  %703 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %702, i64 1, 4, 3
  %704 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %703, 0
  %705 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %703, 1
  %706 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %704, 0
  %707 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %706, ptr %705, 1
  %708 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %707, i64 0, 2
  %709 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %708, i64 128, 3, 0
  %710 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %709, i64 8388608, 4, 0
  %711 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %710, i64 64, 3, 1
  %712 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %711, i64 65536, 4, 1
  %713 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %712, i64 256, 3, 2
  %714 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %713, i64 256, 4, 2
  %715 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %714, i64 256, 3, 3
  %716 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %715, i64 1, 4, 3
  %717 = call ptr @llvm.stacksave.p0()
  %718 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %425, ptr %718, align 8
  %719 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %718, 1
  %720 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %716, ptr %720, align 8
  %721 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %720, 1
  %722 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %719, ptr %722, align 8
  %723 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %721, ptr %723, align 8
  call void @memrefCopy(i64 4, ptr %722, ptr %723)
  call void @llvm.stackrestore.p0(ptr %717)
  %724 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %703, 0
  %725 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %703, 1
  %726 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } poison, ptr %724, 0
  %727 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %726, ptr %725, 1
  %728 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %727, i64 4194304, 2
  %729 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %728, i64 128, 3, 0
  %730 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %729, i64 8388608, 4, 0
  %731 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %730, i64 64, 3, 1
  %732 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %731, i64 65536, 4, 1
  %733 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %732, i64 256, 3, 2
  %734 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %733, i64 256, 4, 2
  %735 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %734, i64 256, 3, 3
  %736 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %735, i64 1, 4, 3
  %737 = call ptr @llvm.stacksave.p0()
  %738 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, ptr %738, align 8
  %739 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %738, 1
  %740 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %736, ptr %740, align 8
  %741 = insertvalue { i64, ptr } { i64 4, ptr poison }, ptr %740, 1
  %742 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %739, ptr %742, align 8
  %743 = alloca { i64, ptr }, i64 1, align 8
  store { i64, ptr } %741, ptr %743, align 8
  call void @memrefCopy(i64 4, ptr %742, ptr %743)
  call void @llvm.stackrestore.p0(ptr %737)
  %744 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %130, 0
  call void @free(ptr %744)
  %745 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %299, 0
  call void @free(ptr %745)
  %746 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %425, 0
  call void @free(ptr %746)
  %747 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %480, 0
  call void @free(ptr %747)
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %703
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
