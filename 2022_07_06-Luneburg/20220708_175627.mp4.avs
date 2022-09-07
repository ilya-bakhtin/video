import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220708_175627.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 240) +\
       animate(241, 242, "spline64Resize", 3840, 2160, 16*49, 9*49, 3840-16*98, 2160-9*98, 3840, 2160, 16*56, 9*56, 3840-16*112, 2160-9*112).trim(241, 242) +\
       spline64Resize(3840, 2160, 16*54, 9*54, 3840-16*108, 2160-9*108).trim(243, 243) +\
       animate(244, 271, "spline64Resize", 3840, 2160, 16*54, 9*54, 3840-16*108, 2160-9*108, 3840, 2160, 0, 0, 3840, 2160).trim(244, 271) +\
       trim(272, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
