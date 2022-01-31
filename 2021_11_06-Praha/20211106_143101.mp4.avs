import("d:\Users\ilx\wrk\video\2021_11_06-Praha\common.avs")

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 16)
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LSMASHVideoSource(source_dir + "20211106_143101.mp4").assumeFPS(30)
v0 = v
v = v.trim(0, 121) + v.trim(122, 123).assumeFPS(15).adjustFrameRate.assumeFPS(30) + v.trim(124, 0)
last = v.trim(0, 140) + v.trim(141, 142).assumeFPS(20).adjustFrameRate.assumeFPS(30) + v.trim(143, 0)
trim(0, -v0.frameCount)

convertToRGB24(interlaced=false, matrix="PC.709")
