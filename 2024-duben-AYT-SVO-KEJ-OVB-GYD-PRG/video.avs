import("\\192.168.1.19\c\Users\ilx\wrk\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", int "b_l", int "b_r", int "b_b", float "i_l", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
    v = autolevels ? v.autolevels(border_l = b_l, border_r = b_r, border_b = b_b, ignore_low = i_l) : v
    v = sat == 1.0 ? v : v.tweak(sat = sat, coring = false)
/*
    vo = LSMASHVideoSource(destination_dir + name)
    fps60 = vo.frameRate > 40

    a = blankClip

    if ((fps60 && v.frameCount == vo.frameCount) || (v.frameCount == vo.FrameCount*2 - 1))
    {
        a = LSMASHAudioSource(destination_dir + name, skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
        new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
        a = a.AssumeSampleRate(Round(new_rate*100.)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }
    else
    {
        a = LSMASHAudioSource(destination_dir + "result\" + name + ".mp4", skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
    }
*/
    a = BestAudioSource(destination_dir + name, exactsamples=true)
    v_duration = float(v.FrameCount)*float(v.FrameRateDenominator)/float(v.FrameRateNumerator)
    if (float(a.audioLength)/a.audioRate < v_duration)
    {
        a_ex = a + blankClip(a, length = int(v.FrameCount * 24 / v.FrameRate) + 1)
        if (float(a_ex.audioLength)/a_ex.audioRate > v_duration)
        {
            a = a_ex.audioTrim(0, length = v_duration)
        }
    }
    else
    {
        new_rate = Float(a.AudioLength)/v_duration
        a = a.AssumeSampleRate(Round(new_rate*100)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }

    v = AudioDub(v, a)
    v = v.trim(0, 0) #  # audio tail fix

    return v
}

function rot_crop(clip c, float a)
{
    c = c.rotate(a)

    a = -a/180.*Pi()
    tg = tan(a)
    w = c.width/2. - c.height/2.*tan(a/2.)
    h = w*tg

    dh = h
    dw = dh * 16 / 9.
    c = c.spline64Resize(c.width, c.height, dw, dh, c.width - dw*2., c.height - dh*2.)
    return c
}

v1 = prepareOneAV("20240403_132043.mp4")
v2 = prepareOneAV("20240403_143040.mp4", autolevels = true, b_l = 400, b_b = 300)
v3 = prepareOneAV("20240403_143315.mp4", autolevels = true, sat = 1.5)
v4 = prepareOneAV("20240403_143901.mp4", autolevels = true, sat = 1.5)
v5 = prepareOneAV("20240403_144332.mp4", autolevels = true)
v6 = prepareOneAV("20240403_153117.mp4", autolevels = true)
v7 = prepareOneAV("20240403_161344.mp4", autolevels = true)
v8 = prepareOneAV("20240403_161403.mp4", autolevels = true)
v9 = prepareOneAV("20240403_161507.mp4", autolevels = true)
v10 = prepareOneAV("20240403_201025.mp4")
v11 = prepareOneAV("20240404_050626.mp4", autolevels = true)
v12 = prepareOneAV("20240411_114607.mp4")
v12 = v12.animate(0, 200, "rot_crop", -3., -5.).trim(0, 579) +\
      v12.animate(580, 680, "rot_crop", -5., -7.).trim(580, 0)
v13 = prepareOneAV("20240411_114649.mp4").rot_crop(-7.)
v14 = prepareOneAV("20240411_114751.mp4")
v15 = prepareOneAV("20240411_114938.mp4").rot_crop(-5.)
v16 = prepareOneAV("20240411_115242.mp4").trim(42, 0)
v17 = prepareOneAV("20240411_124757.mp4").trim(35, 0)
v18 = prepareOneAV("20240411_133711.mp4").animate(50, 150, "rot_crop", -3., -5.)
v19 = prepareOneAV("20240411_145352.mp4").trim(35, 0)
v20 = prepareOneAV("20240411_145508.mp4").trim(35, 0)
v21 = prepareOneAV("20240411_145534.mp4")
v22 = prepareOneAV("20240411_145643.mp4")
v23 = prepareOneAV("20240411_145710.mp4")
v24 = prepareOneAV("20240411_145846.mp4").trim(32, 0)
v25 = prepareOneAV("20240411_145949.mp4").trim(35, 0)
v26 = prepareOneAV("20240411_160418.mp4")
v27 = prepareOneAV("20240411_160739.mp4", autolevels = true).trim(35, 0)
v28 = prepareOneAV("20240411_161129.mp4", autolevels = true).trim(35, 0)
v29 = prepareOneAV("20240411_162939.mp4")
v30 = prepareOneAV("20240411_163926.mp4")
#v31 = prepareOneAV("20240411_164417.mp4")
#v32 = prepareOneAV("20240411_164429.mp4")
#v33 = prepareOneAV("20240411_164443.mp4")
v34 = prepareOneAV("20240411_164456.mp4", autolevels = true).trim(0, 700)
v35 = prepareOneAV("20240411_164547.mp4", autolevels = true)
v36 = prepareOneAV("20240411_202752.mp4")
v37 = prepareOneAV("20240412_113908.mp4")
v38 = prepareOneAV("20240412_124819.mp4")
v39 = prepareOneAV("20240412_124845.mp4")
v40 = prepareOneAV("20240412_124918.mp4")
v41 = prepareOneAV("20240412_135829.mp4")
v42 = prepareOneAV("20240412_135853.mp4")
v43 = prepareOneAV("20240412_175610.mp4").trim(35, 0)
v44 = prepareOneAV("20240413_002838.mp4")
v45 = prepareOneAV("20240413_053825.mp4")
v46 = prepareOneAV("20240413_060538.mp4")
v47 = prepareOneAV("20240413_060649.mp4").trim(35, 0)
v48 = prepareOneAV("20240413_060719.mp4")
v49 = prepareOneAV("20240413_061312.mp4").trim(34, 0)
v50 = prepareOneAV("20240413_063257.mp4")
v51 = prepareOneAV("20240413_064733.mp4").trim(35, 0)
v52 = prepareOneAV("20240413_064821.mp4")
v53 = prepareOneAV("20240413_064853.mp4")
v54 = prepareOneAV("20240413_064924.mp4")
v55 = prepareOneAV("20240413_072310.mp4", autolevels = true)
v56 = prepareOneAV("20240413_072341.mp4", autolevels = true)
v57 = prepareOneAV("20240413_072735.mp4", autolevels = true, b_l = 400)
v58 = prepareOneAV("20240413_073034.mp4", autolevels = true, b_r = 700, b_b = 200)
v59 = prepareOneAV("20240413_073309.mp4", autolevels = true, b_r = 400, b_b = 400)
v60 = prepareOneAV("20240413_073408.mp4", autolevels = true, b_r = 400, b_b = 400)
v61 = prepareOneAV("20240413_074316.mp4", autolevels = true, b_r = 200, b_b = 200)
v62 = prepareOneAV("20240413_081615.mp4", autolevels = true)
v63 = prepareOneAV("20240413_101714.mp4", autolevels = true)
v64 = prepareOneAV("20240413_101752.mp4", autolevels = true)
v65 = prepareOneAV("20240413_113113.mp4", autolevels = true)
v66 = prepareOneAV("20240413_113726.mp4", autolevels = true)
v67 = prepareOneAV("20240413_100555.mp4")
#return v67
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + /*v31 + v32 + v33 +*/ v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67
ConvertToYV12()
