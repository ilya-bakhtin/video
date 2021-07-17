Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q06_.avi", 30)
orig_aud = audio

global pos = 30

#c0 = q_direct(1361)
c0 = q_direct(129) + q_direct(138) + q_direct(105) + q_direct(88) + q_direct(2) + q_direct(117) + q_direct(157) + \
     q_direct(83) + q_direct(148) + q_direct(142) + q_direct(68) + q_direct(89) + q_direct(75) + q_direct(20)
c1 = q_interlaced(31)

#c2 = q_direct(0) # 514
c2 = q_direct(82) + q_interlaced(25) + q_direct(286) + q_direct(121)

last = c0+c1+c2
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 159, 297, 402, 490, 492, 609, 766, 849, 997, 1139, 1207, 1296, 1371, 1391, 1422, 1504, 1529, 1815, 1936
#     129, 138, 105,  88,   2, 117, 157,  83, 148,  142,   68,   89,   75,   20,   31,   82,   25,  286,  121