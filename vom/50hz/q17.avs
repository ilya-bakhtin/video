Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q17_.avi", 30)
orig_aud = audio

global pos = 30

c0 = q_direct(138) + q_interlaced(25) + q_direct(243) + q_direct(82) + q_interlaced(30) + \
     q_direct(165) + q_interlaced(30) + q_direct(65)

global pos = 193
c0 = c0 + q_direct(188)

global pos = 996
c0 = c0 + q_direct(6) +q_interlaced(28) + q_direct(75) + q_direct(103) + q_interlaced(29) + q_direct(33) + q_interlaced(24) + \
          q_direct(275) + q_interlaced(33) + q_direct(162) + q_interlaced(21) + q_direct(198) + q_direct_title(1199) + \
          q_direct(308) + q_direct_title(120)

last = c0
last = audio_dub(orig_aud)
Prefetch(6)

#c1 = q_pattern(488, 30, 165, 30, 259,  28, 179,  28)
##              488  518  683 713  972 1000 1179 1206

#c2 = q_direct(746) + q_direct_title(1199) + q_direct(308) + q_direct_title(0)
##               1385 
#return c1+c2

# 30, 168, 193, 436, 518, 548, 713, 743, 1002,   1030, 1105, 1208, 1237, 1270, 1294, 1569, 1602, 1764, 1785, 1983,  3182, 3490, 3610
#     138, i25, 243,  82, i30, 165, i30,  259,    i28,   75,  103,  i29,   33,  i24,  275,  i33,  162,  i21,  198, t1199,  308, t120
#                ^                     808 ^ 996
#                                     65, 188, 6