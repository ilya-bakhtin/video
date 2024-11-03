import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240602_121025.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor = 15.
last = trim(0, 280) +\
       animate(281, 286, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(281, 286) +\
       trim(287, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
