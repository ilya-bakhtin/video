LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", stream_index=1)
last = v.AudioDub(a)
QTGMC(Preset="Placebo", EdiThreads=6)
Prefetch(6)