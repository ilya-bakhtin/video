LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-f.avi")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", stream_index=1)
last = v#.AudioDub(a)

vp = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-50.avi")

v = v.QTGMC(preset="placebo", noiseProcess = 0)

last = vp#.interleave(v)

spline64Resize(1920, 1080)
#v60 = FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=60, NewDen=1, blksize=16)
#selectEvery(1, 1, 1, 1, 1, 1, 1)
#v60 = v60.selectEvery(1, 1, 1, 1, 1, 1)

#last = last.interleave(v60)
#last=v60

#vp = convertToYV12().UnsharpMask(strength=300, radius=3, threshold=1)
tweak(sat=1.3, coring=false)
convertToYV12().colorMatrix(mode="Rec.601->Rec.709", clamp=0).autolevels.UnsharpMask(strength=900, radius=1, threshold=1).grainFactory3
#last = vp.interleave(last)

Prefetch