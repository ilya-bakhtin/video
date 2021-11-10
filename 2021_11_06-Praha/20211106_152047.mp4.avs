import("d:\Users\ilx\wrk\video\2021_11_06-Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20211106_152047.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
