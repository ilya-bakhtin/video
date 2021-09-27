function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_04-Praha\20210904_144232.mp4").assumeFPS(30)

v1 = trim(0, 54)
v2 = trim(55, 56).assumeFPS(15).adjustFrameRate.assumeFPS(30)
v3 = trim(57, 58).assumeFPS(20).adjustFrameRate.assumeFPS(30)
v4 = trim(59, 0)

last = v1 + v2 + v3 + v4

tweak(sat=1.5, coring=false)
