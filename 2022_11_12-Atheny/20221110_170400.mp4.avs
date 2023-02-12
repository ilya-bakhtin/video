import("d:\Users\ilx\wrk\video\2022_11_12-Atheny\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221110_170400.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(234, 237, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*25, 9*25, 3840-16*50, 2160-9*50).trim(0, 237) +\
       animate(241, 243, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(238, 243) +\
       trim(244, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
