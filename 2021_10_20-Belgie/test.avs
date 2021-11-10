LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v = LWLibavVideoSource("D:\Users\ilx\wrk\video\2021_10_20-Belgie\20211020_154308.mp4.avi").AssumeFPS(30,1)
v = v.convertToYV12()
v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

last = v

Prefetch(6)