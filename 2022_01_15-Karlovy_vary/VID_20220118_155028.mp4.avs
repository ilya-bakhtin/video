import("d:\Users\ilx\wrk\video\2022_01_15-Karlovy_vary\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "VID_20220118_155028.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
