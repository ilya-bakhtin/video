LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-50.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-50.avi", stream_index=1)
last = v.AudioDub(a)

#autolevels(input_high=255)
#histogram("levels")
spline64Resize(1920, 1080)
v60 = FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=60, NewDen=1, blksize=16)
#selectEvery(1, 1, 1, 1, 1, 1, 1)
#v60 = v60.selectEvery(1, 1, 1, 1, 1, 1)

#last = last.interleave(v60)
last=v60

convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

Prefetch(6)