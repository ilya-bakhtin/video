Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q05_.avi", 30)
orig_aud = audio

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, 450)		#eliseeva #1
#return trim(1489, -176)		#eliseeva #2
# process eliseeva */

e1 = q_prepare("D:\users\ilx\wrk\video\vom\test\q05_eliseeva_1.avi").ConvertToYV24
e1_25 = e1
e1 = e1.crop(36, 2, -16, -32)
e1 = e1.addborders(6,0,6,0)
e1 = e1.filter_e()
e1 = e1.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e1 = e1.Spline64Resize(960, 720)
e1 = e1.addborders(160, 0, 160, 0)

e2 = q_prepare("D:\users\ilx\wrk\video\vom\test\q05_eliseeva_2.avi").ConvertToYV24
e2_25 = e2
e2 = e2.crop(16, 2, -20, -26)
e2 = e2.filter_e()
e2 = e2.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e2 = e2.Spline64Resize(960, 720)
e2 = e2.addborders(160, 0, 160, 0)

global pos = 30+e1_25.Framecount

#c0 = q_direct(421)
c0 = e1 
c1 = q_interlaced(34)			#455

#c2 = q_pattern2(132, 32)		#587, 619
c2 = q_direct(132) + q_interlaced(32)

#c3 = q_direct(1416)
#c3 = q_direct(840)+e2			#1459, 1635
c3 = q_direct(480)+q_direct(360)+e2			#1459, 1635
global pos = pos+e2_25.Framecount
#c4 = q_direct(1416-840-e2.Framecount)	#2035  (len 400)
c4 = q_direct(282) + q_direct(118)

c5 = q_interlaced(31)			#2066

#c6 = q_direct(287)			#2353
c6 = q_direct(221) + q_direct(66)
c7 = q_interlaced(33)			#2386

#c8 = q_direct(336)			#2722
c8 = q_direct(85) + q_direct(146) + q_direct(105)
c9 = q_interlaced(33)			#2755

c10 = q_direct(161)			#2916
c11 = q_interlaced(31)			#2947

c12 = q_direct(0)

last = c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 451, 485, 617, 649, 1129, 1489, 1665, 1947, 2065, 2096, 2317, 2383, 2416, 2501, 2647, 2752, 2785, 2946, 2977, 3152
#     421,  34, 132,  32,  480,  360,  176,  282,  118,   31,  221,   66,   33,   85,  146,  105,   33,  161,   31,  175