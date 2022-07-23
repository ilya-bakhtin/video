import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220705_184129.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
last = trim(0, 475) +\
    animate(476, 481, "spline64Resize", 3840, 2160, 960*3/4, 540*3/4, 1920+960/2, 1080+540/2, 3840, 2160, 0, 0, 3840, 2160).trim(476, 0)
convertToRGB32(interlaced=false, matrix="Rec709")
