import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240612_131139.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 10.
factor1 = 15.
last = trim(0, 173) +\
       trim(174, 183).spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.) +\
       animate(184, 189, "spline64Resize", 3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2., 3840, 2160, 0, 0, 3840, 2160).trim(184, 189) +\
       trim(190, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
