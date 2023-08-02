v = LSMASHVideoSource("M:\Media\video\vanoce-project\2021-dort\video_2021-09-03_17-02-39.mp4").ConvertToYV24(interlaced=false)
a = LSMASHAudioSource("M:\Media\video\vanoce-project\2021-dort\video_2021-09-03_17-02-39.mp4")
v = v.AudioDub(a)

v0 = v.spline64Resize(608, 1080).\
       FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
       convertToYV12

offs = (1920 - 1080) / 2

return v.crop(0, offs + 30, 0, -offs + 30).\
       autolevels.\
       /*spline64Resize(608, 1080).*/\
       FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
       convertToYV12.\
       colorMatrix(mode="Rec.601->Rec.709", clamp=0).\
       unsharpMask(strength=300, radius=1, threshold=1).\
       prefetch
