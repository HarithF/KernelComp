; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

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
  %87 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %88 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %87, 0
  %89 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %88, ptr %87, 1
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %89, i64 0, 2
  %91 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 16384, 3, 0
  %92 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %91, i64 32768, 3, 1
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %92, i64 32768, 4, 0
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
  %101 = icmp slt i64 %100, 32768
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, 1
  %104 = mul nuw nsw i64 %100, 16384
  %105 = add nuw nsw i64 %104, %96
  %106 = getelementptr inbounds nuw float, ptr %103, i64 %105
  %107 = load float, ptr %106, align 4
  %108 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %109 = mul nuw nsw i64 %96, 32768
  %110 = add nuw nsw i64 %109, %100
  %111 = getelementptr inbounds nuw float, ptr %108, i64 %110
  store float %107, ptr %111, align 4
  %112 = add i64 %100, 1
  br label %99

113:                                              ; preds = %99
  %114 = add i64 %96, 1
  br label %95

115:                                              ; preds = %95
  %116 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %117 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %116, 0
  %118 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %117, ptr %116, 1
  %119 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %118, i64 0, 2
  %120 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %119, i64 128, 3, 0
  %121 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %120, i64 32768, 3, 1
  %122 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %121, i64 32768, 4, 0
  %123 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %122, i64 1, 4, 1
  %124 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %125 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %124, 0
  %126 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %125, ptr %124, 1
  %127 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %126, i64 0, 2
  %128 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %127, i64 128, 3, 0
  %129 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %128, i64 32768, 3, 1
  %130 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %129, i64 32768, 4, 0
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
  %138 = icmp slt i64 %137, 32768
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %141 = mul nuw nsw i64 %133, 32768
  %142 = add nuw nsw i64 %141, %137
  %143 = getelementptr inbounds nuw float, ptr %140, i64 %142
  store float 0.000000e+00, ptr %143, align 4
  %144 = add i64 %137, 1
  br label %136

145:                                              ; preds = %136
  %146 = add i64 %133, 1
  br label %132

147:                                              ; preds = %132
  %148 = call ptr @aligned_alloc(i64 64, i64 16777216)
  %149 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %148, 0
  %150 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %149, ptr %148, 1
  %151 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %150, i64 0, 2
  %152 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %151, i64 128, 3, 0
  %153 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %152, i64 32768, 3, 1
  %154 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %153, i64 32768, 4, 0
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
  %173 = icmp slt i64 %172, 32768
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
  %200 = mul nsw i64 %176, 32768
  %201 = add i64 %200, %172
  %202 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %203 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  %204 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %202, 0
  %205 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %204, ptr %203, 1
  %206 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %205, i64 %201, 2
  %207 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %206, i64 32, 3, 0
  %208 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %207, i64 32768, 4, 0
  %209 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %208, i64 32, 3, 1
  %210 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %209, i64 1, 4, 1
  %211 = mul nsw i64 %168, 32768
  %212 = add i64 %211, %172
  %213 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  %214 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %215 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %213, 0
  %216 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %215, ptr %214, 1
  %217 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %216, i64 %212, 2
  %218 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %217, i64 32, 3, 0
  %219 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %218, i64 32768, 4, 0
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
  %244 = mul nuw nsw i64 %231, 32768
  %245 = add nuw nsw i64 %244, %227
  %246 = getelementptr inbounds nuw float, ptr %243, i64 %245
  %247 = load float, ptr %246, align 4
  %248 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %249 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %250 = getelementptr float, ptr %248, i64 %249
  %251 = mul nuw nsw i64 %223, 32768
  %252 = add nuw nsw i64 %251, %227
  %253 = getelementptr inbounds nuw float, ptr %250, i64 %252
  %254 = load float, ptr %253, align 4
  %255 = fmul float %240, %247
  %256 = fadd float %254, %255
  %257 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 1
  %258 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %221, 2
  %259 = getelementptr float, ptr %257, i64 %258
  %260 = mul nuw nsw i64 %223, 32768
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
  %281 = icmp slt i64 %280, 32768
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %284 = mul nuw nsw i64 %276, 32768
  %285 = add nuw nsw i64 %284, %280
  %286 = getelementptr inbounds nuw float, ptr %283, i64 %285
  %287 = load float, ptr %286, align 4
  %288 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %72, 1
  %289 = getelementptr inbounds nuw float, ptr %288, i64 %280
  %290 = load float, ptr %289, align 4
  %291 = fadd float %287, %290
  %292 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %293 = mul nuw nsw i64 %276, 32768
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
  %306 = icmp slt i64 %305, 32768
  br i1 %306, label %307, label %320

307:                                              ; preds = %304
  %308 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %309 = mul nuw nsw i64 %301, 32768
  %310 = add nuw nsw i64 %309, %305
  %311 = getelementptr inbounds nuw float, ptr %308, i64 %310
  %312 = load float, ptr %311, align 4
  %313 = fcmp ugt float %312, 0.000000e+00
  %314 = select i1 %313, float %312, float 0.000000e+00
  %315 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %316 = mul nuw nsw i64 %301, 32768
  %317 = add nuw nsw i64 %316, %305
  %318 = getelementptr inbounds nuw float, ptr %315, i64 %317
  store float %314, ptr %318, align 4
  %319 = add i64 %305, 1
  br label %304

320:                                              ; preds = %304
  %321 = add i64 %301, 1
  br label %300

322:                                              ; preds = %300
  %323 = call ptr @aligned_alloc(i64 64, i64 4294967296)
  %324 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %323, 0
  %325 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %324, ptr %323, 1
  %326 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %325, i64 0, 2
  %327 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %326, i64 32768, 3, 0
  %328 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %327, i64 32768, 3, 1
  %329 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %328, i64 32768, 4, 0
  %330 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %329, i64 1, 4, 1
  br label %331

331:                                              ; preds = %349, %322
  %332 = phi i64 [ %350, %349 ], [ 0, %322 ]
  %333 = icmp slt i64 %332, 32768
  br i1 %333, label %334, label %351

334:                                              ; preds = %331
  br label %335

335:                                              ; preds = %338, %334
  %336 = phi i64 [ %348, %338 ], [ 0, %334 ]
  %337 = icmp slt i64 %336, 32768
  br i1 %337, label %338, label %349

338:                                              ; preds = %335
  %339 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %340 = mul nuw nsw i64 %336, 32768
  %341 = add nuw nsw i64 %340, %332
  %342 = getelementptr inbounds nuw float, ptr %339, i64 %341
  %343 = load float, ptr %342, align 4
  %344 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, 1
  %345 = mul nuw nsw i64 %332, 32768
  %346 = add nuw nsw i64 %345, %336
  %347 = getelementptr inbounds nuw float, ptr %344, i64 %346
  store float %343, ptr %347, align 4
  %348 = add i64 %336, 1
  br label %335

349:                                              ; preds = %335
  %350 = add i64 %332, 1
  br label %331

351:                                              ; preds = %331
  br label %352

352:                                              ; preds = %447, %351
  %353 = phi i64 [ %448, %447 ], [ 0, %351 ]
  %354 = icmp slt i64 %353, 128
  br i1 %354, label %355, label %449

355:                                              ; preds = %352
  br label %356

356:                                              ; preds = %445, %355
  %357 = phi i64 [ %446, %445 ], [ 0, %355 ]
  %358 = icmp slt i64 %357, 32768
  br i1 %358, label %359, label %447

359:                                              ; preds = %356
  br label %360

360:                                              ; preds = %443, %359
  %361 = phi i64 [ %444, %443 ], [ 0, %359 ]
  %362 = icmp slt i64 %361, 32768
  br i1 %362, label %363, label %445

363:                                              ; preds = %360
  %364 = mul nsw i64 %353, 32768
  %365 = add i64 %364, %361
  %366 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %367 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %368 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %366, 0
  %369 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %368, ptr %367, 1
  %370 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %369, i64 %365, 2
  %371 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %370, i64 32, 3, 0
  %372 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %371, i64 32768, 4, 0
  %373 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %372, i64 32, 3, 1
  %374 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %373, i64 1, 4, 1
  %375 = mul nsw i64 %361, 32768
  %376 = add i64 %375, %357
  %377 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, 0
  %378 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, 1
  %379 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %377, 0
  %380 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %379, ptr %378, 1
  %381 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %380, i64 %376, 2
  %382 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %381, i64 32, 3, 0
  %383 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %382, i64 32768, 4, 0
  %384 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %383, i64 32, 3, 1
  %385 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %384, i64 1, 4, 1
  %386 = mul nsw i64 %353, 32768
  %387 = add i64 %386, %357
  %388 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  %389 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %390 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %388, 0
  %391 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %390, ptr %389, 1
  %392 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %391, i64 %387, 2
  %393 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %392, i64 32, 3, 0
  %394 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %393, i64 32768, 4, 0
  %395 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %394, i64 32, 3, 1
  %396 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %395, i64 1, 4, 1
  br label %397

397:                                              ; preds = %441, %363
  %398 = phi i64 [ %442, %441 ], [ 0, %363 ]
  %399 = icmp slt i64 %398, 32
  br i1 %399, label %400, label %443

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %439, %400
  %402 = phi i64 [ %440, %439 ], [ 0, %400 ]
  %403 = icmp slt i64 %402, 32
  br i1 %403, label %404, label %441

404:                                              ; preds = %401
  br label %405

405:                                              ; preds = %408, %404
  %406 = phi i64 [ %438, %408 ], [ 0, %404 ]
  %407 = icmp slt i64 %406, 32
  br i1 %407, label %408, label %439

408:                                              ; preds = %405
  %409 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 1
  %410 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, 2
  %411 = getelementptr float, ptr %409, i64 %410
  %412 = mul nuw nsw i64 %398, 32768
  %413 = add nuw nsw i64 %412, %406
  %414 = getelementptr inbounds nuw float, ptr %411, i64 %413
  %415 = load float, ptr %414, align 4
  %416 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, 1
  %417 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %385, 2
  %418 = getelementptr float, ptr %416, i64 %417
  %419 = mul nuw nsw i64 %406, 32768
  %420 = add nuw nsw i64 %419, %402
  %421 = getelementptr inbounds nuw float, ptr %418, i64 %420
  %422 = load float, ptr %421, align 4
  %423 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, 1
  %424 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, 2
  %425 = getelementptr float, ptr %423, i64 %424
  %426 = mul nuw nsw i64 %398, 32768
  %427 = add nuw nsw i64 %426, %402
  %428 = getelementptr inbounds nuw float, ptr %425, i64 %427
  %429 = load float, ptr %428, align 4
  %430 = fmul float %415, %422
  %431 = fadd float %429, %430
  %432 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, 1
  %433 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %396, 2
  %434 = getelementptr float, ptr %432, i64 %433
  %435 = mul nuw nsw i64 %398, 32768
  %436 = add nuw nsw i64 %435, %402
  %437 = getelementptr inbounds nuw float, ptr %434, i64 %436
  store float %431, ptr %437, align 4
  %438 = add i64 %406, 1
  br label %405

439:                                              ; preds = %405
  %440 = add i64 %402, 1
  br label %401

441:                                              ; preds = %401
  %442 = add i64 %398, 1
  br label %397

443:                                              ; preds = %397
  %444 = add i64 %361, 32
  br label %360

445:                                              ; preds = %360
  %446 = add i64 %357, 32
  br label %356

447:                                              ; preds = %356
  %448 = add i64 %353, 32
  br label %352

449:                                              ; preds = %352
  br label %450

450:                                              ; preds = %472, %449
  %451 = phi i64 [ %473, %472 ], [ 0, %449 ]
  %452 = icmp slt i64 %451, 128
  br i1 %452, label %453, label %474

453:                                              ; preds = %450
  br label %454

454:                                              ; preds = %457, %453
  %455 = phi i64 [ %471, %457 ], [ 0, %453 ]
  %456 = icmp slt i64 %455, 32768
  br i1 %456, label %457, label %472

457:                                              ; preds = %454
  %458 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %459 = mul nuw nsw i64 %451, 32768
  %460 = add nuw nsw i64 %459, %455
  %461 = getelementptr inbounds nuw float, ptr %458, i64 %460
  %462 = load float, ptr %461, align 4
  %463 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %464 = getelementptr inbounds nuw float, ptr %463, i64 %455
  %465 = load float, ptr %464, align 4
  %466 = fadd float %462, %465
  %467 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %468 = mul nuw nsw i64 %451, 32768
  %469 = add nuw nsw i64 %468, %455
  %470 = getelementptr inbounds nuw float, ptr %467, i64 %469
  store float %466, ptr %470, align 4
  %471 = add i64 %455, 1
  br label %454

472:                                              ; preds = %454
  %473 = add i64 %451, 1
  br label %450

474:                                              ; preds = %450
  br label %475

475:                                              ; preds = %495, %474
  %476 = phi i64 [ %496, %495 ], [ 0, %474 ]
  %477 = icmp slt i64 %476, 128
  br i1 %477, label %478, label %497

478:                                              ; preds = %475
  br label %479

479:                                              ; preds = %482, %478
  %480 = phi i64 [ %494, %482 ], [ 0, %478 ]
  %481 = icmp slt i64 %480, 32768
  br i1 %481, label %482, label %495

482:                                              ; preds = %479
  %483 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %484 = mul nuw nsw i64 %476, 32768
  %485 = add nuw nsw i64 %484, %480
  %486 = getelementptr inbounds nuw float, ptr %483, i64 %485
  %487 = load float, ptr %486, align 4
  %488 = fcmp ugt float %487, 0.000000e+00
  %489 = select i1 %488, float %487, float 0.000000e+00
  %490 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %491 = mul nuw nsw i64 %476, 32768
  %492 = add nuw nsw i64 %491, %480
  %493 = getelementptr inbounds nuw float, ptr %490, i64 %492
  store float %489, ptr %493, align 4
  %494 = add i64 %480, 1
  br label %479

495:                                              ; preds = %479
  %496 = add i64 %476, 1
  br label %475

497:                                              ; preds = %475
  %498 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %499 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %498, 0
  %500 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %499, ptr %498, 1
  %501 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %500, i64 0, 2
  %502 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %501, i64 32768, 3, 0
  %503 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %502, i64 16384, 3, 1
  %504 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %503, i64 16384, 4, 0
  %505 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %504, i64 1, 4, 1
  br label %506

506:                                              ; preds = %524, %497
  %507 = phi i64 [ %525, %524 ], [ 0, %497 ]
  %508 = icmp slt i64 %507, 32768
  br i1 %508, label %509, label %526

509:                                              ; preds = %506
  br label %510

510:                                              ; preds = %513, %509
  %511 = phi i64 [ %523, %513 ], [ 0, %509 ]
  %512 = icmp slt i64 %511, 16384
  br i1 %512, label %513, label %524

513:                                              ; preds = %510
  %514 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %515 = mul nuw nsw i64 %511, 32768
  %516 = add nuw nsw i64 %515, %507
  %517 = getelementptr inbounds nuw float, ptr %514, i64 %516
  %518 = load float, ptr %517, align 4
  %519 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, 1
  %520 = mul nuw nsw i64 %507, 16384
  %521 = add nuw nsw i64 %520, %511
  %522 = getelementptr inbounds nuw float, ptr %519, i64 %521
  store float %518, ptr %522, align 4
  %523 = add i64 %511, 1
  br label %510

524:                                              ; preds = %510
  %525 = add i64 %507, 1
  br label %506

526:                                              ; preds = %506
  %527 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %528 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %527, 0
  %529 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %528, ptr %527, 1
  %530 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %529, i64 0, 2
  %531 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %530, i64 128, 3, 0
  %532 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %531, i64 16384, 3, 1
  %533 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %532, i64 16384, 4, 0
  %534 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %533, i64 1, 4, 1
  %535 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %536 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %535, 0
  %537 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %536, ptr %535, 1
  %538 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %537, i64 0, 2
  %539 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %538, i64 128, 3, 0
  %540 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %539, i64 16384, 3, 1
  %541 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %540, i64 16384, 4, 0
  %542 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %541, i64 1, 4, 1
  br label %543

543:                                              ; preds = %556, %526
  %544 = phi i64 [ %557, %556 ], [ 0, %526 ]
  %545 = icmp slt i64 %544, 128
  br i1 %545, label %546, label %558

546:                                              ; preds = %543
  br label %547

547:                                              ; preds = %550, %546
  %548 = phi i64 [ %555, %550 ], [ 0, %546 ]
  %549 = icmp slt i64 %548, 16384
  br i1 %549, label %550, label %556

550:                                              ; preds = %547
  %551 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, 1
  %552 = mul nuw nsw i64 %544, 16384
  %553 = add nuw nsw i64 %552, %548
  %554 = getelementptr inbounds nuw float, ptr %551, i64 %553
  store float 0.000000e+00, ptr %554, align 4
  %555 = add i64 %548, 1
  br label %547

556:                                              ; preds = %547
  %557 = add i64 %544, 1
  br label %543

558:                                              ; preds = %543
  br label %559

559:                                              ; preds = %654, %558
  %560 = phi i64 [ %655, %654 ], [ 0, %558 ]
  %561 = icmp slt i64 %560, 128
  br i1 %561, label %562, label %656

562:                                              ; preds = %559
  br label %563

563:                                              ; preds = %652, %562
  %564 = phi i64 [ %653, %652 ], [ 0, %562 ]
  %565 = icmp slt i64 %564, 16384
  br i1 %565, label %566, label %654

566:                                              ; preds = %563
  br label %567

567:                                              ; preds = %650, %566
  %568 = phi i64 [ %651, %650 ], [ 0, %566 ]
  %569 = icmp slt i64 %568, 32768
  br i1 %569, label %570, label %652

570:                                              ; preds = %567
  %571 = mul nsw i64 %560, 32768
  %572 = add i64 %571, %568
  %573 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %574 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %575 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %573, 0
  %576 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %575, ptr %574, 1
  %577 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %576, i64 %572, 2
  %578 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %577, i64 32, 3, 0
  %579 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %578, i64 32768, 4, 0
  %580 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %579, i64 32, 3, 1
  %581 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %580, i64 1, 4, 1
  %582 = mul nsw i64 %568, 16384
  %583 = add i64 %582, %564
  %584 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, 0
  %585 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, 1
  %586 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %584, 0
  %587 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %586, ptr %585, 1
  %588 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %587, i64 %583, 2
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %588, i64 32, 3, 0
  %590 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, i64 16384, 4, 0
  %591 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %590, i64 32, 3, 1
  %592 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %591, i64 1, 4, 1
  %593 = mul nsw i64 %560, 16384
  %594 = add i64 %593, %564
  %595 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, 0
  %596 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, 1
  %597 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %595, 0
  %598 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %597, ptr %596, 1
  %599 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %598, i64 %594, 2
  %600 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %599, i64 32, 3, 0
  %601 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %600, i64 16384, 4, 0
  %602 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %601, i64 32, 3, 1
  %603 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %602, i64 1, 4, 1
  br label %604

604:                                              ; preds = %648, %570
  %605 = phi i64 [ %649, %648 ], [ 0, %570 ]
  %606 = icmp slt i64 %605, 32
  br i1 %606, label %607, label %650

607:                                              ; preds = %604
  br label %608

608:                                              ; preds = %646, %607
  %609 = phi i64 [ %647, %646 ], [ 0, %607 ]
  %610 = icmp slt i64 %609, 32
  br i1 %610, label %611, label %648

611:                                              ; preds = %608
  br label %612

612:                                              ; preds = %615, %611
  %613 = phi i64 [ %645, %615 ], [ 0, %611 ]
  %614 = icmp slt i64 %613, 32
  br i1 %614, label %615, label %646

615:                                              ; preds = %612
  %616 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %581, 1
  %617 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %581, 2
  %618 = getelementptr float, ptr %616, i64 %617
  %619 = mul nuw nsw i64 %605, 32768
  %620 = add nuw nsw i64 %619, %613
  %621 = getelementptr inbounds nuw float, ptr %618, i64 %620
  %622 = load float, ptr %621, align 4
  %623 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %592, 1
  %624 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %592, 2
  %625 = getelementptr float, ptr %623, i64 %624
  %626 = mul nuw nsw i64 %613, 16384
  %627 = add nuw nsw i64 %626, %609
  %628 = getelementptr inbounds nuw float, ptr %625, i64 %627
  %629 = load float, ptr %628, align 4
  %630 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %603, 1
  %631 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %603, 2
  %632 = getelementptr float, ptr %630, i64 %631
  %633 = mul nuw nsw i64 %605, 16384
  %634 = add nuw nsw i64 %633, %609
  %635 = getelementptr inbounds nuw float, ptr %632, i64 %634
  %636 = load float, ptr %635, align 4
  %637 = fmul float %622, %629
  %638 = fadd float %636, %637
  %639 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %603, 1
  %640 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %603, 2
  %641 = getelementptr float, ptr %639, i64 %640
  %642 = mul nuw nsw i64 %605, 16384
  %643 = add nuw nsw i64 %642, %609
  %644 = getelementptr inbounds nuw float, ptr %641, i64 %643
  store float %638, ptr %644, align 4
  %645 = add i64 %613, 1
  br label %612

646:                                              ; preds = %612
  %647 = add i64 %609, 1
  br label %608

648:                                              ; preds = %608
  %649 = add i64 %605, 1
  br label %604

650:                                              ; preds = %604
  %651 = add i64 %568, 32
  br label %567

652:                                              ; preds = %567
  %653 = add i64 %564, 32
  br label %563

654:                                              ; preds = %563
  %655 = add i64 %560, 32
  br label %559

656:                                              ; preds = %559
  br label %657

657:                                              ; preds = %679, %656
  %658 = phi i64 [ %680, %679 ], [ 0, %656 ]
  %659 = icmp slt i64 %658, 128
  br i1 %659, label %660, label %681

660:                                              ; preds = %657
  br label %661

661:                                              ; preds = %664, %660
  %662 = phi i64 [ %678, %664 ], [ 0, %660 ]
  %663 = icmp slt i64 %662, 16384
  br i1 %663, label %664, label %679

664:                                              ; preds = %661
  %665 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, 1
  %666 = mul nuw nsw i64 %658, 16384
  %667 = add nuw nsw i64 %666, %662
  %668 = getelementptr inbounds nuw float, ptr %665, i64 %667
  %669 = load float, ptr %668, align 4
  %670 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %671 = getelementptr inbounds nuw float, ptr %670, i64 %662
  %672 = load float, ptr %671, align 4
  %673 = fadd float %669, %672
  %674 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %534, 1
  %675 = mul nuw nsw i64 %658, 16384
  %676 = add nuw nsw i64 %675, %662
  %677 = getelementptr inbounds nuw float, ptr %674, i64 %676
  store float %673, ptr %677, align 4
  %678 = add i64 %662, 1
  br label %661

679:                                              ; preds = %661
  %680 = add i64 %658, 1
  br label %657

681:                                              ; preds = %657
  %682 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  call void @free(ptr %682)
  %683 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  call void @free(ptr %683)
  %684 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  call void @free(ptr %684)
  %685 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  call void @free(ptr %685)
  %686 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %330, 0
  call void @free(ptr %686)
  %687 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %505, 0
  call void @free(ptr %687)
  %688 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %542, 0
  call void @free(ptr %688)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %534
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
