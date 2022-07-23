import("m:\Media\video\2022_05_01_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "VID_20220501_160810.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
