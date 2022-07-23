import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220706_102203.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

last = \
    animate(985, 987, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*30, 9*30, 3840-16*60, 2160-9*60).trim(0, 987) +\
    trim(988, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
