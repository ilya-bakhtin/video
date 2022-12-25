import("c:\Users\ilx\wrk\video\2022_10_30-Vranov-nad-Dyjí\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

#LoadVirtualdubPlugin("C:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

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

v1 = prepareOneAV("20221028_133828.mp4")
#return v1.ConvertToYV12(#
v2 = prepareOneAV("20221028_133858.mp4")
v3 = prepareOneAV("20221028_134557.mp4")
v4 = prepareOneAV("20221028_155602.mp4")
v5 = prepareOneAV("20221028_155657.mp4")
v6 = prepareOneAV("20221028_155731.mp4")
v7 = prepareOneAV("20221028_160617.mp4")
v8 = prepareOneAV("20221029_103207.mp4")
v9 = prepareOneAV("20221029_103244.mp4")
v10 = prepareOneAV("20221029_103347.mp4")
v11 = prepareOneAV("20221029_103407.mp4")
v12 = prepareOneAV("20221029_104958.mp4")
v13 = prepareOneAV("20221029_105020.mp4")
v14 = prepareOneAV("20221029_110518.mp4")
v15 = prepareOneAV("20221029_110849.mp4")
v16 = prepareOneAV("20221029_114632.mp4")
v17 = prepareOneAV("20221029_114931.mp4")
v18 = prepareOneAV("20221029_115247.mp4")
v19 = prepareOneAV("20221029_115631.mp4")
v20 = prepareOneAV("20221029_115658.mp4")
v21 = prepareOneAV("20221029_115846.mp4")
v22 = prepareOneAV("20221029_135516.mp4")
v23 = prepareOneAV("20221029_135712.mp4")
v24 = prepareOneAV("20221029_135730.mp4")
v25 = prepareOneAV("20221029_140508.mp4")
v26 = prepareOneAV("20221029_141211.mp4")
v27 = prepareOneAV("20221029_141453.mp4")
v28 = prepareOneAV("20221029_141523.mp4")
v29 = prepareOneAV("20221029_141544.mp4")
v30 = prepareOneAV("20221029_141754.mp4")
v31 = prepareOneAV("20221029_144224.mp4")
v32 = prepareOneAV("20221029_144248.mp4")
v33 = prepareOneAV("20221029_145050.mp4")
v34 = prepareOneAV("20221029_145234.mp4")
v35 = prepareOneAV("20221029_145418.mp4")
v36 = prepareOneAV("20221029_145703.mp4")
v37 = prepareOneAV("20221029_150304.mp4")
v38 = prepareOneAV("20221030_110508.mp4")
v39 = prepareOneAV("20221030_110733.mp4")
v40 = prepareOneAV("20221030_162029.mp4")
v41 = prepareOneAV("20221030_162107.mp4")
v42 = prepareOneAV("20221030_182046.mp4")
v43 = prepareOneAV("20221030_182113.mp4")
v44 = prepareOneAV("20221030_185558.mp4")
v45 = prepareOneAV("20221030_195533.mp4")
v46 = prepareOneAV("20221030_195544.mp4")
v47 = prepareOneAV("20221030_195707.mp4")
v48 = prepareOneAV("20221030_195850.mp4")
v49 = prepareOneAV("20221030_195924.mp4")
v50 = prepareOneAV("20221030_195954.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50
ConvertToYV12()
