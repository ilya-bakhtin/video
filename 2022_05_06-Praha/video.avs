import("m:\Media\video\2022_05_06_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio)
{
    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

    v = /*findStr(video, "VID") != 0 ? v :*/ v.colorYUV(off_v=3).tweak(sat=1.1, coring=false)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV(source_dir + "VID_20220505_152239.mp4.avi", source_dir + "VID_20220505_152239.mp4")
v2 = prepareOneAV(source_dir + "VID_20220505_165500.mp4.avi", source_dir + "VID_20220505_165500.mp4")
v3 = prepareOneAV(source_dir + "VID_20220505_170225.mp4.avi", source_dir + "VID_20220505_170225.mp4")#.autolevels(gamma = 1.3)
v4 = prepareOneAV(source_dir + "VID_20220505_170247.mp4.avi", source_dir + "VID_20220505_170247.mp4")
v5 = prepareOneAV(source_dir + "VID_20220506_172243.mp4.avi", source_dir + "VID_20220506_172243.mp4")
last = v1 + v2 + v3 + v4 + v5
ConvertToYV12()
prefetch