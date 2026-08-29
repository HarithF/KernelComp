; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @free(ptr)

declare ptr @aligned_alloc(i64, i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @ShallowWideMLP(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, ptr %12, ptr %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, ptr %19, ptr %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, ptr %26, ptr %27, i64 %28, i64 %29, i64 %30, ptr %31, ptr %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, ptr %38, ptr %39, i64 %40, i64 %41, i64 %42) {
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
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %86, 1
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
  %179 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 0
  %180 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 1
  %181 = insertvalue { ptr, ptr, i64 } poison, ptr %179, 0
  %182 = insertvalue { ptr, ptr, i64 } %181, ptr %180, 1
  %183 = insertvalue { ptr, ptr, i64 } %182, i64 0, 2
  %184 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 2
  %185 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 0
  %186 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 3, 1
  %187 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 0
  %188 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, 4, 1
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
  %256 = fadd float %255, %254
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
  %275 = call ptr @aligned_alloc(i64 64, i64 131072)
  %276 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %275, 0
  %277 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %276, ptr %275, 1
  %278 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %277, i64 0, 2
  %279 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %278, i64 1, 3, 0
  %280 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %279, i64 32768, 3, 1
  %281 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %280, i64 32768, 4, 0
  %282 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %281, i64 1, 4, 1
  br label %283

283:                                              ; preds = %299, %274
  %284 = phi i64 [ %300, %299 ], [ 0, %274 ]
  %285 = icmp slt i64 %284, 1
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %290, %286
  %288 = phi i64 [ %298, %290 ], [ 0, %286 ]
  %289 = icmp slt i64 %288, 32768
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %79, 1
  %292 = getelementptr inbounds nuw float, ptr %291, i64 %288
  %293 = load float, ptr %292, align 4
  %294 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %295 = mul nuw nsw i64 %284, 32768
  %296 = add nuw nsw i64 %295, %288
  %297 = getelementptr inbounds nuw float, ptr %294, i64 %296
  store float %293, ptr %297, align 4
  %298 = add i64 %288, 1
  br label %287

299:                                              ; preds = %287
  %300 = add i64 %284, 1
  br label %283

301:                                              ; preds = %283
  br label %302

302:                                              ; preds = %319, %301
  %303 = phi i64 [ %320, %319 ], [ 0, %301 ]
  %304 = icmp slt i64 %303, 128
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %309, %305
  %307 = phi i64 [ %318, %309 ], [ 0, %305 ]
  %308 = icmp slt i64 %307, 32768
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %311 = add nuw nsw i64 0, %307
  %312 = getelementptr inbounds nuw float, ptr %310, i64 %311
  %313 = load float, ptr %312, align 4
  %314 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %315 = mul nuw nsw i64 %303, 32768
  %316 = add nuw nsw i64 %315, %307
  %317 = getelementptr inbounds nuw float, ptr %314, i64 %316
  store float %313, ptr %317, align 4
  %318 = add i64 %307, 1
  br label %306

319:                                              ; preds = %306
  %320 = add i64 %303, 1
  br label %302

321:                                              ; preds = %302
  br label %322

322:                                              ; preds = %346, %321
  %323 = phi i64 [ %347, %346 ], [ 0, %321 ]
  %324 = icmp slt i64 %323, 128
  br i1 %324, label %325, label %348

325:                                              ; preds = %322
  br label %326

326:                                              ; preds = %329, %325
  %327 = phi i64 [ %345, %329 ], [ 0, %325 ]
  %328 = icmp slt i64 %327, 32768
  br i1 %328, label %329, label %346

329:                                              ; preds = %326
  %330 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 1
  %331 = mul nuw nsw i64 %323, 32768
  %332 = add nuw nsw i64 %331, %327
  %333 = getelementptr inbounds nuw float, ptr %330, i64 %332
  %334 = load float, ptr %333, align 4
  %335 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %336 = mul nuw nsw i64 %323, 32768
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr inbounds nuw float, ptr %335, i64 %337
  %339 = load float, ptr %338, align 4
  %340 = fadd float %334, %339
  %341 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %342 = mul nuw nsw i64 %323, 32768
  %343 = add nuw nsw i64 %342, %327
  %344 = getelementptr inbounds nuw float, ptr %341, i64 %343
  store float %340, ptr %344, align 4
  %345 = add i64 %327, 1
  br label %326

346:                                              ; preds = %326
  %347 = add i64 %323, 1
  br label %322

348:                                              ; preds = %322
  br label %349

349:                                              ; preds = %368, %348
  %350 = phi i64 [ %369, %368 ], [ 0, %348 ]
  %351 = icmp slt i64 %350, 128
  br i1 %351, label %352, label %370

352:                                              ; preds = %349
  br label %353

353:                                              ; preds = %356, %352
  %354 = phi i64 [ %367, %356 ], [ 0, %352 ]
  %355 = icmp slt i64 %354, 32768
  br i1 %355, label %356, label %368

356:                                              ; preds = %353
  %357 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %358 = mul nuw nsw i64 %350, 32768
  %359 = add nuw nsw i64 %358, %354
  %360 = getelementptr inbounds nuw float, ptr %357, i64 %359
  %361 = load float, ptr %360, align 4
  %362 = call float @llvm.maxnum.f32(float %361, float 0.000000e+00)
  %363 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %364 = mul nuw nsw i64 %350, 32768
  %365 = add nuw nsw i64 %364, %354
  %366 = getelementptr inbounds nuw float, ptr %363, i64 %365
  store float %362, ptr %366, align 4
  %367 = add i64 %354, 1
  br label %353

368:                                              ; preds = %353
  %369 = add i64 %350, 1
  br label %349

370:                                              ; preds = %349
  %371 = call ptr @aligned_alloc(i64 64, i64 4294967296)
  %372 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %371, 0
  %373 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %372, ptr %371, 1
  %374 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %373, i64 0, 2
  %375 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %374, i64 32768, 3, 0
  %376 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %375, i64 32768, 3, 1
  %377 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %376, i64 32768, 4, 0
  %378 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %377, i64 1, 4, 1
  br label %379

379:                                              ; preds = %397, %370
  %380 = phi i64 [ %398, %397 ], [ 0, %370 ]
  %381 = icmp slt i64 %380, 32768
  br i1 %381, label %382, label %399

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %386, %382
  %384 = phi i64 [ %396, %386 ], [ 0, %382 ]
  %385 = icmp slt i64 %384, 32768
  br i1 %385, label %386, label %397

386:                                              ; preds = %383
  %387 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %67, 1
  %388 = mul nuw nsw i64 %384, 32768
  %389 = add nuw nsw i64 %388, %380
  %390 = getelementptr inbounds nuw float, ptr %387, i64 %389
  %391 = load float, ptr %390, align 4
  %392 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, 1
  %393 = mul nuw nsw i64 %380, 32768
  %394 = add nuw nsw i64 %393, %384
  %395 = getelementptr inbounds nuw float, ptr %392, i64 %394
  store float %391, ptr %395, align 4
  %396 = add i64 %384, 1
  br label %383

397:                                              ; preds = %383
  %398 = add i64 %380, 1
  br label %379

399:                                              ; preds = %379
  br label %400

400:                                              ; preds = %495, %399
  %401 = phi i64 [ %496, %495 ], [ 0, %399 ]
  %402 = icmp slt i64 %401, 128
  br i1 %402, label %403, label %497

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %493, %403
  %405 = phi i64 [ %494, %493 ], [ 0, %403 ]
  %406 = icmp slt i64 %405, 32768
  br i1 %406, label %407, label %495

407:                                              ; preds = %404
  br label %408

408:                                              ; preds = %491, %407
  %409 = phi i64 [ %492, %491 ], [ 0, %407 ]
  %410 = icmp slt i64 %409, 32768
  br i1 %410, label %411, label %493

411:                                              ; preds = %408
  %412 = mul nsw i64 %401, 32768
  %413 = add i64 %412, %409
  %414 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %415 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %416 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %414, 0
  %417 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %416, ptr %415, 1
  %418 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %417, i64 %413, 2
  %419 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %418, i64 32, 3, 0
  %420 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %419, i64 32768, 4, 0
  %421 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %420, i64 32, 3, 1
  %422 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %421, i64 1, 4, 1
  %423 = mul nsw i64 %409, 32768
  %424 = add i64 %423, %405
  %425 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, 0
  %426 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, 1
  %427 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %425, 0
  %428 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %427, ptr %426, 1
  %429 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %428, i64 %424, 2
  %430 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %429, i64 32, 3, 0
  %431 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %430, i64 32768, 4, 0
  %432 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %431, i64 32, 3, 1
  %433 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %432, i64 1, 4, 1
  %434 = mul nsw i64 %401, 32768
  %435 = add i64 %434, %405
  %436 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  %437 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %438 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %436, 0
  %439 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %438, ptr %437, 1
  %440 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %439, i64 %435, 2
  %441 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %440, i64 32, 3, 0
  %442 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %441, i64 32768, 4, 0
  %443 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %442, i64 32, 3, 1
  %444 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %443, i64 1, 4, 1
  br label %445

445:                                              ; preds = %489, %411
  %446 = phi i64 [ %490, %489 ], [ 0, %411 ]
  %447 = icmp slt i64 %446, 32
  br i1 %447, label %448, label %491

448:                                              ; preds = %445
  br label %449

449:                                              ; preds = %487, %448
  %450 = phi i64 [ %488, %487 ], [ 0, %448 ]
  %451 = icmp slt i64 %450, 32
  br i1 %451, label %452, label %489

452:                                              ; preds = %449
  br label %453

453:                                              ; preds = %456, %452
  %454 = phi i64 [ %486, %456 ], [ 0, %452 ]
  %455 = icmp slt i64 %454, 32
  br i1 %455, label %456, label %487

456:                                              ; preds = %453
  %457 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %422, 1
  %458 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %422, 2
  %459 = getelementptr float, ptr %457, i64 %458
  %460 = mul nuw nsw i64 %446, 32768
  %461 = add nuw nsw i64 %460, %454
  %462 = getelementptr inbounds nuw float, ptr %459, i64 %461
  %463 = load float, ptr %462, align 4
  %464 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, 1
  %465 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %433, 2
  %466 = getelementptr float, ptr %464, i64 %465
  %467 = mul nuw nsw i64 %454, 32768
  %468 = add nuw nsw i64 %467, %450
  %469 = getelementptr inbounds nuw float, ptr %466, i64 %468
  %470 = load float, ptr %469, align 4
  %471 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %444, 1
  %472 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %444, 2
  %473 = getelementptr float, ptr %471, i64 %472
  %474 = mul nuw nsw i64 %446, 32768
  %475 = add nuw nsw i64 %474, %450
  %476 = getelementptr inbounds nuw float, ptr %473, i64 %475
  %477 = load float, ptr %476, align 4
  %478 = fmul float %463, %470
  %479 = fadd float %478, %477
  %480 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %444, 1
  %481 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %444, 2
  %482 = getelementptr float, ptr %480, i64 %481
  %483 = mul nuw nsw i64 %446, 32768
  %484 = add nuw nsw i64 %483, %450
  %485 = getelementptr inbounds nuw float, ptr %482, i64 %484
  store float %479, ptr %485, align 4
  %486 = add i64 %454, 1
  br label %453

487:                                              ; preds = %453
  %488 = add i64 %450, 1
  br label %449

489:                                              ; preds = %449
  %490 = add i64 %446, 1
  br label %445

491:                                              ; preds = %445
  %492 = add i64 %409, 32
  br label %408

493:                                              ; preds = %408
  %494 = add i64 %405, 32
  br label %404

495:                                              ; preds = %404
  %496 = add i64 %401, 32
  br label %400

497:                                              ; preds = %400
  br label %498

498:                                              ; preds = %514, %497
  %499 = phi i64 [ %515, %514 ], [ 0, %497 ]
  %500 = icmp slt i64 %499, 1
  br i1 %500, label %501, label %516

501:                                              ; preds = %498
  br label %502

502:                                              ; preds = %505, %501
  %503 = phi i64 [ %513, %505 ], [ 0, %501 ]
  %504 = icmp slt i64 %503, 32768
  br i1 %504, label %505, label %514

505:                                              ; preds = %502
  %506 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %60, 1
  %507 = getelementptr inbounds nuw float, ptr %506, i64 %503
  %508 = load float, ptr %507, align 4
  %509 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %510 = mul nuw nsw i64 %499, 32768
  %511 = add nuw nsw i64 %510, %503
  %512 = getelementptr inbounds nuw float, ptr %509, i64 %511
  store float %508, ptr %512, align 4
  %513 = add i64 %503, 1
  br label %502

514:                                              ; preds = %502
  %515 = add i64 %499, 1
  br label %498

516:                                              ; preds = %498
  br label %517

517:                                              ; preds = %534, %516
  %518 = phi i64 [ %535, %534 ], [ 0, %516 ]
  %519 = icmp slt i64 %518, 128
  br i1 %519, label %520, label %536

520:                                              ; preds = %517
  br label %521

521:                                              ; preds = %524, %520
  %522 = phi i64 [ %533, %524 ], [ 0, %520 ]
  %523 = icmp slt i64 %522, 32768
  br i1 %523, label %524, label %534

524:                                              ; preds = %521
  %525 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 1
  %526 = add nuw nsw i64 0, %522
  %527 = getelementptr inbounds nuw float, ptr %525, i64 %526
  %528 = load float, ptr %527, align 4
  %529 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %530 = mul nuw nsw i64 %518, 32768
  %531 = add nuw nsw i64 %530, %522
  %532 = getelementptr inbounds nuw float, ptr %529, i64 %531
  store float %528, ptr %532, align 4
  %533 = add i64 %522, 1
  br label %521

534:                                              ; preds = %521
  %535 = add i64 %518, 1
  br label %517

536:                                              ; preds = %517
  br label %537

537:                                              ; preds = %561, %536
  %538 = phi i64 [ %562, %561 ], [ 0, %536 ]
  %539 = icmp slt i64 %538, 128
  br i1 %539, label %540, label %563

540:                                              ; preds = %537
  br label %541

541:                                              ; preds = %544, %540
  %542 = phi i64 [ %560, %544 ], [ 0, %540 ]
  %543 = icmp slt i64 %542, 32768
  br i1 %543, label %544, label %561

544:                                              ; preds = %541
  %545 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 1
  %546 = mul nuw nsw i64 %538, 32768
  %547 = add nuw nsw i64 %546, %542
  %548 = getelementptr inbounds nuw float, ptr %545, i64 %547
  %549 = load float, ptr %548, align 4
  %550 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %551 = mul nuw nsw i64 %538, 32768
  %552 = add nuw nsw i64 %551, %542
  %553 = getelementptr inbounds nuw float, ptr %550, i64 %552
  %554 = load float, ptr %553, align 4
  %555 = fadd float %549, %554
  %556 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %557 = mul nuw nsw i64 %538, 32768
  %558 = add nuw nsw i64 %557, %542
  %559 = getelementptr inbounds nuw float, ptr %556, i64 %558
  store float %555, ptr %559, align 4
  %560 = add i64 %542, 1
  br label %541

561:                                              ; preds = %541
  %562 = add i64 %538, 1
  br label %537

563:                                              ; preds = %537
  br label %564

564:                                              ; preds = %583, %563
  %565 = phi i64 [ %584, %583 ], [ 0, %563 ]
  %566 = icmp slt i64 %565, 128
  br i1 %566, label %567, label %585

567:                                              ; preds = %564
  br label %568

568:                                              ; preds = %571, %567
  %569 = phi i64 [ %582, %571 ], [ 0, %567 ]
  %570 = icmp slt i64 %569, 32768
  br i1 %570, label %571, label %583

571:                                              ; preds = %568
  %572 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %573 = mul nuw nsw i64 %565, 32768
  %574 = add nuw nsw i64 %573, %569
  %575 = getelementptr inbounds nuw float, ptr %572, i64 %574
  %576 = load float, ptr %575, align 4
  %577 = call float @llvm.maxnum.f32(float %576, float 0.000000e+00)
  %578 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %579 = mul nuw nsw i64 %565, 32768
  %580 = add nuw nsw i64 %579, %569
  %581 = getelementptr inbounds nuw float, ptr %578, i64 %580
  store float %577, ptr %581, align 4
  %582 = add i64 %569, 1
  br label %568

583:                                              ; preds = %568
  %584 = add i64 %565, 1
  br label %564

585:                                              ; preds = %564
  %586 = call ptr @aligned_alloc(i64 64, i64 2147483648)
  %587 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %586, 0
  %588 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %587, ptr %586, 1
  %589 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %588, i64 0, 2
  %590 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %589, i64 32768, 3, 0
  %591 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %590, i64 16384, 3, 1
  %592 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %591, i64 16384, 4, 0
  %593 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %592, i64 1, 4, 1
  br label %594

594:                                              ; preds = %612, %585
  %595 = phi i64 [ %613, %612 ], [ 0, %585 ]
  %596 = icmp slt i64 %595, 32768
  br i1 %596, label %597, label %614

597:                                              ; preds = %594
  br label %598

598:                                              ; preds = %601, %597
  %599 = phi i64 [ %611, %601 ], [ 0, %597 ]
  %600 = icmp slt i64 %599, 16384
  br i1 %600, label %601, label %612

601:                                              ; preds = %598
  %602 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %55, 1
  %603 = mul nuw nsw i64 %599, 32768
  %604 = add nuw nsw i64 %603, %595
  %605 = getelementptr inbounds nuw float, ptr %602, i64 %604
  %606 = load float, ptr %605, align 4
  %607 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, 1
  %608 = mul nuw nsw i64 %595, 16384
  %609 = add nuw nsw i64 %608, %599
  %610 = getelementptr inbounds nuw float, ptr %607, i64 %609
  store float %606, ptr %610, align 4
  %611 = add i64 %599, 1
  br label %598

612:                                              ; preds = %598
  %613 = add i64 %595, 1
  br label %594

614:                                              ; preds = %594
  %615 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %616 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %615, 0
  %617 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %616, ptr %615, 1
  %618 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %617, i64 0, 2
  %619 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %618, i64 128, 3, 0
  %620 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %619, i64 16384, 3, 1
  %621 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %620, i64 16384, 4, 0
  %622 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %621, i64 1, 4, 1
  %623 = call ptr @aligned_alloc(i64 64, i64 8388608)
  %624 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %623, 0
  %625 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %624, ptr %623, 1
  %626 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %625, i64 0, 2
  %627 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %626, i64 128, 3, 0
  %628 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %627, i64 16384, 3, 1
  %629 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %628, i64 16384, 4, 0
  %630 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %629, i64 1, 4, 1
  br label %631

631:                                              ; preds = %644, %614
  %632 = phi i64 [ %645, %644 ], [ 0, %614 ]
  %633 = icmp slt i64 %632, 128
  br i1 %633, label %634, label %646

634:                                              ; preds = %631
  br label %635

635:                                              ; preds = %638, %634
  %636 = phi i64 [ %643, %638 ], [ 0, %634 ]
  %637 = icmp slt i64 %636, 16384
  br i1 %637, label %638, label %644

638:                                              ; preds = %635
  %639 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, 1
  %640 = mul nuw nsw i64 %632, 16384
  %641 = add nuw nsw i64 %640, %636
  %642 = getelementptr inbounds nuw float, ptr %639, i64 %641
  store float 0.000000e+00, ptr %642, align 4
  %643 = add i64 %636, 1
  br label %635

644:                                              ; preds = %635
  %645 = add i64 %632, 1
  br label %631

646:                                              ; preds = %631
  br label %647

647:                                              ; preds = %742, %646
  %648 = phi i64 [ %743, %742 ], [ 0, %646 ]
  %649 = icmp slt i64 %648, 128
  br i1 %649, label %650, label %744

650:                                              ; preds = %647
  br label %651

651:                                              ; preds = %740, %650
  %652 = phi i64 [ %741, %740 ], [ 0, %650 ]
  %653 = icmp slt i64 %652, 16384
  br i1 %653, label %654, label %742

654:                                              ; preds = %651
  br label %655

655:                                              ; preds = %738, %654
  %656 = phi i64 [ %739, %738 ], [ 0, %654 ]
  %657 = icmp slt i64 %656, 32768
  br i1 %657, label %658, label %740

658:                                              ; preds = %655
  %659 = mul nsw i64 %648, 32768
  %660 = add i64 %659, %656
  %661 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  %662 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 1
  %663 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %661, 0
  %664 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %663, ptr %662, 1
  %665 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %664, i64 %660, 2
  %666 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %665, i64 32, 3, 0
  %667 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %666, i64 32768, 4, 0
  %668 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %667, i64 32, 3, 1
  %669 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %668, i64 1, 4, 1
  %670 = mul nsw i64 %656, 16384
  %671 = add i64 %670, %652
  %672 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, 0
  %673 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, 1
  %674 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %672, 0
  %675 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %674, ptr %673, 1
  %676 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %675, i64 %671, 2
  %677 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %676, i64 32, 3, 0
  %678 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %677, i64 16384, 4, 0
  %679 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %678, i64 32, 3, 1
  %680 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %679, i64 1, 4, 1
  %681 = mul nsw i64 %648, 16384
  %682 = add i64 %681, %652
  %683 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, 0
  %684 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, 1
  %685 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %683, 0
  %686 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %685, ptr %684, 1
  %687 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %686, i64 %682, 2
  %688 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %687, i64 32, 3, 0
  %689 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %688, i64 16384, 4, 0
  %690 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %689, i64 32, 3, 1
  %691 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %690, i64 1, 4, 1
  br label %692

692:                                              ; preds = %736, %658
  %693 = phi i64 [ %737, %736 ], [ 0, %658 ]
  %694 = icmp slt i64 %693, 32
  br i1 %694, label %695, label %738

695:                                              ; preds = %692
  br label %696

696:                                              ; preds = %734, %695
  %697 = phi i64 [ %735, %734 ], [ 0, %695 ]
  %698 = icmp slt i64 %697, 32
  br i1 %698, label %699, label %736

699:                                              ; preds = %696
  br label %700

700:                                              ; preds = %703, %699
  %701 = phi i64 [ %733, %703 ], [ 0, %699 ]
  %702 = icmp slt i64 %701, 32
  br i1 %702, label %703, label %734

703:                                              ; preds = %700
  %704 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %669, 1
  %705 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %669, 2
  %706 = getelementptr float, ptr %704, i64 %705
  %707 = mul nuw nsw i64 %693, 32768
  %708 = add nuw nsw i64 %707, %701
  %709 = getelementptr inbounds nuw float, ptr %706, i64 %708
  %710 = load float, ptr %709, align 4
  %711 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %680, 1
  %712 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %680, 2
  %713 = getelementptr float, ptr %711, i64 %712
  %714 = mul nuw nsw i64 %701, 16384
  %715 = add nuw nsw i64 %714, %697
  %716 = getelementptr inbounds nuw float, ptr %713, i64 %715
  %717 = load float, ptr %716, align 4
  %718 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %691, 1
  %719 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %691, 2
  %720 = getelementptr float, ptr %718, i64 %719
  %721 = mul nuw nsw i64 %693, 16384
  %722 = add nuw nsw i64 %721, %697
  %723 = getelementptr inbounds nuw float, ptr %720, i64 %722
  %724 = load float, ptr %723, align 4
  %725 = fmul float %710, %717
  %726 = fadd float %725, %724
  %727 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %691, 1
  %728 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %691, 2
  %729 = getelementptr float, ptr %727, i64 %728
  %730 = mul nuw nsw i64 %693, 16384
  %731 = add nuw nsw i64 %730, %697
  %732 = getelementptr inbounds nuw float, ptr %729, i64 %731
  store float %726, ptr %732, align 4
  %733 = add i64 %701, 1
  br label %700

734:                                              ; preds = %700
  %735 = add i64 %697, 1
  br label %696

736:                                              ; preds = %696
  %737 = add i64 %693, 1
  br label %692

738:                                              ; preds = %692
  %739 = add i64 %656, 32
  br label %655

740:                                              ; preds = %655
  %741 = add i64 %652, 32
  br label %651

742:                                              ; preds = %651
  %743 = add i64 %648, 32
  br label %647

744:                                              ; preds = %647
  %745 = call ptr @aligned_alloc(i64 64, i64 65536)
  %746 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } poison, ptr %745, 0
  %747 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %746, ptr %745, 1
  %748 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %747, i64 0, 2
  %749 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %748, i64 1, 3, 0
  %750 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %749, i64 16384, 3, 1
  %751 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %750, i64 16384, 4, 0
  %752 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %751, i64 1, 4, 1
  br label %753

753:                                              ; preds = %769, %744
  %754 = phi i64 [ %770, %769 ], [ 0, %744 ]
  %755 = icmp slt i64 %754, 1
  br i1 %755, label %756, label %771

756:                                              ; preds = %753
  br label %757

757:                                              ; preds = %760, %756
  %758 = phi i64 [ %768, %760 ], [ 0, %756 ]
  %759 = icmp slt i64 %758, 16384
  br i1 %759, label %760, label %769

760:                                              ; preds = %757
  %761 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %48, 1
  %762 = getelementptr inbounds nuw float, ptr %761, i64 %758
  %763 = load float, ptr %762, align 4
  %764 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %752, 1
  %765 = mul nuw nsw i64 %754, 16384
  %766 = add nuw nsw i64 %765, %758
  %767 = getelementptr inbounds nuw float, ptr %764, i64 %766
  store float %763, ptr %767, align 4
  %768 = add i64 %758, 1
  br label %757

769:                                              ; preds = %757
  %770 = add i64 %754, 1
  br label %753

771:                                              ; preds = %753
  br label %772

772:                                              ; preds = %789, %771
  %773 = phi i64 [ %790, %789 ], [ 0, %771 ]
  %774 = icmp slt i64 %773, 128
  br i1 %774, label %775, label %791

775:                                              ; preds = %772
  br label %776

776:                                              ; preds = %779, %775
  %777 = phi i64 [ %788, %779 ], [ 0, %775 ]
  %778 = icmp slt i64 %777, 16384
  br i1 %778, label %779, label %789

779:                                              ; preds = %776
  %780 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %752, 1
  %781 = add nuw nsw i64 0, %777
  %782 = getelementptr inbounds nuw float, ptr %780, i64 %781
  %783 = load float, ptr %782, align 4
  %784 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %785 = mul nuw nsw i64 %773, 16384
  %786 = add nuw nsw i64 %785, %777
  %787 = getelementptr inbounds nuw float, ptr %784, i64 %786
  store float %783, ptr %787, align 4
  %788 = add i64 %777, 1
  br label %776

789:                                              ; preds = %776
  %790 = add i64 %773, 1
  br label %772

791:                                              ; preds = %772
  br label %792

792:                                              ; preds = %816, %791
  %793 = phi i64 [ %817, %816 ], [ 0, %791 ]
  %794 = icmp slt i64 %793, 128
  br i1 %794, label %795, label %818

795:                                              ; preds = %792
  br label %796

796:                                              ; preds = %799, %795
  %797 = phi i64 [ %815, %799 ], [ 0, %795 ]
  %798 = icmp slt i64 %797, 16384
  br i1 %798, label %799, label %816

799:                                              ; preds = %796
  %800 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, 1
  %801 = mul nuw nsw i64 %793, 16384
  %802 = add nuw nsw i64 %801, %797
  %803 = getelementptr inbounds nuw float, ptr %800, i64 %802
  %804 = load float, ptr %803, align 4
  %805 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %806 = mul nuw nsw i64 %793, 16384
  %807 = add nuw nsw i64 %806, %797
  %808 = getelementptr inbounds nuw float, ptr %805, i64 %807
  %809 = load float, ptr %808, align 4
  %810 = fadd float %804, %809
  %811 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %622, 1
  %812 = mul nuw nsw i64 %793, 16384
  %813 = add nuw nsw i64 %812, %797
  %814 = getelementptr inbounds nuw float, ptr %811, i64 %813
  store float %810, ptr %814, align 4
  %815 = add i64 %797, 1
  br label %796

816:                                              ; preds = %796
  %817 = add i64 %793, 1
  br label %792

818:                                              ; preds = %792
  %819 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  call void @free(ptr %819)
  %820 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %123, 0
  call void @free(ptr %820)
  %821 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %131, 0
  call void @free(ptr %821)
  %822 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %155, 0
  call void @free(ptr %822)
  %823 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %282, 0
  call void @free(ptr %823)
  %824 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %378, 0
  call void @free(ptr %824)
  %825 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %593, 0
  call void @free(ptr %825)
  %826 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %630, 0
  call void @free(ptr %826)
  %827 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %752, 0
  call void @free(ptr %827)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %622
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
