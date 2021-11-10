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
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_142531.mp4")
assumeFPS(30)
#info

v216 = trim(216, 217).assumeFPS(6).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v216.autogamma.prefetch(6)

v261 = trim(261, 262).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v261.autogamma.prefetch(6)

v632 = trim(632, 633).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v632.autogamma.prefetch(6)

v636 = trim(636, 637).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v636.autogamma.prefetch(6)

v638 = trim(638, 639).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v638.autogamma.prefetch(6)

v640 = trim(640, 641).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v640.autogamma.prefetch(6)

last = trim(0, 215) + v216 + trim(218, 260) +\
                      v261 + trim(263, 631) +\
                      v632 + trim(634, 635) +\
                      v636 +\
                      v638 +\
                      v640 + trim(642, 0)

convertToRGB24(interlaced=false, matrix="PC.709")

prefetch(6)