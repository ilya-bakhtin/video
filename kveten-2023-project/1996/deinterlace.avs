function deinterlace(clip v)
{
    a = v.killVideo
    v = v.killAudio
    
    v = v.crop(14, 2, -6, -18)
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
    v = v.filter(thSAD = 400, thSADC = 800)
#return v
    v = v.qtgmc(preset = "placebo")
    v = v.spline64Resize(1488, 1080)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)
#v = mergeChannels(v, a.amplify(-1))

    v = v.convertToYV12
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = v.unsharpMask(strength=400, radius=3, threshold=1)

#    v = v.spline64Resize(v.width / 2, v.height / 2)

    return v
}

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.addBorders(0, 0, 0, 0).\
             SMDegrain(tr=9, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=true, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
             crop(0, 0, 0, -0)
}
