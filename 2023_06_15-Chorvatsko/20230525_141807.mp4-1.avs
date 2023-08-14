import("c:\Users\ilx\wrk\video\2023_06_15-Chorvatsko\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("c:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string log, string video)
{
    v = LSMASHVideoSource(video)

    fps60 = v.frameRate > 40
    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)

    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                               ^                                                                                   ^
#                 block                                          borders                                                                             rolling                                                  

    v = v.Deshaker(config).trim(30, 0)
    
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(video, skip_priming=false).audioTrim(256./48000., 0)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate*100.)).ResampleAudio(4800000).AssumeSampleRate(48000)

    v = AudioDub(v, a)

    v = (v.trim(0, 289) + v.trim(1405, 0)).autolevels(border_l = 500)

    v = v.trim(0, 289) + \
        v.animate(400, 599, "rot_crop", 3., 0.).trim(290, 599) +\
        v.animate(600, 850, "rot_crop", 0., 2.4).trim(600, 1289) +\
        v.animate(1290, 1355, "rot_crop", 2.4, 0.).trim(1290, 1355) +\
        v.animate(1356, 1700, "rot_crop", 0., -4.4).trim(1356, 0)


    return v
}

function rot_crop(clip c, float a)
{
    c = c.rotate(a)

    a = Abs(a/180.*Pi())
    dh = c.width * Sin(a) * Cos(a*5) / 2.12
    dw = dh * 16 / 9.
    c = c.spline64Resize(c.width, c.height, dw, dh, c.width - dw*2., c.height - dh*2.)
    return c

}
last = prepareOneAV(source_dir + "20230525_141807.mp4" + ".log", destination_dir + "20230525_141807.mp4")
prefetch(3)
