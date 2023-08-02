import("c:\Users\ilx\wrk\video\2023_03_31-Benatky\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230330_114041.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 17) +\
       animate(18, 20, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(18, 20) +\
       trim(21, 25) +\
       animate(26, 28, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(26, 28) +\
       trim(29, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
