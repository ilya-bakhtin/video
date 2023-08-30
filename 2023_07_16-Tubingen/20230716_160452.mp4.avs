import("c:\Users\ilx\wrk\video\2023_07_16-Tubingen\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20230716_160452.mp4")
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

v = last.assumeFPS(60)
    v = v.trim(0, 29) +\
        v.trim(30, 31).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(32, -1) +\
        v.trim(33, 34).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=120, NewDen=1, blksize=8).assumeFPS(60) +\
        v.trim(34, 35).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=180, NewDen=1, blksize=8).assumeFPS(60).trim(1, 0) +\
        v.trim(36, 0)
last = v

convertToRGB32(interlaced=false, matrix="Rec709")

# 30-31 33-34 34-35x2
