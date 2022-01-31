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

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource(source_dir + "20211020_183724.mp4")
assumeFPS(30)
#info
#return last

v176 = trim(176, 177).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v176.autogamma.prefetch(6)

v185 = trim(185, 186).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v185.autogamma.prefetch(6)

v201 = trim(201, 202).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v201.autogamma.prefetch(6)

v219 = trim(219, 220).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v219.autogamma.prefetch(6)

v220 = trim(220, 221).assumeFPS(30).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v220.autogamma.prefetch(6)

v222 = trim(222, 223).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v222.autogamma.prefetch(6)

v223 = trim(223, 224).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v222.autogamma.prefetch(6)

v224 = trim(224, 225).assumeFPS(10).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v222.autogamma.prefetch(6)

v252 = trim(252, 253).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v252.autogamma.prefetch(6)

v329 = trim(329, 330).assumeFPS(20).adjustFrameRate(blksize_p=32).assumeFPS(30)
#return v329.autogamma.prefetch(6)

last = trim(0, 175) + v176 + trim(178, 184) +\
                      v185 + trim(187, 200) +\
                      v201 + trim(203, 218) +\
                      v219.trim(0, v219.frameCount() - 2) +\
                      v220 +\
                      v222.trim(0, v222.frameCount() - 2) +\
                      v223.trim(0, v223.frameCount() - 2) +\
                      v224 + trim(226, 251) +\
                      v252 + trim(254, 328) +\
                      v329 + trim(331, 0)

convertToRGB24(interlaced=false, matrix="PC.709")
Prefetch(6)