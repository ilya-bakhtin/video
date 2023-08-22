import("c:\Users\ilx\wrk\video\2023_07_01-Lindau-Friedrichshafen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230702_132143.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 20.
factor1 = 28.
factor2 = 36.
last = trim(0, 522) +\
       animate(523, 531, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(523, 531) +\
       trim(532, -1).spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.) +\
       animate(533, 538, "spline64Resize", 3840, 2160, 16.*factor2, 9.*factor2, 3840.-16.*factor2*2., 2160.-9.*factor2*2., 3840, 2160, 0, 0, 3840, 2160).trim(533, 538) +\
       trim(539, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
