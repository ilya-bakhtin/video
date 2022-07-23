import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20220706_123517.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

last = \
    trim(0, 255) +\
    spline64Resize(3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(256, 256) +\
    spline64Resize(3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40).trim(257, 257) +\
    spline64Resize(3840, 2160, 16*30, 9*30, 3840-16*60, 2160-9*60).trim(258, 258) +\
    spline64Resize(3840, 2160, 16*30, 9*30, 3840-16*60, 2160-9*60).trim(259, 259) +\
    spline64Resize(3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20).trim(260, 260) +\
    trim(261, 786) +\
    spline64Resize(3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(787, 787) +\
    trim(788, 1187) +\
    spline64Resize(3840, 2160, 16*25, 9*25, 3840-16*50, 2160-9*50).trim(1188, 1188) +\
    spline64Resize(3840, 2160, 16*15, 9*15, 3840-16*30, 2160-9*30).trim(1189, 1189) +\
    trim(1190, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
