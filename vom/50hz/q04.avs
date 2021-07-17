Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q04_.avi", 30)
orig_aud = audio 

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, 600)		#eliseeva #1
# process eliseeva */

e1 = q_prepare("D:\users\ilx\wrk\video\vom\test\q04_eliseeva_1.avi").ConvertToYV24
e1 = e1.crop(18, 4, -62, -62)
e1 = e1.filter_e()
e1 = e1.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e1 = e1.Spline64Resize(960, 720)
e1 = e1.addborders(160, 0, 160, 0)
#return e1

global pos = 30+571
#c0 = e1 + q_direct(1022 - 571) # 451
c0 = e1 + q_direct(225) + q_interlaced(25) + q_direct(58, alevels=true) + q_interlaced(27) + q_direct(82) + q_direct(34)
c1 = q_interlaced(28)
#c2 = q_direct(443)
c2 = q_direct(69, alevels=true) + q_interlaced(25) + q_direct(75) + q_interlaced(28) + q_direct(201, alevels=true) + q_direct(45, alevels=true)
c3 = q_interlaced(26)
#c4 = q_direct(516)
c4 = q_direct(144, alevels=true) + q_direct(123, alevels=true) + q_interlaced(21) + q_direct(130) + q_interlaced(32) + q_direct(66, alevels=true)
c5 = q_interlaced(30)
#c6 = q_direct(454)
c6 = q_direct(117) + q_interlaced(27) + q_direct(48) + q_interlaced(25) + q_direct(81) + q_interlaced(25) + q_direct(131)
c7 = q_interlaced(25)
#c8 = q_direct(475)
c8 = q_direct(137) + q_direct(30) + q_direct(308)
c9 = q_interlaced(25)
#c10 = q_direct(0) # 928
c10 = q_direct(225) + q_direct(31) + q_direct(31) + q_direct(35) + q_direct(248) + q_interlaced(26) + q_direct(332)

last = c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 601, 826, 851, 909, 936, 1018, 1052, 1080, 1149, 1174, 1249, 1277, 1478, 1523, 1549, 1693, 1816, 1837, 1967, 1999, 2065
#     571, 225,  25,  58,  27,   82,   34,   28,   69,   25,   75,   28,  201    45,   26,  144,  123,   21,  130,   32,   66

# 2095, 2212, 2239, 2287, 2312, 2393, 2418, 2549, 2574, 2711, 2741, 3049, 3074, 3299, 3330, 3361, 3396, 3644, 3670, 4002
#   30,  117,   27,   48,   25,   81,   25,  131,   25,  137,   30,  308,   25,  225,   31,   31,   35,  248,   26,  332