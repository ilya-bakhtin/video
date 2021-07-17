Import("d:\users\ilx\wrk\video\vom\50hz\q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q01_.avi")
orig_aud = audio

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(405, 629)		#eliseeva #1
#return trim(1133, 1567)	#eliseeva #2
# process eliseeva */

e1 = q_prepare("D:\users\ilx\wrk\video\vom\test\q01_eliseeva_1.avi").ConvertToYV24()
e1 = e1.crop(32, 8, -12, -12)
e1 = e1.addborders(10, 0, 10, 0)
e1 = e1.filter_e()
e1 = e1.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e1 = e1.Spline64Resize(960, 720)
e1 = e1.addborders(160, 0, 160, 0)
#return e1

e2 = q_prepare("D:\users\ilx\wrk\video\vom\test\q01_eliseeva_2.avi").ConvertToYV24()
e2 = e2.crop(32, 14, -28, -10)
e2 = e2.filter_e()
e2 = e2.addborders(15, 0, 15, 0)
e2 = e2.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e2 = e2.Spline64Resize(960, 720)
e2 = e2.addborders(160, 0, 160, 0)
#return e2

c0 = q_direct_title(30) + q_direct(91) + q_direct(25) + q_direct(23) + q_direct(14) + q_direct(102) + q_direct_title(120) + e1
global pos = pos + 225
#c0 = c0 + q_direct(1568-30-255-120-225-435) + e2
c0 = c0 + q_direct(230) + q_direct(181) + q_direct(13) + q_direct(79) + e2
global pos = pos + 435
c1 = q_interlaced(32)
global pos = pos + 1
c2 = q_direct(0)

last = c0+c1+c2
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 121, 146, 169, 183, 285, 405, 630, - 860, 1041, 1054, 1133