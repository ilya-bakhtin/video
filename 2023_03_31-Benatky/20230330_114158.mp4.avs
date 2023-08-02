import("c:\Users\ilx\wrk\video\2023_03_31-Benatky\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230330_114158.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 76) +\
       animate(77, 80, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(77, 80) +\
       trim(81, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
