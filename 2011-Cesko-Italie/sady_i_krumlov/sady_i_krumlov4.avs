LWLibavVideoSource("m:\media\video\2011-Cesko-Italie\sady_i_krumlov\sady_i_krumlov.avi", format="YUV420P8")
colorMatrix(mode="Rec.601->Rec.709", clamp=0, interlaced=true)

ConvertToYV24(interlaced=true, ChromaInPlacement="DV", chromaresample = "spline64")

QTGMC(preset="placebo")

trim(61435, 0)

prefetch