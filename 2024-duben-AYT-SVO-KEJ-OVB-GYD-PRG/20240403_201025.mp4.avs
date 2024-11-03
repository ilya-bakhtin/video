import("c:\Users\ilx\wrk\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240403_201025.mp4")
assumeFPS(60)
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)
#info
#28-29
#32-33
#34-35
v_27_28 = trim(27, 28).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_28_29 = trim(28, 29).assumeFPS(20).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_29_30 = trim(29, 30).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_32_33 = trim(32, 33).assumeFPS(20).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v_34_35 = trim(34, 35).assumeFPS(30).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
last = trim(0, 27) +\
       v_27_28.trim(1, v_27_28.frameCount - 2) +\
       trim(28, -1) +\
       v_28_29.trim(1, v_28_29.frameCount - 2) +\
       trim(29, -1) +\
       v_29_30.trim(1, v_29_30.frameCount - 2) +\
       trim(30, 32) +\
       v_32_33.trim(1, v_32_33.frameCount - 2) +\
       trim(33, 34) +\
       v_34_35.trim(1, v_34_35.frameCount - 2) +\
       trim(35, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
