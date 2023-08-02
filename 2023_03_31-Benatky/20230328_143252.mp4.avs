import("c:\Users\ilx\wrk\video\2023_03_31-Benatky\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230328_143252.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 254) +\
       animate(255, 257, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(255, 257) +\
       trim(258, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
