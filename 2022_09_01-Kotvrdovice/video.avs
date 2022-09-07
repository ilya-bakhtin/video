import("d:\Users\ilx\wrk\video\2022_09_01-Kotvrdovice\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
/*
    fps60 = v.frameRate > 40
    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)

    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

#    log = video.replaceStr(".avi", ".log")
    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                                                                                                                   ^
#                 block                                                                                                                              rolling                                                  

    v = v.Deshaker(config).trim(30, 0)
    
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

#    v = findStr(video, "VID") != 0 ? v : v.colorYUV(off_v=3).tweak(sat=1.1, coring=false)
    v = autolevels ? v.autolevels(minRng = 0, border_l = 192, border_t = 108, border_r = 192, border_b = 108) : v
    v = sat == 1.0 ? v : v.tweak(sat = sat, coring = false)

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()
*/
    a = LSMASHAudioSource(destination_dir + name)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("20220901_144537.mp4")
v2 = prepareOneAV("20220901_144750.mp4")
v3 = prepareOneAV("20220901_144821.mp4")
v4 = prepareOneAV("20220901_154722.mp4")
v5 = prepareOneAV("20220901_154744.mp4")
v6 = prepareOneAV("20220901_155204.mp4")
v7 = prepareOneAV("20220901_161439.mp4")
v8 = prepareOneAV("20220901_161459.mp4")
v9 = prepareOneAV("20220901_162837.mp4")
v10 = prepareOneAV("20220901_162854.mp4")
v11 = prepareOneAV("20220901_162910.mp4")
v12 = prepareOneAV("20220901_163157.mp4")
v13 = prepareOneAV("20220901_171248.mp4")
v14 = prepareOneAV("20220901_171310.mp4")
v15 = prepareOneAV("20220901_171323.mp4")
v16 = prepareOneAV("20220901_171418.mp4")
v17 = prepareOneAV("20220901_173152.mp4")
v18 = prepareOneAV("20220901_173245.mp4")
v19 = prepareOneAV("20220901_175343.mp4")
v20 = prepareOneAV("20220901_175415.mp4")
v21 = prepareOneAV("20220901_175451.mp4")
v22 = prepareOneAV("20220901_175508.mp4")
v23 = prepareOneAV("20220901_175600.mp4")
v24 = prepareOneAV("20220901_175642.mp4")
v25 = prepareOneAV("20220901_175856.mp4")
v26 = prepareOneAV("20220901_180046.mp4")
v27 = prepareOneAV("20220901_180117.mp4")
v28 = prepareOneAV("20220901_180418.mp4")
v29 = prepareOneAV("20220901_180437.mp4")
v30 = prepareOneAV("20220901_180532.mp4")
v31 = prepareOneAV("20220901_180817.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31
ConvertToYV12()
