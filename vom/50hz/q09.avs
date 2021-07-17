Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q09_.avi", 30)
orig_aud = audio

global pos = 30

#last = q_pattern(816, 31, 321, 25, 428, 30, 0, 0)
last = q_direct(568) + q_interlaced(30) + q_direct(218) + q_interlaced(31) + q_direct(321) + q_interlaced(25) + \
       q_direct(428) + q_interlaced(30) + q_direct(104) + q_direct(164) + q_direct(127) + q_direct(2) + \
       q_direct(256) + q_interlaced(40) + q_direct(96) + q_direct(910)

last = audio_dub(orig_aud)
Prefetch(6)

# 30, 598, 628, 846, 877, 1198, 1223, 1651, 1681, 1785, 1949, 2076, 2078, 2334, 2374, 2470, 3380
#     568, i30, 218, i31,  321,  i25,  428,  i30,  104,  164,  127,    2,  256,  i40,   96,  910
#                                                                                           1699