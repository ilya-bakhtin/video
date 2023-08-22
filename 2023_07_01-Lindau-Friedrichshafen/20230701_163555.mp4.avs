import("c:\Users\ilx\wrk\video\2023_07_01-Lindau-Friedrichshafen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230701_163555.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 16.
last = trim(0, 216) +\
       animate(217, 221, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(217, 221) +\
       trim(222, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
