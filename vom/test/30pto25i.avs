AVISource("C:\distrib\photo\2008_02_08\MVI_5736.avi")
#ConvertToRGB(interlaced=false)

AssumeFPS(30, true)
Trim(0, last.Framecount-(last.Framecount%6)-1)

Lanczos4Resize(720, 576)
SeparateFields
SelectEvery(12,  1,0, 3,4, 5,6, 7,8, 11,10)
Weave
#ConvertBackToYUY2
