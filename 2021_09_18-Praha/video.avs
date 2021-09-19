LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_121858.mp4.avi").AssumeFPS(30,1)
v1 = v1.ConvertToYV12().AdjustFrameRate

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122131.mp4.avi").AssumeFPS(30,1)
v2 = v2.ConvertToYV12().AdjustFrameRate

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122331.mp4.avi").AssumeFPS(30,1)
v3 = v3.ConvertToYV12().AdjustFrameRate

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122435.mp4.avi").AssumeFPS(30,1)
v4 = v4.trim(0, 737)
v4 = v4.ConvertToYV12().AdjustFrameRate

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155536.mp4.avi").AssumeFPS(30,1)
v5 = v5.ConvertToYV12().AdjustFrameRate

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155750.mp4.avi").AssumeFPS(30,1)
v6 = v6.ConvertToYV12().AdjustFrameRate

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155904.mp4.avi").AssumeFPS(30,1)
v7 = v7.ConvertToYV12().AdjustFrameRate

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_160121.mp4.avi").AssumeFPS(30,1)
v8 = v8.trim(0, 242)
v8 = v8.ConvertToYV12().AdjustFrameRate

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8
Prefetch(6)
