import("d:\Users\ilx\wrk\video\2022_11_30-Rim\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221129_124148.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 327) +\
       animate(328, 348, "spline64Resize", 3840, 2160, 16*50, 9*50, 3840-16*100, 2160-9*100, 3840, 2160, 0, 0, 3840, 2160).trim(328, 348) +\
       trim(349, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
