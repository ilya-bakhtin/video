import("m:\Media\video\2021_10_20-Belgie\common.avs")

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 12)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

function gamma(clip c, int gamma)
{
    return c.autolevels(gamma=gamma/1000000.)
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20211020_165633.mp4")
assumeFPS(30)
#info

v7 = trim(7, 8).assumeFPS(10).adjustFrameRate.assumeFPS(30)
#return v7.autogamma.prefetch(6)

v79 = trim(79, 80).assumeFPS(15).adjustFrameRate.assumeFPS(30)
#return v79.autogamma.prefetch(6)

v83 = trim(83, 84).assumeFPS(3).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v83.autogamma.prefetch(6)

v84 = trim(84, 85).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v84.autogamma.prefetch(6)

v87 = trim(87, 88).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v87.autogamma.prefetch(6)

v157 = trim(157, 158).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v157.autogamma.prefetch(6)

v177 = trim(177, 178).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v177.autogamma.prefetch(6)

v187 = trim(187, 188).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v187.autogamma.prefetch(6)

v209 = trim(209, 210).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v209.autogamma.prefetch(6)

v289 = trim(289, 290).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v289.autogamma.prefetch(6)

v918 = trim(918, 919).assumeFPS(12).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v918.autogamma.prefetch(6)

v979 = trim(979, 980).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v979.autogamma.prefetch(6)

v1096 = trim(1096, 1097).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v1096.autogamma.prefetch(6)

v1110 = trim(1110, 1111).assumeFPS(15).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v1110.autogamma.prefetch(6)

v1166 = trim(1166, 1167).assumeFPS(6).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v1166.autogamma.prefetch(6)

#return last
last = trim(0, 6) + v7    + trim(9, 78)      +\
                    v79   + trim(81, 82)     +\
                    v83.trim(0, v83.frameCount() - 2) +\
                    v84   + trim(86, 86)     +\
                    v87   + trim(89, 156)    +\
                    v157  + trim(159, 176)   +\
                    v177  + trim(179, 186)   +\
                    v187  + trim(189, 208)   +\
                    v209  + trim(211, 288)   +\
                    v289  + trim(291, 917)   +\
                    v918  + trim(920, 978)   +\
                    v979  + trim(981, 1095)  +\
                    v1096 + trim(1098, 1109) +\
                    v1110 + trim(1112, 1165) +\
                    v1166 + trim(1168, 0)

v1 = last.autolevels(gamma=1.2)
v2 = Animate(1123, 1270, "gamma", 1200000, 700000)
v3 = Animate(1271, 1453, "gamma", 700000, 2000000)
last = v1.trim(0, 1122) + v2.trim(1123, 1270) + v3.trim(1271, 0)
tweak(sat=2, coring = false)
#histogram("levels")
convertToRGB24(interlaced=false, matrix="PC.709")
Prefetch(6)
