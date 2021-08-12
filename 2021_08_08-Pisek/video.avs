LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112711.mp4.avi").AssumeFPS(30,1)
v1 = v1.autolevels(gamma=0.7).trim(0, 240) + v1.autolevels(gamma=0.725).trim(241, 245) +\
     v1.autolevels(gamma=0.75).trim(246, 250) + v1.autolevels(gamma=0.775).trim(251, 255) +\
     v1.autolevels(gamma=0.8).trim(256, 260) + v1.autolevels(gamma=0.825).trim(261, 265) +\
     v1.autolevels(gamma=0.85).trim(266, 270) + v1.autolevels(gamma=0.875).trim(271, 275) +\
     v1.autolevels(gamma=0.9).trim(276, 280) + v1.autolevels(gamma=0.925).trim(281, 285) +\
     v1.autolevels(gamma=0.95).trim(286, 290) + v1.autolevels(gamma=0.975).trim(291, 295) +\
     v1.autolevels(gamma=1).trim(296, 0)

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112754.mp4.avi").AssumeFPS(30,1)
v2 = v2.autolevels(gamma=1.1).trim(36, 0)

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113038.mp4.avi").AssumeFPS(30,1)
v3 = v3.autolevels(filterRadius=9)

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113155.mp4.avi").AssumeFPS(30,1)

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115715.mp4.avi").AssumeFPS(30,1)
v5 = v5.autolevels(filterRadius=9)

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115935.mp4.avi").AssumeFPS(30,1)
v6 = v6.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115952.mp4.avi").AssumeFPS(30,1)
v7 = v7.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120053.mp4.avi").AssumeFPS(30,1)
v8 = v8.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24
v8 = v8.trim(24, 0)

v9 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120122.mp4.avi").AssumeFPS(30,1)
v9 = v9.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24

v10 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120209.mp4.avi").AssumeFPS(30,1)
v10 = v10.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24

v11 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120316.mp4.avi").AssumeFPS(30,1)
v11 = v11.convertToYV24.autolevels(filterRadius=9, gamma=1.7).tweak(sat=1.5).convertToRGB24

v12 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120453.mp4.avi").AssumeFPS(30,1)
#v12 = v12.autolevels(filterRadius=9, gamma=1.1)
v12 = v12.convertToYV24.autolevels(filterRadius=9, gamma=1.3).tweak(sat=1.2).convertToRGB24

v13 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_121816.mp4.avi").AssumeFPS(30,1)
v13 = v13.autolevels(filterRadius=9, gamma=1)
#return v13.convertToYV12.histogram("levels")

v14 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122146.mp4.avi").AssumeFPS(30,1)
v14 = v14.autolevels(filterRadius=9, gamma=1)

v15 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122219.mp4.avi").AssumeFPS(30,1)
v15 = v15.autolevels(filterRadius=99, gamma=1)

v16 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122328.mp4.avi").AssumeFPS(30,1)
v16 = v16.autolevels(filterRadius=9, gamma=1)

v17 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122354.mp4.avi").AssumeFPS(30,1)
v17 = v17.autolevels(filterRadius=9, gamma=1)

v18 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_123031.mp4.avi").AssumeFPS(30,1)
v18 = v18.convertToYV24.autolevels(filterRadius=9, gamma=1.3).tweak(sat=1.3).convertToRGB24

v19 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124048.mp4.avi").AssumeFPS(30,1)

v20 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124226.mp4.avi").AssumeFPS(30,1)

v21 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124442.mp4.avi").AssumeFPS(30,1)
v21 = v21.autolevels(filterRadius=9, gamma=1)

v22 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125217.mp4.avi").AssumeFPS(30,1)

v23 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125402.mp4.avi").AssumeFPS(30,1)
v23 = v23.autolevels(filterRadius=9, gamma=0.7)

v24 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125427.mp4.avi").AssumeFPS(30,1)
v24 = v24.autolevels(filterRadius=9, gamma=0.7)

v25 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140456.mp4.avi").AssumeFPS(30,1)
v25 = v25.autolevels(filterRadius=9, gamma=1)

v26 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140720.mp4.avi").AssumeFPS(30,1)
v26 = v26.autolevels(filterRadius=9, gamma=1)

v27 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_150448.mp4.avi").AssumeFPS(30,1)

v29 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_155930.mp4.avi").AssumeFPS(30,1)

v30 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_165726.mp4.avi").AssumeFPS(30,1)
v30 = v30.autolevels(filterRadius=9, gamma=1)

v31 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110622.mp4.avi").AssumeFPS(30,1)
v31 = v31.autolevels(filterRadius=9, gamma=0.7).trim(27, 0)

v32 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110718.mp4.avi").AssumeFPS(30,1)
v32 = v32.autolevels(filterRadius=9, gamma=0.6).trim(0, 632)
/*
v33 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130144.mp4.avi").AssumeFPS(30,1)
v33 = v33.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v33 = v33.trim(0, 424)

v34 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130235.mp4.avi").AssumeFPS(30,1)
v34 = v34.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v34 = v34.trim(15, 328)

v35 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130322.mp4.avi").AssumeFPS(30,1)
v35 = v35.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v35 = v35.trim(2, 246)

v36 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130358.mp4.avi").AssumeFPS(30,1)
v36 = v36.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v36 = v36.trim(21, 290)
return (v33+v34+v35+v36).convertToYV12.histogram("levels")
*/
vR = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\rozhledna.avi").AssumeFPS(30,1)
vR = vR.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24

v37 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162634.mp4.avi").AssumeFPS(30,1)
v37 = v37.convertToYV24.autolevels(filterRadius=9, gamma=1.6).tweak(sat=1.3).convertToRGB24

v38 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162713.mp4.avi").AssumeFPS(30,1)
v38 = v38.convertToYV24.autolevels(filterRadius=9, gamma=1.6).tweak(sat=1.3).convertToRGB24

v39 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162757.mp4.avi").AssumeFPS(30,1)
v39 = v39.convertToYV24.autolevels(filterRadius=9, gamma=1.6).tweak(sat=1.3).convertToRGB24

v40 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163258.mp4.avi").AssumeFPS(30,1)

v41 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163349.mp4.avi").AssumeFPS(30,1)

v42 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163513.mp4.avi").AssumeFPS(30,1)

v43 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_111746.mp4.avi").AssumeFPS(30,1)
v43 = v43.filter(24)
v43 = v43.autolevels

v44 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_121210.mp4.avi").AssumeFPS(30,1)
v44 = v44.filter(16)
v44 = v44.autolevels

v45 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_122729.mp4.avi").AssumeFPS(30,1)
v45 = v45.filter(16)
v45 = v45.autolevels

v46 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_131901.mp4.avi").AssumeFPS(30,1)
v46_ = v46.filter(sigma_y=16)
v46 = v46.filter(sigma_y=16, gamma=1.3, sat=1.1)
v46 = v46.trim(0, 51) + v46_.trim(52, 52) + v46.trim(53, 0)

v47 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_152146.mp4.avi").AssumeFPS(30,1)
v47 = v47.filter(24)

v48 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_170924.mp4.avi").AssumeFPS(30,1)
v48 = v48.autolevels(filterRadius=9, gamma=1)

v49 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_171012.mp4.avi").AssumeFPS(30,1)
v49 = v49.autolevels(filterRadius=9, gamma=1)

v50 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170221.mp4.avi").AssumeFPS(30,1)
v50 = v50.filter(16)

v51 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170412.mp4.avi").AssumeFPS(30,1)
v51 = v51.filter(sigma_y=24)

function filter(clip c, float "sigma_y", bool "autolevels", float "gamma", float "sat")
{
    sigma_y = default(sigma_y, 16)
    autolevels = default(autolevels, true)
    sat = default(sat, 1)
    gamma = default(gamma, 1)

    c = c.ConvertToYV24
    c = sigma_y == 0 ? c : c.fft3dfilter(bw=32, bh=32, ow=16, oh=16, sharpen=1,\
                                         sigma=sigma_y/8, sigma2=sigma_y/4, sigma3=sigma_y, sigma4=sigma_y,\
                                         plane=0, wintype=0, bt=5, ncpu=6)
    c = c.gaussResize(1920, 1080)

    c = !autolevels && gamma == 1 ? c : c.autolevels(autolevel=autolevels, gamma=gamma)
    c = sat != 1 ? c.tweak(sat=sat) : c

    c = c.ConvertToRGB24

    return c
}

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
    blksize_p = Default(blksize_p, 16)
#    c = c.Histogram("levels").info
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=60, NewDen=1, blksize=blksize_p)#, Dct=1, DctRe=1)#, stp=false)
    return c
}

#last = v43 + v44 + v45 + v46 + v47 /*+ v48 + v49*/ + v50 + v51

last = v43 + v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v44 + v13 + v14 + v15 + v16 +\
       v17 + v45 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v46 + v25 + v26 + v27 + v47 + v29 + v30 +\
       v48 + v49 + v31 + v32 + /*v33 + v34 + v35 + v36*/ vR + v37 + v38 + v39 + v40 + v41 + v42 + v50 + v51

convertToYV12()
assumefps(30).AdjustFrameRate(preset_p = "slowest")
prefetch(12)
