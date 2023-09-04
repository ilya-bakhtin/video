import("c:\Users\ilx\wrk\video\2023_09_03-Praha\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")

    vo = LSMASHVideoSource(destination_dir + name)
    fps60 = vo.frameRate > 40

    a = blankClip

    if ((fps60 && v.frameCount == vo.frameCount) || (v.frameCount == vo.FrameCount*2 - 1))
    {
        a = LSMASHAudioSource(destination_dir + name, skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
        new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
        a = a.AssumeSampleRate(Round(new_rate*100.)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }
    else
    {
        a = LSMASHAudioSource(destination_dir + "result\" + name + ".mp4", skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
    }

    v = AudioDub(v, a)
    v = v.trim(0, 0) #  # audio tail fix

    return v
}

v1 = prepareOneAV("20230903_135940.mp4")
v2 = prepareOneAV("20230903_135956.mp4")
v3 = prepareOneAV("20230903_140037.mp4")
v4 = prepareOneAV("20230903_140123.mp4")
v5 = prepareOneAV("20230903_140203.mp4")
v6 = prepareOneAV("20230903_140420.mp4")
v7 = prepareOneAV("20230903_140436.mp4")
v8 = prepareOneAV("20230903_142659.mp4")
v9 = prepareOneAV("20230903_142945.mp4")
v10 = prepareOneAV("20230903_143052.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10
ConvertToYV12()
