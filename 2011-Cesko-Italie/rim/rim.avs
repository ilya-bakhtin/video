/*
LoadPlugin("D:\Program Files\MeGUI\tools\dgindex\DGDecode.dll")
v1 = DGDecode_mpeg2source("d:\users\ilx\wrk\video\2011-Cesko-Italie\rim\rim.d2v", info=3)
v1 = v1.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
v1 = v1.ConvertToYV24(interlaced=true, ChromaInPlacement="MPEG2")
v1 = v1.QTGMC(preset="placebo").spline64Resize(1920, 1080)
v1 = v1.ConvertToYV12
*/
v2 = LSMASHVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim1.qtgmc.mp4", format="YUV444P8") +\
     LSMASHVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim2.qtgmc.mp4", format="YUV444P8") +\
     LSMASHVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim3.qtgmc.mp4", format="YUV444P8") +\
     LSMASHVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim4.qtgmc.mp4", format="YUV444P8")

a2 = LWLibavAudioSource("m:\media\video\2011-Cesko-Italie\rim\rim.avi", stream_index=1)

v2 = v2.autolevels#.tweak(sat = 1.3, coring=false)

v2 = v2.spline64Resize(1920, 1080)

v2 = v2.ConvertToYV12(interlaced=false, chromaresample = "spline64")

v2 = v2.UnsharpMask(strength=300, radius=1, threshold=1)

v2 = v2.audioDub(a2)

/*
v3 = LSMASHVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim.mp4")
return v2.interleave(v3).prefetch
*/

#last = v1.interleave(v2)
last = v2
#return last
prefetch