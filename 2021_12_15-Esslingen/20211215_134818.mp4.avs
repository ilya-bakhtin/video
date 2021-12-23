import("d:\Users\ilx\wrk\video\2021_12_15-Esslingen\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20211215_134818.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
