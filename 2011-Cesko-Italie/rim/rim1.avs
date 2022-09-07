LWLibavVideoSource("m:\media\video\2011-Cesko-Italie\rim\rim.avi", format="YUV420P8")
colorMatrix(mode="Rec.601->Rec.709", clamp=0, interlaced=true)

ConvertToYV24(interlaced=true, ChromaInPlacement="DV", chromaresample = "spline64")

QTGMC(preset="placebo")

prefetch