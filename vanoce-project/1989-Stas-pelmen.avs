v = LWLibavVideoSource("M:\Media\video\vhs-1989-1996\1989\1989.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a = LWLibavAudioSource("M:\Media\video\vhs-1989-1996\1989\1989.avi")
v = v.AudioDub(a.GetChannel(1))
v = v.trim(25284, 26849)
#return v.separateFields

return v.crop(12, 0, -10, -6).\
         autolevels.\
         qtgmc(preset="placebo").\
         spline64Resize(1440, 1080).\
         FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
         convertToYV12.\
         colorMatrix(mode="Rec.601->Rec.709", clamp=0).\
         unsharpMask(strength=500, radius=1, threshold=1).\
         prefetch
