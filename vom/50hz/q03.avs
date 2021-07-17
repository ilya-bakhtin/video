Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q03_.avi", 30)
orig_aud = audio

global pos = 30

#c0 = q_direct(297)
c0 = q_direct(11) + q_direct(286)

c1 = q_interlaced(27)

#c2 = q_direct(152)
c2 = q_direct(110) + q_direct(42)

c3 = q_interlaced(35)

#c4 = q_direct(205)
c4 = q_direct(22) + q_direct(88) + q_direct(95)

c5 = q_interlaced(32)

#c6 = q_direct(652)
c6 = q_direct(350)

c6_1 = q_interlaced(33)

c6_2 = q_direct(88) + q_direct(80) + q_direct(101)

c7 = q_interlaced(29)

c8 = q_direct(161)

c9 = q_interlaced(29)

c10 = q_direct(59)

last = c0+c1+c2+c3+c4+c5+c6+c6_1+c6_2+c7+c8+c9+c10
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 41, 327, 354, 464, 506, 541, 563, 651, 746, 778, 1128, 1161, 1249, 1329, 1430, 1459, 1620, 1649, 1708
#     11, 286,  27, 110,  42,  35,  22,  88,  95,  32,  350,   33,   88,   80,  101,   29,  161,   29,   59
