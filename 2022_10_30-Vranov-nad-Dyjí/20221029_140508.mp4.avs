import("c:\Users\ilx\wrk\video\2022_10_30-Vranov-nad-Dyjí\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221029_140508.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(168, 170, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(0, 170) +\
       trim(171, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
