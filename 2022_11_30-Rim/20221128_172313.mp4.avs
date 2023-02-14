import("d:\Users\ilx\wrk\video\2022_11_30-Rim\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221128_172313.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 119) +\
       animate(120, 122, "spline64Resize", 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30, 3840, 2160, 0, 0, 3840, 2160).trim(120, 122) +\
       trim(123, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
