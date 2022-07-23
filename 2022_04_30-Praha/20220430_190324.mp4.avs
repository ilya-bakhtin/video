import("m:\Media\video\2022_04_30_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20220430_190324.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
