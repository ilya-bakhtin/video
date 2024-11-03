import("c:\Users\ilx\wrk\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240412_135829.mp4")
assumeFPS(60)
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
#info
v_29_30 = trim(29, 30).assumeFPS(20).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_30_31 = trim(30, 31).assumeFPS(15).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_31_32 = trim(31, 32).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_32_33 = trim(32, 33).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_33_34 = trim(33, 34).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_34_35 = trim(34, 35).assumeFPS(10).FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=70, NewDen=1, blksize=8).assumeFPS(60)
last = trim(0, 29) +\
       v_29_30.trim(1, v_29_30.frameCount - 2) +\
       trim(30, -1) +\
       v_30_31.trim(1, v_30_31.frameCount - 2) +\
       trim(31, -1) +\
       v_31_32.trim(1, v_31_32.frameCount - 2) +\
       trim(32, -1) +\
       v_32_33.trim(1, v_32_33.frameCount - 2) +\
       trim(33, -1) +\
       v_33_34.trim(1, v_33_34.frameCount - 2) +\
       trim(34, -1) +\
       v_34_35.trim(1, v_34_35.frameCount - 2) +\
       trim(35, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
