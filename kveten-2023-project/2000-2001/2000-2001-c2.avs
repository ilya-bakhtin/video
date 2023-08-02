import("cmp.avs", utf8 = true)
import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

global filter_and_sharp = false

v2000_2001_2 = v1.trim(107459, 107938)
v2000_2001_2 = v2000_2001_2.crop(0, 0, -5, 0).addBorders(5, 0, 0, 0)
return v2000_2001_2.deinterlace2.prefetch

function deinterlace2(clip v)
{
    a = v.killVideo
    v = v.killAudio

    v = v.crop(12, 2, -6, -10)
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702

    v = filter_and_sharp ? v.filter(thSAD=400, thSADC=800) : v
    v = v.qtgmc(preset = "placebo")

m1_l = 90
m1_r = 510
m1_t = 448
m1_b = 86

m2_l = 64
m2_r = 380
m2_t = 80
m2_b = 50
#mask = v.trim(700, -1)
#mask = mask.crop(m1_l, m1_t, -m1_r, -m1_b).addBorders(m1_l, 0, m1_r, 0).addBorders(0, 0, 0, m1_b - m2_t).\
#    stackVertical(mask.crop(m2_l, mask.height - m2_t, -m2_r, -m2_b).addBorders(m2_l, 0, m2_r, 0)).addBorders(0, m1_t, 0, m2_b)
#return v.interleave(mask)

    mask = imageSource("c:\Users\ilx\wrk\video\kveten-2023-project\2000-2001\mask-c2.png").convertToYV12
    delogo = v.InpaintLogo(mask, radius=50, sharpness=100)
    v = v.trim(0, 699) + delogo.trim(700, 0)

    v = v.spline64Resize(1470, 1080)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)

    v = v.convertToYV12
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = filter_and_sharp ? v.unsharpMask(strength=200, radius=3, threshold=1) : v

#    v = v.spline64Resize(v.width / 2, v.height / 2)
    return v
}
