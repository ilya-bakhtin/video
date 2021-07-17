LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LWLibavVideoSource("D:\Users\ilx\wrk\video\1-2-3-4-d-119-2011\30pto25i_5314_0.avi", format="YUV420P8").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
#histogram("levels")
qtgmc.prefetch(6).sincresize(1440,1080)
#ExtractU.stackhorizontal(ExtractV).bob