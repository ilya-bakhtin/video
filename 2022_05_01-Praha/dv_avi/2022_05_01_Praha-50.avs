import("stabilize.avs")
LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
/*
v = LWLibavVideoSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha.avi", stream_index=1)
last = v.AudioDub(a)
QTGMC(Preset="Placebo", EdiThreads=6)
*/
v1 = LWLibavVideoSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha-50.avi")
#return v1.convertToRGB32(interlaced=false, matrix="PC.601")
#v1 = v1.convertToRGB32(interlaced=false, matrix="PC.601")

v1 = v1.spline64Resize(1920, 1080)
v1 = v1.stabilize("M:\Media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha-50-1920.log")
#v1 = v1.convertToVY24(interlaced=false, matrix="PC.601")
v1 = v1.autolevels

v1 = v1.convertToYV12()
v1 = v1.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
v1 = v1.UnsharpMask(strength=300, radius=1, threshold=1)
return v1.Prefetch(6)

v2 = LWLibavVideoSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha-50-s.avi")
v2 = v2.convertToYV24(interlaced=false, matrix="PC.601")
v2 = v2.autolevels

v2 = v2.spline64Resize(1920, 1080)
v2 = v2.convertToYV12()
v2 = v2.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
v2 = v2.UnsharpMask(strength=300, radius=1, threshold=1)

last = v1.interleave(v2)
#last = v2
#grainFactory3


Prefetch