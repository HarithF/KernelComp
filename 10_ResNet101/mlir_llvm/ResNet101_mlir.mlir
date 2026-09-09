#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @ResNet101(%arg0: tensor<10x3x224x224xf32>, %arg1: tensor<64x3x7x7xf32>, %arg2: tensor<64xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64x64x1x1xf32>, %arg5: tensor<64xf32>, %arg6: tensor<64xf32>, %arg7: tensor<64x64x3x3xf32>, %arg8: tensor<64xf32>, %arg9: tensor<64xf32>, %arg10: tensor<256x64x1x1xf32>, %arg11: tensor<256xf32>, %arg12: tensor<256xf32>, %arg13: tensor<256x64x1x1xf32>, %arg14: tensor<256xf32>, %arg15: tensor<256xf32>, %arg16: tensor<64x256x1x1xf32>, %arg17: tensor<64xf32>, %arg18: tensor<64xf32>, %arg19: tensor<64x64x3x3xf32>, %arg20: tensor<64xf32>, %arg21: tensor<64xf32>, %arg22: tensor<256x64x1x1xf32>, %arg23: tensor<256xf32>, %arg24: tensor<256xf32>, %arg25: tensor<64x256x1x1xf32>, %arg26: tensor<64xf32>, %arg27: tensor<64xf32>, %arg28: tensor<64x64x3x3xf32>, %arg29: tensor<64xf32>, %arg30: tensor<64xf32>, %arg31: tensor<256x64x1x1xf32>, %arg32: tensor<256xf32>, %arg33: tensor<256xf32>, %arg34: tensor<128x256x1x1xf32>, %arg35: tensor<128xf32>, %arg36: tensor<128xf32>, %arg37: tensor<128x128x3x3xf32>, %arg38: tensor<128xf32>, %arg39: tensor<128xf32>, %arg40: tensor<512x128x1x1xf32>, %arg41: tensor<512xf32>, %arg42: tensor<512xf32>, %arg43: tensor<512x256x1x1xf32>, %arg44: tensor<512xf32>, %arg45: tensor<512xf32>, %arg46: tensor<128x512x1x1xf32>, %arg47: tensor<128xf32>, %arg48: tensor<128xf32>, %arg49: tensor<128x128x3x3xf32>, %arg50: tensor<128xf32>, %arg51: tensor<128xf32>, %arg52: tensor<512x128x1x1xf32>, %arg53: tensor<512xf32>, %arg54: tensor<512xf32>, %arg55: tensor<128x512x1x1xf32>, %arg56: tensor<128xf32>, %arg57: tensor<128xf32>, %arg58: tensor<128x128x3x3xf32>, %arg59: tensor<128xf32>, %arg60: tensor<128xf32>, %arg61: tensor<512x128x1x1xf32>, %arg62: tensor<512xf32>, %arg63: tensor<512xf32>, %arg64: tensor<128x512x1x1xf32>, %arg65: tensor<128xf32>, %arg66: tensor<128xf32>, %arg67: tensor<128x128x3x3xf32>, %arg68: tensor<128xf32>, %arg69: tensor<128xf32>, %arg70: tensor<512x128x1x1xf32>, %arg71: tensor<512xf32>, %arg72: tensor<512xf32>, %arg73: tensor<256x512x1x1xf32>, %arg74: tensor<256xf32>, %arg75: tensor<256xf32>, %arg76: tensor<256x256x3x3xf32>, %arg77: tensor<256xf32>, %arg78: tensor<256xf32>, %arg79: tensor<1024x256x1x1xf32>, %arg80: tensor<1024xf32>, %arg81: tensor<1024xf32>, %arg82: tensor<1024x512x1x1xf32>, %arg83: tensor<1024xf32>, %arg84: tensor<1024xf32>, %arg85: tensor<256x1024x1x1xf32>, %arg86: tensor<256xf32>, %arg87: tensor<256xf32>, %arg88: tensor<256x256x3x3xf32>, %arg89: tensor<256xf32>, %arg90: tensor<256xf32>, %arg91: tensor<1024x256x1x1xf32>, %arg92: tensor<1024xf32>, %arg93: tensor<1024xf32>, %arg94: tensor<256x1024x1x1xf32>, %arg95: tensor<256xf32>, %arg96: tensor<256xf32>, %arg97: tensor<256x256x3x3xf32>, %arg98: tensor<256xf32>, %arg99: tensor<256xf32>, %arg100: tensor<1024x256x1x1xf32>, %arg101: tensor<1024xf32>, %arg102: tensor<1024xf32>, %arg103: tensor<256x1024x1x1xf32>, %arg104: tensor<256xf32>, %arg105: tensor<256xf32>, %arg106: tensor<256x256x3x3xf32>, %arg107: tensor<256xf32>, %arg108: tensor<256xf32>, %arg109: tensor<1024x256x1x1xf32>, %arg110: tensor<1024xf32>, %arg111: tensor<1024xf32>, %arg112: tensor<256x1024x1x1xf32>, %arg113: tensor<256xf32>, %arg114: tensor<256xf32>, %arg115: tensor<256x256x3x3xf32>, %arg116: tensor<256xf32>, %arg117: tensor<256xf32>, %arg118: tensor<1024x256x1x1xf32>, %arg119: tensor<1024xf32>, %arg120: tensor<1024xf32>, %arg121: tensor<256x1024x1x1xf32>, %arg122: tensor<256xf32>, %arg123: tensor<256xf32>, %arg124: tensor<256x256x3x3xf32>, %arg125: tensor<256xf32>, %arg126: tensor<256xf32>, %arg127: tensor<1024x256x1x1xf32>, %arg128: tensor<1024xf32>, %arg129: tensor<1024xf32>, %arg130: tensor<256x1024x1x1xf32>, %arg131: tensor<256xf32>, %arg132: tensor<256xf32>, %arg133: tensor<256x256x3x3xf32>, %arg134: tensor<256xf32>, %arg135: tensor<256xf32>, %arg136: tensor<1024x256x1x1xf32>, %arg137: tensor<1024xf32>, %arg138: tensor<1024xf32>, %arg139: tensor<256x1024x1x1xf32>, %arg140: tensor<256xf32>, %arg141: tensor<256xf32>, %arg142: tensor<256x256x3x3xf32>, %arg143: tensor<256xf32>, %arg144: tensor<256xf32>, %arg145: tensor<1024x256x1x1xf32>, %arg146: tensor<1024xf32>, %arg147: tensor<1024xf32>, %arg148: tensor<256x1024x1x1xf32>, %arg149: tensor<256xf32>, %arg150: tensor<256xf32>, %arg151: tensor<256x256x3x3xf32>, %arg152: tensor<256xf32>, %arg153: tensor<256xf32>, %arg154: tensor<1024x256x1x1xf32>, %arg155: tensor<1024xf32>, %arg156: tensor<1024xf32>, %arg157: tensor<256x1024x1x1xf32>, %arg158: tensor<256xf32>, %arg159: tensor<256xf32>, %arg160: tensor<256x256x3x3xf32>, %arg161: tensor<256xf32>, %arg162: tensor<256xf32>, %arg163: tensor<1024x256x1x1xf32>, %arg164: tensor<1024xf32>, %arg165: tensor<1024xf32>, %arg166: tensor<256x1024x1x1xf32>, %arg167: tensor<256xf32>, %arg168: tensor<256xf32>, %arg169: tensor<256x256x3x3xf32>, %arg170: tensor<256xf32>, %arg171: tensor<256xf32>, %arg172: tensor<1024x256x1x1xf32>, %arg173: tensor<1024xf32>, %arg174: tensor<1024xf32>, %arg175: tensor<256x1024x1x1xf32>, %arg176: tensor<256xf32>, %arg177: tensor<256xf32>, %arg178: tensor<256x256x3x3xf32>, %arg179: tensor<256xf32>, %arg180: tensor<256xf32>, %arg181: tensor<1024x256x1x1xf32>, %arg182: tensor<1024xf32>, %arg183: tensor<1024xf32>, %arg184: tensor<256x1024x1x1xf32>, %arg185: tensor<256xf32>, %arg186: tensor<256xf32>, %arg187: tensor<256x256x3x3xf32>, %arg188: tensor<256xf32>, %arg189: tensor<256xf32>, %arg190: tensor<1024x256x1x1xf32>, %arg191: tensor<1024xf32>, %arg192: tensor<1024xf32>, %arg193: tensor<256x1024x1x1xf32>, %arg194: tensor<256xf32>, %arg195: tensor<256xf32>, %arg196: tensor<256x256x3x3xf32>, %arg197: tensor<256xf32>, %arg198: tensor<256xf32>, %arg199: tensor<1024x256x1x1xf32>, %arg200: tensor<1024xf32>, %arg201: tensor<1024xf32>, %arg202: tensor<256x1024x1x1xf32>, %arg203: tensor<256xf32>, %arg204: tensor<256xf32>, %arg205: tensor<256x256x3x3xf32>, %arg206: tensor<256xf32>, %arg207: tensor<256xf32>, %arg208: tensor<1024x256x1x1xf32>, %arg209: tensor<1024xf32>, %arg210: tensor<1024xf32>, %arg211: tensor<256x1024x1x1xf32>, %arg212: tensor<256xf32>, %arg213: tensor<256xf32>, %arg214: tensor<256x256x3x3xf32>, %arg215: tensor<256xf32>, %arg216: tensor<256xf32>, %arg217: tensor<1024x256x1x1xf32>, %arg218: tensor<1024xf32>, %arg219: tensor<1024xf32>, %arg220: tensor<256x1024x1x1xf32>, %arg221: tensor<256xf32>, %arg222: tensor<256xf32>, %arg223: tensor<256x256x3x3xf32>, %arg224: tensor<256xf32>, %arg225: tensor<256xf32>, %arg226: tensor<1024x256x1x1xf32>, %arg227: tensor<1024xf32>, %arg228: tensor<1024xf32>, %arg229: tensor<256x1024x1x1xf32>, %arg230: tensor<256xf32>, %arg231: tensor<256xf32>, %arg232: tensor<256x256x3x3xf32>, %arg233: tensor<256xf32>, %arg234: tensor<256xf32>, %arg235: tensor<1024x256x1x1xf32>, %arg236: tensor<1024xf32>, %arg237: tensor<1024xf32>, %arg238: tensor<256x1024x1x1xf32>, %arg239: tensor<256xf32>, %arg240: tensor<256xf32>, %arg241: tensor<256x256x3x3xf32>, %arg242: tensor<256xf32>, %arg243: tensor<256xf32>, %arg244: tensor<1024x256x1x1xf32>, %arg245: tensor<1024xf32>, %arg246: tensor<1024xf32>, %arg247: tensor<256x1024x1x1xf32>, %arg248: tensor<256xf32>, %arg249: tensor<256xf32>, %arg250: tensor<256x256x3x3xf32>, %arg251: tensor<256xf32>, %arg252: tensor<256xf32>, %arg253: tensor<1024x256x1x1xf32>, %arg254: tensor<1024xf32>, %arg255: tensor<1024xf32>, %arg256: tensor<256x1024x1x1xf32>, %arg257: tensor<256xf32>, %arg258: tensor<256xf32>, %arg259: tensor<256x256x3x3xf32>, %arg260: tensor<256xf32>, %arg261: tensor<256xf32>, %arg262: tensor<1024x256x1x1xf32>, %arg263: tensor<1024xf32>, %arg264: tensor<1024xf32>, %arg265: tensor<256x1024x1x1xf32>, %arg266: tensor<256xf32>, %arg267: tensor<256xf32>, %arg268: tensor<256x256x3x3xf32>, %arg269: tensor<256xf32>, %arg270: tensor<256xf32>, %arg271: tensor<1024x256x1x1xf32>, %arg272: tensor<1024xf32>, %arg273: tensor<1024xf32>, %arg274: tensor<256x1024x1x1xf32>, %arg275: tensor<256xf32>, %arg276: tensor<256xf32>, %arg277: tensor<256x256x3x3xf32>, %arg278: tensor<256xf32>, %arg279: tensor<256xf32>, %arg280: tensor<1024x256x1x1xf32>, %arg281: tensor<1024xf32>, %arg282: tensor<1024xf32>, %arg283: tensor<512x1024x1x1xf32>, %arg284: tensor<512xf32>, %arg285: tensor<512xf32>, %arg286: tensor<512x512x3x3xf32>, %arg287: tensor<512xf32>, %arg288: tensor<512xf32>, %arg289: tensor<2048x512x1x1xf32>, %arg290: tensor<2048xf32>, %arg291: tensor<2048xf32>, %arg292: tensor<2048x1024x1x1xf32>, %arg293: tensor<2048xf32>, %arg294: tensor<2048xf32>, %arg295: tensor<512x2048x1x1xf32>, %arg296: tensor<512xf32>, %arg297: tensor<512xf32>, %arg298: tensor<512x512x3x3xf32>, %arg299: tensor<512xf32>, %arg300: tensor<512xf32>, %arg301: tensor<2048x512x1x1xf32>, %arg302: tensor<2048xf32>, %arg303: tensor<2048xf32>, %arg304: tensor<512x2048x1x1xf32>, %arg305: tensor<512xf32>, %arg306: tensor<512xf32>, %arg307: tensor<512x512x3x3xf32>, %arg308: tensor<512xf32>, %arg309: tensor<512xf32>, %arg310: tensor<2048x512x1x1xf32>, %arg311: tensor<2048xf32>, %arg312: tensor<2048xf32>, %arg313: tensor<1000x2048xf32>, %arg314: tensor<1000xf32>, %arg315: tensor<64xf32>, %arg316: tensor<64xf32>, %arg317: tensor<64xf32>, %arg318: tensor<64xf32>, %arg319: tensor<64xf32>, %arg320: tensor<64xf32>, %arg321: tensor<256xf32>, %arg322: tensor<256xf32>, %arg323: tensor<256xf32>, %arg324: tensor<256xf32>, %arg325: tensor<64xf32>, %arg326: tensor<64xf32>, %arg327: tensor<64xf32>, %arg328: tensor<64xf32>, %arg329: tensor<256xf32>, %arg330: tensor<256xf32>, %arg331: tensor<64xf32>, %arg332: tensor<64xf32>, %arg333: tensor<64xf32>, %arg334: tensor<64xf32>, %arg335: tensor<256xf32>, %arg336: tensor<256xf32>, %arg337: tensor<128xf32>, %arg338: tensor<128xf32>, %arg339: tensor<128xf32>, %arg340: tensor<128xf32>, %arg341: tensor<512xf32>, %arg342: tensor<512xf32>, %arg343: tensor<512xf32>, %arg344: tensor<512xf32>, %arg345: tensor<128xf32>, %arg346: tensor<128xf32>, %arg347: tensor<128xf32>, %arg348: tensor<128xf32>, %arg349: tensor<512xf32>, %arg350: tensor<512xf32>, %arg351: tensor<128xf32>, %arg352: tensor<128xf32>, %arg353: tensor<128xf32>, %arg354: tensor<128xf32>, %arg355: tensor<512xf32>, %arg356: tensor<512xf32>, %arg357: tensor<128xf32>, %arg358: tensor<128xf32>, %arg359: tensor<128xf32>, %arg360: tensor<128xf32>, %arg361: tensor<512xf32>, %arg362: tensor<512xf32>, %arg363: tensor<256xf32>, %arg364: tensor<256xf32>, %arg365: tensor<256xf32>, %arg366: tensor<256xf32>, %arg367: tensor<1024xf32>, %arg368: tensor<1024xf32>, %arg369: tensor<1024xf32>, %arg370: tensor<1024xf32>, %arg371: tensor<256xf32>, %arg372: tensor<256xf32>, %arg373: tensor<256xf32>, %arg374: tensor<256xf32>, %arg375: tensor<1024xf32>, %arg376: tensor<1024xf32>, %arg377: tensor<256xf32>, %arg378: tensor<256xf32>, %arg379: tensor<256xf32>, %arg380: tensor<256xf32>, %arg381: tensor<1024xf32>, %arg382: tensor<1024xf32>, %arg383: tensor<256xf32>, %arg384: tensor<256xf32>, %arg385: tensor<256xf32>, %arg386: tensor<256xf32>, %arg387: tensor<1024xf32>, %arg388: tensor<1024xf32>, %arg389: tensor<256xf32>, %arg390: tensor<256xf32>, %arg391: tensor<256xf32>, %arg392: tensor<256xf32>, %arg393: tensor<1024xf32>, %arg394: tensor<1024xf32>, %arg395: tensor<256xf32>, %arg396: tensor<256xf32>, %arg397: tensor<256xf32>, %arg398: tensor<256xf32>, %arg399: tensor<1024xf32>, %arg400: tensor<1024xf32>, %arg401: tensor<256xf32>, %arg402: tensor<256xf32>, %arg403: tensor<256xf32>, %arg404: tensor<256xf32>, %arg405: tensor<1024xf32>, %arg406: tensor<1024xf32>, %arg407: tensor<256xf32>, %arg408: tensor<256xf32>, %arg409: tensor<256xf32>, %arg410: tensor<256xf32>, %arg411: tensor<1024xf32>, %arg412: tensor<1024xf32>, %arg413: tensor<256xf32>, %arg414: tensor<256xf32>, %arg415: tensor<256xf32>, %arg416: tensor<256xf32>, %arg417: tensor<1024xf32>, %arg418: tensor<1024xf32>, %arg419: tensor<256xf32>, %arg420: tensor<256xf32>, %arg421: tensor<256xf32>, %arg422: tensor<256xf32>, %arg423: tensor<1024xf32>, %arg424: tensor<1024xf32>, %arg425: tensor<256xf32>, %arg426: tensor<256xf32>, %arg427: tensor<256xf32>, %arg428: tensor<256xf32>, %arg429: tensor<1024xf32>, %arg430: tensor<1024xf32>, %arg431: tensor<256xf32>, %arg432: tensor<256xf32>, %arg433: tensor<256xf32>, %arg434: tensor<256xf32>, %arg435: tensor<1024xf32>, %arg436: tensor<1024xf32>, %arg437: tensor<256xf32>, %arg438: tensor<256xf32>, %arg439: tensor<256xf32>, %arg440: tensor<256xf32>, %arg441: tensor<1024xf32>, %arg442: tensor<1024xf32>, %arg443: tensor<256xf32>, %arg444: tensor<256xf32>, %arg445: tensor<256xf32>, %arg446: tensor<256xf32>, %arg447: tensor<1024xf32>, %arg448: tensor<1024xf32>, %arg449: tensor<256xf32>, %arg450: tensor<256xf32>, %arg451: tensor<256xf32>, %arg452: tensor<256xf32>, %arg453: tensor<1024xf32>, %arg454: tensor<1024xf32>, %arg455: tensor<256xf32>, %arg456: tensor<256xf32>, %arg457: tensor<256xf32>, %arg458: tensor<256xf32>, %arg459: tensor<1024xf32>, %arg460: tensor<1024xf32>, %arg461: tensor<256xf32>, %arg462: tensor<256xf32>, %arg463: tensor<256xf32>, %arg464: tensor<256xf32>, %arg465: tensor<1024xf32>, %arg466: tensor<1024xf32>, %arg467: tensor<256xf32>, %arg468: tensor<256xf32>, %arg469: tensor<256xf32>, %arg470: tensor<256xf32>, %arg471: tensor<1024xf32>, %arg472: tensor<1024xf32>, %arg473: tensor<256xf32>, %arg474: tensor<256xf32>, %arg475: tensor<256xf32>, %arg476: tensor<256xf32>, %arg477: tensor<1024xf32>, %arg478: tensor<1024xf32>, %arg479: tensor<256xf32>, %arg480: tensor<256xf32>, %arg481: tensor<256xf32>, %arg482: tensor<256xf32>, %arg483: tensor<1024xf32>, %arg484: tensor<1024xf32>, %arg485: tensor<256xf32>, %arg486: tensor<256xf32>, %arg487: tensor<256xf32>, %arg488: tensor<256xf32>, %arg489: tensor<1024xf32>, %arg490: tensor<1024xf32>, %arg491: tensor<256xf32>, %arg492: tensor<256xf32>, %arg493: tensor<256xf32>, %arg494: tensor<256xf32>, %arg495: tensor<1024xf32>, %arg496: tensor<1024xf32>, %arg497: tensor<256xf32>, %arg498: tensor<256xf32>, %arg499: tensor<256xf32>, %arg500: tensor<256xf32>, %arg501: tensor<1024xf32>, %arg502: tensor<1024xf32>, %arg503: tensor<512xf32>, %arg504: tensor<512xf32>, %arg505: tensor<512xf32>, %arg506: tensor<512xf32>, %arg507: tensor<2048xf32>, %arg508: tensor<2048xf32>, %arg509: tensor<2048xf32>, %arg510: tensor<2048xf32>, %arg511: tensor<512xf32>, %arg512: tensor<512xf32>, %arg513: tensor<512xf32>, %arg514: tensor<512xf32>, %arg515: tensor<2048xf32>, %arg516: tensor<2048xf32>, %arg517: tensor<512xf32>, %arg518: tensor<512xf32>, %arg519: tensor<512xf32>, %arg520: tensor<512xf32>, %arg521: tensor<2048xf32>, %arg522: tensor<2048xf32>) -> tensor<10x1000xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e-05 : f64
    %cst_2 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x3x224x224xf32> to tensor<10x3x230x230xf32>
    %0 = tensor.empty() : tensor<10x64x112x112xf32>
    %1 = linalg.fill ins(%cst : f32) outs(%0 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %arg1 : tensor<10x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<10x64x112x112xf32>) -> tensor<10x64x112x112xf32>
    %3 = tensor.empty() : tensor<64xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg316 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%4 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded = tensor.expand_shape %arg315 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_3 = tensor.expand_shape %5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %6 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %expanded : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x112x112xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %expanded_3 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_4 = tensor.expand_shape %arg2 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %expanded_4 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x112x112xf32>
    %expanded_5 = tensor.expand_shape %arg3 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8, %expanded_5 : tensor<10x64x112x112xf32>, tensor<64x1x1xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9 : tensor<10x64x112x112xf32>) outs(%0 : tensor<10x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x112x112xf32>
    %padded_6 = tensor.pad %10 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst_0 : f32
    } : tensor<10x64x112x112xf32> to tensor<10x64x114x114xf32>
    %11 = tensor.empty() : tensor<10x64x56x56xf32>
    %12 = linalg.fill ins(%cst_0 : f32) outs(%11 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %13 = tensor.empty() : tensor<3x3xf32>
    %14 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_6, %13 : tensor<10x64x114x114xf32>, tensor<3x3xf32>) outs(%12 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %15 = linalg.fill ins(%cst : f32) outs(%11 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %16 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg4 : tensor<10x64x56x56xf32>, tensor<64x64x1x1xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %17 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg318 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %18 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%17 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_7 = tensor.expand_shape %arg317 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_8 = tensor.expand_shape %18 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16, %expanded_7 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %expanded_8 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_9 = tensor.expand_shape %arg5 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %expanded_9 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_10 = tensor.expand_shape %arg6 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %expanded_10 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %padded_11 = tensor.pad %23 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_11, %arg7 : tensor<10x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg320 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %26 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%25 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_12 = tensor.expand_shape %arg319 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_13 = tensor.expand_shape %26 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %27 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %expanded_12 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %expanded_13 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_14 = tensor.expand_shape %arg8 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %expanded_14 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_15 = tensor.expand_shape %arg9 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %30 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %expanded_15 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %32 = tensor.empty() : tensor<10x256x56x56xf32>
    %33 = linalg.fill ins(%cst : f32) outs(%32 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%31, %arg10 : tensor<10x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%33 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %35 = tensor.empty() : tensor<256xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg322 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %37 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%36 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_16 = tensor.expand_shape %arg321 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_17 = tensor.expand_shape %37 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %expanded_16 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %expanded_17 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_18 = tensor.expand_shape %arg11 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %expanded_18 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_19 = tensor.expand_shape %arg12 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %expanded_19 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%14, %arg13 : tensor<10x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%33 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg324 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %44 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%43 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_20 = tensor.expand_shape %arg323 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_21 = tensor.expand_shape %44 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %expanded_20 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %expanded_21 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_22 = tensor.expand_shape %arg14 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %47 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %expanded_22 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_23 = tensor.expand_shape %arg15 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %48 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %expanded_23 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %48 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %50 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x56x56xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %arg16 : tensor<10x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %52 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg326 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %53 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%52 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_24 = tensor.expand_shape %arg325 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_25 = tensor.expand_shape %53 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %expanded_24 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %expanded_25 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_26 = tensor.expand_shape %arg17 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %expanded_26 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_27 = tensor.expand_shape %arg18 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %expanded_27 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %padded_28 = tensor.pad %58 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_28, %arg19 : tensor<10x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg328 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%60 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_29 = tensor.expand_shape %arg327 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_30 = tensor.expand_shape %61 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %expanded_29 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %expanded_30 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_31 = tensor.expand_shape %arg20 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %expanded_31 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_32 = tensor.expand_shape %arg21 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %expanded_32 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%66, %arg22 : tensor<10x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%33 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %68 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg330 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %69 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%68 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_33 = tensor.expand_shape %arg329 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_34 = tensor.expand_shape %69 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %70 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %expanded_33 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %71 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %expanded_34 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_35 = tensor.expand_shape %arg23 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %expanded_35 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_36 = tensor.expand_shape %arg24 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %73 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %expanded_36 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %74 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %50 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %75 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x56x56xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %arg25 : tensor<10x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %77 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg332 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %78 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%77 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_37 = tensor.expand_shape %arg331 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_38 = tensor.expand_shape %78 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %79 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %expanded_37 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %80 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %expanded_38 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_39 = tensor.expand_shape %arg26 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %81 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %expanded_39 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_40 = tensor.expand_shape %arg27 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %82 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %expanded_40 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %padded_41 = tensor.pad %83 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x64x56x56xf32> to tensor<10x64x58x58xf32>
    %84 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_41, %arg28 : tensor<10x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%15 : tensor<10x64x56x56xf32>) -> tensor<10x64x56x56xf32>
    %85 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg334 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<64xf32>
    %86 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%85 : tensor<64xf32>) outs(%3 : tensor<64xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<64xf32>
    %expanded_42 = tensor.expand_shape %arg333 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %expanded_43 = tensor.expand_shape %86 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84, %expanded_42 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %expanded_43 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_44 = tensor.expand_shape %arg29 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %expanded_44 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %expanded_45 = tensor.expand_shape %arg30 [[0, 1, 2]] output_shape [64, 1, 1] : tensor<64xf32> into tensor<64x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %expanded_45 : tensor<10x64x56x56xf32>, tensor<64x1x1xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x64x56x56xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<10x64x56x56xf32>) outs(%11 : tensor<10x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x64x56x56xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %arg31 : tensor<10x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%33 : tensor<10x256x56x56xf32>) -> tensor<10x256x56x56xf32>
    %93 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg336 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %94 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%93 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_46 = tensor.expand_shape %arg335 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_47 = tensor.expand_shape %94 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %expanded_46 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %expanded_47 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_48 = tensor.expand_shape %arg32 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %expanded_48 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %expanded_49 = tensor.expand_shape %arg33 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %expanded_49 : tensor<10x256x56x56xf32>, tensor<256x1x1xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %75 : tensor<10x256x56x56xf32>, tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x56x56xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<10x256x56x56xf32>) outs(%32 : tensor<10x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x56x56xf32>
    %101 = tensor.empty() : tensor<10x128x56x56xf32>
    %102 = linalg.fill ins(%cst : f32) outs(%101 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%100, %arg34 : tensor<10x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%102 : tensor<10x128x56x56xf32>) -> tensor<10x128x56x56xf32>
    %104 = tensor.empty() : tensor<128xf32>
    %105 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg338 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %106 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%105 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_50 = tensor.expand_shape %arg337 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_51 = tensor.expand_shape %106 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %expanded_50 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%101 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x56x56xf32>
    %108 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %expanded_51 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%101 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_52 = tensor.expand_shape %arg35 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %109 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %expanded_52 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%101 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x56x56xf32>
    %expanded_53 = tensor.expand_shape %arg36 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %expanded_53 : tensor<10x128x56x56xf32>, tensor<128x1x1xf32>) outs(%101 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x56x56xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<10x128x56x56xf32>) outs(%101 : tensor<10x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x56x56xf32>
    %padded_54 = tensor.pad %111 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x128x56x56xf32> to tensor<10x128x58x58xf32>
    %112 = tensor.empty() : tensor<10x128x28x28xf32>
    %113 = linalg.fill ins(%cst : f32) outs(%112 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_54, %arg37 : tensor<10x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg340 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%115 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_55 = tensor.expand_shape %arg339 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_56 = tensor.expand_shape %116 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %expanded_55 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %expanded_56 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_57 = tensor.expand_shape %arg38 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %expanded_57 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_58 = tensor.expand_shape %arg39 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %expanded_58 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %122 = tensor.empty() : tensor<10x512x28x28xf32>
    %123 = linalg.fill ins(%cst : f32) outs(%122 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %arg40 : tensor<10x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%123 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %125 = tensor.empty() : tensor<512xf32>
    %126 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg342 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %127 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%126 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_59 = tensor.expand_shape %arg341 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_60 = tensor.expand_shape %127 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %expanded_59 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %129 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %expanded_60 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_61 = tensor.expand_shape %arg41 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %expanded_61 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_62 = tensor.expand_shape %arg42 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %expanded_62 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%100, %arg43 : tensor<10x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%123 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %133 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg344 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %134 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%133 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_63 = tensor.expand_shape %arg343 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_64 = tensor.expand_shape %134 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %expanded_63 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %expanded_64 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_65 = tensor.expand_shape %arg44 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %expanded_65 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_66 = tensor.expand_shape %arg45 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %expanded_66 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %139 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %138 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x28x28xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %arg46 : tensor<10x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %142 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg346 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %143 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%142 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_67 = tensor.expand_shape %arg345 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_68 = tensor.expand_shape %143 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %expanded_67 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %expanded_68 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_69 = tensor.expand_shape %arg47 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %expanded_69 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_70 = tensor.expand_shape %arg48 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %expanded_70 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %padded_71 = tensor.pad %148 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_71, %arg49 : tensor<10x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %150 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg348 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%150 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_72 = tensor.expand_shape %arg347 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_73 = tensor.expand_shape %151 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %expanded_72 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %expanded_73 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_74 = tensor.expand_shape %arg50 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %expanded_74 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_75 = tensor.expand_shape %arg51 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %expanded_75 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %arg52 : tensor<10x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%123 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %158 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg350 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %159 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%158 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_76 = tensor.expand_shape %arg349 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_77 = tensor.expand_shape %159 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %160 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %expanded_76 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %161 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %expanded_77 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_78 = tensor.expand_shape %arg53 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %162 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %expanded_78 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_79 = tensor.expand_shape %arg54 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %163 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %expanded_79 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %140 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x28x28xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %arg55 : tensor<10x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg352 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%167 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_80 = tensor.expand_shape %arg351 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_81 = tensor.expand_shape %168 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %expanded_80 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %expanded_81 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_82 = tensor.expand_shape %arg56 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %expanded_82 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_83 = tensor.expand_shape %arg57 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %expanded_83 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %padded_84 = tensor.pad %173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_84, %arg58 : tensor<10x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg354 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%175 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_85 = tensor.expand_shape %arg353 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_86 = tensor.expand_shape %176 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %expanded_85 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %expanded_86 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_87 = tensor.expand_shape %arg59 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %179 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %expanded_87 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_88 = tensor.expand_shape %arg60 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %expanded_88 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %181 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %arg61 : tensor<10x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%123 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %183 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg356 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %184 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%183 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_89 = tensor.expand_shape %arg355 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_90 = tensor.expand_shape %184 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %expanded_89 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %186 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %expanded_90 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_91 = tensor.expand_shape %arg62 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %expanded_91 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_92 = tensor.expand_shape %arg63 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %expanded_92 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %165 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x28x28xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %arg64 : tensor<10x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %192 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg358 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %193 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%192 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_93 = tensor.expand_shape %arg357 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_94 = tensor.expand_shape %193 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %expanded_93 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %expanded_94 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_95 = tensor.expand_shape %arg65 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %expanded_95 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_96 = tensor.expand_shape %arg66 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %expanded_96 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %198 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %padded_97 = tensor.pad %198 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x128x28x28xf32> to tensor<10x128x30x30xf32>
    %199 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_97, %arg67 : tensor<10x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%113 : tensor<10x128x28x28xf32>) -> tensor<10x128x28x28xf32>
    %200 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg360 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<128xf32>
    %201 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%200 : tensor<128xf32>) outs(%104 : tensor<128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<128xf32>
    %expanded_98 = tensor.expand_shape %arg359 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %expanded_99 = tensor.expand_shape %201 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %expanded_98 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %expanded_99 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_100 = tensor.expand_shape %arg68 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %204 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %expanded_100 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %expanded_101 = tensor.expand_shape %arg69 [[0, 1, 2]] output_shape [128, 1, 1] : tensor<128xf32> into tensor<128x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %expanded_101 : tensor<10x128x28x28xf32>, tensor<128x1x1xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x128x28x28xf32>
    %206 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<10x128x28x28xf32>) outs(%112 : tensor<10x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x128x28x28xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %arg70 : tensor<10x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%123 : tensor<10x512x28x28xf32>) -> tensor<10x512x28x28xf32>
    %208 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg362 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%208 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_102 = tensor.expand_shape %arg361 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_103 = tensor.expand_shape %209 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %expanded_102 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %expanded_103 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_104 = tensor.expand_shape %arg71 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %expanded_104 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %expanded_105 = tensor.expand_shape %arg72 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %expanded_105 : tensor<10x512x28x28xf32>, tensor<512x1x1xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %190 : tensor<10x512x28x28xf32>, tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x28x28xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<10x512x28x28xf32>) outs(%122 : tensor<10x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x28x28xf32>
    %216 = tensor.empty() : tensor<10x256x28x28xf32>
    %217 = linalg.fill ins(%cst : f32) outs(%216 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %arg73 : tensor<10x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%217 : tensor<10x256x28x28xf32>) -> tensor<10x256x28x28xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg364 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %220 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%219 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_106 = tensor.expand_shape %arg363 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_107 = tensor.expand_shape %220 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %expanded_106 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%216 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x28x28xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %expanded_107 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%216 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_108 = tensor.expand_shape %arg74 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %expanded_108 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%216 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x28x28xf32>
    %expanded_109 = tensor.expand_shape %arg75 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %expanded_109 : tensor<10x256x28x28xf32>, tensor<256x1x1xf32>) outs(%216 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x28x28xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<10x256x28x28xf32>) outs(%216 : tensor<10x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x28x28xf32>
    %padded_110 = tensor.pad %225 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x28x28xf32> to tensor<10x256x30x30xf32>
    %226 = tensor.empty() : tensor<10x256x14x14xf32>
    %227 = linalg.fill ins(%cst : f32) outs(%226 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_110, %arg76 : tensor<10x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg366 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %230 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%229 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_111 = tensor.expand_shape %arg365 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_112 = tensor.expand_shape %230 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %expanded_111 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %expanded_112 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_113 = tensor.expand_shape %arg77 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %233 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %expanded_113 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_114 = tensor.expand_shape %arg78 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %expanded_114 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %236 = tensor.empty() : tensor<10x1024x14x14xf32>
    %237 = linalg.fill ins(%cst : f32) outs(%236 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %arg79 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %239 = tensor.empty() : tensor<1024xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg368 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %241 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%240 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_115 = tensor.expand_shape %arg367 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_116 = tensor.expand_shape %241 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %expanded_115 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %243 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %expanded_116 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_117 = tensor.expand_shape %arg80 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %expanded_117 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_118 = tensor.expand_shape %arg81 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %expanded_118 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %246 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%215, %arg82 : tensor<10x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %247 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg370 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %248 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%247 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_119 = tensor.expand_shape %arg369 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_120 = tensor.expand_shape %248 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %249 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %expanded_119 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %expanded_120 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_121 = tensor.expand_shape %arg83 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %expanded_121 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_122 = tensor.expand_shape %arg84 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %expanded_122 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %252 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %255 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%254, %arg85 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg372 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %257 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%256 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_123 = tensor.expand_shape %arg371 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_124 = tensor.expand_shape %257 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %expanded_123 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %259 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %expanded_124 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_125 = tensor.expand_shape %arg86 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259, %expanded_125 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_126 = tensor.expand_shape %arg87 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %expanded_126 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_127 = tensor.pad %262 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %263 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_127, %arg88 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg374 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %265 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%264 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_128 = tensor.expand_shape %arg373 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_129 = tensor.expand_shape %265 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %expanded_128 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %267 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %expanded_129 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_130 = tensor.expand_shape %arg89 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %expanded_130 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_131 = tensor.expand_shape %arg90 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %expanded_131 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %arg91 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg376 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %273 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%272 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_132 = tensor.expand_shape %arg375 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_133 = tensor.expand_shape %273 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %expanded_132 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %expanded_133 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_134 = tensor.expand_shape %arg92 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %expanded_134 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_135 = tensor.expand_shape %arg93 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %277 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %expanded_135 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %254 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %280 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%279, %arg94 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg378 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%281 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_136 = tensor.expand_shape %arg377 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_137 = tensor.expand_shape %282 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280, %expanded_136 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %expanded_137 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_138 = tensor.expand_shape %arg95 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %expanded_138 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_139 = tensor.expand_shape %arg96 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %expanded_139 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_140 = tensor.pad %287 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_140, %arg97 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg380 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %290 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%289 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_141 = tensor.expand_shape %arg379 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_142 = tensor.expand_shape %290 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %expanded_141 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %expanded_142 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_143 = tensor.expand_shape %arg98 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %expanded_143 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_144 = tensor.expand_shape %arg99 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %expanded_144 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %295 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %arg100 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %297 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg382 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %298 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%297 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_145 = tensor.expand_shape %arg381 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_146 = tensor.expand_shape %298 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %expanded_145 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299, %expanded_146 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_147 = tensor.expand_shape %arg101 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %expanded_147 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_148 = tensor.expand_shape %arg102 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %expanded_148 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %279 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %305 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%304, %arg103 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg384 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %307 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%306 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_149 = tensor.expand_shape %arg383 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_150 = tensor.expand_shape %307 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %expanded_149 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %309 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %expanded_150 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_151 = tensor.expand_shape %arg104 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %expanded_151 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_152 = tensor.expand_shape %arg105 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %expanded_152 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_153 = tensor.pad %312 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %313 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_153, %arg106 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg386 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %315 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%314 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_154 = tensor.expand_shape %arg385 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_155 = tensor.expand_shape %315 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %316 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %expanded_154 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %expanded_155 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_156 = tensor.expand_shape %arg107 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %expanded_156 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_157 = tensor.expand_shape %arg108 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %expanded_157 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %arg109 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg388 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %323 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%322 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_158 = tensor.expand_shape %arg387 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_159 = tensor.expand_shape %323 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %expanded_158 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %expanded_159 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_160 = tensor.expand_shape %arg110 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %expanded_160 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_161 = tensor.expand_shape %arg111 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326, %expanded_161 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %304 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%329, %arg112 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %331 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg390 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %332 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%331 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_162 = tensor.expand_shape %arg389 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_163 = tensor.expand_shape %332 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330, %expanded_162 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %expanded_163 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_164 = tensor.expand_shape %arg113 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %335 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %expanded_164 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_165 = tensor.expand_shape %arg114 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %336 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %expanded_165 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %337 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_166 = tensor.pad %337 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_166, %arg115 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %339 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg392 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %340 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%339 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_167 = tensor.expand_shape %arg391 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_168 = tensor.expand_shape %340 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %341 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %expanded_167 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %expanded_168 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_169 = tensor.expand_shape %arg116 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %expanded_169 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_170 = tensor.expand_shape %arg117 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %expanded_170 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %345 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %346 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %arg118 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %347 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg394 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %348 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%347 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_171 = tensor.expand_shape %arg393 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_172 = tensor.expand_shape %348 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346, %expanded_171 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %expanded_172 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_173 = tensor.expand_shape %arg119 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %expanded_173 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_174 = tensor.expand_shape %arg120 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %expanded_174 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %329 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %354 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %355 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%354, %arg121 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg396 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %357 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%356 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_175 = tensor.expand_shape %arg395 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_176 = tensor.expand_shape %357 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %expanded_175 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %expanded_176 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_177 = tensor.expand_shape %arg122 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %expanded_177 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_178 = tensor.expand_shape %arg123 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %expanded_178 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_179 = tensor.pad %362 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_179, %arg124 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg398 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %365 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%364 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_180 = tensor.expand_shape %arg397 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_181 = tensor.expand_shape %365 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %expanded_180 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %expanded_181 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_182 = tensor.expand_shape %arg125 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %expanded_182 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_183 = tensor.expand_shape %arg126 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %369 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %expanded_183 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %arg127 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %372 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg400 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %373 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%372 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_184 = tensor.expand_shape %arg399 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_185 = tensor.expand_shape %373 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %expanded_184 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %375 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %expanded_185 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_186 = tensor.expand_shape %arg128 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %376 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %expanded_186 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_187 = tensor.expand_shape %arg129 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %expanded_187 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %354 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %380 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%379, %arg130 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg402 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %382 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%381 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_188 = tensor.expand_shape %arg401 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_189 = tensor.expand_shape %382 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %383 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %expanded_188 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383, %expanded_189 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_190 = tensor.expand_shape %arg131 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %385 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %expanded_190 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_191 = tensor.expand_shape %arg132 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %expanded_191 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_192 = tensor.pad %387 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %388 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_192, %arg133 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg404 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %390 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%389 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_193 = tensor.expand_shape %arg403 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_194 = tensor.expand_shape %390 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %expanded_193 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %expanded_194 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_195 = tensor.expand_shape %arg134 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %393 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %expanded_195 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_196 = tensor.expand_shape %arg135 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %394 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393, %expanded_196 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %395 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %396 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%395, %arg136 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %397 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg406 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %398 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%397 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_197 = tensor.expand_shape %arg405 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_198 = tensor.expand_shape %398 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %399 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %expanded_197 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %expanded_198 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_199 = tensor.expand_shape %arg137 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400, %expanded_199 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_200 = tensor.expand_shape %arg138 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %402 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %expanded_200 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %403 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402, %379 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %404 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %405 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%404, %arg139 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %406 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg408 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %407 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%406 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_201 = tensor.expand_shape %arg407 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_202 = tensor.expand_shape %407 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %expanded_201 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %expanded_202 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_203 = tensor.expand_shape %arg140 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %410 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %expanded_203 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_204 = tensor.expand_shape %arg141 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410, %expanded_204 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %412 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_205 = tensor.pad %412 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_205, %arg142 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %414 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg410 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %415 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%414 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_206 = tensor.expand_shape %arg409 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_207 = tensor.expand_shape %415 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %expanded_206 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416, %expanded_207 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_208 = tensor.expand_shape %arg143 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %expanded_208 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_209 = tensor.expand_shape %arg144 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %expanded_209 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %421 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%420, %arg145 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %422 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg412 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %423 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%422 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_210 = tensor.expand_shape %arg411 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_211 = tensor.expand_shape %423 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %expanded_210 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %expanded_211 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_212 = tensor.expand_shape %arg146 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %expanded_212 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_213 = tensor.expand_shape %arg147 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %expanded_213 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %404 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%429, %arg148 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %431 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg414 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %432 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%431 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_214 = tensor.expand_shape %arg413 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_215 = tensor.expand_shape %432 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %expanded_214 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %expanded_215 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_216 = tensor.expand_shape %arg149 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %expanded_216 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_217 = tensor.expand_shape %arg150 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %expanded_217 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %437 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_218 = tensor.pad %437 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_218, %arg151 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %439 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg416 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %440 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%439 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_219 = tensor.expand_shape %arg415 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_220 = tensor.expand_shape %440 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %expanded_219 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %expanded_220 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_221 = tensor.expand_shape %arg152 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %expanded_221 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_222 = tensor.expand_shape %arg153 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %expanded_222 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %445 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %446 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%445, %arg154 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %447 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg418 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %448 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%447 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_223 = tensor.expand_shape %arg417 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_224 = tensor.expand_shape %448 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %expanded_223 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %expanded_224 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_225 = tensor.expand_shape %arg155 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %451 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %expanded_225 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_226 = tensor.expand_shape %arg156 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %expanded_226 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %429 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %454 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %455 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %arg157 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg420 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %457 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%456 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_227 = tensor.expand_shape %arg419 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_228 = tensor.expand_shape %457 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %expanded_227 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %expanded_228 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_229 = tensor.expand_shape %arg158 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459, %expanded_229 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_230 = tensor.expand_shape %arg159 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460, %expanded_230 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %462 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_231 = tensor.pad %462 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %463 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_231, %arg160 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %464 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg422 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %465 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%464 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_232 = tensor.expand_shape %arg421 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_233 = tensor.expand_shape %465 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %expanded_232 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %467 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %expanded_233 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_234 = tensor.expand_shape %arg161 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %expanded_234 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_235 = tensor.expand_shape %arg162 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %469 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %expanded_235 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %470 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %arg163 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %472 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg424 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %473 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%472 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_236 = tensor.expand_shape %arg423 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_237 = tensor.expand_shape %473 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %474 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %expanded_236 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %475 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %expanded_237 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_238 = tensor.expand_shape %arg164 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %476 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %expanded_238 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_239 = tensor.expand_shape %arg165 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %477 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %expanded_239 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %478 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %454 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %479 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %480 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%479, %arg166 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %481 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg426 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %482 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%481 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_240 = tensor.expand_shape %arg425 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_241 = tensor.expand_shape %482 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480, %expanded_240 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %expanded_241 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_242 = tensor.expand_shape %arg167 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %expanded_242 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_243 = tensor.expand_shape %arg168 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485, %expanded_243 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %487 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_244 = tensor.pad %487 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %488 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_244, %arg169 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %489 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg428 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %490 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%489 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_245 = tensor.expand_shape %arg427 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_246 = tensor.expand_shape %490 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %491 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %expanded_245 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %492 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %expanded_246 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_247 = tensor.expand_shape %arg170 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %493 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %expanded_247 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_248 = tensor.expand_shape %arg171 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %494 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %expanded_248 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %495 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %496 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%495, %arg172 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %497 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg430 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %498 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%497 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_249 = tensor.expand_shape %arg429 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_250 = tensor.expand_shape %498 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %499 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %expanded_249 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %500 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %expanded_250 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_251 = tensor.expand_shape %arg173 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500, %expanded_251 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_252 = tensor.expand_shape %arg174 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501, %expanded_252 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502, %479 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %504 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %505 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%504, %arg175 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %506 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg432 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %507 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%506 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_253 = tensor.expand_shape %arg431 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_254 = tensor.expand_shape %507 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %508 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %expanded_253 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %509 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %expanded_254 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_255 = tensor.expand_shape %arg176 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %510 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %expanded_255 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_256 = tensor.expand_shape %arg177 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %expanded_256 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_257 = tensor.pad %512 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_257, %arg178 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %514 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg434 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %515 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%514 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_258 = tensor.expand_shape %arg433 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_259 = tensor.expand_shape %515 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %516 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %expanded_258 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %517 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %expanded_259 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_260 = tensor.expand_shape %arg179 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %518 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %expanded_260 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_261 = tensor.expand_shape %arg180 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %519 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %expanded_261 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %521 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %arg181 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %522 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg436 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %523 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%522 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_262 = tensor.expand_shape %arg435 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_263 = tensor.expand_shape %523 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521, %expanded_262 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %525 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %expanded_263 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_264 = tensor.expand_shape %arg182 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %expanded_264 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_265 = tensor.expand_shape %arg183 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %expanded_265 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527, %504 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %529 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %530 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%529, %arg184 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %531 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg438 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %532 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%531 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_266 = tensor.expand_shape %arg437 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_267 = tensor.expand_shape %532 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %533 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %expanded_266 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %534 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %expanded_267 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_268 = tensor.expand_shape %arg185 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %535 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %expanded_268 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_269 = tensor.expand_shape %arg186 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %expanded_269 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_270 = tensor.pad %537 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %538 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_270, %arg187 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %539 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg440 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %540 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%539 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_271 = tensor.expand_shape %arg439 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_272 = tensor.expand_shape %540 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %541 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %expanded_271 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %542 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %expanded_272 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_273 = tensor.expand_shape %arg188 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %expanded_273 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_274 = tensor.expand_shape %arg189 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543, %expanded_274 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %546 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%545, %arg190 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %547 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg442 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %548 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%547 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_275 = tensor.expand_shape %arg441 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_276 = tensor.expand_shape %548 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %expanded_275 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %550 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549, %expanded_276 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_277 = tensor.expand_shape %arg191 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %551 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %expanded_277 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_278 = tensor.expand_shape %arg192 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %expanded_278 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %553 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %529 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %555 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %arg193 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %556 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg444 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %557 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%556 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_279 = tensor.expand_shape %arg443 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_280 = tensor.expand_shape %557 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %558 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %expanded_279 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %559 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %expanded_280 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_281 = tensor.expand_shape %arg194 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %560 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %expanded_281 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_282 = tensor.expand_shape %arg195 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %561 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %expanded_282 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %562 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_283 = tensor.pad %562 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %563 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_283, %arg196 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %564 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg446 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %565 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%564 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_284 = tensor.expand_shape %arg445 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_285 = tensor.expand_shape %565 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563, %expanded_284 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %567 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566, %expanded_285 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_286 = tensor.expand_shape %arg197 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %expanded_286 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_287 = tensor.expand_shape %arg198 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %expanded_287 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %570 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %571 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%570, %arg199 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %572 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg448 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %573 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%572 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_288 = tensor.expand_shape %arg447 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_289 = tensor.expand_shape %573 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %574 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571, %expanded_288 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %575 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %expanded_289 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_290 = tensor.expand_shape %arg200 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %576 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %expanded_290 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_291 = tensor.expand_shape %arg201 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %577 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %expanded_291 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %578 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %554 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %579 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %580 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%579, %arg202 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %581 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg450 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %582 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%581 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_292 = tensor.expand_shape %arg449 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_293 = tensor.expand_shape %582 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %expanded_292 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %584 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %expanded_293 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_294 = tensor.expand_shape %arg203 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %expanded_294 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_295 = tensor.expand_shape %arg204 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %expanded_295 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %587 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_296 = tensor.pad %587 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_296, %arg205 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %589 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg452 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %590 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%589 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_297 = tensor.expand_shape %arg451 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_298 = tensor.expand_shape %590 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %591 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %expanded_297 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591, %expanded_298 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_299 = tensor.expand_shape %arg206 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %expanded_299 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_300 = tensor.expand_shape %arg207 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593, %expanded_300 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %595 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %596 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%595, %arg208 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %597 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg454 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %598 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%597 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_301 = tensor.expand_shape %arg453 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_302 = tensor.expand_shape %598 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %599 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %expanded_301 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %600 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %expanded_302 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_303 = tensor.expand_shape %arg209 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %601 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %expanded_303 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_304 = tensor.expand_shape %arg210 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %expanded_304 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %579 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %604 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %605 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%604, %arg211 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg456 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %607 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%606 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_305 = tensor.expand_shape %arg455 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_306 = tensor.expand_shape %607 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605, %expanded_305 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %609 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608, %expanded_306 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_307 = tensor.expand_shape %arg212 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %expanded_307 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_308 = tensor.expand_shape %arg213 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %expanded_308 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_309 = tensor.pad %612 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %613 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_309, %arg214 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %614 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg458 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %615 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%614 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_310 = tensor.expand_shape %arg457 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_311 = tensor.expand_shape %615 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %616 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %expanded_310 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %617 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %expanded_311 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_312 = tensor.expand_shape %arg215 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %618 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %expanded_312 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_313 = tensor.expand_shape %arg216 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %619 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %expanded_313 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %620 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %621 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%620, %arg217 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %622 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg460 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %623 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%622 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_314 = tensor.expand_shape %arg459 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_315 = tensor.expand_shape %623 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %624 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %expanded_314 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %625 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %expanded_315 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_316 = tensor.expand_shape %arg218 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %626 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %expanded_316 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_317 = tensor.expand_shape %arg219 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %627 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626, %expanded_317 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %628 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627, %604 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %629 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %630 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%629, %arg220 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %631 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg462 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %632 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%631 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_318 = tensor.expand_shape %arg461 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_319 = tensor.expand_shape %632 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %expanded_318 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %634 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633, %expanded_319 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_320 = tensor.expand_shape %arg221 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %expanded_320 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_321 = tensor.expand_shape %arg222 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %636 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%635, %expanded_321 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %637 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_322 = tensor.pad %637 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %638 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_322, %arg223 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %639 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg464 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %640 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%639 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_323 = tensor.expand_shape %arg463 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_324 = tensor.expand_shape %640 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %641 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %expanded_323 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %642 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641, %expanded_324 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_325 = tensor.expand_shape %arg224 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %643 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %expanded_325 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_326 = tensor.expand_shape %arg225 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %644 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %expanded_326 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %645 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %646 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%645, %arg226 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %647 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg466 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %648 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%647 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_327 = tensor.expand_shape %arg465 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_328 = tensor.expand_shape %648 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %expanded_327 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %650 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649, %expanded_328 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_329 = tensor.expand_shape %arg227 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650, %expanded_329 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_330 = tensor.expand_shape %arg228 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %expanded_330 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %653 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %629 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %654 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%653 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %655 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%654, %arg229 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %656 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg468 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %657 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%656 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_331 = tensor.expand_shape %arg467 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_332 = tensor.expand_shape %657 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %658 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %expanded_331 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %659 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %expanded_332 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_333 = tensor.expand_shape %arg230 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %660 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %expanded_333 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_334 = tensor.expand_shape %arg231 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %expanded_334 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %662 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_335 = tensor.pad %662 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %663 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_335, %arg232 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %664 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg470 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %665 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%664 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_336 = tensor.expand_shape %arg469 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_337 = tensor.expand_shape %665 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %666 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %expanded_336 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %667 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %expanded_337 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_338 = tensor.expand_shape %arg233 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %668 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %expanded_338 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_339 = tensor.expand_shape %arg234 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %expanded_339 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %670 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %671 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%670, %arg235 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %672 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg472 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %673 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%672 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_340 = tensor.expand_shape %arg471 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_341 = tensor.expand_shape %673 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671, %expanded_340 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %675 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %expanded_341 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_342 = tensor.expand_shape %arg236 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675, %expanded_342 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_343 = tensor.expand_shape %arg237 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %expanded_343 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %678 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677, %654 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %679 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %680 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%679, %arg238 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %681 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg474 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %682 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%681 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_344 = tensor.expand_shape %arg473 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_345 = tensor.expand_shape %682 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %683 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680, %expanded_344 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %684 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %expanded_345 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_346 = tensor.expand_shape %arg239 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %685 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684, %expanded_346 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_347 = tensor.expand_shape %arg240 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %686 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %expanded_347 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %687 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_348 = tensor.pad %687 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %688 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_348, %arg241 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %689 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg476 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %690 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%689 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_349 = tensor.expand_shape %arg475 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_350 = tensor.expand_shape %690 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688, %expanded_349 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %692 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %expanded_350 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_351 = tensor.expand_shape %arg242 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %693 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692, %expanded_351 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_352 = tensor.expand_shape %arg243 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %expanded_352 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %695 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%695, %arg244 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %697 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg478 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %698 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%697 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_353 = tensor.expand_shape %arg477 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_354 = tensor.expand_shape %698 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %699 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %expanded_353 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %700 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %expanded_354 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_355 = tensor.expand_shape %arg245 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %701 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %expanded_355 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_356 = tensor.expand_shape %arg246 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %702 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %expanded_356 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %703 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702, %679 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %704 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %705 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%704, %arg247 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %706 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg480 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %707 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%706 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_357 = tensor.expand_shape %arg479 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_358 = tensor.expand_shape %707 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %708 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %expanded_357 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %709 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708, %expanded_358 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_359 = tensor.expand_shape %arg248 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %710 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %expanded_359 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_360 = tensor.expand_shape %arg249 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %711 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710, %expanded_360 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %712 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_361 = tensor.pad %712 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %713 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_361, %arg250 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %714 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg482 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %715 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%714 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_362 = tensor.expand_shape %arg481 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_363 = tensor.expand_shape %715 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713, %expanded_362 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %717 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716, %expanded_363 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_364 = tensor.expand_shape %arg251 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %718 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717, %expanded_364 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_365 = tensor.expand_shape %arg252 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %719 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %expanded_365 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %720 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %721 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%720, %arg253 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %722 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg484 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %723 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%722 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_366 = tensor.expand_shape %arg483 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_367 = tensor.expand_shape %723 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %724 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %expanded_366 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %725 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %expanded_367 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_368 = tensor.expand_shape %arg254 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %726 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725, %expanded_368 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_369 = tensor.expand_shape %arg255 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %727 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %expanded_369 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %728 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %704 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %729 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %730 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%729, %arg256 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %731 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg486 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %732 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%731 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_370 = tensor.expand_shape %arg485 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_371 = tensor.expand_shape %732 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %733 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730, %expanded_370 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %734 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %expanded_371 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_372 = tensor.expand_shape %arg257 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %735 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734, %expanded_372 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_373 = tensor.expand_shape %arg258 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %736 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %expanded_373 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %737 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_374 = tensor.pad %737 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %738 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_374, %arg259 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %739 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg488 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %740 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%739 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_375 = tensor.expand_shape %arg487 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_376 = tensor.expand_shape %740 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%738, %expanded_375 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %742 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %expanded_376 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_377 = tensor.expand_shape %arg260 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %743 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742, %expanded_377 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_378 = tensor.expand_shape %arg261 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %744 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743, %expanded_378 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %745 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %746 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%745, %arg262 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %747 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg490 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %748 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%747 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_379 = tensor.expand_shape %arg489 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_380 = tensor.expand_shape %748 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %749 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746, %expanded_379 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %750 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %expanded_380 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_381 = tensor.expand_shape %arg263 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %751 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %expanded_381 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_382 = tensor.expand_shape %arg264 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %752 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %expanded_382 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %753 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %729 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %754 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %755 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%754, %arg265 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %756 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg492 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %757 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%756 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_383 = tensor.expand_shape %arg491 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_384 = tensor.expand_shape %757 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %758 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755, %expanded_383 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %759 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758, %expanded_384 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_385 = tensor.expand_shape %arg266 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %760 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759, %expanded_385 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_386 = tensor.expand_shape %arg267 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %761 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760, %expanded_386 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %762 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_387 = tensor.pad %762 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %763 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_387, %arg268 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %764 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg494 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %765 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%764 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_388 = tensor.expand_shape %arg493 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_389 = tensor.expand_shape %765 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %expanded_388 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %767 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %expanded_389 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_390 = tensor.expand_shape %arg269 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %768 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767, %expanded_390 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_391 = tensor.expand_shape %arg270 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %769 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %expanded_391 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %770 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%770, %arg271 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %772 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg496 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %773 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%772 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_392 = tensor.expand_shape %arg495 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_393 = tensor.expand_shape %773 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %774 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %expanded_392 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %775 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%774, %expanded_393 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_394 = tensor.expand_shape %arg272 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %776 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %expanded_394 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_395 = tensor.expand_shape %arg273 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %777 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776, %expanded_395 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %778 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %754 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %779 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %780 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%779, %arg274 : tensor<10x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %781 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg498 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %782 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%781 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_396 = tensor.expand_shape %arg497 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_397 = tensor.expand_shape %782 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %783 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780, %expanded_396 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %784 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783, %expanded_397 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_398 = tensor.expand_shape %arg275 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784, %expanded_398 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_399 = tensor.expand_shape %arg276 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %786 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785, %expanded_399 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %787 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %padded_400 = tensor.pad %787 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x256x14x14xf32> to tensor<10x256x16x16xf32>
    %788 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_400, %arg277 : tensor<10x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%227 : tensor<10x256x14x14xf32>) -> tensor<10x256x14x14xf32>
    %789 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg500 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<256xf32>
    %790 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%789 : tensor<256xf32>) outs(%35 : tensor<256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<256xf32>
    %expanded_401 = tensor.expand_shape %arg499 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %expanded_402 = tensor.expand_shape %790 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %791 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%788, %expanded_401 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %792 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791, %expanded_402 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_403 = tensor.expand_shape %arg278 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %793 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792, %expanded_403 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %expanded_404 = tensor.expand_shape %arg279 [[0, 1, 2]] output_shape [256, 1, 1] : tensor<256xf32> into tensor<256x1x1xf32>
    %794 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %expanded_404 : tensor<10x256x14x14xf32>, tensor<256x1x1xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x256x14x14xf32>
    %795 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<10x256x14x14xf32>) outs(%226 : tensor<10x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x256x14x14xf32>
    %796 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%795, %arg280 : tensor<10x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%237 : tensor<10x1024x14x14xf32>) -> tensor<10x1024x14x14xf32>
    %797 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg502 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<1024xf32>
    %798 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%797 : tensor<1024xf32>) outs(%239 : tensor<1024xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<1024xf32>
    %expanded_405 = tensor.expand_shape %arg501 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %expanded_406 = tensor.expand_shape %798 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %799 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796, %expanded_405 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %800 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %expanded_406 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_407 = tensor.expand_shape %arg281 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %801 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%800, %expanded_407 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %expanded_408 = tensor.expand_shape %arg282 [[0, 1, 2]] output_shape [1024, 1, 1] : tensor<1024xf32> into tensor<1024x1x1xf32>
    %802 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801, %expanded_408 : tensor<10x1024x14x14xf32>, tensor<1024x1x1xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %803 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%802, %779 : tensor<10x1024x14x14xf32>, tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1024x14x14xf32>
    %804 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803 : tensor<10x1024x14x14xf32>) outs(%236 : tensor<10x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x1024x14x14xf32>
    %805 = tensor.empty() : tensor<10x512x14x14xf32>
    %806 = linalg.fill ins(%cst : f32) outs(%805 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %807 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%804, %arg283 : tensor<10x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%806 : tensor<10x512x14x14xf32>) -> tensor<10x512x14x14xf32>
    %808 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg504 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %809 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%808 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_409 = tensor.expand_shape %arg503 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_410 = tensor.expand_shape %809 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %810 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807, %expanded_409 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%805 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x14x14xf32>
    %811 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%810, %expanded_410 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%805 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_411 = tensor.expand_shape %arg284 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %812 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %expanded_411 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%805 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x14x14xf32>
    %expanded_412 = tensor.expand_shape %arg285 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %expanded_412 : tensor<10x512x14x14xf32>, tensor<512x1x1xf32>) outs(%805 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x14x14xf32>
    %814 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813 : tensor<10x512x14x14xf32>) outs(%805 : tensor<10x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x14x14xf32>
    %padded_413 = tensor.pad %814 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x512x14x14xf32> to tensor<10x512x16x16xf32>
    %815 = tensor.empty() : tensor<10x512x7x7xf32>
    %816 = linalg.fill ins(%cst : f32) outs(%815 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %817 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_413, %arg286 : tensor<10x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%816 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %818 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg506 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %819 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%818 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_414 = tensor.expand_shape %arg505 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_415 = tensor.expand_shape %819 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %820 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %expanded_414 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %821 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820, %expanded_415 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_416 = tensor.expand_shape %arg287 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %822 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%821, %expanded_416 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_417 = tensor.expand_shape %arg288 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %823 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822, %expanded_417 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %824 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823 : tensor<10x512x7x7xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x7x7xf32>
    %825 = tensor.empty() : tensor<10x2048x7x7xf32>
    %826 = linalg.fill ins(%cst : f32) outs(%825 : tensor<10x2048x7x7xf32>) -> tensor<10x2048x7x7xf32>
    %827 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%824, %arg289 : tensor<10x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%826 : tensor<10x2048x7x7xf32>) -> tensor<10x2048x7x7xf32>
    %828 = tensor.empty() : tensor<2048xf32>
    %829 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg508 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<2048xf32>
    %830 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%829 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<2048xf32>
    %expanded_418 = tensor.expand_shape %arg507 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %expanded_419 = tensor.expand_shape %830 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%827, %expanded_418 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %832 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831, %expanded_419 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_420 = tensor.expand_shape %arg290 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %833 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832, %expanded_420 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_421 = tensor.expand_shape %arg291 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %834 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833, %expanded_421 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %835 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%804, %arg292 : tensor<10x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%826 : tensor<10x2048x7x7xf32>) -> tensor<10x2048x7x7xf32>
    %836 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg510 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<2048xf32>
    %837 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%836 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<2048xf32>
    %expanded_422 = tensor.expand_shape %arg509 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %expanded_423 = tensor.expand_shape %837 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %838 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %expanded_422 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %839 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %expanded_423 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_424 = tensor.expand_shape %arg293 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %840 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839, %expanded_424 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_425 = tensor.expand_shape %arg294 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %841 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840, %expanded_425 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %842 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834, %841 : tensor<10x2048x7x7xf32>, tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %843 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842 : tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x2048x7x7xf32>
    %844 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%843, %arg295 : tensor<10x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%816 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %845 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg512 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %846 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%845 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_426 = tensor.expand_shape %arg511 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_427 = tensor.expand_shape %846 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %847 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %expanded_426 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %848 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %expanded_427 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_428 = tensor.expand_shape %arg296 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848, %expanded_428 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_429 = tensor.expand_shape %arg297 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %850 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %expanded_429 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %851 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%850 : tensor<10x512x7x7xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x7x7xf32>
    %padded_430 = tensor.pad %851 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x512x7x7xf32> to tensor<10x512x9x9xf32>
    %852 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_430, %arg298 : tensor<10x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%816 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %853 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg514 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %854 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%853 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_431 = tensor.expand_shape %arg513 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_432 = tensor.expand_shape %854 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %855 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852, %expanded_431 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %856 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855, %expanded_432 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_433 = tensor.expand_shape %arg299 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %857 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %expanded_433 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_434 = tensor.expand_shape %arg300 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %858 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %expanded_434 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %859 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%858 : tensor<10x512x7x7xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x7x7xf32>
    %860 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%859, %arg301 : tensor<10x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%826 : tensor<10x2048x7x7xf32>) -> tensor<10x2048x7x7xf32>
    %861 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg516 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<2048xf32>
    %862 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%861 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<2048xf32>
    %expanded_435 = tensor.expand_shape %arg515 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %expanded_436 = tensor.expand_shape %862 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %863 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%860, %expanded_435 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %864 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %expanded_436 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_437 = tensor.expand_shape %arg302 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %865 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864, %expanded_437 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_438 = tensor.expand_shape %arg303 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %866 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %expanded_438 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %867 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866, %843 : tensor<10x2048x7x7xf32>, tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %868 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867 : tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x2048x7x7xf32>
    %869 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%868, %arg304 : tensor<10x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%816 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %870 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg518 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %871 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%870 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_439 = tensor.expand_shape %arg517 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_440 = tensor.expand_shape %871 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %872 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%869, %expanded_439 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %873 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872, %expanded_440 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_441 = tensor.expand_shape %arg305 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873, %expanded_441 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_442 = tensor.expand_shape %arg306 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874, %expanded_442 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %876 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%875 : tensor<10x512x7x7xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x7x7xf32>
    %padded_443 = tensor.pad %876 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg523: index, %arg524: index, %arg525: index, %arg526: index):
      tensor.yield %cst : f32
    } : tensor<10x512x7x7xf32> to tensor<10x512x9x9xf32>
    %877 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_443, %arg307 : tensor<10x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%816 : tensor<10x512x7x7xf32>) -> tensor<10x512x7x7xf32>
    %878 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg520 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<512xf32>
    %879 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%878 : tensor<512xf32>) outs(%125 : tensor<512xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<512xf32>
    %expanded_444 = tensor.expand_shape %arg519 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %expanded_445 = tensor.expand_shape %879 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %880 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%877, %expanded_444 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %881 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %expanded_445 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_446 = tensor.expand_shape %arg308 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %882 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881, %expanded_446 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %expanded_447 = tensor.expand_shape %arg309 [[0, 1, 2]] output_shape [512, 1, 1] : tensor<512xf32> into tensor<512x1x1xf32>
    %883 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %expanded_447 : tensor<10x512x7x7xf32>, tensor<512x1x1xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x512x7x7xf32>
    %884 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883 : tensor<10x512x7x7xf32>) outs(%815 : tensor<10x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x512x7x7xf32>
    %885 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%884, %arg310 : tensor<10x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%826 : tensor<10x2048x7x7xf32>) -> tensor<10x2048x7x7xf32>
    %886 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%arg522 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.truncf %cst_1 : f64 to f32
      %905 = arith.addf %in, %904 : f32
      linalg.yield %905 : f32
    } -> tensor<2048xf32>
    %887 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel"]} ins(%886 : tensor<2048xf32>) outs(%828 : tensor<2048xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = math.rsqrt %in : f32
      linalg.yield %904 : f32
    } -> tensor<2048xf32>
    %expanded_448 = tensor.expand_shape %arg521 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %expanded_449 = tensor.expand_shape %887 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %888 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885, %expanded_448 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.subf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %889 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888, %expanded_449 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_450 = tensor.expand_shape %arg311 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %890 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%889, %expanded_450 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.mulf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %expanded_451 = tensor.expand_shape %arg312 [[0, 1, 2]] output_shape [2048, 1, 1] : tensor<2048xf32> into tensor<2048x1x1xf32>
    %891 = linalg.generic {indexing_maps = [#map1, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890, %expanded_451 : tensor<10x2048x7x7xf32>, tensor<2048x1x1xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %892 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891, %868 : tensor<10x2048x7x7xf32>, tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x7x7xf32>
    %893 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892 : tensor<10x2048x7x7xf32>) outs(%825 : tensor<10x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.cmpf ugt, %in, %cst : f32
      %905 = arith.select %904, %in, %cst : f32
      linalg.yield %905 : f32
    } -> tensor<10x2048x7x7xf32>
    %894 = tensor.empty() : tensor<10x2048x1x1xf32>
    %895 = linalg.fill ins(%cst : f32) outs(%894 : tensor<10x2048x1x1xf32>) -> tensor<10x2048x1x1xf32>
    %896 = tensor.empty() : tensor<7x7xf32>
    %897 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<7> : vector<2xi64>} ins(%893, %896 : tensor<10x2048x7x7xf32>, tensor<7x7xf32>) outs(%895 : tensor<10x2048x1x1xf32>) -> tensor<10x2048x1x1xf32>
    %898 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%897 : tensor<10x2048x1x1xf32>) outs(%894 : tensor<10x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %904 = arith.divf %in, %cst_2 : f32
      linalg.yield %904 : f32
    } -> tensor<10x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %898 [[0], [1, 2, 3]] : tensor<10x2048x1x1xf32> into tensor<10x2048xf32>
    %899 = tensor.empty() : tensor<2048x1000xf32>
    %transposed = linalg.transpose ins(%arg313 : tensor<1000x2048xf32>) outs(%899 : tensor<2048x1000xf32>) permutation = [1, 0] 
    %900 = tensor.empty() : tensor<10x1000xf32>
    %901 = linalg.fill ins(%cst : f32) outs(%900 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %902 = linalg.matmul ins(%collapsed, %transposed : tensor<10x2048xf32>, tensor<2048x1000xf32>) outs(%901 : tensor<10x1000xf32>) -> tensor<10x1000xf32>
    %903 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel"]} ins(%902, %arg314 : tensor<10x1000xf32>, tensor<1000xf32>) outs(%900 : tensor<10x1000xf32>) {
    ^bb0(%in: f32, %in_452: f32, %out: f32):
      %904 = arith.addf %in, %in_452 : f32
      linalg.yield %904 : f32
    } -> tensor<10x1000xf32>
    return %903 : tensor<10x1000xf32>
  }
}
