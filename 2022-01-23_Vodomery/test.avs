import("d:\Users\ilx\wrk\video\2022-01-23_Vodomery\common.avs")
v1 = LSMASHVideoSource(source_dir + "20220123_115814.mp4").convertToYV24
v2 = LWLibavVideoSource(source_dir + "20220123_115814.mp4.avi")
last = v1.interleave(v2)
histogram("levels", keepsource=false)
