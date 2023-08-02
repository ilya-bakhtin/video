function deinterlace(clip v)
{
    a = v.killVideo
    v = v.killAudio
    v = v.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

    v = v.spline64Resize(1470/2 - 1, 1080/2)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)

    return v
}
