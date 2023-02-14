import("d:\Users\ilx\wrk\video\2022_11_30-Rim\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221129_171734.mp4")
trim(0, 307) + trim(337, 0)
last = width == 3840 ? last : spline64Resize(3840, 2160)
convertToRGB32(interlaced=false, matrix="Rec709")
