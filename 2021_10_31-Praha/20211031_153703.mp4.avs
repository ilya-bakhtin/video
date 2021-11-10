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
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_153703.mp4")
assumeFPS(30)
#info

v44 = trim(44, 45).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v44.autogamma.prefetch(6)

v45 = trim(45, 46).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v45.autogamma.prefetch(6)

v145 = trim(145, 146).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v145.autogamma.prefetch(6)

v172 = trim(172, 173).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v172.autogamma.prefetch(6)

v229 = trim(229, 230).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v229.autogamma.prefetch(6)

v239 = trim(239, 240).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v239.autogamma.prefetch(6)

v370 = trim(370, 371).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v370.autogamma.prefetch(6)

v373 = trim(373, 374).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v373.autogamma.prefetch(6)

last = trim(0, 43) + v44.trim(0, v44.frameCount() - 2) +\
                     v45 + trim(47, 144) +\
                     v145 + trim(147, 171) +\
                     v172 + trim(174, 228) +\
                     v229 + trim(231, 238) +\
                     v239 + trim(241, 369) +\
                     v370 + trim(372, 372) +\
                     v373 + trim(375, 0)

convertToRGB24(interlaced=false, matrix="PC.709")

prefetch(6)