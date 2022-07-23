import("d:\Users\ilx\wrk\video\2022_07_17-Veltrusy\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name)

    a = LSMASHAudioSource(destination_dir + name)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("20220717_112018.mp4")
v2 = prepareOneAV("20220717_112046.mp4")
v3 = prepareOneAV("20220717_112147.mp4")
v7 = prepareOneAV("20220717_130733.mp4")
v8 = prepareOneAV("20220717_130807.mp4")
v9 = prepareOneAV("20220717_135548.mp4")
v10 = prepareOneAV("20220717_135611.mp4")
v11 = prepareOneAV("20220717_135852.mp4")
v12 = prepareOneAV("20220717_141300.mp4")
v13 = prepareOneAV("20220717_141350.mp4")
v14 = prepareOneAV("20220717_141910.mp4")
v15 = prepareOneAV("20220717_142011.mp4")
v16 = prepareOneAV("20220717_150903.mp4")
v17 = prepareOneAV("20220717_151001.mp4")
v18 = prepareOneAV("20220717_151014.mp4")
v19 = prepareOneAV("20220717_152722.mp4")
v20 = prepareOneAV("20220717_152738.mp4")
v21 = prepareOneAV("20220717_152857.mp4")
v22 = prepareOneAV("20220717_153837.mp4")
v23 = prepareOneAV("20220717_153924.mp4")
v24 = prepareOneAV("20220717_154047.mp4")
v25 = prepareOneAV("20220717_154529.mp4")
v26 = prepareOneAV("20220717_154601.mp4")
v27 = prepareOneAV("20220717_154636.mp4")
v28 = prepareOneAV("20220717_160051.mp4")
v29 = prepareOneAV("20220717_160712.mp4")
v30 = prepareOneAV("20220717_160924.mp4")
v31 = prepareOneAV("20220717_160941.mp4")
v32 = prepareOneAV("20220717_161158.mp4")
v33 = prepareOneAV("20220717_162952.mp4")
v34 = prepareOneAV("20220717_163210.mp4")
last = v1 + v2 + v3 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34
ConvertToYV12()
