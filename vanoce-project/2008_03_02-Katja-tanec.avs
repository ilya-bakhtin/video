v = LWLibavVideoSource("F:\Media\Video\Cassette 2008_03_02 2008_03_08\2008_03_02-2008_03_08.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a = LWLibavAudioSource("F:\Media\Video\Cassette 2008_03_02 2008_03_08\2008_03_02-2008_03_08.avi")
v = v.AudioDub(a)
v = v.trim(13688, 20043)

#v = v.autolevels

v = v.qtgmc(preset="placebo")
v = v.spline64Resize(1440, 1080)
v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
v = v.convertToYV12()

v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)

#v0 = v
v = v.UnsharpMask(strength=500, radius=1, threshold=1)
#v = v0.interleave(v)


last = v
prefetch
