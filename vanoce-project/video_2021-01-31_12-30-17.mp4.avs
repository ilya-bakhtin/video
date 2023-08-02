v = LSMASHVideoSource("M:\Media\video\vanoce-project\2021-dort\video_2021-01-31_12-30-17.mp4").ConvertToYV24(interlaced=false)
a = LSMASHAudioSource("M:\Media\video\vanoce-project\2021-dort\video_2021-01-31_12-30-17.mp4")
v = v.AudioDub(a)

v0 = v.spline64Resize(1920, 1080).\
       FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
       convertToYV12

return v.autolevels.spline64Resize(1920, 1080).\
       FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
       convertToYV12.\
       colorMatrix(mode="Rec.601->Rec.709", clamp=0).\
       unsharpMask(strength=300, radius=3, threshold=1)\
       prefetch
