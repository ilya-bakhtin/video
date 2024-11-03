import("c:\Users\ilx\wrk\video\2024-Kveten-Cerven-Chorvatsko\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("c:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string log, string video)
{
    v = LSMASHVideoSource(video)
    fps60 = v.frameRate > 40

    a = BestAudioSource(video, exactsamples=true)
# return v.audioDub(a.amplify(100)).waveform(window=0, aa=true).info # 1170 missing
# premiere last sound at 14:44162, the end at 14:45959 - 1797 missing
# big values starting from 1600
#    a = a.blankClip(length = 10).audioTrim(0., -390./a.audioRate) + a # to make audio shift compatible with premiere

    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)

    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                               ^                                                                                   ^
#                 block                                          borders                                                                             rolling                                                  

    v = v.Deshaker(config).trim(30, 0)
    
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()
#return v.AudioDub(a).info
    v_duration = float(v.FrameCount)*float(v.FrameRateDenominator)/float(v.FrameRateNumerator)
    if (float(a.audioLength)/a.audioRate < v_duration)
    {
        a_ex = a + blankClip(a, length = int(v.FrameCount * 24 / v.FrameRate) + 1)
        if (float(a_ex.audioLength)/a_ex.audioRate > v_duration)
        {
            a = a_ex.audioTrim(0, length = v_duration)
        }
    }
    else
    {
        new_rate = Float(a.AudioLength)/v_duration
        a = a.AssumeSampleRate(Round(new_rate*100)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }
#a = a.blankClip(length = 10).audioTrim(0., -1024./a.audioRate) + a
    v = AudioDub(v, a)#.trim(0, v.FrameCount - 1)

    return v#.amplify(100).waveform.info
}

last = prepareOneAV(source_dir + "20240615_101642.mp4" + ".log", destination_dir + "20240615_101642.mp4")
prefetch(6)
