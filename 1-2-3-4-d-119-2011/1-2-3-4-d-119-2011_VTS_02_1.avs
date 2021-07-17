LoadPlugin("D:\Program Files\MeGUI\tools\dgindex\DGDecode.dll")
LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

mp2 = DGDecode_mpeg2source("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\1-2-3-4-d-119-2011_VTS_02_1.d2v", info=3).ConvertToYV24(interlaced=true)
#mp2 = mp2.trim(50636, 0)
#return mp2
avi = LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\2_3_4_klass_2.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
#avi25 = LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\2010_12_19-2011_05_21.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")

#avi25 = avi25.trim(14967, 0)
#return stackhorizontal(mp2, avi)

#avi = avi.trim(55, 0)
#mp2 = mp2.trim(110, 0)

avi = avi.crop(0,1,0,0).addborders(0,0,0,1)

mp2 = mp2.assumeTFF.qtgmc
avi = avi.assumeTFF.qtgmc

return mp2.interleave(avi).SincResize(1440,960)

sub = mp2.subtract(avi)
sub = sub.stackhorizontal(sub)

top = mp2.stackhorizontal(avi)

last = top.stackvertical(sub)

Prefetch(6)
