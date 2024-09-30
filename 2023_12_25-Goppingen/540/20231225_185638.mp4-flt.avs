global filter16 = true

function Filter(clip c, int "th_SAD", int "th_SADC", float "sigma_y", float "sigma_c", int "dct", int "tr", bool "RefineMotion", bool "contrasharp",\
                int "blksize", int "overlap", int "hpad", int "vpad", bool "truemotion", int "prefilter", float "fft_sharp")
{
    sigma_y = default(sigma_y, 2)
    sigma_c = default(sigma_c, 4)
    th_SAD = default(th_SAD, 900)
    th_SADC = default(th_SADC, 900)
    dct = default(dct, 0)
    tr = default(tr, 9)
    RefineMotion = default(RefineMotion, true)
    contrasharp = default(contrasharp, true)
    truemotion = default(truemotion, true)
    fft_sharp = default(fft_sharp, 0)

    new_w = (c.width + 15) / 16
    new_w = new_w * 16
    new_h = (c.height + 15) / 16
    new_h = new_h * 16
    dh = new_h - c.height
    dw = new_w - c.width
    c = c.addBorders(0, 0, dw, dh)

    c = filter16 ? c.convertBits(16) : c
#c = c.Spline64Resize(960, 720)
#c = c.SMDegrain(tr=tr, globals=3, thSAD=th_SAD, thSADC=th_SADC, dct=dct, blksize=blksize, overlap=overlap)
    c = th_SAD == 0 && th_SADC == 0 ? c : c.SMDegrain(tr=tr, thSAD=th_SAD, thSADC=th_SADC, dct=dct, blksize=blksize, overlap=overlap, search=3, truemotion=truemotion,\
                                                      RefineMotion=RefineMotion, prefilter=prefilter, contrasharp=contrasharp, globals=0, pel=1, subpixel=1,\
                                                      hpad=hpad, vpad=vpad)
    c = (sigma_y == 0 && fft_sharp == 0) ?\
                       c : c.fft3dfilter(bw=64, bh=64, ow=32, oh=32, sigma=sigma_y/8, sigma2=sigma_y/4, sigma3=sigma_y, sigma4=sigma_y, plane=0, wintype=0, bt = 5, ncpu=6, sharpen=fft_sharp)
    c = sigma_c == 0 ? c : c.fft3dfilter(bw=64, bh=64, ow=32, oh=32, sigma=sigma_c/8, sigma2=sigma_c/4, sigma3=sigma_c, sigma4=sigma_c, plane=3, wintype=0, bt = 5, ncpu=6)

#c = c.SincResize(1440, 1080)
    c = filter16 ? c.convertBits(8) : c

    return c.crop(0,0,-dw,-dh)
}

function sharp(clip c, int strength)
{
    return c.unsharpMask(strength=strength, radius=5, threshold=1)
}

import("c:\Users\ilx\wrk\video\2023_12_25-Goppingen\540\common.avs", utf8 = true)
v = LSMASHVideoSource(destination_dir + "result\" + "20231225_185638.mp4-v0" + ".mp4")
/*
v = v.filter(th_SAD=500, th_SADC=500, dct=1, tr=9, RefineMotion=false, contrasharp=false, blksize=32, overlap=16,\
             truemotion=false, sigma_y=0, sigma_c=0, prefilter=2)
*/
v_org = v
v = LSMASHVideoSource(destination_dir + "result\" + "20231225_185638.mp4-flt" + ".mp4")
v = v.autolevels(/*filterRadius=0, */input_low = 16, output_low = 16)
#v = v.unsharpMask(strength=500, radius=5, threshold=1)
v = v.animate(30, 50, "sharp", 700, 500).trim(0, 79) +\
    v.animate(80, 94, "sharp", 500, 700).trim(80, 94) +\
    v.animate(95, 110, "sharp", 700, 500).trim(95, 269) +\
    v.animate(270, 294, "sharp", 500, 2000).trim(270, 294) +\
    v.animate(295, 320, "sharp", 2000, 500).trim(295, 1559) +\
    v.animate(1560, 1579, "sharp", 500, 1800).trim(1560, 1579) +\
    v.animate(1580, 1600, "sharp", 1800, 500).trim(1580, 1629) +\
    v.animate(1630, 1654, "sharp", 500, 1100).trim(1630, 1654) +\
    v.animate(1655, 1660, "sharp", 1100, 500).trim(1655, 2309) +\
    v.animate(2310, 2334, "sharp", 500, 1900).trim(2310, 2334) +\
    v.animate(2335, 2360, "sharp", 1900, 500).trim(2335, 0)

#v = v.spline64Resize(960, 540)
#histogram("levels")
#v = v_org.interleave(v).histogram("levels")

a = LSMASHAudioSource(destination_dir + "20231225_185638.mp4")
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v

prefetch
