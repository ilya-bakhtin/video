LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_01_09-Praha\20210107_085608.mp4.avi").AssumeFPS(30,1)
v1 = v1.ConvertToYV12().AdjustFrameRate

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_01_09-Praha\VID_20210108_093622.mp4.avi").AssumeFPS(30,1)
v2 = v2.ConvertToYV12().AdjustFrameRate

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_01_09-Praha\VID_20210109_081119.mp4.avi").AssumeFPS(30,1)
v3 = v3.ConvertToYV12().AdjustFrameRate

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

last = v1 + v2 + v3
Prefetch(6)
