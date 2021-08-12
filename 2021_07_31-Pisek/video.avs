LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_122934.mp4.avi").AssumeFPS(30,1)
v1 = v1.trim(8, 0)

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_131036.mp4.avi").AssumeFPS(30,1)
#v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_131230.mp4.avi").AssumeFPS(30,1)
v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_131239.mp4.avi").AssumeFPS(30,1)
v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_131330.mp4.avi").AssumeFPS(30,1)
v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_131510.mp4.avi").AssumeFPS(30,1)

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_132641.mp4.avi").AssumeFPS(30,1)
v7 = v7.trim(0, 626)

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_134052.mp4.avi").AssumeFPS(30,1)
v8 = v8.trim(0, 625)

v9 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_134135.mp4.avi").AssumeFPS(30,1)
v10 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_181703.mp4.avi").AssumeFPS(30,1)
v11 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_182049.mp4.avi").AssumeFPS(30,1)

v12 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_182315.mp4.avi").AssumeFPS(30,1)
v12 = v12.convertToYV24.autolevels(filterRadius=9, gamma=1.3).convertToRGB24
v12 = v12.trim(42, 0)

v13 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_183324.mp4.avi").AssumeFPS(30,1)
v14 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_184219.mp4.avi").AssumeFPS(30,1)
last = v1 + v2 + /*v3 +*/ v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14
ConvertToYV12()
assumefps(30).AdjustFrameRate(preset_p = "slowest")
prefetch(12)

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 16)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

