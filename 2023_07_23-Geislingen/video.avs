import("c:\Users\ilx\wrk\video\2023_07_23-Geislingen\common.avs", utf8 = true)

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

v1 = prepareOneAV("20230723_133936.mp4")
v2 = prepareOneAV("20230723_134011.mp4")
v3 = prepareOneAV("20230723_134028.mp4")
v4 = prepareOneAV("20230723_134333.mp4")
v5 = prepareOneAV("20230723_134432.mp4")
v6 = prepareOneAV("20230723_134726.mp4")
v7 = prepareOneAV("20230723_134813.mp4")
v8 = prepareOneAV("20230723_135026.mp4").trim(0, 1120)
v9 = prepareOneAV("20230723_135152.mp4")
v10 = prepareOneAV("20230723_135229.mp4")
v11 = prepareOneAV("20230723_135338.mp4")
v12 = prepareOneAV("20230723_135442.mp4")
v13 = prepareOneAV("20230723_135850.mp4")
v14 = prepareOneAV("20230723_140057.mp4")
v15 = prepareOneAV("20230723_140306.mp4")
v16 = prepareOneAV("20230723_140520.mp4")
v17 = prepareOneAV("20230723_140659.mp4", autolevels = true)
v18 = prepareOneAV("20230723_140748.mp4", autolevels = true)
v19 = prepareOneAV("20230723_141004.mp4")
v20 = prepareOneAV("20230723_141043.mp4")
v21 = prepareOneAV("20230723_141157.mp4")
v22 = prepareOneAV("20230723_143949.mp4")
v23 = prepareOneAV("20230723_144327.mp4")
v24 = prepareOneAV("20230723_144413.mp4", autolevels = true)
v25 = prepareOneAV("20230723_145015.mp4")
v26 = prepareOneAV("20230723_145111.mp4")
v27 = prepareOneAV("20230723_150949.mp4")
v28 = prepareOneAV("20230723_152132.mp4", autolevels = true)
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28
ConvertToYV12()
