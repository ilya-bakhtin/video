import("c:\Users\ilx\wrk\video\2022_12_24-Praha\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221224_160303.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
convertToRGB32(interlaced=false, matrix="Rec709")
