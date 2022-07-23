import("m:\Media\video\2022_04_30_Praha\common.avs")

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

v1 = prepareOneAV(source_dir + "20220430_143947.mp4.avi", source_dir + "20220430_143947.mp4")
v2 = prepareOneAV(source_dir + "20220430_144106.mp4.avi", source_dir + "20220430_144106.mp4")
v3 = prepareOneAV(source_dir + "20220430_152106.mp4.avi", source_dir + "20220430_152106.mp4")
v4 = prepareOneAV(source_dir + "20220430_152556.mp4.avi", source_dir + "20220430_152556.mp4").autolevels
#v4 = v4.interleave(v4.autolevels).assumeFPS(30)
v5 = prepareOneAV(source_dir + "20220430_152622.mp4.avi", source_dir + "20220430_152622.mp4")
v6 = prepareOneAV(source_dir + "20220430_152715.mp4.avi", source_dir + "20220430_152715.mp4").autolevels
#v6 = v6.interleave(v6.autolevels).assumeFPS(30)
v7 = prepareOneAV(source_dir + "20220430_152757.mp4.avi", source_dir + "20220430_152757.mp4").autolevels
#v7 = v7.interleave(v7.autolevels).assumeFPS(30)
v8 = prepareOneAV(source_dir + "20220430_152852.mp4.avi", source_dir + "20220430_152852.mp4").autolevels
#v8 = v8.interleave(v8.autolevels).assumeFPS(30)
v9 = prepareOneAV(source_dir + "20220430_160142.mp4.avi", source_dir + "20220430_160142.mp4")
v10 = prepareOneAV(source_dir + "20220430_160240.mp4.avi", source_dir + "20220430_160240.mp4")
v11 = prepareOneAV(source_dir + "20220430_160315.mp4.avi", source_dir + "20220430_160315.mp4")
v12 = prepareOneAV(source_dir + "20220430_160407.mp4.avi", source_dir + "20220430_160407.mp4")
v13 = prepareOneAV(source_dir + "20220430_160459.mp4.avi", source_dir + "20220430_160459.mp4")
v14 = prepareOneAV(source_dir + "20220430_160526.mp4.avi", source_dir + "20220430_160526.mp4")
v15 = prepareOneAV(source_dir + "20220430_160651.mp4.avi", source_dir + "20220430_160651.mp4")
v16 = prepareOneAV(source_dir + "20220430_160749.mp4.avi", source_dir + "20220430_160749.mp4")
v17 = prepareOneAV(source_dir + "20220430_160831.mp4.avi", source_dir + "20220430_160831.mp4").trim(60, 0)
v18 = prepareOneAV(source_dir + "20220430_161601.mp4.avi", source_dir + "20220430_161601.mp4")
v19 = prepareOneAV(source_dir + "20220430_164101.mp4.avi", source_dir + "20220430_164101.mp4").tweak(sat=1.3, coring=false)
v20 = prepareOneAV(source_dir + "20220430_184359.mp4.avi", source_dir + "20220430_184359.mp4")
v21 = prepareOneAV(source_dir + "20220430_190324.mp4.avi", source_dir + "20220430_190324.mp4")
v22 = prepareOneAV(source_dir + "20220430_190427.mp4.avi", source_dir + "20220430_190427.mp4")
#last = v1 + v2 + /*v3 +*/ v4 + v5 + v6 + v7 + v8 + /*v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 +*/ v19 + /*v20 +*/ v21 + v22
last = /*v1 + v2 +*/ v3 + /*v4 + v5 + v6 + v7 + v8 +*/ v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + /*v19 +*/ v20 /*+ v21 + v22*/
ConvertToYV12()
#Histogram("levels")
Prefetch