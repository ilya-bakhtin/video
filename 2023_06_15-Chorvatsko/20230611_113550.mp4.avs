import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230611_113550.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 28.
last = trim(0, 192) +\
       animate(193, 198, "spline64Resize", 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2., 3840, 2160, 0, 0, 3840, 2160).trim(193, 198) +\
       trim(199, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
