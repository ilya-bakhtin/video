import("d:\Users\ilx\wrk\video\2022_09_04-Praha\common.avs")

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

v1 = prepareOneAV("20220904_162357.mp4")
v2 = prepareOneAV("20220904_162923.mp4")
v3 = prepareOneAV("20220904_162947.mp4")
v4 = prepareOneAV("20220904_163608.mp4")
v5 = prepareOneAV("20220904_164053.mp4")
v6 = prepareOneAV("20220904_164737.mp4")
v7 = prepareOneAV("20220904_164915.mp4")
v8 = prepareOneAV("20220904_164948.mp4")
v9 = prepareOneAV("20220904_165033.mp4")
v10 = prepareOneAV("20220904_165218.mp4")
v11 = prepareOneAV("20220904_165839.mp4")
v12 = prepareOneAV("20220904_165914.mp4")
v13 = prepareOneAV("20220904_170042.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13
ConvertToYV12()
