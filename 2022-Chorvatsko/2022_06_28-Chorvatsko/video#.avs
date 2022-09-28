import("m:\Media\video\2022_06_28-Chorvatsko\common.avs")

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

#    v = findStr(video, "VID") != 0 ? v : v.colorYUV(off_v=3).tweak(sat=1.1, coring=false)
    v = autolevels ? v.autolevels(minRng = 0, border_l = 192, border_t = 108, border_r = 192, border_b = 108) : v
    v = sat == 1.0 ? v : v.tweak(sat = 1.3, coring = false)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV(source_dir + "VID_20220621_205040.mp4.avi", source_dir + "VID_20220621_205040.mp4")
v2 = prepareOneAV(source_dir + "VID_20220621_205201.mp4.avi", source_dir + "VID_20220621_205201.mp4")
v3 = prepareOneAV(source_dir + "20220622_141658.mp4.avi", source_dir + "20220622_141658.mp4")
#v4 = prepareOneAV(source_dir + "20220626_075817.mp4.avi", source_dir + "20220626_075817.mp4")
v5 = prepareOneAV(source_dir + "20220626_170548.mp4.avi", source_dir + "20220626_170548.mp4", autolevels = true)
v6 = prepareOneAV(source_dir + "VID_20220627_092447.mp4.avi", source_dir + "VID_20220627_092447.mp4")
v7 = prepareOneAV(source_dir + "VID_20220627_092636.mp4.avi", source_dir + "VID_20220627_092636.mp4")
v8 = prepareOneAV(source_dir + "20220628_174443.mp4.avi", source_dir + "20220628_174443.mp4")
v9 = prepareOneAV(source_dir + "20220628_180634.mp4.avi", source_dir + "20220628_180634.mp4", autolevels = true, sat = 1.3)
v10 = prepareOneAV(source_dir + "20220628_180710.mp4.avi", source_dir + "20220628_180710.mp4", autolevels = true, sat = 1.3)
v11 = prepareOneAV(source_dir + "20220628_181248.mp4.avi", source_dir + "20220628_181248.mp4", autolevels = true, sat = 1.3)
v12 = prepareOneAV(source_dir + "20220628_181442.mp4.avi", source_dir + "20220628_181442.mp4", autolevels = true, sat = 1.3)
v13 = prepareOneAV(source_dir + "20220628_181740.mp4.avi", source_dir + "20220628_181740.mp4", autolevels = true, sat = 1.3)
v14 = prepareOneAV(source_dir + "20220628_182121.mp4.avi", source_dir + "20220628_182121.mp4", autolevels = true, sat = 1.3)
v15 = prepareOneAV(source_dir + "20220628_191017.mp4.avi", source_dir + "20220628_191017.mp4", autolevels = true, sat = 1.3)
v16 = prepareOneAV(source_dir + "20220628_191104.mp4.avi", source_dir + "20220628_191104.mp4", autolevels = true, sat = 1.3)
#v17 = prepareOneAV(source_dir + "20220628_191334.mp4.avi", source_dir + "20220628_191334.mp4")
v18 = prepareOneAV(source_dir + "20220628_191357.mp4.avi", source_dir + "20220628_191357.mp4", autolevels = true, sat = 1.3)
v19 = prepareOneAV(source_dir + "20220628_191523.mp4.avi", source_dir + "20220628_191523.mp4", autolevels = true, sat = 1.3)
v20 = prepareOneAV(source_dir + "20220628_191628.mp4.avi", source_dir + "20220628_191628.mp4", autolevels = true, sat = 1.3)
v21 = prepareOneAV(source_dir + "20220628_191903.mp4.avi", source_dir + "20220628_191903.mp4", autolevels = true, sat = 1.3)
v22 = prepareOneAV(source_dir + "20220628_192348.mp4.avi", source_dir + "20220628_192348.mp4", autolevels = true, sat = 1.3)
last = v1 + v2 + v3/* + v4*/ + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16/* + v17*/ + v18 + v19 + v20 + v21 + v22
ConvertToYV12()
#histogram("levels")
prefetch
