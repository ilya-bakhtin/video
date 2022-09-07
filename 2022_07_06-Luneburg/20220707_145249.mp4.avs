import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_145249.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    animate(130, 138, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*40, 9*40, 3840-16*80, 2160-9*80).trim(0, 138) +\
    trim(139, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
