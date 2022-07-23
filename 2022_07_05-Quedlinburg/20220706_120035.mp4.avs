import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220706_120035.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    animate(270, 271, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*25, 9*25, 3840-16*50, 2160-9*50).trim(0, 271) +\
    trim(272, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
