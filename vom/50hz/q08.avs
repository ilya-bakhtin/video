Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q08_.avi", 30)
orig_aud = audio

e1 = q_prepare("D:\users\ilx\wrk\video\vom\test\q08_eliseeva_1.avi").ConvertToYV24
e1_25 = e1
e1 = e1.crop(36, 18, -16, -24)
e1 = e1.filter_e()
e1 = e1.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
e1 = e1.Spline64Resize(960, 720)
e1 = e1.addborders(160, 0, 160, 0)

global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

##c0 = q_pattern(130, 33, 513, 28, 227, 28, 633, 30)
#c0 = q_pattern(130, 33, 513, 28, 227, 28, 292, 1)
#c0 = c0.Trim(0, -(c0.Framecount-1))
#global pos = pos-1
c0 = q_direct(130) + q_interlaced(33) + q_direct(375) + q_direct(138) + q_interlaced(28) + q_direct(227) + q_interlaced(28) + \
     q_direct(34) + q_direct(258)

#c0 = c0 + q_direct_title(341) + q_interlaced_title(30) + q_direct_title(78)
c0 = c0 + q_direct_title(239) + q_direct_title(102) + q_interlaced_title(30) + q_direct_title(78)

#c1 = q_pattern(383-78, 48, 63, 49, 195, 31, 292, 32)
c1 = q_direct(177) + q_direct(128) + q_interlaced(48) + q_direct(63) + q_interlaced(49) + q_direct(87) + q_direct(108) + \
     q_interlaced(31) + q_direct(205) + q_direct(87) + q_interlaced(32)

#c1 = c0 + c1 + q_direct(269) + q_direct_title(120)
c1 = c0 + c1 + q_direct(203) + q_direct(66) + q_direct_title(120)

# /* process eliseeva
#e1 = last.Trim(pos, -223)	#eliseeva 1
#e1 = e1.DropEvery12th(5)
#e1 = e1.addborders(4, 0, 4, 0)
#return e1
# process eliseeva */

global pos = pos + e1_25.Framecount

last = c1 + e1 + q_direct_title(0)
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 160, 193, 568, 706, 734, 961, 989, 1023, 1281, 1520, 1622, 1652, 1730, 1907, 2035, 2083, 2146, 2195, 2282, 2390, 2421
#     130,  33, 375, 138,  28, 227,  28,   34,  258,  239,  102,   30,   78,  177,  128,   48,   63,   49,   87,  108,   31

# 2626, 2713, 2745, 2948, 3014, 3134, 3357, 3477
#  205,   87,   32,  203,   66,  120,  223,  120