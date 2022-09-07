import("d:\Users\ilx\wrk\video\2022_09_01-Kotvrdovice\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220901_175600.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    trim(0, 402) +\
    animate(403, 404, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(403, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
