Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q11_.avi", 30)
orig_aud = audio

global pos = 30

#c0 = q_pattern(392, 33, 970, 25, 222, 27, 1, 1)
#c0 = c0.Trim(0, -(c0.Framecount-2))

c0 = q_direct(392) + q_interlaced(33) + q_direct(115) + q_direct(52) + q_direct(40) + q_direct(105) + \
     q_direct(160) + q_direct(80) + q_direct(71) + q_direct(63) + q_direct(61) + q_direct(132) + q_interlaced(33) + \
     q_direct(58) + q_interlaced(25) + q_direct(222) + q_interlaced(27) + q_direct(595) + q_direct(311) + \
     q_direct(48) + q_direct_title(120)

last = c0
last = audio_dub(orig_aud)
Prefetch(6)

# 30, 422, 455, 570, 622, 662, 767, 927, 1007, 1078, 1141, 1202, 1334, 1367, 1425, 1450, 1672, 1699, 2294, 2605, 2653, 2773
#     392, i33, 115,  52,  40, 105, 160,   80,   71,   63,   61,  132,  i33,   58,  i25,  222,  i27,  595,  311,   48, t120
#                                                                             970