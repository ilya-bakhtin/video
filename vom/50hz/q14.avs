Import("q_inc.avs")
q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q14_.avi", 60)
orig_aud = audio

global pos = 60

#c0 = q_pattern(200, 22, 1615, 27, 409, 30, 1149, 27)
#c1 = q_pattern(548, 25, 113, 25, 50, 23, 79, 19)
#return c0 + c1 + q_pattern(166, 24, 0, 0, 0, 0, 0, 0)

c0 = q_direct(200) + q_interlaced(22) + q_direct(1055) + q_direct(412) + q_direct(148) + q_interlaced(27) + \
     q_direct(61) + q_direct(50) + q_direct(85) + q_direct(34) + q_direct(135) + q_direct(44) + q_interlaced(30) + \
     q_direct(435) + q_direct(41) + q_direct(63) + q_direct(136) + q_direct(72) + q_interlaced(22)

global pos = pos + 1

c0 = c0 + q_direct(103) + q_interlaced(36) + q_direct(112) + q_direct(89) + q_direct(39) + q_interlaced(27) + \
          q_direct(478) + q_direct(70) + q_interlaced(25) + q_direct(34) + q_direct(66) + q_direct(2) + q_direct(11) + \
          q_interlaced(25) + q_direct(50) + q_interlaced(23) + q_direct(79) + q_interlaced(19) + q_direct(166) + \
          q_interlaced(24) + q_direct(190) + q_direct(43)

last = c0.audio_dub(orig_aud)
Prefetch(6)

# 60, 260, 282, 1337, 1749, 1897, 1924, 1985, 2035, 2120, 2154, 2289, 2333, 2363, 2798, 2839, 2902, 3038, 3110, 3132, 3133,
#     200, i22, 1055,  412,  148,  i27,   61,   50,   85,   34,  135,   44,  i30,  435,   41,   63,  136,   72,  i22,    1,

# 3236, 3272, 3384, 3473, 3512, 3539, 4017, 4087, 4112, 4146, 4212, 4214, 4225, 4250, 4300, 4323, 4402, 4421, 4587, 4611, 4801, 4844
#  103,  i36,  112,   89,   39,  i27,  478,   70,  i25,   34,   66,    2,   11,  i25,   50,  i23,   79,  i19,  166,  i24,  190,   43