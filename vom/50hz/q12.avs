Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q12_.avi", 30)
orig_aud = audio

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, -69)		#eliseeva #1
#return trim(30+69, -331+69)	#eliseeva #2
#return trim(30+1598, -525)	#eliseeva #3
# process eliseeva */

e1 = q_prepare("D:\users\ilx\wrk\video\vom\test\q12_eliseeva_1.avi").ConvertToYV24
e1_25 = e1
e1 = e1.crop(10, 4, -40, -24)
e1 = e1.addborders(6, 0, 6, 0)
#e1 = e1.filter_e()
e1 = e1.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e1 = e1.Spline64Resize(960, 720)
e1 = e1.addborders(160, 0, 160, 0)
#return e1.Prefetch(6)

e2 = q_prepare("D:\users\ilx\wrk\video\vom\test\q12_eliseeva_2.avi").ConvertToYV24
e2_25 = e2
e2 = e2.crop(32, 6, -20, -36)
#e2 = e2.filter_e()
e2_0 = e2.trim(0, 122).AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e2_1 = e2.trim(123, 0).AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e2 = (e2_0 + e2_1).Spline64Resize(960, 720)
e2 = e2.addborders(160, 0, 160, 0)
#return e2.Prefetch(6)

e3 = q_prepare("D:\users\ilx\wrk\video\vom\test\q12_eliseeva_3.avi").ConvertToYV24
e3_25 = e3
e3 = e3.crop(30, 4, -16, -22)
e3 = e3.addborders(8, 0, 8, 0)
#e3 = e3.filter_e()
e3 = e3.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e3 = e3.Spline64Resize(960, 720)
e3 = e3.addborders(160, 0, 160, 0)
#return e3.Prefetch(6)

global pos = 30 + e1_25.Framecount + e2_25.Framecount

#c1 = e1 + e2 + q_interlaced(32) + q_direct(1235) + e3
c1 = e1 + e2 + q_interlaced(32) + q_direct(12) + q_direct(49) + q_direct(87) + q_direct(45) + q_direct(44) + q_direct(88) + \
               q_direct(90) + q_direct(50) + q_direct(40) + q_direct(88) + q_direct(90) + q_direct(44) + q_direct(42) + \
               q_direct(91) + q_direct(48) + q_direct(44) + q_direct(86) + q_direct(197) + e3

global pos = pos + e3_25.Framecount

last = c1 + q_direct_title(730)
last = audio_dub(orig_aud)
Prefetch(6)

# e1  e2      e2-end                                                                                                  e3
# 30, 99, 221, 361, 393, 405, 454, 541, 586, 630, 718, 808, 858, 898, 986, 1076, 1120, 1162, 1253, 1301, 1345, 1431, 1628, 2153, 2883
#     69, 122, 140, i32,  12,  49,  87,  45,  44,  88,  90,  50,  40,  88,   90,   44,   42,   91,   48,   44,   86,  197,  525,  730