import("deinterlace.avs", utf8 = true)

v = LSMASHVideoSource("\\seiki5\m\Media\Video\1995-dance.avi-v2-muxed.mp4")
a = LSMASHAudioSource("\\seiki5\m\Media\Video\1995-dance.avi-v2-muxed.mp4")
#v =  v.unsharpMask(strength=400, radius=3, threshold=1)
#return v
vd = LWLibavVideoSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-3.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
ad = LWLibavAudioSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-3.avi")
vd = vd.AudioDub(ad.GetChannel(1))
vd = vd.trim(1325, 1325 + 5471)
vd = vd.crop(14, 2, -6, -18)

vd_pinnacle = LWLibavVideoSource("f:\Media\video\vhs-1989-1996\1996\1996.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
vd_pinnacle = vd_pinnacle.audioDub(vd)
vd_pinnacle = vd_pinnacle.trim(51528, 56999)
vd_pinnacle = vd_pinnacle.crop(12, 0, -8, -20)
vd = vd.separateFields
vd = vd.trim(0, 10125) + vd_pinnacle.separateFields.trim(10126, -1).colorYUV(gain_y = -20) + vd.trim(10127, 0)
vd = vd.weave

vd0 = vd

#vd = vd.autolevels
vd = vd.filter(thSAD=200, thSADC=400)

vd = vd.qtgmc(preset="placebo")
vd = vd.fft3dfilter(sigma=2, plane=4, interlaced = false)

vd = vd.ConvertToRGB()
vd = vd.GamMac(LockChan=0, Scale=2, loTh=0.02, hiTh=0.02, RedMul=1, GrnMul=1, BluMul=1, verbosity=5, show=false)
vd = vd.ConvertToYV24()
vd = vd.tweak(sat = 1.8, coring = false)
vd = vd.autolevels(filterRadius = 0, gamma = 1.3)
#vd = vd.BicubicSharp(r = 2, edges = 0.5, str = 0.1, mode = 1)

vd = vd.convertToYV12
vd = vd.unsharpMask(strength=200, radius=3, threshold=1)

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
# 1080 * (720 - 20) / (576 - 20) * 768 / 702
#vd = vd.spline64Resize(960, 720)
vd = vd.spline64Resize(1488, 1080)

vd = vd.Matrix(from=601, to=709)
#vd_t = vd.BicubicSharp(r = 2, edges = 0.5, str = 1, mode = 1)
#vd = vd.BicubicSharp(r = 3, edges = 0.5, str = 10, mode = 1)
#return vd_t.interleave(vd)

vd = vd.convertToYV12
#vd = vd.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
vd = vd.unsharpMask(strength=120, radius=5, threshold=1)

/*
vd0 = vd0.qtgmc
#vd0 = vd0.spline64Resize(960, 720)
vd0 = vd0.spline64Resize(1440, 1080)
vd0 = vd0.convertToYV12
#vd0 = vd0.unsharpMask(strength=400, radius=3, threshold=1)
*/

#return v.spline64Resize(vd.width, vd.height).interleave(vd).prefetch

a = vd.killVideo
v = vd.killAudio

v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
#v = v.spline64Resize(v.width/2, v.height/2)

new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v = AudioDub(v, a)

return v.prefetch(6)

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.addBorders(0, 0, 0, 0).\
             SMDegrain(tr=9, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=true, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
             crop(0, 0, 0, -0)
}
