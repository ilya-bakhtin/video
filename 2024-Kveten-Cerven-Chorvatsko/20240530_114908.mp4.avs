import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240530_114908.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 20.
factor1 = 5.
last = trim(0, 120) +\
       animate(121, 126, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(121, 126) +\
       trim(127, 132) +\
       spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.).trim(133, -1) +\
       trim(134, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
