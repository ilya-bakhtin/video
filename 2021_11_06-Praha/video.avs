import("d:\Users\ilx\wrk\video\2021_11_06-Praha\common.avs")

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

v1 = prepareOneAV(source_dir + "20211106_141114.mp4.avi", source_dir + "20211106_141114.mp4")
v1 = v1.tweak(sat=2, coring=false)

v2 = prepareOneAV(source_dir + "20211106_141147.mp4.avi", source_dir + "20211106_141147.mp4")
v2 = v2.tweak(sat=2, coring=false)

v3 = prepareOneAV(source_dir + "20211106_141228.mp4.avi", source_dir + "20211106_141228.mp4")
v3 = v3.colorYUV(off_u = -6, off_v = 2)
v3 = v3.tweak(sat=2, coring=false)
v3 = v3.animate(460, 500, "UnsharpMask", 250, 1, 1, 500, 1, 1)
#v3 = v3.UnsharpMask(strength=300, radius=1, threshold=1)
#v3 = v3.interleave(v3.UnsharpMask(strength=500, radius=1, threshold=1)).assumeFPS(60).histogram("levels")

v4 = prepareOneAV(source_dir + "20211106_141502.mp4.avi", source_dir + "20211106_141502.mp4")
v4 = v4.tweak(sat=2, coring=false)
v4 = v4.trim(0, 643)

v5 = prepareOneAV(source_dir + "20211106_141624.mp4.avi", source_dir + "20211106_141624.mp4")
#v5 = v5.autolevels(gamma=0.9)
v5 = v5.tweak(sat=2, coring=false)
#v5 = v5.UnsharpMask(strength=500, radius=1, threshold=1)
v5 = v5.animate(260, 360, "UnsharpMask", 250, 1, 1, 500, 1, 1)
#v5 = v5.histogram("levels")

v6 = prepareOneAV(source_dir + "20211106_143023.mp4.avi", source_dir + "20211106_143023.mp4")
v6 = v6.tweak(sat=2, coring=false)
v6 = v6.UnsharpMask(strength=300, radius=1, threshold=1)

v7 = prepareOneAV(source_dir + "20211106_143101.mp4.avi", source_dir + "20211106_143101.mp4")
v7 = v7.tweak(sat=2, coring=false)
v7 = v7.UnsharpMask(strength=300, radius=1, threshold=1)

v8 = prepareOneAV(source_dir + "20211106_144215.mp4.avi", source_dir + "20211106_144215.mp4")
v8 = v8.tweak(sat=2, coring=false)

v9 = prepareOneAV(source_dir + "20211106_144919.mp4.avi", source_dir + "20211106_144919.mp4")
v9 = v9.tweak(sat=1.5, coring=false)
#v9 = v9.UnsharpMask(strength=300, radius=1, threshold=1)
v9 = v9.animate(985, 988, "UnsharpMask", 900, 1, 1, 200, 1, 1)

v10 = prepareOneAV(source_dir + "20211106_145008.mp4.avi", source_dir + "20211106_145008.mp4")
v10 = v10.tweak(sat=2, coring=false)

v11 = prepareOneAV(source_dir + "20211106_145105.mp4.avi", source_dir + "20211106_145105.mp4")
v11 = v11.tweak(sat=2, coring=false)

v12 = prepareOneAV(source_dir + "20211106_145221.mp4.avi", source_dir + "20211106_145221.mp4")
v12 = v12.colorYUV(off_u = -9, off_v = 6)
v12 = v12.tweak(sat=1.5, coring=false)
v12 = v12.UnsharpMask(strength=150, radius=1, threshold=1)

v13 = prepareOneAV(source_dir + "20211106_145257.mp4.avi", source_dir + "20211106_145257.mp4")
v13 = v13.tweak(sat=2, coring=false)

v14 = prepareOneAV(source_dir + "20211106_150041.mp4.avi", source_dir + "20211106_150041.mp4")
v14 = v14.tweak(sat=2, coring=false)

v15 = prepareOneAV(source_dir + "20211106_151937.mp4.avi", source_dir + "20211106_151937.mp4")
v15 = v15.tweak(sat=2, coring=false)

v16 = prepareOneAV(source_dir + "20211106_152047.mp4.avi", source_dir + "20211106_152047.mp4")
v16 = v16.tweak(sat=2, coring=false)

v17 = prepareOneAV(source_dir + "20211106_152157.mp4.avi", source_dir + "20211106_152157.mp4")
v17 = v17.tweak(sat=2, coring=false)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17
#last = v12
prefetch
