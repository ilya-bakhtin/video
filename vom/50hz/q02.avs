Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q02_.avi", 30)
orig_aud = audio

global pos = 30
#last = q_direct(0)
last = q_direct(175) + q_direct(75) + q_direct(89) + q_direct(117) + q_direct(100) + q_direct(126) + q_direct(149) +\
       q_direct(157) + q_direct(82) + q_direct(38) + q_direct(41) + q_direct(187) + q_direct(52) + q_direct(82) +\
       q_direct(79) + q_direct(132) + q_direct(102)

last = audio_dub(audio)
Prefetch(6)

# 30, 205, 280, 369, 486, 586, 712, 861, 1018, 1100, 1138, 1179, 1366, 1418, 1500, 1579, 1711, 1813
#     175,  75,  89, 117, 100, 126, 149,  157,   82,   38,   41,  187,   52,   82,   79,  132,  102