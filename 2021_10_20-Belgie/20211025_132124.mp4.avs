import("m:\Media\video\2021_10_20-Belgie\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20211025_132124.mp4")
convertToRGB24(interlaced=false, matrix="PC.709")
