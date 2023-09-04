import("c:\Users\ilx\wrk\video\2023_07_20-Mnichov\common.avs", utf8 = true)

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

v1 = prepareOneAV("20230720_160854.mp4")
v2 = prepareOneAV("20230720_160916.mp4")
v3 = prepareOneAV("20230720_160951.mp4")
v4 = prepareOneAV("20230720_161020.mp4")
v5 = prepareOneAV("20230720_161652.mp4")
v6 = prepareOneAV("20230720_174056.mp4").trim(0, 499)
v7 = prepareOneAV("20230720_174318.mp4").trim(35, 0)
v8 = prepareOneAV("20230720_174508.mp4")
v9 = prepareOneAV("20230720_174815.mp4").trim(35, 0)
v10 = prepareOneAV("20230720_174845.mp4")
v11 = prepareOneAV("20230721_122444.mp4")
v12 = prepareOneAV("20230721_122526.mp4")
v13 = prepareOneAV("20230721_122724.mp4")
v14 = prepareOneAV("20230721_122801.mp4")
v15 = prepareOneAV("20230721_122828.mp4")
v16 = prepareOneAV("20230721_122850.mp4")
v17 = prepareOneAV("20230721_123000.mp4")
v18 = prepareOneAV("20230721_123025.mp4")
v19 = prepareOneAV("20230721_123114.mp4")
v20 = prepareOneAV("20230721_123253.mp4")
v21 = prepareOneAV("20230721_123314.mp4")
v22 = prepareOneAV("20230721_134945.mp4")
v23 = prepareOneAV("20230721_140439.mp4")
v24 = prepareOneAV("20230721_140849.mp4").trim(35, 0)
v25 = prepareOneAV("20230721_142925.mp4").trim(35, 0)
v26 = prepareOneAV("20230721_142956.mp4")
v27 = prepareOneAV("20230721_143022.mp4")
v28 = prepareOneAV("20230721_143459.mp4")
v29 = prepareOneAV("20230721_143614.mp4")
v30 = prepareOneAV("20230721_143645.mp4")
v31 = prepareOneAV("20230721_143712.mp4")
v32 = prepareOneAV("20230721_145308.mp4").trim(35, 0)
v33 = prepareOneAV("20230721_150507.mp4").trim(35, 0)
v34 = prepareOneAV("20230721_152752.mp4").trim(48, 0)
v35 = prepareOneAV("20230721_152822.mp4")
v36 = prepareOneAV("20230721_152850.mp4")
v37 = prepareOneAV("20230721_153445.mp4")
v38 = prepareOneAV("20230722_115145.mp4")
v39 = prepareOneAV("20230722_115222.mp4")
v40 = prepareOneAV("20230722_115244.mp4")
v41 = prepareOneAV("20230722_120458.mp4")
v42 = prepareOneAV("20230722_120514.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42
ConvertToYV12()
