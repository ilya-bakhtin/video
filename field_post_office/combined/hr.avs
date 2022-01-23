LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v1 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_1.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a1 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_1.avi", stream_index=1)
v1 = v1.AudioDub(a1)
v1 = v1.crop(10, 0, -10, -10)

v2 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_2.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a2 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_2.avi", stream_index=1)
v2 = v2.AudioDub(a2)

function prepareAudio(clip v, clip a, int start, int end)
{
    a = a.trim(start, end).killVideo.getChannel(1)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    return a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
}

function applyAudio(clip v, clip a1, int start1, int end1, clip a2, int start2, int end2, int "channels")
{
    channels = Default(channels, 0)
    a1 = channels == 1 ? a2 : v.prepareAudio(a1, start1, end1)
    a2 = channels == 0 ? a1 : v.prepareAudio(a2, start2, end2)

    a = channels == 0 ? monoToStereo(a1, a1) :\
        channels == 1 ? monoToStereo(a2, a2) :\
        channels == 2 ? monoToStereo(a1, a2) : monoToStereo(a2, a1)
    return v.audioDub(a)
}

function loadSegment(string name)
{
    v = LWLibavVideoSource(name)
    v = v.ColorMatrix(mode="Rec.601->Rec.709", clamp=0)
    return v.grainFactory3
}

function prepareSegmentF(clip v)
{
    h = 1080
    w = round(1440 * 700./704. * 576./566)
    w = w / 2 * 2

    v = v.sincResize(w, h)
    v = v.convertToYV12
    v = v.ColorMatrix(mode="Rec.601->Rec.709", clamp=0)
    return v.grainFactory3
}

v055 = LWLibavVideoSource("K:\Media\Video\tmp\v55cf.avi")
v055 = v055.bob#.applyAudio(v1, 25027, 25233, v2, 25050, 25252, channels=1)
v055_0 = v055.trim(0, 42)
v055_0 = v055_0.interleave(v055_0).assumeFPS(50)
v055_1 = v055.trim(43, 0)
v055 = (v055_0+v055_1).applyAudio(v1, 25027, 25233, v2, 25050, 25252, channels=1)

v056 = LWLibavVideoSource("K:\Media\Video\tmp\v56cf.avi")
v056 = v056.applyAudio(v1, 25246, 27205, v2, 25266, 27226, channels=1)

return v055.prefetch