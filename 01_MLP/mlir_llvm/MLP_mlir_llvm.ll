; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @MLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
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
  %87 = call ptr @aligned_alloc(i64 64, i64 1073741824)
  %88 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 16384, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %91, i64 16384, 3, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %92, i64 16384, 4, 0
  %94 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, i64 1, 4, 1
  br label %95

95:                                               ; preds = %113, %43
  %96 = phi i64 [ %114, %113 ], [ 0, %43 ]
  %97 = icmp slt i64 %96, 16384
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %102, %98
  %100 = phi i64 [ %112, %102 ], [ 0, %98 ]
  %101 = icmp slt i64 %100, 16384
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 1
  %104 = mul nuw nsw i64 %100, 16384
  %105 = add nuw nsw i64 %104, %96
  %106 = getelementptr inbounds nuw float, ptr %103, i64 %105
  %107 = load float, ptr %106, align 4
  %108 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %109 = mul nuw nsw i64 %96, 16384
  %110 = add nuw nsw i64 %109, %100
  %111 = getelementptr inbounds nuw float, ptr %108, i64 %110
  store float %107, ptr %111, align 4
  %112 = add i64 %100, 1
  br label %99

113:                                              ; preds = %99
  %114 = add i64 %96, 1
  br label %95

115:                                              ; preds = %95
  %116 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %116, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, ptr %116, 1
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 0, 2
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 128, 3, 0
  %121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %120, i64 16384, 3, 1
  %122 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, i64 16384, 4, 0
  %123 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %122, i64 1, 4, 1
  %124 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %125 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %124, 0
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %125, ptr %124, 1
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, i64 0, 2
  %128 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, i64 128, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %128, i64 16384, 3, 1
  %130 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %129, i64 16384, 4, 0
  %131 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %130, i64 1, 4, 1
  br label %132

132:                                              ; preds = %145, %115
  %133 = phi i64 [ %146, %145 ], [ 0, %115 ]
  %134 = icmp slt i64 %133, 128
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %139, %135
  %137 = phi i64 [ %144, %139 ], [ 0, %135 ]
  %138 = icmp slt i64 %137, 16384
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %141 = mul nuw nsw i64 %133, 16384
  %142 = add nuw nsw i64 %141, %137
  %143 = getelementptr inbounds nuw float, ptr %140, i64 %142
  store float 0.000000e+00, ptr %143, align 4
  %144 = add i64 %137, 1
  br label %136

145:                                              ; preds = %136
  %146 = add i64 %133, 1
  br label %132

147:                                              ; preds = %132
  %148 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %149 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %148, 0
  %150 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %149, ptr %148, 1
  %151 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %150, i64 0, 2
  %152 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %151, i64 128, 3, 0
  %153 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %152, i64 16384, 3, 1
  %154 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %153, i64 16384, 4, 0
  %155 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %154, i64 1, 4, 1
  %156 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 3, 0
  %157 = mul i64 1, %156
  %158 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 3, 1
  %159 = mul i64 %157, %158
  %160 = mul i64 %159, 4
  %161 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %162 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 2
  %163 = getelementptr float, ptr %161, i64 %162
  %164 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %165 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 2
  %166 = getelementptr float, ptr %164, i64 %165
  call void @llvm.memcpy.p0.p0.i64(ptr %166, ptr %163, i64 %160, i1 false)
  br label %167

167:                                              ; preds = %272, %147
  %168 = phi i64 [ %273, %272 ], [ 0, %147 ]
  %169 = icmp slt i64 %168, 128
  br i1 %169, label %170, label %274

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %270, %170
  %172 = phi i64 [ %271, %270 ], [ 0, %170 ]
  %173 = icmp slt i64 %172, 16384
  br i1 %173, label %174, label %272

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %268, %174
  %176 = phi i64 [ %269, %268 ], [ 0, %174 ]
  %177 = icmp slt i64 %176, 16384
  br i1 %177, label %178, label %270

178:                                              ; preds = %175
  %179 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 0
  %180 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
  %181 = insertvalue { ptr, ptr, i64 } poison, ptr %179, 0
  %182 = insertvalue { ptr, ptr, i64 } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64 } %182, i64 0, 2
  %184 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 2
  %185 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 0
  %186 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 3, 1
  %187 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 0
  %188 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 4, 1
  %189 = mul nsw i64 %168, 16384
  %190 = add i64 %189, %176
  %191 = extractvalue { ptr, ptr, i64 } %183, 0
  %192 = extractvalue { ptr, ptr, i64 } %183, 1
  %193 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %191, 0
  %194 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %193, ptr %192, 1
  %195 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %194, i64 %190, 2
  %196 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %195, i64 32, 3, 0
  %197 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %196, i64 16384, 4, 0
  %198 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %197, i64 32, 3, 1
  %199 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %198, i64 1, 4, 1
  %200 = mul nsw i64 %176, 16384
  %201 = add i64 %200, %172
  %202 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %203 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %202, 0
  %205 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, ptr %203, 1
  %206 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %205, i64 %201, 2
  %207 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %206, i64 32, 3, 0
  %208 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, i64 16384, 4, 0
  %209 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %208, i64 32, 3, 1
  %210 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %209, i64 1, 4, 1
  %211 = mul nsw i64 %168, 16384
  %212 = add i64 %211, %172
  %213 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  %214 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %215 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %213, 0
  %216 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %215, ptr %214, 1
  %217 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %216, i64 %212, 2
  %218 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, i64 32, 3, 0
  %219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %218, i64 16384, 4, 0
  %220 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %219, i64 32, 3, 1
  %221 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %220, i64 1, 4, 1
  br label %222

222:                                              ; preds = %266, %178
  %223 = phi i64 [ %267, %266 ], [ 0, %178 ]
  %224 = icmp slt i64 %223, 32
  br i1 %224, label %225, label %268

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %264, %225
  %227 = phi i64 [ %265, %264 ], [ 0, %225 ]
  %228 = icmp slt i64 %227, 32
  br i1 %228, label %229, label %266

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %233, %229
  %231 = phi i64 [ %263, %233 ], [ 0, %229 ]
  %232 = icmp slt i64 %231, 32
  br i1 %232, label %233, label %264

233:                                              ; preds = %230
  %234 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, 1
  %235 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %199, 2
  %236 = getelementptr float, ptr %234, i64 %235
  %237 = mul nuw nsw i64 %223, 16384
  %238 = add nuw nsw i64 %237, %231
  %239 = getelementptr inbounds nuw float, ptr %236, i64 %238
  %240 = load float, ptr %239, align 4
  %241 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 1
  %242 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %210, 2
  %243 = getelementptr float, ptr %241, i64 %242
  %244 = mul nuw nsw i64 %231, 16384
  %245 = add nuw nsw i64 %244, %227
  %246 = getelementptr inbounds nuw float, ptr %243, i64 %245
  %247 = load float, ptr %246, align 4
  %248 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %249 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %250 = getelementptr float, ptr %248, i64 %249
  %251 = mul nuw nsw i64 %223, 16384
  %252 = add nuw nsw i64 %251, %227
  %253 = getelementptr inbounds nuw float, ptr %250, i64 %252
  %254 = load float, ptr %253, align 4
  %255 = fmul float %240, %247
  %256 = fadd float %254, %255
  %257 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %258 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %259 = getelementptr float, ptr %257, i64 %258
  %260 = mul nuw nsw i64 %223, 16384
  %261 = add nuw nsw i64 %260, %227
  %262 = getelementptr inbounds nuw float, ptr %259, i64 %261
  store float %256, ptr %262, align 4
  %263 = add i64 %231, 1
  br label %230

264:                                              ; preds = %230
  %265 = add i64 %227, 1
  br label %226

266:                                              ; preds = %226
  %267 = add i64 %223, 1
  br label %222

268:                                              ; preds = %222
  %269 = add i64 %176, 32
  br label %175

270:                                              ; preds = %175
  %271 = add i64 %172, 32
  br label %171

272:                                              ; preds = %171
  %273 = add i64 %168, 32
  br label %167

274:                                              ; preds = %167
  br label %275

275:                                              ; preds = %297, %274
  %276 = phi i64 [ %298, %297 ], [ 0, %274 ]
  %277 = icmp slt i64 %276, 128
  br i1 %277, label %278, label %299

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %282, %278
  %280 = phi i64 [ %296, %282 ], [ 0, %278 ]
  %281 = icmp slt i64 %280, 16384
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %284 = mul nuw nsw i64 %276, 16384
  %285 = add nuw nsw i64 %284, %280
  %286 = getelementptr inbounds nuw float, ptr %283, i64 %285
  %287 = load float, ptr %286, align 4
  %288 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, 1
  %289 = getelementptr inbounds nuw float, ptr %288, i64 %280
  %290 = load float, ptr %289, align 4
  %291 = fadd float %287, %290
  %292 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %293 = mul nuw nsw i64 %276, 16384
  %294 = add nuw nsw i64 %293, %280
  %295 = getelementptr inbounds nuw float, ptr %292, i64 %294
  store float %291, ptr %295, align 4
  %296 = add i64 %280, 1
  br label %279

297:                                              ; preds = %279
  %298 = add i64 %276, 1
  br label %275

299:                                              ; preds = %275
  br label %300

300:                                              ; preds = %320, %299
  %301 = phi i64 [ %321, %320 ], [ 0, %299 ]
  %302 = icmp slt i64 %301, 128
  br i1 %302, label %303, label %322

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %307, %303
  %305 = phi i64 [ %319, %307 ], [ 0, %303 ]
  %306 = icmp slt i64 %305, 16384
  br i1 %306, label %307, label %320

307:                                              ; preds = %304
  %308 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %309 = mul nuw nsw i64 %301, 16384
  %310 = add nuw nsw i64 %309, %305
  %311 = getelementptr inbounds nuw float, ptr %308, i64 %310
  %312 = load float, ptr %311, align 4
  %313 = fcmp ugt float %312, 0.000000e+00
  %314 = select i1 %313, float %312, float 0.000000e+00
  %315 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %316 = mul nuw nsw i64 %301, 16384
  %317 = add nuw nsw i64 %316, %305
  %318 = getelementptr inbounds nuw float, ptr %315, i64 %317
  store float %314, ptr %318, align 4
  %319 = add i64 %305, 1
  br label %304

320:                                              ; preds = %304
  %321 = add i64 %301, 1
  br label %300

322:                                              ; preds = %300
  br label %323

323:                                              ; preds = %341, %322
  %324 = phi i64 [ %342, %341 ], [ 0, %322 ]
  %325 = icmp slt i64 %324, 16384
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  br label %327

327:                                              ; preds = %330, %326
  %328 = phi i64 [ %340, %330 ], [ 0, %326 ]
  %329 = icmp slt i64 %328, 16384
  br i1 %329, label %330, label %341

330:                                              ; preds = %327
  %331 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %332 = mul nuw nsw i64 %328, 16384
  %333 = add nuw nsw i64 %332, %324
  %334 = getelementptr inbounds nuw float, ptr %331, i64 %333
  %335 = load float, ptr %334, align 4
  %336 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %337 = mul nuw nsw i64 %324, 16384
  %338 = add nuw nsw i64 %337, %328
  %339 = getelementptr inbounds nuw float, ptr %336, i64 %338
  store float %335, ptr %339, align 4
  %340 = add i64 %328, 1
  br label %327

341:                                              ; preds = %327
  %342 = add i64 %324, 1
  br label %323

343:                                              ; preds = %323
  br label %344

344:                                              ; preds = %439, %343
  %345 = phi i64 [ %440, %439 ], [ 0, %343 ]
  %346 = icmp slt i64 %345, 128
  br i1 %346, label %347, label %441

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %437, %347
  %349 = phi i64 [ %438, %437 ], [ 0, %347 ]
  %350 = icmp slt i64 %349, 16384
  br i1 %350, label %351, label %439

351:                                              ; preds = %348
  br label %352

352:                                              ; preds = %435, %351
  %353 = phi i64 [ %436, %435 ], [ 0, %351 ]
  %354 = icmp slt i64 %353, 16384
  br i1 %354, label %355, label %437

355:                                              ; preds = %352
  %356 = mul nsw i64 %345, 16384
  %357 = add i64 %356, %353
  %358 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %359 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %360 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %358, 0
  %361 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %360, ptr %359, 1
  %362 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %361, i64 %357, 2
  %363 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %362, i64 32, 3, 0
  %364 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %363, i64 16384, 4, 0
  %365 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %364, i64 32, 3, 1
  %366 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %365, i64 1, 4, 1
  %367 = mul nsw i64 %353, 16384
  %368 = add i64 %367, %349
  %369 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %370 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %371 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %369, 0
  %372 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %371, ptr %370, 1
  %373 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %372, i64 %368, 2
  %374 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %373, i64 32, 3, 0
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, i64 16384, 4, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, i64 32, 3, 1
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 1, 4, 1
  %378 = mul nsw i64 %345, 16384
  %379 = add i64 %378, %349
  %380 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  %381 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %382 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %380, 0
  %383 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %382, ptr %381, 1
  %384 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %383, i64 %379, 2
  %385 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %384, i64 32, 3, 0
  %386 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, i64 16384, 4, 0
  %387 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %386, i64 32, 3, 1
  %388 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %387, i64 1, 4, 1
  br label %389

389:                                              ; preds = %433, %355
  %390 = phi i64 [ %434, %433 ], [ 0, %355 ]
  %391 = icmp slt i64 %390, 32
  br i1 %391, label %392, label %435

392:                                              ; preds = %389
  br label %393

393:                                              ; preds = %431, %392
  %394 = phi i64 [ %432, %431 ], [ 0, %392 ]
  %395 = icmp slt i64 %394, 32
  br i1 %395, label %396, label %433

396:                                              ; preds = %393
  br label %397

397:                                              ; preds = %400, %396
  %398 = phi i64 [ %430, %400 ], [ 0, %396 ]
  %399 = icmp slt i64 %398, 32
  br i1 %399, label %400, label %431

400:                                              ; preds = %397
  %401 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %366, 1
  %402 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %366, 2
  %403 = getelementptr float, ptr %401, i64 %402
  %404 = mul nuw nsw i64 %390, 16384
  %405 = add nuw nsw i64 %404, %398
  %406 = getelementptr inbounds nuw float, ptr %403, i64 %405
  %407 = load float, ptr %406, align 4
  %408 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, 1
  %409 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, 2
  %410 = getelementptr float, ptr %408, i64 %409
  %411 = mul nuw nsw i64 %398, 16384
  %412 = add nuw nsw i64 %411, %394
  %413 = getelementptr inbounds nuw float, ptr %410, i64 %412
  %414 = load float, ptr %413, align 4
  %415 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %388, 1
  %416 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %388, 2
  %417 = getelementptr float, ptr %415, i64 %416
  %418 = mul nuw nsw i64 %390, 16384
  %419 = add nuw nsw i64 %418, %394
  %420 = getelementptr inbounds nuw float, ptr %417, i64 %419
  %421 = load float, ptr %420, align 4
  %422 = fmul float %407, %414
  %423 = fadd float %421, %422
  %424 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %388, 1
  %425 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %388, 2
  %426 = getelementptr float, ptr %424, i64 %425
  %427 = mul nuw nsw i64 %390, 16384
  %428 = add nuw nsw i64 %427, %394
  %429 = getelementptr inbounds nuw float, ptr %426, i64 %428
  store float %423, ptr %429, align 4
  %430 = add i64 %398, 1
  br label %397

431:                                              ; preds = %397
  %432 = add i64 %394, 1
  br label %393

433:                                              ; preds = %393
  %434 = add i64 %390, 1
  br label %389

435:                                              ; preds = %389
  %436 = add i64 %353, 32
  br label %352

437:                                              ; preds = %352
  %438 = add i64 %349, 32
  br label %348

439:                                              ; preds = %348
  %440 = add i64 %345, 32
  br label %344

441:                                              ; preds = %344
  br label %442

442:                                              ; preds = %464, %441
  %443 = phi i64 [ %465, %464 ], [ 0, %441 ]
  %444 = icmp slt i64 %443, 128
  br i1 %444, label %445, label %466

445:                                              ; preds = %442
  br label %446

446:                                              ; preds = %449, %445
  %447 = phi i64 [ %463, %449 ], [ 0, %445 ]
  %448 = icmp slt i64 %447, 16384
  br i1 %448, label %449, label %464

449:                                              ; preds = %446
  %450 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %451 = mul nuw nsw i64 %443, 16384
  %452 = add nuw nsw i64 %451, %447
  %453 = getelementptr inbounds nuw float, ptr %450, i64 %452
  %454 = load float, ptr %453, align 4
  %455 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %456 = getelementptr inbounds nuw float, ptr %455, i64 %447
  %457 = load float, ptr %456, align 4
  %458 = fadd float %454, %457
  %459 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %460 = mul nuw nsw i64 %443, 16384
  %461 = add nuw nsw i64 %460, %447
  %462 = getelementptr inbounds nuw float, ptr %459, i64 %461
  store float %458, ptr %462, align 4
  %463 = add i64 %447, 1
  br label %446

464:                                              ; preds = %446
  %465 = add i64 %443, 1
  br label %442

466:                                              ; preds = %442
  br label %467

467:                                              ; preds = %487, %466
  %468 = phi i64 [ %488, %487 ], [ 0, %466 ]
  %469 = icmp slt i64 %468, 128
  br i1 %469, label %470, label %489

470:                                              ; preds = %467
  br label %471

471:                                              ; preds = %474, %470
  %472 = phi i64 [ %486, %474 ], [ 0, %470 ]
  %473 = icmp slt i64 %472, 16384
  br i1 %473, label %474, label %487

474:                                              ; preds = %471
  %475 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %476 = mul nuw nsw i64 %468, 16384
  %477 = add nuw nsw i64 %476, %472
  %478 = getelementptr inbounds nuw float, ptr %475, i64 %477
  %479 = load float, ptr %478, align 4
  %480 = fcmp ugt float %479, 0.000000e+00
  %481 = select i1 %480, float %479, float 0.000000e+00
  %482 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %483 = mul nuw nsw i64 %468, 16384
  %484 = add nuw nsw i64 %483, %472
  %485 = getelementptr inbounds nuw float, ptr %482, i64 %484
  store float %481, ptr %485, align 4
  %486 = add i64 %472, 1
  br label %471

487:                                              ; preds = %471
  %488 = add i64 %468, 1
  br label %467

489:                                              ; preds = %467
  %490 = call ptr @aligned_alloc(i64 64, i64 536870912)
  %491 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %490, 0
  %492 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %491, ptr %490, 1
  %493 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %492, i64 0, 2
  %494 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %493, i64 16384, 3, 0
  %495 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %494, i64 8192, 3, 1
  %496 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %495, i64 8192, 4, 0
  %497 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %496, i64 1, 4, 1
  br label %498

498:                                              ; preds = %516, %489
  %499 = phi i64 [ %517, %516 ], [ 0, %489 ]
  %500 = icmp slt i64 %499, 16384
  br i1 %500, label %501, label %518

501:                                              ; preds = %498
  br label %502

502:                                              ; preds = %505, %501
  %503 = phi i64 [ %515, %505 ], [ 0, %501 ]
  %504 = icmp slt i64 %503, 8192
  br i1 %504, label %505, label %516

505:                                              ; preds = %502
  %506 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %507 = mul nuw nsw i64 %503, 16384
  %508 = add nuw nsw i64 %507, %499
  %509 = getelementptr inbounds nuw float, ptr %506, i64 %508
  %510 = load float, ptr %509, align 4
  %511 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %497, 1
  %512 = mul nuw nsw i64 %499, 8192
  %513 = add nuw nsw i64 %512, %503
  %514 = getelementptr inbounds nuw float, ptr %511, i64 %513
  store float %510, ptr %514, align 4
  %515 = add i64 %503, 1
  br label %502

516:                                              ; preds = %502
  %517 = add i64 %499, 1
  br label %498

518:                                              ; preds = %498
  %519 = call ptr @aligned_alloc(i64 64, i64 4194304)
  %520 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %519, 0
  %521 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %520, ptr %519, 1
  %522 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %521, i64 0, 2
  %523 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %522, i64 128, 3, 0
  %524 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %523, i64 8192, 3, 1
  %525 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %524, i64 8192, 4, 0
  %526 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %525, i64 1, 4, 1
  %527 = call ptr @aligned_alloc(i64 64, i64 4194304)
  %528 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %527, 0
  %529 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, ptr %527, 1
  %530 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, i64 0, 2
  %531 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %530, i64 128, 3, 0
  %532 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %531, i64 8192, 3, 1
  %533 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %532, i64 8192, 4, 0
  %534 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %533, i64 1, 4, 1
  br label %535

535:                                              ; preds = %548, %518
  %536 = phi i64 [ %549, %548 ], [ 0, %518 ]
  %537 = icmp slt i64 %536, 128
  br i1 %537, label %538, label %550

538:                                              ; preds = %535
  br label %539

539:                                              ; preds = %542, %538
  %540 = phi i64 [ %547, %542 ], [ 0, %538 ]
  %541 = icmp slt i64 %540, 8192
  br i1 %541, label %542, label %548

542:                                              ; preds = %539
  %543 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 1
  %544 = mul nuw nsw i64 %536, 8192
  %545 = add nuw nsw i64 %544, %540
  %546 = getelementptr inbounds nuw float, ptr %543, i64 %545
  store float 0.000000e+00, ptr %546, align 4
  %547 = add i64 %540, 1
  br label %539

548:                                              ; preds = %539
  %549 = add i64 %536, 1
  br label %535

550:                                              ; preds = %535
  br label %551

551:                                              ; preds = %646, %550
  %552 = phi i64 [ %647, %646 ], [ 0, %550 ]
  %553 = icmp slt i64 %552, 128
  br i1 %553, label %554, label %648

554:                                              ; preds = %551
  br label %555

555:                                              ; preds = %644, %554
  %556 = phi i64 [ %645, %644 ], [ 0, %554 ]
  %557 = icmp slt i64 %556, 8192
  br i1 %557, label %558, label %646

558:                                              ; preds = %555
  br label %559

559:                                              ; preds = %642, %558
  %560 = phi i64 [ %643, %642 ], [ 0, %558 ]
  %561 = icmp slt i64 %560, 16384
  br i1 %561, label %562, label %644

562:                                              ; preds = %559
  %563 = mul nsw i64 %552, 16384
  %564 = add i64 %563, %560
  %565 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %566 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %567 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %565, 0
  %568 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %567, ptr %566, 1
  %569 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %568, i64 %564, 2
  %570 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %569, i64 32, 3, 0
  %571 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %570, i64 16384, 4, 0
  %572 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %571, i64 32, 3, 1
  %573 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %572, i64 1, 4, 1
  %574 = mul nsw i64 %560, 8192
  %575 = add i64 %574, %556
  %576 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %497, 0
  %577 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %497, 1
  %578 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %576, 0
  %579 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %578, ptr %577, 1
  %580 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %579, i64 %575, 2
  %581 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %580, i64 32, 3, 0
  %582 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %581, i64 8192, 4, 0
  %583 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %582, i64 32, 3, 1
  %584 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %583, i64 1, 4, 1
  %585 = mul nsw i64 %552, 8192
  %586 = add i64 %585, %556
  %587 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 0
  %588 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 1
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %587, 0
  %590 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, ptr %588, 1
  %591 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %590, i64 %586, 2
  %592 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %591, i64 32, 3, 0
  %593 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %592, i64 8192, 4, 0
  %594 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, i64 32, 3, 1
  %595 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %594, i64 1, 4, 1
  br label %596

596:                                              ; preds = %640, %562
  %597 = phi i64 [ %641, %640 ], [ 0, %562 ]
  %598 = icmp slt i64 %597, 32
  br i1 %598, label %599, label %642

599:                                              ; preds = %596
  br label %600

600:                                              ; preds = %638, %599
  %601 = phi i64 [ %639, %638 ], [ 0, %599 ]
  %602 = icmp slt i64 %601, 32
  br i1 %602, label %603, label %640

603:                                              ; preds = %600
  br label %604

604:                                              ; preds = %607, %603
  %605 = phi i64 [ %637, %607 ], [ 0, %603 ]
  %606 = icmp slt i64 %605, 32
  br i1 %606, label %607, label %638

607:                                              ; preds = %604
  %608 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %573, 1
  %609 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %573, 2
  %610 = getelementptr float, ptr %608, i64 %609
  %611 = mul nuw nsw i64 %597, 16384
  %612 = add nuw nsw i64 %611, %605
  %613 = getelementptr inbounds nuw float, ptr %610, i64 %612
  %614 = load float, ptr %613, align 4
  %615 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %584, 1
  %616 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %584, 2
  %617 = getelementptr float, ptr %615, i64 %616
  %618 = mul nuw nsw i64 %605, 8192
  %619 = add nuw nsw i64 %618, %601
  %620 = getelementptr inbounds nuw float, ptr %617, i64 %619
  %621 = load float, ptr %620, align 4
  %622 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %623 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 2
  %624 = getelementptr float, ptr %622, i64 %623
  %625 = mul nuw nsw i64 %597, 8192
  %626 = add nuw nsw i64 %625, %601
  %627 = getelementptr inbounds nuw float, ptr %624, i64 %626
  %628 = load float, ptr %627, align 4
  %629 = fmul float %614, %621
  %630 = fadd float %628, %629
  %631 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 1
  %632 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %595, 2
  %633 = getelementptr float, ptr %631, i64 %632
  %634 = mul nuw nsw i64 %597, 8192
  %635 = add nuw nsw i64 %634, %601
  %636 = getelementptr inbounds nuw float, ptr %633, i64 %635
  store float %630, ptr %636, align 4
  %637 = add i64 %605, 1
  br label %604

638:                                              ; preds = %604
  %639 = add i64 %601, 1
  br label %600

640:                                              ; preds = %600
  %641 = add i64 %597, 1
  br label %596

642:                                              ; preds = %596
  %643 = add i64 %560, 32
  br label %559

644:                                              ; preds = %559
  %645 = add i64 %556, 32
  br label %555

646:                                              ; preds = %555
  %647 = add i64 %552, 32
  br label %551

648:                                              ; preds = %551
  br label %649

649:                                              ; preds = %671, %648
  %650 = phi i64 [ %672, %671 ], [ 0, %648 ]
  %651 = icmp slt i64 %650, 128
  br i1 %651, label %652, label %673

652:                                              ; preds = %649
  br label %653

653:                                              ; preds = %656, %652
  %654 = phi i64 [ %670, %656 ], [ 0, %652 ]
  %655 = icmp slt i64 %654, 8192
  br i1 %655, label %656, label %671

656:                                              ; preds = %653
  %657 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 1
  %658 = mul nuw nsw i64 %650, 8192
  %659 = add nuw nsw i64 %658, %654
  %660 = getelementptr inbounds nuw float, ptr %657, i64 %659
  %661 = load float, ptr %660, align 4
  %662 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %663 = getelementptr inbounds nuw float, ptr %662, i64 %654
  %664 = load float, ptr %663, align 4
  %665 = fadd float %661, %664
  %666 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %526, 1
  %667 = mul nuw nsw i64 %650, 8192
  %668 = add nuw nsw i64 %667, %654
  %669 = getelementptr inbounds nuw float, ptr %666, i64 %668
  store float %665, ptr %669, align 4
  %670 = add i64 %654, 1
  br label %653

671:                                              ; preds = %653
  %672 = add i64 %650, 1
  br label %649

673:                                              ; preds = %649
  %674 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  call void @free(ptr %674)
  %675 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  call void @free(ptr %675)
  %676 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  call void @free(ptr %676)
  %677 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  call void @free(ptr %677)
  %678 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %497, 0
  call void @free(ptr %678)
  %679 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 0
  call void @free(ptr %679)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %526
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
