import("c:\Users\ilx\wrk\video\2023_07_23-Geislingen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230723_144413.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 15.
factor1 = 20.
last = trim(0, 291) +\
       animate(292, 296, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(292, 296) +\
       animate(299, 303, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor1, 9.*factor1, 3840.-16.*factor1*2., 2160.-9.*factor1*2.).trim(297, 303) +\
       trim(304, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
