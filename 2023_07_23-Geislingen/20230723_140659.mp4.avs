import("c:\Users\ilx\wrk\video\2023_07_23-Geislingen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230723_140659.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 15.
last = trim(0, 218) +\
       animate(219, 223, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(219, 223) +\
       trim(224, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
