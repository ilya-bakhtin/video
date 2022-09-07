import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_140613.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    animate(136, 137, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*8, 9*8, 3840-16*16, 2160-9*16).trim(0, 137) +\
    trim(138, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
