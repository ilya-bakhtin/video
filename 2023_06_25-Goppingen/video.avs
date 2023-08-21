import("c:\Users\ilx\wrk\video\2023_06_25-Goppingen\common.avs", utf8 = true)

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

v1 = prepareOneAV("20230625_132922.mp4")
v2 = prepareOneAV("20230625_134422.mp4")
v3 = prepareOneAV("20230625_134623.mp4")
v4 = prepareOneAV("20230625_135545.mp4")
v5 = prepareOneAV("20230625_135640.mp4")
v6 = prepareOneAV("20230625_135751.mp4")
v7 = prepareOneAV("20230625_141743.mp4")
v8 = prepareOneAV("20230625_141847.mp4")
v9 = prepareOneAV("20230625_141909.mp4")
v10 = prepareOneAV("20230625_141942.mp4")
v11 = prepareOneAV("20230625_142008.mp4")
v12 = prepareOneAV("20230625_142030.mp4")
v13 = prepareOneAV("20230625_142053.mp4")
v14 = prepareOneAV("20230625_142115.mp4")
v15 = prepareOneAV("20230625_142912.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15
ConvertToYV12()
