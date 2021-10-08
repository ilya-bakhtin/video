LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\dv_avi\2021_09_28.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\dv_avi\2021_09_28.avi", stream_index=1)
last = v.AudioDub(a)
trim(513, 9847)
QTGMC(Preset="Placebo", EdiThreads=6)
Prefetch(6)