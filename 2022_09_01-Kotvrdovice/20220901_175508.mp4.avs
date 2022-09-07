import("d:\Users\ilx\wrk\video\2022_09_01-Kotvrdovice\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220901_175508.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    trim(0, 771) +\
    animate(772, 774, "spline64Resize", 3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40, 3840, 2160, 0, 0, 3840, 2160).trim(772, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
