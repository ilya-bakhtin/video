import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240608_141922.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 50.
factor1 = 40.
factor2 = 30.
last = trim(0, 171) +\
       animate(172, 178, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(172, 178) +\
       trim(179, -1).spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.) +\
       trim(180, 184).spline64Resize(3840, 2160, 16.*factor2, 9.*factor2, 3840.-16.*factor2*2., 2160.-9.*factor2*2.) +\
       trim(185, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
