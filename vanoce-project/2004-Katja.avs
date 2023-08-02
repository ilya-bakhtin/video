v = LWLibavVideoSource("M:\Media\video\vhs-2002-2005\2004-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a = LWLibavAudioSource("M:\Media\video\vhs-2002-2005\2004-cam.avi")
v = v.AudioDub(a.GetChannel(1))
v = v.trim(22523, 26480)

return v.crop(14, 2, -6, -8).\
         autolevels.\
         qtgmc(preset="placebo").\
         spline64Resize(1440, 1080).\
         convertToYV12.\
         colorMatrix(mode="Rec.601->Rec.709", clamp=0).\
         unsharpMask(strength=300, radius=1, threshold=1).\
         FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
         prefetch
