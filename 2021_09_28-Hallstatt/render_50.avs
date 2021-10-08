function to_50fps(string avi)
{
    v = LWLibavVideoSource(avi).AssumeFPS(30,1).ConvertToYV24(chromaresample = "sinc")
    v = v.FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=50, NewDen=1, blksize=16)
    v = v.ConvertToYV12(interlaced=false)
    return v
}

#to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133550.mp4.avi")
#to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133618.mp4.avi")
#to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134532.mp4.avi")
#to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134937.mp4.avi")
#to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_151758.mp4.avi")
to_50fps("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_153241.mp4.avi")

Prefetch(6)