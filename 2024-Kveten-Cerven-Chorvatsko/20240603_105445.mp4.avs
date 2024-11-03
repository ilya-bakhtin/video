import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240603_105445.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 40.
factor1 = 28.
factor2 = 20.
factor3 = 12.
last = trim(0, 98) +\
       animate(99, 104, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(99, 104) +\
       trim(105, 106).spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.) +\
       trim(107, 108).spline64Resize(3840, 2160, 16.*factor2, 9.*factor2, 3840.-16.*factor2*2., 2160.-9.*factor2*2.) +\
       trim(109, 112).spline64Resize(3840, 2160, 16.*factor3, 9.*factor3, 3840.-16.*factor3*2., 2160.-9.*factor3*2.) +\
       trim(113, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
