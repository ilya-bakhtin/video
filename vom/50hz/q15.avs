Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q15_.avi", 30)
orig_aud = audio

global pos = 30

#c0 = q_pattern(792, 33, 562, 30, 110, 35, 88, 37)
#return c0 + q_pattern(180, 33, 245, 30, 88, 32, 872, 34) + q_direct(0)

c0 = q_direct(224) + q_direct(197) + q_direct(94) + q_direct(96) + q_direct(32) + q_direct(100) + q_direct(49) + \
     q_interlaced(33) + q_direct(348) + q_direct(83) + q_direct(116) + q_direct(15) + q_interlaced(30) + \
     q_direct(110) + q_interlaced(35) + q_direct(89) + q_interlaced(36) + q_direct(30) + q_direct(23) + \
     q_direct(127) + q_interlaced(33) + q_direct(21) + q_direct(224) + q_interlaced(30) + q_direct(88) + \
     q_interlaced(32) + q_direct(149) + q_direct(438) + q_direct(129) + q_direct(74) + q_direct(82) + \
     q_interlaced(34) + q_direct(206) + q_direct(271)

last = c0.audio_dub(orig_aud)
Prefetch(6)

# 30, 254, 451, 545, 641, 673, 773, 822, 855, 1203, 1286, 1402, 1417, 1447, 1557, 1592, 1681, 1717, 1747, 1770, 1897, 1930,
#     224, 197,  94,  96,  32, 100,  49, i33,  348,   83,  116,   15,  i30,  110,  i35,   89,  i36,   30,   23,  127,  i33,

# 1951, 2175, 2205, 2293, 2325, 2474, 2912, 3041, 3115, 3197, 3231, 3437, 3708
#   21,  224,  i30,   88,  i32,  149,  438,  129,   74,   82,  i34,  206,  271