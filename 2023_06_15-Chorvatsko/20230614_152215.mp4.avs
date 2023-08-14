import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
#return LSMASHVideoSource(destination_dir + "result\20230614_152215.mp4.mp4")
LSMASHVideoSource(destination_dir + "20230614_152215.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

v = last.assumeFPS(60)
    v = v.trim(0, 20) +\
        v.trim(21, 22).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(23, 24) +\
        v.trim(25, 26).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=180, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(27, 28).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(28, 29).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60).trim(1, 0) +\
        v.trim(29, 30).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60).trim(1, 0) +\
        v.trim(31, 31) +\
        v.trim(32, 33).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(34, 35).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=180, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(36, 49) +\
        v.trim(50, 51).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(52, 0)
last = v

convertToRGB32(interlaced=false, matrix="Rec709")
prefetch