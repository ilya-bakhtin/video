import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220707_142032.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = \
    trim(0, 214) +\
    animate(215, 216, "spline64Resize", 3840, 2160, 16*8, 9*8, 3840-16*16, 2160-9*16, 3840, 2160, 0, 0, 3840, 2160).trim(215, 216) +\
    trim(217, 223) +\
    animate(224, 225, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(224, 225) +\
    trim(226, 356) +\
    animate(357, 375, "spline64Resize", 3840, 2160, 16*50, 9*50, 3840-16*110, 2160-9*110, 3840, 2160, 0, 0, 3840, 2160).trim(357, 375) +\
    trim(376, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
