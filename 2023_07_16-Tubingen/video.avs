import("c:\Users\ilx\wrk\video\2023_07_16-Tubingen\common.avs", utf8 = true)

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

v1 = prepareOneAV("20230716_143429.mp4").trim(35, 0)
v2 = prepareOneAV("20230716_143509.mp4")
v3 = prepareOneAV("20230716_143916.mp4").trim(35, 0)
v4 = prepareOneAV("20230716_144015.mp4").trim(35, 0)
v5 = prepareOneAV("20230716_144045.mp4")
v6 = prepareOneAV("20230716_144156.mp4").trim(35, 0)
v7 = prepareOneAV("20230716_144308.mp4").trim(35, 0)
v8 = prepareOneAV("20230716_144330.mp4")
v9 = prepareOneAV("20230716_144358.mp4")
v10 = prepareOneAV("20230716_144423.mp4")
v11 = prepareOneAV("20230716_144448.mp4")
v12 = prepareOneAV("20230716_144508.mp4")
v13 = prepareOneAV("20230716_144851.mp4").trim(35, 0)
v14 = prepareOneAV("20230716_144935.mp4")
v15 = prepareOneAV("20230716_145018.mp4")
v16 = prepareOneAV("20230716_145103.mp4")
v17 = prepareOneAV("20230716_145159.mp4")
v18 = prepareOneAV("20230716_145516.mp4")
v19 = prepareOneAV("20230716_145619.mp4").trim(35, 0)
v20 = prepareOneAV("20230716_145810.mp4")
v21 = prepareOneAV("20230716_154330.mp4")
v22 = prepareOneAV("20230716_155132.mp4")
v23 = prepareOneAV("20230716_155529.mp4")
v24 = prepareOneAV("20230716_155602.mp4")
v25 = prepareOneAV("20230716_155621.mp4")
v26 = prepareOneAV("20230716_155945.mp4")
v27 = prepareOneAV("20230716_160034.mp4")
v28 = prepareOneAV("20230716_160244.mp4")
v29 = prepareOneAV("20230716_160310.mp4")
v30 = prepareOneAV("20230716_160329.mp4")
v31 = prepareOneAV("20230716_160356.mp4")
v32 = prepareOneAV("20230716_160452.mp4")
v33 = prepareOneAV("20230716_160512.mp4")
v34 = prepareOneAV("20230716_160644.mp4")
v35 = prepareOneAV("20230716_165433.mp4")
v36 = prepareOneAV("20230716_165502.mp4")
v37 = prepareOneAV("20230716_165851.mp4")
v38 = prepareOneAV("20230716_165928.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38
ConvertToYV12()
