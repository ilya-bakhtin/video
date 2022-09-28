import("m:\Media\video\2022_06_18-Chorvatsko\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20220613_122441.mp4")
convertToYV24(interlaced=false)
#spline64Resize(1920, 1080)
convertToRGB24(interlaced=false, matrix="PC.709")
