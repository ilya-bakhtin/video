import("c:\Users\ilx\wrk\video\2022_12_24-Praha\common.avs", utf8 = true)

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

v1 = prepareOneAV("20221223_153323.mp4")
v2 = prepareOneAV("PXL_20221224_145719922.TS.mp4")
v3 = prepareOneAV("20221224_153351.mp4")
v4 = prepareOneAV("20221224_153412.mp4")
v5 = prepareOneAV("20221224_153744.mp4")
v6 = prepareOneAV("20221224_153858.mp4")
v7 = prepareOneAV("20221224_153946.mp4")
v8 = prepareOneAV("20221224_154006.mp4")
v9 = prepareOneAV("20221224_154039.mp4")
v10 = prepareOneAV("20221224_154129.mp4")
v11 = prepareOneAV("20221224_154142.mp4")
v12 = prepareOneAV("20221224_154204.mp4")
v13 = prepareOneAV("20221224_154225.mp4")
v14 = prepareOneAV("20221224_154540.mp4")
v15 = prepareOneAV("20221224_154928.mp4")
v16 = prepareOneAV("20221224_155450.mp4")
v17 = prepareOneAV("20221224_155558.mp4")
v18 = prepareOneAV("20221224_160240.mp4")
v19 = prepareOneAV("20221224_160303.mp4")
v20 = prepareOneAV("20221224_160325.mp4")
v21 = prepareOneAV("20221224_160353.mp4")
v22 = prepareOneAV("20221224_160617.mp4")
v23 = prepareOneAV("20221224_160656.mp4")
v24 = prepareOneAV("20221224_161031.mp4")
v25 = prepareOneAV("20221224_161306.mp4")
v26 = prepareOneAV("20221224_161357.mp4")
v27 = prepareOneAV("20221224_161429.mp4")
v28 = prepareOneAV("20221224_161443.mp4")
v29 = prepareOneAV("20221224_162235.mp4")
v30 = prepareOneAV("20221224_162346.mp4")
v31 = prepareOneAV("20221224_162638.mp4")
v32 = prepareOneAV("20221224_162738.mp4")
v33 = prepareOneAV("20221224_163001.mp4")
v34 = prepareOneAV("20221224_163625.mp4")
v35 = prepareOneAV("20221224_164545.mp4")
v36 = prepareOneAV("20221224_165943.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36
ConvertToYV12()
