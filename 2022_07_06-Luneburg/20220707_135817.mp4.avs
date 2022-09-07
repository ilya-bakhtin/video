import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_135817.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    trim(0, 227) +\
    animate(228, 233, "spline64Resize", 3840, 2160, 16*45, 9*45, 3840-16*90, 2160-9*90, 3840, 2160, 0, 0, 3840, 2160).trim(228, 233) +\
    trim(234, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
