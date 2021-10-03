LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143648.mp4.avi").AssumeFPS(30,1)
v1 = v1.ConvertToYV12().AdjustFrameRate

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143749.mp4.avi").AssumeFPS(30,1)
v2 = v2.ConvertToYV12().AdjustFrameRate

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154523.mp4.avi").AssumeFPS(30,1)
v3 = v3.ConvertToYV12().AdjustFrameRate

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154707.mp4.avi").AssumeFPS(30,1)
v4 = v4.ConvertToYV12().AdjustFrameRate

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154753.mp4.avi").AssumeFPS(30,1)
v5 = v5.ConvertToYV12().AdjustFrameRate

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154830.mp4.avi").AssumeFPS(30,1)
v6 = v6.ConvertToYV12().AdjustFrameRate

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154919.mp4.avi").AssumeFPS(30,1)
v7 = v7.ConvertToYV12().AdjustFrameRate

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155423.mp4.avi").AssumeFPS(30,1)
v8 = v8.trim(0, 520)
v8 = v8.ConvertToYV12().AdjustFrameRate

v9 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155553.mp4.avi").AssumeFPS(30,1)
v9 = v9.ConvertToYV12().AdjustFrameRate

v10 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155616.mp4.avi").AssumeFPS(30,1)
v10 = v10.ConvertToYV12().AdjustFrameRate

v11 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155649.mp4.avi").AssumeFPS(30,1)
v11 = v11.ConvertToYV12().AdjustFrameRate

v12 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155752.mp4.avi").AssumeFPS(30,1)
v12 = v12.ConvertToYV12().AdjustFrameRate

v13 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160151.mp4.avi").AssumeFPS(30,1)
v13 = v13.ConvertToYV12().AdjustFrameRate

v14 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160352.mp4.avi").AssumeFPS(30,1)
v14 = v14.ConvertToYV12().AdjustFrameRate

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14
Prefetch(6)
