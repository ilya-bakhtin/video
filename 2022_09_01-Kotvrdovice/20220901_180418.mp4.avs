import("d:\Users\ilx\wrk\video\2022_09_01-Kotvrdovice\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220901_180418.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
convertToRGB32(interlaced=false, matrix="Rec709")
