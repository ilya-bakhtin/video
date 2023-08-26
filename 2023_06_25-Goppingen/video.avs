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

v1 = prepareOneAV("20230623_124807.mp4")
v2 = prepareOneAV("20230623_124824.mp4")
v3 = prepareOneAV("20230623_130138.mp4")
v4 = prepareOneAV("20230623_130242.mp4")
v5 = prepareOneAV("20230623_131708.mp4")
v6 = prepareOneAV("20230623_132319.mp4")
v7 = prepareOneAV("20230625_132922.mp4")
v8 = prepareOneAV("20230625_134422.mp4")
v9 = prepareOneAV("20230625_134623.mp4")
v10 = prepareOneAV("20230625_135545.mp4")
v11 = prepareOneAV("20230625_135640.mp4")
v12 = prepareOneAV("20230625_135751.mp4")
v13 = prepareOneAV("20230625_141743.mp4")
v14 = prepareOneAV("20230625_141847.mp4")
v15 = prepareOneAV("20230625_141909.mp4")
v16 = prepareOneAV("20230625_141942.mp4")
v17 = prepareOneAV("20230625_142008.mp4")
v18 = prepareOneAV("20230625_142030.mp4")
v19 = prepareOneAV("20230625_142053.mp4")
v20 = prepareOneAV("20230625_142115.mp4")
v21 = prepareOneAV("20230625_142912.mp4")
v22 = prepareOneAV("20230703_174803.mp4")
v23 = prepareOneAV("20230703_174944.mp4")
v24 = prepareOneAV("20230703_180315.mp4")
v25 = prepareOneAV("20230705_143044.mp4")
v26 = prepareOneAV("20230705_150528.mp4")
v27 = prepareOneAV("20230706_113013.mp4")
v28 = prepareOneAV("20230706_113044.mp4")
v29 = prepareOneAV("20230707_144940.mp4")
v30 = prepareOneAV("20230707_145000.mp4")
v31 = prepareOneAV("20230716_084251.mp4")
v32 = prepareOneAV("20230716_084321.mp4")
v33 = prepareOneAV("20230726_205821.mp4")
v34 = prepareOneAV("20230726_205949.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34
ConvertToYV12()
