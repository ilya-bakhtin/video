import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_143002.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    trim(0, 144) +\
    animate(145, 148, "spline64Resize", 3840, 2160, 16*6, 9*6, 3840-16*12, 2160-9*12, 3840, 2160, 0, 0, 3840, 2160).trim(145, 148) +\
    trim(149, 153) +\
    animate(154, 155, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(154, 155) +\
    trim(156, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
