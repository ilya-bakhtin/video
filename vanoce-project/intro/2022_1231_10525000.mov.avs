import("c:\Users\ilx\wrk\video\vanoce-project\intro\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string log, string video, string audio)
{
    v = LSMASHVideoSource(video)
    v = v.convertToYV24(interlaced=false)

    fps60 = v.frameRate > 40
    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 1920 ? v : v.spline64Resize(1920, 1080)

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = wavSource(audio)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

last = prepareOneAV("2022_1231_10525000.mov" + ".log", destination_dir + "2022_1231_10525000.mov", destination_dir + "2022_1231_10525000.wav")
prefetch
