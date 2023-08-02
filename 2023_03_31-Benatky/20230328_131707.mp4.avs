import("c:\Users\ilx\wrk\video\2023_03_31-Benatky\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230328_131707.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 268) +\
       animate(269, 270, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*8, 9*8, 3840-16*16, 2160-9*16).trim(269, 270) +\
       trim(271, 275) +\
       animate(276, 277, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*5, 9*8, 3840-16*10, 2160-9*10).trim(276, 277) +\
       trim(278, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
