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
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_132758.mp4").assumeFPS(30)
#info

v151 = trim(151, 152).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v151.autogamma.prefetch(6)

v216 = trim(216, 217).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v216.autogamma.prefetch(6)

v253 = trim(253, 254).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v253.autogamma.prefetch(6)

v255 = trim(255, 256).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v256.autogamma.prefetch(6)

v256 = trim(256, 257).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v256.autogamma.prefetch(6)

v257 = trim(257, 258).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v257.autogamma.prefetch(6)

v273 = trim(273, 274).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v273.autogamma.prefetch(6)

v305 = trim(305, 306).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v305.autogamma.prefetch(6)

v610 = trim(610, 611).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v610.autogamma.prefetch(6)

v653 = trim(653, 654).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v653.autogamma.prefetch(6)

last = trim(0, 150) + v151 + trim(153, 215) +\
                      v216 + trim(218, 252) +\
                      v253 +\
                      v255.trim(0, v255.frameCount() - 2) +\
                      v256.trim(0, v256.frameCount() - 2) +\
                      v257 + trim(259, 272) +\
                      v273 + trim(275, 304) +\
                      v305 + trim(307, 609) +\
                      v610 + trim(612, 652) +\
                      v653 + trim(655, 0)

convertToRGB24(interlaced=false, matrix="PC.709")

prefetch(6)


