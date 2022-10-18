import("d:\Users\ilx\wrk\video\2022-Chorvatsko\2022_10_13-Chorvatsko\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string name, bool "autolevels", float "gamma", float "sat")
{
    autolevels = Default(autolevels, false)
    gamma = Default(gamma, 1.0)
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
*/
    v = autolevels || gamma != 1.0 ? v.autolevels(minRng = 0, gamma = gamma, border_l = 192, border_t = 108, border_r = 192, border_b = 108) : v
    v = sat == 1.0 ? v : v.tweak(sat = sat, coring = false)

#    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
#    v = v.convertToYV12()

    a = LSMASHAudioSource(destination_dir + name)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("20221004_194411.mp4", autolevels = true, gamma = 0.7, sat = 1.2).trim(0, 240)
#v2 = prepareOneAV("20221004_194634.mp4")
v3 = prepareOneAV("20221004_194754.mp4").trim(0, 500)
#v4 = prepareOneAV("20221004_194831.mp4")
#v5 = prepareOneAV("20221004_194947.mp4")
#v6 = prepareOneAV("20221004_204155.mp4")
#v7 = prepareOneAV("20221004_204231.mp4")
#v8 = prepareOneAV("20221004_204258.mp4")
v9 = prepareOneAV("20221004_204332.mp4").trim(170, 290)
v10 = prepareOneAV("20221004_204733.mp4", autolevels = true, gamma = 0.7, sat = 1.2).trim(0, 120)
#v11 = prepareOneAV("20221004_204748.mp4", autolevels = true).trim(0, 120)
v12 = prepareOneAV("20221005_093706.mp4")
v13 = prepareOneAV("20221005_093753.mp4")
v14 = prepareOneAV("20221005_095907.mp4")
v15 = prepareOneAV("20221005_101456.mp4")
v16 = prepareOneAV("20221005_102326.mp4")
v17 = prepareOneAV("20221005_102802.mp4").trim(50, 0)
v18 = prepareOneAV("20221005_104911.mp4")
v19 = prepareOneAV("20221005_104931.mp4")
v20 = prepareOneAV("20221005_104952.mp4")
v21 = prepareOneAV("20221005_105028.mp4")
v22 = prepareOneAV("20221005_155849.mp4")
v23 = prepareOneAV("20221006_112137.mp4")
v24 = prepareOneAV("20221006_164258.mp4", autolevels = true, sat = 1.3)
v25 = prepareOneAV("20221006_165446.mp4", autolevels = true, sat = 1.3)
v26 = prepareOneAV("20221006_184139.mp4")
v27 = prepareOneAV("20221006_184235.mp4")
v28 = prepareOneAV("20221006_184608.mp4")
v29 = prepareOneAV("20221006_184821.mp4")
v30 = prepareOneAV("20221007_084619.mp4", autolevels = true, sat = 1.2)
v31 = prepareOneAV("20221007_084720.mp4", autolevels = true)
v32 = prepareOneAV("20221007_084813.mp4", autolevels = true)
v33 = prepareOneAV("20221007_084852.mp4", autolevels = true)
v34 = prepareOneAV("20221007_183117.mp4")
v35 = prepareOneAV("20221007_183152.mp4")
v36 = prepareOneAV("20221008_120900.mp4")
v37 = prepareOneAV("20221008_155806.mp4", autolevels = true)
v38 = prepareOneAV("20221008_155830.mp4", autolevels = true)
v39 = prepareOneAV("20221008_163235.mp4", autolevels = true)
v40 = prepareOneAV("20221011_122014.mp4")
v41 = prepareOneAV("20221011_122039.mp4")
v42 = prepareOneAV("20221011_162556.mp4")
v43 = prepareOneAV("20221011_163457.mp4")
v44 = prepareOneAV("20221011_163516.mp4")
#v45 = prepareOneAV("20221011_163547.mp4")
v46 = prepareOneAV("20221011_163740.mp4")
v47 = prepareOneAV("20221011_163912.mp4")
#v48 = prepareOneAV("20221011_164007.mp4")
#v49 = prepareOneAV("20221013_133833.mp4")
v50 = prepareOneAV("20221013_135909.mp4")
v51 = prepareOneAV("20221013_135947.mp4")
v52 = prepareOneAV("20221013_140451.mp4")
v53 = prepareOneAV("20221013_151640.mp4")
v54 = prepareOneAV("20221013_162348.mp4", autolevels = true)
v55 = prepareOneAV("20221013_192819.mp4", autolevels = true)
v56 = prepareOneAV("20221013_192849.mp4", autolevels = true).trim(200, 0)

last = v1 /*+ v2*/ + v3 /*+ v4 + v5 + v6 + v7 + v8*/ + v9 + v10 /*+ v11*/ + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 /*+ v45*/ + v46 + v47 + /*v48 + v49*/ + v50 + v51 + v52 + v53 + v54 + v55 + v56
spline64Resize(1920, 1080)
ConvertToYV12()
