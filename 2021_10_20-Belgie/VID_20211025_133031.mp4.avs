import("m:\Media\video\2021_10_20-Belgie\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "VID_20211025_133031.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
