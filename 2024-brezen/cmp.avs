import("c:\Users\ilx\wrk\video\2024-brezen\common.avs", utf8 = true)

function prepareOneAV(string video)
{
    v = LSMASHVideoSource(video)
    fps60 = v.frameRate > 40

    a = BestAudioSource(video, exactsamples=true)

#    v = v.assumeFPS(fps60 ? 60 : 30, 1)
#    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)

    v = AudioDub(v, a).trim(0, v.frameCount - 1)

    return v.amplify(100).waveform(window=1).info
}

filename = "20240310_153344.mp4"
filename = "20240310_153816.mp4"
v0 = prepareOneAV(destination_dir + filename)
v1 = prepareOneAV(destination_dir + "result/" + filename + ".mp4")

return v0.interleave(v1)
