import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_140438.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    animate(137, 138, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(0, 138) +\
    trim(139, 211) +\
    animate(212, 213, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(212, 213) +\
    trim(214, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
