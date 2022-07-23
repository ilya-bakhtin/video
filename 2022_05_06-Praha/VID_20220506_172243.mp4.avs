import("m:\Media\video\2022_05_06_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "VID_20220506_172243.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
