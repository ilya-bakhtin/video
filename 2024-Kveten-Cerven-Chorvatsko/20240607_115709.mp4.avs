import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240607_115709.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 30.
factor1 = 15.
factor2 = 15.
factor3 = 10.
last = trim(0, 153) +\
       animate(154, 161, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(154, 161) +\
       trim(162, -1).spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.) +\
       trim(163, -1).spline64Resize(3840, 2160, 16.*factor2, 9.*factor2, 3840.-16.*factor2*2., 2160.-9.*factor2*2.) +\
       trim(164, 169).spline64Resize(3840, 2160, 16.*factor3, 9.*factor3, 3840.-16.*factor3*3., 2160.-9.*factor3*3.) +\
       trim(170, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
