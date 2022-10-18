import("d:\Users\ilx\wrk\video\2022-Chorvatsko\2022_10_13-Chorvatsko\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221013_162348.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(172, 175, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(0, 175) +\
       trim(176, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
