import("m:\Media\video\2022_06_08-Chorvatsko\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "VID_20220607_104915.mp4")
convertToYV24(interlaced=false)
#spline64Resize(1920, 1080)
convertToRGB24(interlaced=false, matrix="PC.709")
