import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240530_143824.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

factor0 = 20.
factor = 15.
factor3 = 25.
last = trim(0, 182) +\
       animate(183, 187, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16.*factor0, 9.*factor0, 3840.-16.*factor0*2., 2160.-9.*factor0*2.).trim(183, 187) +\
       spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(188, -1) +\
       spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(189, -1) +\
       spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(190, -1) +\
       spline64Resize(3840, 2160, 16.*factor, 9.*factor, 3840.-16.*factor*2., 2160.-9.*factor*2.).trim(191, -1) +\
       spline64Resize(3840, 2160, 16.*factor0, 9.*factor0, 3840.-16.*factor0*2., 2160.-9.*factor0*2.).trim(192, -1) +\
       spline64Resize(3840, 2160, 16.*factor3, 9.*factor3, 3840.-16.*factor3*2., 2160.-9.*factor3*2.).trim(193, -1) +\
       spline64Resize(3840, 2160, 16.*factor0, 9.*factor0, 3840.-16.*factor0*2., 2160.-9.*factor0*2.).trim(194, -1) +\
       trim(195, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
