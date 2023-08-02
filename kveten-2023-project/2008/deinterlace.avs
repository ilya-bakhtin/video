function deinterlace(clip v, int "sharp_strength", int "sharp_radius")
{
    sharp_strength = default(sharp_strength, 0)
    sharp_radius = default(sharp_radius, 3)

    a = v.killVideo
    v = v.killAudio
    v = v.qtgmc(preset = "placebo")
    v = v.spline64Resize(1440, 1080)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)
#v = mergeChannels(v, a.amplify(-1))

    v = v.convertToYV12
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = sharp_strength == 0 ? v : v.unsharpMask(strength=sharp_strength, radius=sharp_radius, threshold=1)

    return v
}

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.addBorders(0, 0, 0, 0).\
             SMDegrain(tr=9, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=true, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
             crop(0, 0, 0, -0)
}