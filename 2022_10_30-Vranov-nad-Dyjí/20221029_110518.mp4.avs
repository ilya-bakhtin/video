import("c:\Users\ilx\wrk\video\2022_10_30-Vranov-nad-Dyjí\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20221029_110518.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = animate(177, 179, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(0, 179) +\
       animate(180, 186, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(180, 186) +\
       animate(187, 188, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16* 6, 9* 6, 3840-16*12, 2160-9*12).trim(187, 188) +\
       trim(189, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
