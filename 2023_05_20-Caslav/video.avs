import("c:\Users\ilx\wrk\video\2023_05_20-Caslav\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
    v = autolevels ? v.autolevels : v

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

v1 = prepareOneAV("20230520_114552.mp4")
v2 = prepareOneAV("20230520_115309.mp4")
v3 = prepareOneAV("20230520_115325.mp4")
v4 = prepareOneAV("20230520_115336.mp4")
v5 = prepareOneAV("20230520_120201.mp4")
v6 = prepareOneAV("20230520_121538.mp4")
v7 = prepareOneAV("20230520_121621.mp4")
v8 = prepareOneAV("20230520_121730.mp4")
v9 = prepareOneAV("20230520_121807.mp4")
v10 = prepareOneAV("20230520_122431.mp4")
v11 = prepareOneAV("20230520_122853.mp4")
v12 = prepareOneAV("20230520_134254.mp4")
v13 = prepareOneAV("20230520_134311.mp4")
v14 = prepareOneAV("20230520_134343.mp4")
v15 = prepareOneAV("20230520_134416.mp4")
v16 = prepareOneAV("20230520_134534.mp4")
v17 = prepareOneAV("20230520_135738.mp4")
v18 = prepareOneAV("20230520_140006.mp4")
v19 = prepareOneAV("20230520_140028.mp4")
v20 = prepareOneAV("20230520_140054.mp4")
v21 = prepareOneAV("20230520_140105.mp4")
v22 = prepareOneAV("20230520_140218.mp4")
v23 = prepareOneAV("20230520_140243.mp4")
v24 = prepareOneAV("20230520_140348.mp4")
v25 = prepareOneAV("20230520_140640.mp4")
v26 = prepareOneAV("20230520_140705.mp4")
v27 = prepareOneAV("20230520_140730.mp4")
v28 = prepareOneAV("20230520_141346.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28
ConvertToYV12()
