LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

avi = LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\start11a-30p-dv.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
#return avi.histogram("levels")
avi = avi.QTGMC( Preset="Placebo", NoiseProcess=0, EdiThreads=6 )
avi = avi.SincResize(1440, 1080)
avi = avi.ConvertToYV12(interlaced=false)
return avi.prefetch(6)
