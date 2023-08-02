global filter_and_sharp = false

function deinterlace(clip v)
{
    a = v.killVideo
    v = v.killAudio

    v = v.crop(12, 2, -6, -10)
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702

    v = filter_and_sharp ? v.filter(thSAD = 400, thSADC = 800) : v
    v = v.qtgmc(preset = "placebo")

#    v = v.spline64Resize(1470/2 - 1, 1080/2)
    v = v.spline64Resize(1470, 1080)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)
    
    v = v.convertToYV12()
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = filter_and_sharp ? v.unsharpMask(strength=200, radius=3, threshold=1) : v

    return v
}

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.addBorders(0, 0, 0, 0).\
             SMDegrain(tr=9, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=true, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
             crop(0, 0, 0, -0)
}
