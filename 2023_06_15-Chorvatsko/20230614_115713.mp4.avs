import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230614_115713.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

v = last.assumeFPS(30)
    v = v.trim(0, 19) +\
        v.trim(20, 21).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(30) +\
        v.trim(22, 0)
last = v

convertToRGB32(interlaced=false, matrix="Rec709")
