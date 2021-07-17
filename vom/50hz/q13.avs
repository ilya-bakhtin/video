Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q13_.avi", 60)
orig_aud = audio

global pos = 60

#c0 = q_pattern(535, 22, 260, 25, 59, 23, 170, 29)
#return c0 + q_pattern(102, 21, 379, 25, 1266, 31, 0, 0)

c0 = q_direct(92) + q_direct(27) + q_direct(34) + q_direct(336) + q_direct(46) + q_interlaced(22) + \
     q_direct(160) + q_direct(100) + q_interlaced(25) + q_direct(59) + q_interlaced(23) + q_direct(98) + \
     q_direct(72) + q_interlaced(29) + q_direct(102) + q_interlaced(21) + q_direct(295) + q_direct(84) + \
     q_interlaced(25) + q_direct(296) + q_direct(76) + q_direct(36) + q_direct(38) + q_direct(65) + \
     q_direct(37) + q_direct(21) + q_direct(159) + q_direct(162) + q_direct(139) + q_direct(79) + \
     q_direct(158) + q_interlaced(31) + q_direct(369) + q_direct(37)

last = c0.audio_dub(orig_aud)
Prefetch(6)

# 60, 152, 179, 213, 549, 595, 617, 777, 877, 902, 961, 984, 1082, 1154, 1183, 1285, 1306, 1601, 1685, 1710,
#      92,  27,  34, 336,  46, i22, 160, 100, i25,  59, i23,   98,   72,  i29,  102,  i21,  295,   84,  i25,

# 2006, 2082, 2118, 2156, 2221, 2258, 2279, 2438, 2600, 2739, 2818, 2976, 3007, 3376, 3413
#  296,   76,   36,   38,   65,   37,   21,  159,  162,  139,   79,  158,  i31,  369,   37
