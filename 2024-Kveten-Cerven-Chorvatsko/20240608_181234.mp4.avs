import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240608_181234.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 8.
factor1 = 20.
last = trim(0, 191) +\
       trim(192, 200).spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.) +\
       animate(201, 206, "spline64Resize", 3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2., 3840, 2160, 0, 0, 3840, 2160).trim(201, 206) +\
       trim(207, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
