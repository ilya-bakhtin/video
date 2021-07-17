Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q16_.avi")
last = AudioDub(last, audio)
last = last.trim(30, 3131)
orig_aud = last.KillVideo()

#c0 = q_pattern(507, 25, 44, 25, 168, 31, 706, 29)
#c1 = c0 + q_pattern(210, 31, 367, 33, 0, 0, 0, 0)

#return c1.Trim(0, -3102)

c0 = q_direct(58) + q_direct(121) + q_direct(189) + q_direct(139) + q_interlaced(25) + q_direct(44) + \
     q_interlaced(25) + q_direct(164) + q_direct(4) + q_interlaced(31) + q_direct(32) + q_direct(119) + \
     q_direct(74) + q_direct(295) + q_direct(74) + q_direct(112) + q_interlaced(29) + q_direct(210) + \
     q_interlaced(31) + q_direct(94) + q_direct(273) + q_interlaced(33) + q_direct(387) + q_direct(158) + \
     q_direct(110) + q_direct(110) + q_direct(161)

last = c0.audio_dub(orig_aud)
Prefetch(6)

# 30, 88, 209, 398, 537, 562, 606, 631, 795, 799, 830, 862, 981, 1055, 1350, 1424, 1536, 1565
#     58, 121, 189, 139, i25,  44, i25, 164,   4, i31,  32, 119,   74,  295,   74,  112,  i29

# 1775, 1806, 1900, 2173, 2206, 2593, 2751, 2861, 2971, 3132
#  210,  i31,   94,  273,  i33,  387,  158,  110,  110,  161