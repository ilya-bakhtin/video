LoadPlugin("D:\Program Files\MeGUI\tools\dgindex\DGDecode.dll")
LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

mp2 = DGDecode_mpeg2source("d:\users\ilx\wrk\video\1-2-3-4-d-119-2011\1-2-3-4-d-119-2011_VTS_01_1.d2v", info=3).ConvertToYV24(interlaced=true)
avi = LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\start11a.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
avi_dv = LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\start11a-30p-dv.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")

avi = avi.qtgmc
avi = avi.crop(0,1,0,0).addborders(0,0,0,1)
avi_dv = avi_dv.qtgmc
avi.interleave(avi_dv).sincresize(960,720)
return Prefetch(6)

sub = mp2.subtract(avi)
sub = sub.stackhorizontal(sub)

top = mp2.stackhorizontal(avi)

last = top.stackvertical(sub)

Prefetch(6)
