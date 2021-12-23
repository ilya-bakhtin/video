import("d:\Users\ilx\wrk\video\2021_12_15-Esslingen\common.avs")

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

v1 = prepareOneAV(source_dir + "20211215_122226.mp4.avi", source_dir + "20211215_122226.mp4")
v2 = prepareOneAV(source_dir + "20211215_122318.mp4.avi", source_dir + "20211215_122318.mp4")
v3 = prepareOneAV(source_dir + "20211215_122407.mp4.avi", source_dir + "20211215_122407.mp4")
v4 = prepareOneAV(source_dir + "20211215_124509.mp4.avi", source_dir + "20211215_124509.mp4")
v5 = prepareOneAV(source_dir + "20211215_124532.mp4.avi", source_dir + "20211215_124532.mp4")
v6 = prepareOneAV(source_dir + "20211215_124921.mp4.avi", source_dir + "20211215_124921.mp4")
v7 = prepareOneAV(source_dir + "20211215_130716.mp4.avi", source_dir + "20211215_130716.mp4")
v8 = prepareOneAV(source_dir + "20211215_130927.mp4.avi", source_dir + "20211215_130927.mp4")
v9 = prepareOneAV(source_dir + "20211215_131347.mp4.avi", source_dir + "20211215_131347.mp4")
v10 = prepareOneAV(source_dir + "20211215_131416.mp4.avi", source_dir + "20211215_131416.mp4")
v11 = prepareOneAV(source_dir + "20211215_134347.mp4.avi", source_dir + "20211215_134347.mp4")
v12 = prepareOneAV(source_dir + "20211215_134602.mp4.avi", source_dir + "20211215_134602.mp4")
v13 = prepareOneAV(source_dir + "20211215_134818.mp4.avi", source_dir + "20211215_134818.mp4")
v14 = prepareOneAV(source_dir + "20211215_150316.mp4.avi", source_dir + "20211215_150316.mp4")
v15 = prepareOneAV(source_dir + "20211215_150352.mp4.avi", source_dir + "20211215_150352.mp4")
v16 = prepareOneAV(source_dir + "20211215_153356.mp4.avi", source_dir + "20211215_153356.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16
ConvertToYV12()
Prefetch(6)
