function gamma(clip c, int gamma)
{
    return c.autolevels(gamma=gamma/1000000.)
}

function sat(clip c, int sat)
{
    return c.tweak(sat=sat/1000000., coring=false)
}

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

v1 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122024.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122024.mp4")
v1 = v1.autolevels(gamma=0.9).tweak(sat=2, coring=false)
v1 = v1.animate(500, 547, "sat", 1000000, 1500000)
v1 = v1.colorYUV(off_u=-10, off_v=4)

v2 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122423.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122423.mp4")
v2 = v2.autolevels()

v3 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122524.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122524.mp4")
v3 = v3.autolevels()

v4 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122850.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_122850.mp4")
v5 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125209.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125209.mp4")
v6 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125239.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125239.mp4")
v6 = v6.trim(0, 300)

v7 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125349.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125349.mp4")
v8 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125410.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_125410.mp4")
v9 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130611.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130611.mp4")
v10 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130835.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130835.mp4")
v11 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130959.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_130959.mp4")
v12 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131035.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131035.mp4")
v13 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131112.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131112.mp4")
v14 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131233.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131233.mp4")
v15 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131253.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_131253.mp4")
v16 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_132758.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_132758.mp4")
v17 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_133058.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_133058.mp4")
v18 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_133150.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_133150.mp4")
v19 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_134930.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_134930.mp4")
v20 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_135107.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_135107.mp4")
v20 = v20.animate(0, 150, "gamma", 700000, 1000000)
v20 = v20.animate(0, 150, "sat", 1500000, 1000000)

v21 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_142531.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_142531.mp4")
v21 = v21.trim(230, 0)

v22 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_150239.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_150239.mp4")
v22 = v22.autolevels#.histogram("levels").pointResize(1920, 1080)

v23 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_151149.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_151149.mp4")
v24 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_151203.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_151203.mp4")
v25 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_153703.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_153703.mp4")
v25 = v25.colorYUV(off_u=4, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v26 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_153742.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_153742.mp4")
v26 = v26.colorYUV(off_u=4, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v27 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154139.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154139.mp4")
v27 = v27.autolevels.colorYUV(off_u=4, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v28 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154209.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154209.mp4")
v28 = v28.colorYUV(off_u=0, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v29 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154415.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\20211031_154415.mp4")
v29 = v29.autolevels.colorYUV(off_u=2, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v30 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154708.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154708.mp4")
v30 = v30.autolevels.colorYUV(off_u=2, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v31 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154742.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154742.mp4")
v31 = v31.autolevels.colorYUV(off_u=2, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v32 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154921.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_154921.mp4")
v32 = v32.autolevels.colorYUV(off_u=16, off_v=-10).tweak(sat=1.3, coring=false)#.histogram("levels").pointResize(1920, 1080)

v33 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155013.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155013.mp4")
v33 = v33.autolevels.colorYUV(off_u=2, off_v=-8).tweak(sat=1.3, coring=false)#.histogram("levels").pointResize(1920, 1080)

v34 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155035.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155035.mp4")
v34 = v34.autolevels.colorYUV(off_u=8, off_v=-8).tweak(sat=1.1, coring=false)#.histogram("levels").pointResize(1920, 1080)

v35 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155151.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155151.mp4")
v35 = v35.autolevels.colorYUV(off_u=4, off_v=-8).tweak(sat=1.1, coring=false)#.histogram("levels").pointResize(1920, 1080)

v36 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155231.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155231.mp4")
v37 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155239.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155239.mp4")

v38 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155305.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155305.mp4")
v38 = v38.autolevels.colorYUV(off_u=8, off_v=-8).tweak(sat=1.1, coring=false)#.histogram("levels").pointResize(1920, 1080)

v39 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155403.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155403.mp4")
v39 = v39.autolevels.colorYUV(off_u=8, off_v=-8).tweak(sat=1.3, coring=false)#.histogram("levels").pointResize(1920, 1080)

v40 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155508.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155508.mp4")
v40 = v40.autolevels.colorYUV(off_u=8, off_v=-8).tweak(sat=1.5, coring=false)#.histogram("levels").pointResize(1920, 1080)

v41 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155542.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_155542.mp4")
v41 = v41.autolevels.colorYUV(off_u=8, off_v=-8).tweak(sat=1.3, coring=false)#.histogram("levels").pointResize(1920, 1080)

v42 = prepareOneAV("d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_160750.mp4.avi", "d:\Users\ilx\wrk\video\2021_10_31-Praha\VID_20211031_160750.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42

#histogram("levels")
prefetch(6)
