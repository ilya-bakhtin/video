import("c:\Users\ilx\wrk\video\2023_03_31-Benatky\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230330_165346.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 162) +\
       animate(163, 168, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(163, 168) +\
       trim(169, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
