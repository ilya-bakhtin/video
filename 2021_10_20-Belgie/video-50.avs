function gamma(clip c, int gamma)
{
    return c.colorYUV(gamma_y=(gamma/1000000. - 1) * 256)
#    return c.autolevels(input_low=16, input_high=235, autogamma=false, gamma=gamma/1000000.)
}

function sat(clip c, int sat)
{
    return c.tweak(sat=sat/1000000., coring=false)
}

function colorYV(clip c, int off_u, int off_v)
{
    return c.colorYUV(off_u=off_u/1000000., off_v=off_v/1000000.)
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio)
{
    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24(interlaced=false, matrix="PC.709")
#v = v.Spline64Resize(640, 360)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=50, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

#timeshift -207

v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-50.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", stream_index=1)
source = v.AudioDub(a)

function prepareDV(clip v, bool "sinc", bool "autolevels", float "ignore_low", float "ignore_high",\
                   float "gamma", int "radius", int "sharp")
{
    sinc = Default(sinc, true)
    autolevels = Default(autolevels, false)
    ignore_low = Default(ignore_low, 0.0003)
    ignore_high = Default(ignore_high, 0.0003)
    gamma = Default(gamma, 1)
    sharp = Default(sharp, 900)

    a = v

    v = v.killAudio()

    v = autolevels ? v.autolevels(minRng = 0, ignore_low = ignore_low, ignore_high = ignore_high, gamma=gamma, filterRadius=radius) : v
#v=v.histogram("levels")
    v = sinc ? v.sincResize(1920, 1080) :\
               v.spline64Resize(1920, 1080)

#v = v.spline64Resize(640, 360)
#    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)

    v = v.UnsharpMask(strength=sharp, radius=1, threshold=1)
#    v = v.UnsharpMask(strength=300, radius=1, threshold=1)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_154308.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_154308.mp4")
v2 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_154518.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_154518.mp4")
v3 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_165633.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_165633.mp4")
v4 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_165818.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_165818.mp4")
v5 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_170037.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_170037.mp4")
v6 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_170125.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_170125.mp4")
v7 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_170203.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_170203.mp4")
v8 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_172055.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_172055.mp4")
v9 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_174715.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_174715.mp4")
v10 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211020_183724.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211020_183724.mp4")
v11 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_100221.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_100221.mp4")
v12 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_100253.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_100253.mp4")
v13 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_100325.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_100325.mp4")
v14 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_110346.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_110346.mp4")
v15 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_144718.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_144718.mp4")
v16 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_160809.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_160809.mp4")
v17 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_160927.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_160927.mp4")
v18 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_161123.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_161123.mp4")
v19 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_161423.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_161423.mp4")
v20 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_161510.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_161510.mp4")

v21 = source.trim(0*2,  334*2 + 1).prepareDV(autolevels = true, ignore_low = 0.005, ignore_high = 0.009)
v21 = v21.tweak(sat=1.3, coring=false).colorYUV(off_u = 4, off_v = -2)
v21 = v21.grainFactory3

v22 = source.trim(335*2,  588*2 + 1).prepareDV(autolevels = true, ignore_low = 0.005, ignore_high = 0.009)
v22 = v22.tweak(sat=1.3, coring=false).colorYUV(off_u = 4, off_v = -2)
v22 = v22.grainFactory3

v23 = source.trim(589*2,  877*2 + 1).prepareDV(autolevels = true, ignore_low = 0.005, ignore_high = 0.009, gamma=1.3)
v23 = v23.tweak(sat=1.3, coring=false).colorYUV(off_u = 4, off_v = -2)
v23 = v23.grainFactory3

v24 = source.trim(878*2,  1023*2 + 1).prepareDV(autolevels = true, ignore_low = 0.0005, ignore_high = 0.009)
#v24_ = source.trim(878*2,  1023*2 + 1).prepareDV(sinc = true, autolevels = true, ignore_low = 0.0005, ignore_high = 0.009)
#v24 = v24.interleave(v24_).assumeFPS(50)
v24 = v24.tweak(sat=1.3, coring=false).colorYUV(off_u = 4, off_v = -2)
v24 = v24.grainFactory3

v25 = source.trim(1024*2,  1296*2 + 1).prepareDV(autolevels=true, ignore_low=0.0001, ignore_high=0)
v25 = v25.tweak(sat=1.3, coring=false).colorYUV(off_u = 0, off_v = 2)
v25 = v25.grainFactory3

v26 = source.trim(1297*2,  1458*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v26 = v26.tweak(sat=1.3, coring=false).colorYUV(off_u = 0, off_v = 2)
v26 = v26.grainFactory3

v27 = source.trim(1459*2,  1703*2 + 1).prepareDV(autolevels=true, ignore_low=0.0001, ignore_high=0.0003)
v27 = v27.tweak(sat=1.3, coring=false).colorYUV(off_u = 0, off_v = 2)
v27 = v27.grainFactory3

v28 = source.trim(1704*2,  1796*2 + 1).prepareDV(autolevels=true)
v28 = v28.grainFactory3

v29 = source.trim(1797*2,  2215*2 + 1).prepareDV(autolevels=true, ignore_low=0.0003, ignore_high=0)
v29 = v29.tweak(sat=1.3, coring=false).colorYUV(off_u = 0, off_v = 2)
v29 = v29.grainFactory3

v30 = source.trim(2216*2,  2353*2 + 1).prepareDV(autolevels=true, ignore_low=0, ignore_high=0.0009)
v30 = v30.tweak(sat=1.3, coring=false).colorYUV(off_u = 0, off_v = 4)
v30 = v30.grainFactory3

v31 = source.trim(2354*2,  2667*2 + 1).prepareDV(autolevels=true, ignore_high=0.009, gamma=1.1)
v31 = v31.tweak(sat=1.3, coring=false).colorYUV(off_u = 4, off_v = 0)
v31 = v31.grainFactory3

v32 = source.trim(2668*2,  2974*2 + 1).prepareDV(autolevels=true)
v32 = v32.animate(457, 613, "sat", 1600000, 2100000)
v32 = v32.animate(0, 144, "colorYV", 4000000, 4000000, 10000000, 0)
v32 = v32.grainFactory3

v33 = source.trim(2975*2,  3518*2 + 1).prepareDV(autolevels=true, ignore_low=0.0003, ignore_high=0, gamma=1.1)
v33 = v33.tweak(sat=1.3, coring=false)#.colorYUV(off_u = 4, off_v = 0)
v33 = v33.addGrainC(var = 30, uvar=0, seed=-1, sse2=false)

v34 = source.trim(3519*2,  3735*2 + 1).prepareDV(autolevels=true, ignore_low=0.0001, ignore_high=0, gamma=1.1)
v34 = v34.tweak(sat=1.3, coring=false)#.colorYUV(off_u = 4, off_v = 0)
v34 = v34.grainFactory3

v35 = source.trim(3736*2,  3930*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v35 = v35.animate(280, 389, "gamma", 1000000, 1200000)
v35 = v35.animate(220, 389, "sat", 1300000, 1900000)
v35 = v35.colorYUV(off_u = 9, off_v = 0)
v35 = v35.grainFactory3

v36 = source.trim(3931*2,  4093*2 + 1).prepareDV(autolevels=true, ignore_high=0, radius=0)
v36 = v36.tweak(sat=1.3, coring=false).colorYUV(off_u = 9, off_v = 0)
v36 = v36.grainFactory3

v37 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_172714.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_172714.mp4")

v38 = source.trim(4094*2,  4474*2 + 1).prepareDV(autolevels=true)
v38 = v38.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v38 = v38.grainFactory3

v39 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_172811.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_172811.mp4")

v40 = source.trim(4475*2,  4706*2 + 1).prepareDV(autolevels=true)
v40 = v40.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v40 = v40.grainFactory3

v41 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_173050.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_173050.mp4")

v42 = source.trim(4707*2,  4855*2 + 1).prepareDV(autolevels=true)
v42 = v42.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v42 = v42.grainFactory3

v43 = source.trim(4856*2,  5401*2 + 1).prepareDV
v43 = v43.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v43 = v43.grainFactory3

v44 = source.trim(5402*2,  6180*2 + 1).prepareDV
v44 = v44.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v44 = v44.grainFactory3

v45 = source.trim(6181*2,  6460*2 + 1).prepareDV
v45 = v45.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v45 = v45.grainFactory3

v46 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_173429.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_173429.mp4")

v47 = source.trim(6461*2,  7099*2 + 1).prepareDV(autolevels=true)
v47 = v47.tweak(sat=1.3, coring=false).colorYUV(off_u = 6, off_v = 0)
v47 = v47.grainFactory3

v48 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_173722.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_173722.mp4")
v49 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_174706.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_174706.mp4")
v50 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_174738.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_174738.mp4")
v51 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211021_174815.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211021_174815.mp4")

v52 = source.trim(7100*2,  7538*2 + 1).prepareDV(autolevels=true)
v52 = v52.tweak(sat=1.3, coring=false).colorYUV(off_u = 9, off_v = 0)
v52 = v52.grainFactory3

v53 = source.trim(7539*2,  7977*2 + 1).prepareDV(autolevels=true)
v53 = v53.tweak(sat=1.3, coring=false).colorYUV(off_u = 9, off_v = 0)
v53 = v53.grainFactory3

v54 = source.trim(7978*2,  8255*2 + 1).prepareDV(autolevels=true, ignore_high = 0)
v54 = v54.tweak(sat=1.3, coring=false).colorYUV(off_u = 5, off_v = 0)
v54 = v54.grainFactory3

v55 = source.trim(8256*2,  9104*2 + 1).prepareDV(autolevels=true, ignore_high = 0)
v55 = v55.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v55 = v55.grainFactory3

#v56 = source.trim(9105*2,  9114*2 + 1).prepareDV # to remove
#v57 = source.trim(9115*2,  9192*2 + 1).prepareDV # to remove

v58 = source.trim(9193*2,  10060*2 + 1).prepareDV(autolevels=true, ignore_high = 0)
v58 = v58.tweak(sat=1.3, coring=false).colorYUV(off_u = 5, off_v = 0)
v58 = v58.grainFactory3

#v59 = source.trim(10061*2,  10179*2 + 1).prepareDV # to remove

v60 = source.trim(10180*2,  10344*2 + 1).prepareDV
v60 = v60.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v60 = v60.grainFactory3

v61 = source.trim(10345*2,  10610*2 + 1).prepareDV(autolevels=true, ignore_high = 0)
v61 = v61.tweak(sat=1.3, coring=false).colorYUV(off_u = 15, off_v = -3)
v61 = v61.grainFactory3

v62 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_115528.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_115528.mp4")
v63 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_115546.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_115546.mp4")
v64 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_152102.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_152102.mp4")
v65 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_153447.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_153447.mp4")
v66 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_153718.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_153718.mp4")
v67 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_153806.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_153806.mp4")
v68 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_154256.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_154256.mp4")

v69 = source.trim(10611*2,  11064*2 + 1).prepareDV(autolevels=true)
v69 = v69.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v69 = v69.grainFactory3

v70 = source.trim(11065*2,  11349*2 + 1).prepareDV(autolevels=true)
v70 = v70.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v70 = v70.grainFactory3

v71 = source.trim(11350*2,  11719*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v71 = v71.tweak(sat=1.5, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v71 = v71.grainFactory3

v72 = source.trim(11720*2,  12202*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v72 = v72.tweak(sat=1.5, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v72 = v72.grainFactory3

v73 = source.trim(12203*2,  12776*2 + 1).prepareDV(autolevels=true, gamma=1.2)
v73 = v73.tweak(sat=1.5, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v73 = v73.grainFactory3

v74 = source.trim(12777*2,  12988*2 + 1).prepareDV(autolevels=true)
v74 = v74.tweak(sat=1.3, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v74 = v74.grainFactory3

v75 = source.trim(12989*2,  13207*2 + 1).prepareDV(autolevels=true)
v75 = v75.tweak(sat=1.3, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v75 = v75.grainFactory3

v76 = source.trim(13208*2,  13408*2 + 1).prepareDV
v76 = v76.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v76 = v76.grainFactory3

v77 = source.trim(13409*2,  13800*2 + 1).prepareDV(autolevels=true)
v77 = v77.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v77 = v77.grainFactory3

v78 = source.trim(13801*2,  14146*2 + 1).prepareDV(autolevels=true)
v78 = v78.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v78 = v78.grainFactory3

v79 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_161526.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_161526.mp4")

v80 = source.trim(14147*2,  14479*2 + 1).prepareDV(autolevels=true)
v80 = v80.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v80 = v80.grainFactory3

v81 = source.trim(14480*2,  14624*2 + 1).prepareDV(autolevels=true, ignore_high=0.03, gamma=1.3)
v81 = v81.tweak(sat=2, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v81 = v81.grainFactory3

v82 = source.trim(14625*2,  14927*2 + 1).prepareDV
v82 = v82.tweak(sat=1.6, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v82 = v82.grainFactory3

v83 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_163026.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_163026.mp4")
v84 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_164132.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_164132.mp4")
v85 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_172129.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_172129.mp4")
v86 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_172259.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_172259.mp4")
v87 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_172445.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_172445.mp4")
v88 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_175209.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_175209.mp4")
v89 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_175331.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_175331.mp4")
v90 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211022_175409.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211022_175409.mp4")
v91 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_122250.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_122250.mp4")
v92 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_122455.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_122455.mp4")

v93 = source.trim(14928*2,  15481*2 + 1).prepareDV(autolevels=true, ignore_high=0, gamma=0.9)
v93 = v93.tweak(sat=1.5, coring=false).colorYUV(off_u = 5, off_v = 0)
v93 = v93.grainFactory3

v94 = source.trim(15482*2,  15683*2 + 1).prepareDV(autolevels=true, ignore_high=0, gamma=0.9)
v94 = v94.tweak(sat=1.5, coring=false).colorYUV(off_u = 5, off_v = 0)
v94 = v94.grainFactory3

v95 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_123252.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_123252.mp4")
v96 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_123406.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_123406.mp4")
v97 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_123434.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_123434.mp4")
v98 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_123649.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_123649.mp4")
v99 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_133231.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_133231.mp4")
v100 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_133359.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_133359.mp4")
v101 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_134418.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_134418.mp4")
v102 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_134808.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_134808.mp4")
v103 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_135027.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_135027.mp4")
v104 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211023_135443.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211023_135443.mp4")

v105 = source.trim(15684*2,  16456*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v105 = v105.animate(310, 3509, "gamma", 1500000, 1000000)
v105 = v105.animate(310, 3509, "sat", 1700000, 1300000)
#v105 = v105.tweak(sat=1.3, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v105 = v105.grainFactory3

v106 = source.trim(16457*2,  18109*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v106 = v106.colorYUV(off_u = 3, off_v = 0)
v106 = v106.grainFactory3

v107 = source.trim(18110*2,  18847*2 + 1).prepareDV
v107 = v107.grainFactory3

v108 = source.trim(18848*2,  19332*2 + 1).prepareDV
v108 = v108.grainFactory3

v109 = source.trim(19333*2,  19899*2 + 1).prepareDV
v109 = v109.grainFactory3

v110 = source.trim(19900*2,  19978*2 + 1).prepareDV
v110 = v110.grainFactory3

v111 = source.trim(19979*2,  20498*2 + 1).prepareDV
v111 = v111.grainFactory3

v112 = source.trim(20499*2,  20779*2 + 1).prepareDV
v112 = v112.colorYUV(off_u = 2, off_v = 0)
v112 = v112.grainFactory3

v113 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_122326.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_122326.mp4")

v114 = source.trim(20780*2,  21492*2 + 1).prepareDV(autolevels=true)
v114 = v114.tweak(sat=1.3, coring=false).colorYUV(off_u = 5, off_v = 0)
v114 = v114.grainFactory3

v115 = source.trim(21493*2,  21774*2 + 1).prepareDV(autolevels=true)
v115 = v115.tweak(sat=1.3, coring=false).colorYUV(off_u = 5, off_v = 0)
v115 = v115.grainFactory3

v116 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_135757.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_135757.mp4")
v117 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_140244.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_140244.mp4")
v118 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_140435.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_140435.mp4")
v119 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_144715.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_144715.mp4")
v120 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_144852.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_144852.mp4")
v121 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151212.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151212.mp4")
v122 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151236.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151236.mp4")
v123 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151442.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151442.mp4")
v124 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151511.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151511.mp4")
v125 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151543.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151543.mp4")
v126 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_151623.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_151623.mp4")
v127 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_155014.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_155014.mp4")
v128 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211024_165115.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211024_165115.mp4")

v129 = source.trim(21775*2,  22414*2 + 1).prepareDV(autolevels=true)
v129 = v129.tweak(sat=1.1, coring=false).colorYUV(off_u = 3, off_v = 0)
v129 = v129.grainFactory3

v130 = source.trim(22415*2,  22662*2 + 1).prepareDV(autolevels=true, ignore_high=0.05)
v130 = v130.tweak(sat=1.1, coring=false).colorYUV(off_u = 3, off_v = 0)
v130 = v130.grainFactory3

v131 = source.trim(22663*2,  23234*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v131 = v131.tweak(sat=1.1, coring=false).colorYUV(off_u = -1, off_v = 3)
v131 = v131.grainFactory3

v132 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_100631.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_100631.mp4")
v133 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_100702.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_100702.mp4")
v134 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_100908.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_100908.mp4")

v135 = source.trim(23235*2,  23587*2 + 1).prepareDV
v135 = v135.tweak(sat=1.1, coring=false).colorYUV(off_u = 3, off_v = 0)
v135 = v135.grainFactory3

v136 = source.trim(23588*2,  23813*2 + 1).prepareDV
v136 = v136.tweak(sat=1.1, coring=false).colorYUV(off_u = 3, off_v = 0)
v136 = v136.grainFactory3

v137 = source.trim(23814*2,  24222*2 + 1).prepareDV(autolevels=true)
v137 = v137.tweak(sat=1.5, coring=false)#.colorYUV(off_u = 3, off_v = 0)
v137 = v137.grainFactory3

v138 = source.trim(24223*2,  24580*2 + 1).prepareDV
v138 = v138.tweak(sat=1.5, coring=false).colorYUV(off_u = 1, off_v = 0)
v138 = v138.grainFactory3

v139 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_102818.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_102818.mp4")

v140 = source.trim(24581*2,  24753*2 + 1).prepareDV
v140 = v140.tweak(sat=1.5, coring=false).colorYUV(off_u = 1, off_v = 0)
v140 = v140.grainFactory3

v141 = source.trim(24754*2,  25342*2 + 1).prepareDV(autolevels=true)
v141 = v141.tweak(sat=1.3, coring=false).colorYUV(off_u = 2, off_v = 0)
v141 = v141.grainFactory3

v142 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_102923.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_102923.mp4")

v143 = source.trim(25343*2,  25599*2 + 1).prepareDV(autolevels=true)
v143 = v143.tweak(sat=1.3, coring=false).colorYUV(off_u = 2, off_v = 0)
v143 = v143.grainFactory3

v144 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_102948.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_102948.mp4")
v145 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103000.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103000.mp4")

v146 = source.trim(25600*2,  25894*2 + 1).prepareDV
v146 = v146.tweak(sat=1.3, coring=false).colorYUV(off_u = 2, off_v = 0)
v146 = v146.grainFactory3

v147 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103031.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103031.mp4")

v148 = source.trim(25895*2,  26065*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v148 = v148.tweak(sat=1.3, coring=false).colorYUV(off_u = 2, off_v = 0)
v148 = v148.grainFactory3

v149 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103120.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103120.mp4")

v150 = source.trim(26066*2,  26449*2 + 1).prepareDV
v150 = v150.tweak(sat=1.3, coring=false).colorYUV(off_u = 2, off_v = 0)
v150 = v150.grainFactory3

v151 = source.trim(26450*2,  26872*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v151 = v151.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v151 = v151.grainFactory3

v152 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103209.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103209.mp4")

v153 = source.trim(26873*2,  27092*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v153 = v153.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v153 = v153.grainFactory3

v154 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103235.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103235.mp4")

v155 = source.trim(27093*2,  27550*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v155 = v155.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v155 = v155.grainFactory3

v156 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103309.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103309.mp4")

v157 = source.trim(27551*2,  27845*2 + 1).prepareDV(autolevels=true)
v157 = v157.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v157 = v157.grainFactory3

v158 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103353.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103353.mp4")

v159 = source.trim(27846*2,  28096*2 + 1).prepareDV(autolevels=true)
v159 = v159.tweak(sat=1.3, coring=false).colorYUV(off_u = 5, off_v = 0)
v159 = v159.grainFactory3

v160 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103443.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103443.mp4")
v161 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103503.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103503.mp4")

v162 = source.trim(28097*2,  28372*2 + 1).prepareDV
v162 = v162.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v162 = v162.grainFactory3

v163 = source.trim(28373*2,  29282*2 + 1).prepareDV(autolevels=true)
v163 = v163.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v163 = v163.grainFactory3

v164 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103603.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103603.mp4")

v165 = source.trim(29283*2,  29964*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v165 = v165.tweak(sat=1.3, coring=false).colorYUV(off_u = 7, off_v = 0)
v165 = v165.grainFactory3

v166 = source.trim(29965*2,  30297*2 + 1).prepareDV(autolevels=true)
v166 = v166.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v166 = v166.grainFactory3

v167 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103718.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103718.mp4")
v168 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103740.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103740.mp4")

#v169 = source.trim(30298*2,  30380*2 + 1).prepareDV # to remove

v170 = source.trim(30381*2,  30715*2 + 1).prepareDV
v170 = v170.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v170 = v170.grainFactory3

v171 = source.trim(30716*2,  31372*2 + 1).prepareDV(autolevels=true)
v171 = v171.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v171 = v171.grainFactory3

v172 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103859.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103859.mp4")

v173 = source.trim(31373*2,  31670*2 + 1).prepareDV(autolevels=true, ignore_high=0)
v173 = v173.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v173 = v173.grainFactory3

v174 = source.trim(31671*2,  32401*2 + 1).prepareDV(autolevels=true)
v174 = v174.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v174 = v174.grainFactory3

v175 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_103954.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_103954.mp4")
v176 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104017.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104017.mp4")
v177 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104114.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104114.mp4")
v178 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104156.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104156.mp4")
v179 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104222.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104222.mp4")

v180 = source.trim(32402*2,  33850*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v180 = v180.trim(156, 0)
v180 = v180.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v180 = v180.grainFactory3

v181 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104300.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104300.mp4")
v182 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104342.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104342.mp4")

v183 = source.trim(33851*2,  34074*2 + 1).prepareDV
v183 = v183.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v183 = v183.grainFactory3

v184 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104434.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104434.mp4")

v185 = source.trim(34075*2,  34283*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v185 = v185.tweak(sat=1.5, coring=false).colorYUV(off_u = 1, off_v = 0)
v185 = v185.grainFactory3

v186 = source.trim(34284*2,  34502*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v186 = v186.tweak(sat=1.5, coring=false).colorYUV(off_u = 1, off_v = 0)
v186 = v186.grainFactory3

v187 = source.trim(34503*2,  35568*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v187 = v187.tweak(sat=1.5, coring=false).colorYUV(off_u = 1, off_v = 0)
v187 = v187.grainFactory3

v188 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104553.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104553.mp4")

v189 = source.trim(35569*2,  36161*2 + 1).prepareDV
v189 = v189.tweak(sat=1.3, coring=false).colorYUV(off_u = 1, off_v = 0)
v189 = v189.grainFactory3

v190 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104634.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104634.mp4")
v191 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104700.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104700.mp4")

v192 = source.trim(36162*2,  36979*2 + 1).prepareDV
v192 = v192.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v192 = v192.grainFactory3

v193 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_104724.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_104724.mp4")

v194 = source.trim(36980*2,  37129*2 + 1).prepareDV
v194 = v194.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v194 = v194.grainFactory3

v195 = source.trim(37130*2,  37279*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v195 = v195.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v195 = v195.grainFactory3

v196 = source.trim(37280*2,  37450*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v196 = v196.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v196 = v196.grainFactory3

v197 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105130.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105130.mp4")

v198 = source.trim(37451*2,  37693*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v198 = v198.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v198 = v198.grainFactory3

v199 = source.trim(37694*2,  38109*2 + 1).prepareDV(autolevels=true)
v199 = v199.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v199 = v199.grainFactory3

v200 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105241.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105241.mp4")

v201 = source.trim(38110*2,  38567*2 + 1).prepareDV(autolevels=true)
v201 = v201.trim(20, 0)
v201 = v201.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v201 = v201.grainFactory3

v202 = source.trim(38568*2,  39029*2 + 1).prepareDV(autolevels=true, gamma=1.1)
v202 = v202.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v202 = v202.grainFactory3

v203 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105359.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105359.mp4")

v204 = source.trim(39030*2,  39334*2 + 1).prepareDV
v204 = v204.tweak(sat=1.3, coring=false).colorYUV(off_u = 3, off_v = 0)
v204 = v204.grainFactory3
#return (v204).histogram("levels").prefetch(6)

v205 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105448.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105448.mp4")
v206 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105514.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105514.mp4")
v207 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105535.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105535.mp4")
v208 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105552.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105552.mp4")
v209 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_105610.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_105610.mp4")
v210 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_121149.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_121149.mp4")
v211 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_121229.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_121229.mp4")
v212 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_121756.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_121756.mp4")
v213 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_121815.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_121815.mp4")
v214 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_122146.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_122146.mp4")
v215 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_122224.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_122224.mp4")
v216 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_122843.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_122843.mp4")
v217 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_122909.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_122909.mp4")
v218 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_123538.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_123538.mp4")
v219 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_123827.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_123827.mp4")
v220 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_124137.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_124137.mp4")
v221 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_124323.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_124323.mp4")
v222 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_131559.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_131559.mp4")
v223 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_131634.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_131634.mp4")
v224 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_132124.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_132124.mp4")
v225 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_132225.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_132225.mp4")
v226 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_132308.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_132308.mp4")
v227 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_132522.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_132522.mp4")
v228 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211025_132541.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211025_132541.mp4")
v229 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_132742.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_132742.mp4")
v230 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_132928.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_132928.mp4")
v231 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_132953.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_132953.mp4")
v232 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_133031.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_133031.mp4")
v233 = prepareOneAV("m:\media\video\2021_10_20-Belgie\VID_20211025_133108.mp4.avi", "m:\Media\video\2021_10_20-Belgie\VID_20211025_133108.mp4")
v234 = prepareOneAV("m:\media\video\2021_10_20-Belgie\20211026_121711.mp4.avi", "m:\Media\video\2021_10_20-Belgie\20211026_121711.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v58 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128 + v129 + v130 + v131 + v132 + v133 + v134 + v135 + v136 + v137 + v138 + v139 + v140 + v141 + v142 + v143 + v144 + v145 + v146 + v147 + v148 + v149 + v150 + v151 + v152 + v153 + v154 + v155 + v156 + v157 + v158 + v159 + v160 + v161 + v162 + v163 + v164 + v165 + v166 + v167 + v168 + v170 + v171 + v172 + v173 + v174 + v175 + v176 + v177 + v178 + v179 + v180 + v181 + v182 + v183 + v184 + v185 + v186 + v187 + v188 + v189 + v190 + v191 + v192 + v193 + v194 + v195 + v196 + v197 + v198 + v199 + v200 + v201 + v202 + v203 + v204 + v205 + v206 + v207 + v208 + v209 + v210 + v211 + v212 + v213 + v214 + v215 + v216 + v217 + v218 + v219 + v220 + v221 + v222 + v223 + v224 + v225 + v226 + v227 + v228 + v229 + v230 + v231 + v232 + v233 + v234
Prefetch(6)
