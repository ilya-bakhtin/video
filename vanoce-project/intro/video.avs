import("c:\Users\ilx\wrk\video\vanoce-project\intro\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")

    a = LSMASHAudioSource(destination_dir + name)
    va = LSMASHVideoSource(destination_dir + name).AssumeFps(30)
    a = audioDub(va, a).trim(1, 0).killVideo
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    a = a.fadeIn(4800, fps = 48000).fadeOut(4800, fps = 48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("20221228_194049.mp4")
v2 = prepareOneAV("20221228_194158.mp4")
v3 = prepareOneAV("20221228_194244.mp4")
v4 = prepareOneAV("20221228_194348.mp4")
v5 = prepareOneAV("20221228_194423.mp4")
v6 = prepareOneAV("20221228_194453.mp4")
v7 = prepareOneAV("20221228_194530.mp4")
v8 = prepareOneAV("20221228_194617.mp4")
v9 = prepareOneAV("20221228_194713.mp4")
v10 = prepareOneAV("20221228_194750.mp4")
v11 = prepareOneAV("20221228_194830.mp4")
v12 = prepareOneAV("20221228_194859.mp4")
v13 = prepareOneAV("20221228_195005.mp4")
v14 = prepareOneAV("20221228_195037.mp4")
v15 = prepareOneAV("20221228_195104.mp4")
v16 = prepareOneAV("20221228_215149.mp4")
v17 = prepareOneAV("20221228_215219.mp4")
v18 = prepareOneAV("20221228_215241.mp4")
v19 = prepareOneAV("20221228_215328.mp4")
v20 = prepareOneAV("20221228_215444.mp4")
v21 = prepareOneAV("20221228_215522.mp4")
v22 = prepareOneAV("20221228_215605.mp4")
v23 = prepareOneAV("20221228_215648.mp4")
v24 = prepareOneAV("20221228_215750.mp4")
v25 = prepareOneAV("20221230_203419.mp4")
v26 = prepareOneAV("20221230_203547.mp4")
v27 = prepareOneAV("20221230_203657.mp4")
v28 = prepareOneAV("20221230_203729.mp4")
v29 = prepareOneAV("20221230_203812.mp4")
v30 = prepareOneAV("20221230_203858.mp4")
v31 = prepareOneAV("20221230_203932.mp4")
v32 = prepareOneAV("20221230_210253.mp4")
v33 = prepareOneAV("20221230_210337.mp4")
v34 = prepareOneAV("20221230_210406.mp4")
v35 = prepareOneAV("20221230_210453.mp4")
v36 = prepareOneAV("20221231_001402.mp4")
v37 = prepareOneAV("20221231_001515.mp4")
v38 = prepareOneAV("20221231_001534.mp4")
v39 = prepareOneAV("20221231_001659.mp4")
v40 = prepareOneAV("20221231_001754.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40
ConvertToYV12()
