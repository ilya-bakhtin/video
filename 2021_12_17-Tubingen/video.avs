import("d:\Users\ilx\wrk\video\2021_12_17-Tubingen\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio)
{
    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24(interlaced=false, matrix="PC.709")
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV(source_dir + "20211217_134448.mp4.avi", source_dir + "20211217_134448.mp4")
v2 = prepareOneAV(source_dir + "20211217_135148.mp4.avi", source_dir + "20211217_135148.mp4")
v3 = prepareOneAV(source_dir + "20211217_135348.mp4.avi", source_dir + "20211217_135348.mp4")
v4 = prepareOneAV(source_dir + "20211217_141945.mp4.avi", source_dir + "20211217_141945.mp4")
v5 = prepareOneAV(source_dir + "20211217_142025.mp4.avi", source_dir + "20211217_142025.mp4")
v6 = prepareOneAV(source_dir + "20211217_142126.mp4.avi", source_dir + "20211217_142126.mp4")
v7 = prepareOneAV(source_dir + "20211217_143040.mp4.avi", source_dir + "20211217_143040.mp4")
v8 = prepareOneAV(source_dir + "20211217_143503.mp4.avi", source_dir + "20211217_143503.mp4")
v9 = prepareOneAV(source_dir + "20211217_143529.mp4.avi", source_dir + "20211217_143529.mp4")
v10 = prepareOneAV(source_dir + "20211217_143643.mp4.avi", source_dir + "20211217_143643.mp4")
v11 = prepareOneAV(source_dir + "20211217_143820.mp4.avi", source_dir + "20211217_143820.mp4")
v11 = v11.trim(69, 0)
v12 = prepareOneAV(source_dir + "20211217_144212.mp4.avi", source_dir + "20211217_144212.mp4")
v13 = prepareOneAV(source_dir + "20211217_144358.mp4.avi", source_dir + "20211217_144358.mp4")
v14 = prepareOneAV(source_dir + "20211217_144425.mp4.avi", source_dir + "20211217_144425.mp4")
v15 = prepareOneAV(source_dir + "20211217_144558.mp4.avi", source_dir + "20211217_144558.mp4")
v16 = prepareOneAV(source_dir + "20211217_145204.mp4.avi", source_dir + "20211217_145204.mp4")
v17 = prepareOneAV(source_dir + "20211217_145317.mp4.avi", source_dir + "20211217_145317.mp4")
v18 = prepareOneAV(source_dir + "20211217_145335.mp4.avi", source_dir + "20211217_145335.mp4")
v19 = prepareOneAV(source_dir + "20211217_150133.mp4.avi", source_dir + "20211217_150133.mp4")
v20 = prepareOneAV(source_dir + "20211217_150209.mp4.avi", source_dir + "20211217_150209.mp4")
v21 = prepareOneAV(source_dir + "20211217_150323.mp4.avi", source_dir + "20211217_150323.mp4")
v22 = prepareOneAV(source_dir + "20211217_150424.mp4.avi", source_dir + "20211217_150424.mp4")
v23 = prepareOneAV(source_dir + "20211217_150625.mp4.avi", source_dir + "20211217_150625.mp4")
v24 = prepareOneAV(source_dir + "20211217_151505.mp4.avi", source_dir + "20211217_151505.mp4")
v25 = prepareOneAV(source_dir + "20211217_151953.mp4.avi", source_dir + "20211217_151953.mp4")
v26 = prepareOneAV(source_dir + "20211217_152148.mp4.avi", source_dir + "20211217_152148.mp4")
v27 = prepareOneAV(source_dir + "20211217_153220.mp4.avi", source_dir + "20211217_153220.mp4")
v28 = prepareOneAV(source_dir + "20211217_154105.mp4.avi", source_dir + "20211217_154105.mp4")
v29 = prepareOneAV(source_dir + "20211217_154153.mp4.avi", source_dir + "20211217_154153.mp4")
v30 = prepareOneAV(source_dir + "20211217_154504.mp4.avi", source_dir + "20211217_154504.mp4")
v31 = prepareOneAV(source_dir + "20211217_154634.mp4.avi", source_dir + "20211217_154634.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31
ConvertToYV12()
prefetch