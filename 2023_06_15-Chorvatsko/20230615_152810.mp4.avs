import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230615_152810.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 640) +\
       animate(641, 645, "spline64Resize", 3840, 2160, 16*30, 9*30, 3840-16*60, 2160-9*60, 3840, 2160, 0, 0, 3840, 2160).trim(641, 645) +\
       trim(646, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
