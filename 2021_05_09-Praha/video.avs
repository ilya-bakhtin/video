LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
#v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162111.mp4.avi").AssumeFPS(30,1)

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162135.mp4.avi").AssumeFPS(30,1)
v2 = v2.ConvertToYV12().AdjustFrameRate

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162302.mp4.avi").AssumeFPS(30,1)
v3 = v3.trim(0, 220)
v3 = v3.ConvertToYV12().AdjustFrameRate

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162316.mp4.avi").AssumeFPS(30,1)
v4 = v4.trim(0, 172)
v4 = v4.ConvertToYV12().AdjustFrameRate

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162413.mp4.avi").AssumeFPS(30,1)
v5 = v5.ConvertToYV12().AdjustFrameRate

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162446.mp4.avi").AssumeFPS(30,1)
v6 = v6.ConvertToYV12().AdjustFrameRate

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162510.mp4.avi").AssumeFPS(30,1)
v7 = v7.trim(0, 433)
v7 = v7.ConvertToYV12().AdjustFrameRate

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162525.mp4.avi").AssumeFPS(30,1)
v8 = v8.trim(0, 140)
v8 = v8.ConvertToYV12().AdjustFrameRate

v9 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162638.mp4.avi").AssumeFPS(30,1)
v9 = v9.ConvertToYV12().AdjustFrameRate

v10 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162715.mp4.avi").AssumeFPS(30,1)
v10 = v10.trim(0, 320)
v10 = v10.ConvertToYV12().AdjustFrameRate

v11 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_162751.mp4.avi").AssumeFPS(30,1)
v11 = v11.ConvertToYV12().AdjustFrameRate

v12 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_05_09-Praha\VID_20210509_173440.mp4.avi").AssumeFPS(30,1)
v12 = v12.ConvertToYV12().AdjustFrameRate

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

last = v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12
Prefetch(6)
