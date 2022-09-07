import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220708_175554.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

last = trim(0, 75) +\
       trim(76, 84).spline64Resize(3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20) +\
       animate(85, 88, "spline64Resize", 3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40, 3840, 2160, 0, 0, 3840, 2160).trim(85, 88) +\
       trim(89, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
