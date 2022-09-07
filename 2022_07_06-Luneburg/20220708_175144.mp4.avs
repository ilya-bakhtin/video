import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220708_175144.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(540, 543, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40).trim(0, 543) +\
       trim(544, 551).spline64Resize(3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30) +\
       trim(552, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
