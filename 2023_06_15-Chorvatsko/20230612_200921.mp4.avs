import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230612_200921.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 123) +\
       animate(124, 130, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*16, 9*16, 3840-16*32, 2160-9*32).trim(124, 130) +\
       trim(131, 135) +\
       animate(136, 138, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*16, 9*16, 3840-16*32, 2160-9*32).trim(136, 138) +\
       trim(139, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
