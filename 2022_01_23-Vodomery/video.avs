import("d:\Users\ilx\wrk\video\2022-01-23_Vodomery\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio, bool "rotate")
{
    rotate = Default(rotate, false)

    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24()

#    v = rotate ? v.turnRight.sincResize(810, 1080).addBorders(315, 0, 315, 0) : v.sincResize(1440, 1080)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

#    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)

    a = LSMASHAudioSource(audio)#, stream_index=1)
#    a = monoToStereo(a, a)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV(source_dir + "20220123_115814.mp4.avi", source_dir + "20220123_115814.mp4")
last = v1.trim(180, 299)
#histogram("levels")
prefetch()
