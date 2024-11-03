import("c:\Users\ilx\wrk\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\common.avs", utf8 = true)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(destination_dir + "20240403_132043.mp4")
assumeFPS(60)
#convertToYV24(interlaced=false)
last = width == 3840 ? last : spline64Resize(3840, 2160)

v_30_31 = trim(30, 31).assumeFPS(20).FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
last = trim(0, 30) + v_30_31.trim(1, v_30_31.frameCount - 2) + trim(31, 0)

convertToRGB32(interlaced=false, matrix="Rec709")
