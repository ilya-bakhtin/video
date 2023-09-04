import("c:\Users\ilx\wrk\video\2023_07_23-Geislingen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230723_134011.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 17.
factor1 = 5.
factor2 = 12.
last = trim(0, 106) +\
       animate(107, 111, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(107, 111) +\
       trim(112, 116) +\
       trim(117, -1).spline64Resize(3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.) +\
       trim(118, -1).spline64Resize(3840, 2160, 16.*factor2, 9.*factor2, 3840.-16.*factor2*2., 2160.-9.*factor2*2.) +\
       trim(119, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
