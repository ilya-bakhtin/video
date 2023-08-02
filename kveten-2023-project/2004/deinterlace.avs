function deinterlace(clip v, int "sharp_strength", int "sharp_radius")
{
    sharp_strength = default(sharp_strength, 0)
    sharp_radius = default(sharp_radius, 3)

    a = v.killVideo
    v = v.killAudio
    v = v.qtgmc(preset = "placebo").crop(12, 4, -6, 0)
    v = v.autolevels
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
#W = H * (720 - 18) / (576 - 4) * 768 / 702
    v = v.spline64Resize(1450, 1080)

    new_w = (v.width + 15) / 16
    new_w = new_w * 16
    new_h = (v.height + 15) / 16
    new_h = new_h * 16
    dh = new_h - v.height
    dw = new_w - v.width
    v = v.addBorders(0, 0, dw, dh)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

    v = v.crop(0,0,-dw,-dh)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)
#v = mergeChannels(v, a.amplify(-1))

    v = v.convertToYV12
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = sharp_strength == 0 ? v : v.unsharpMask(strength=sharp_strength, radius=sharp_radius, threshold=1)

    return v
}

function restore_line(clip v)
{
    good_lines = 3

    ve = v.separateFields.selectEven
    ve1 = ve.crop(0, 0, 0, -good_lines - 1)
    ve2 = ve.crop(0, ve.height - good_lines - 2, 0, -good_lines - 1)
    ve3 = ve.crop(0, ve.height - good_lines, 0, 0)
    ve = ve1.stackVertical(ve2).stackVertical(ve3)

    vo = v.separateFields.selectOdd
    vo1 = vo.crop(0, 0, 0, -good_lines - 1)
    vo2_l = vo.crop(0, vo.height - 4, -300, -good_lines)
    vo2_r = vo.crop(vo.width - 300, vo.height -good_lines - 2, 0, -good_lines - 1)
    vo2 = vo2_l.stackHorizontal(vo2_r)
    vo3 = vo.crop(0, vo.height - good_lines, 0, 0)
    vo = vo1.stackVertical(vo2).stackVertical(vo3)
    
    return ve.interleave(vo).weave
}
