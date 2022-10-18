import("d:\Users\ilx\wrk\video\2022-Chorvatsko\2022_10_13-Chorvatsko\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221005_104952.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(100, 102, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(0, 102) +\
       animate(102, 104, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40).trim(103, 104) +\
       trim(105, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
