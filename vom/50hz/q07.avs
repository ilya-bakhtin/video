Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q07_.avi", 30)
orig_aud = audio

global pos = 30

#c0 = q_direct(308)
c0 = q_direct(86) + q_interlaced(27) + q_direct(128) + q_direct(67)
c1 = q_interlaced(33)

#c2 = q_direct(785)
c2 = q_direct(240) + q_direct(194) + q_direct(105) + q_direct(24) + q_interlaced(34) + q_direct(110) + q_direct(78)
c3 = q_interlaced(41)

c4 = q_direct(77)
c5 = q_interlaced(32)

#c6 = q_direct(805)
c6 = q_direct(68) + q_direct(208) + q_direct(294) + q_direct(37) + q_direct(66) + q_direct(132)
c7 = q_interlaced(32)

c8 = q_direct(456)
c9 = q_interlaced(25)

c10 = q_direct(129)
c11 = q_interlaced(29)

c12 = q_direct(34)
c13 = q_interlaced(30)

#c14 = q_direct(0) # 527
c14 = q_direct(409) + q_interlaced(37) + q_direct(81)

last = c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 116, 143, 271, 338, 371, 611, 805, 910, 934, 968, 1078, 1156, 1197, 1274, 1306, 1374, 1582, 1876, 1913, 1979, 2111, 2143
#      86,  27, 128,  67,  33, 240, 194, 105,  24, i34,  110,   78,   41,   77,   32,   68,  208,  294,   37,   66,  132,   32

# 2599, 2624, 2753, 2782, 2816, 2846, 3255, 3292, 3373
#  456,   25,  129,   29,   34,   30,  409,  i37,   81