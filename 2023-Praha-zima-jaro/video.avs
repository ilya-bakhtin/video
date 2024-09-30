import("c:\Users\ilx\wrk\video\2023-Praha-zima-jaro\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat", int "border_r")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
    v = autolevels ? v.autolevels(border_r = border_r) : v

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

    v = AudioDub(v, a)
    v = v.trim(0, 0) #  # audio tail fix

    return v
}

v1 = prepareOneAV("20230103_153823.mp4")
v2 = prepareOneAV("20230122_153621.mp4")
v3 = prepareOneAV("20230122_153743.mp4")
v4 = prepareOneAV("20230122_153757.mp4")
v5 = prepareOneAV("20230325_121504.mp4")
v6 = prepareOneAV("20230326_131501.mp4")
v7 = prepareOneAV("20230326_131607.mp4")
v8 = prepareOneAV("20230326_131629.mp4")
v9 = prepareOneAV("20230326_131646.mp4")
v10 = prepareOneAV("20230326_133237.mp4")
v11 = prepareOneAV("20230326_133405.mp4")
v12 = prepareOneAV("20230326_133438.mp4")
v13 = prepareOneAV("20230415_144350.mp4", autolevels = true)
v14 = prepareOneAV("20230415_144406.mp4", autolevels = true)
v15 = prepareOneAV("20230416_140629.mp4")
v16 = prepareOneAV("20230416_142513.mp4")
v17 = prepareOneAV("20230416_142842.mp4")
v18 = prepareOneAV("20230416_142914.mp4")
v19 = prepareOneAV("20230422_132647.mp4")
v20 = prepareOneAV("20230422_155006.mp4")
v21 = prepareOneAV("20230422_155030.mp4")
v22 = prepareOneAV("20230422_155051.mp4")
v23 = prepareOneAV("20230422_155253.mp4")
v24 = prepareOneAV("20230422_155313.mp4")
v25 = prepareOneAV("20230422_155332.mp4")
v26 = prepareOneAV("20230422_160705.mp4")
v27 = prepareOneAV("20230422_161254.mp4")
v28 = prepareOneAV("20230422_162605.mp4")
v29 = prepareOneAV("20230422_163333.mp4")
v30 = prepareOneAV("20230423_151618.mp4")
v31 = prepareOneAV("20230423_152906.mp4")
v32 = prepareOneAV("20230423_154706.mp4")
v33 = prepareOneAV("20230423_154738.mp4")
v34 = prepareOneAV("20230430_132356.mp4")
v35 = prepareOneAV("20230430_132449.mp4")
v36 = prepareOneAV("20230430_132530.mp4")
v37 = prepareOneAV("20230430_132641.mp4")
v38 = prepareOneAV("20230430_132714.mp4")
v39 = prepareOneAV("20230430_143229.mp4")
v40 = prepareOneAV("20230430_143749.mp4")
v41 = prepareOneAV("20230430_150801.mp4")
v42 = prepareOneAV("20230430_151449.mp4")
v43 = prepareOneAV("20230430_151510.mp4")
v44 = prepareOneAV("20230430_152326.mp4", autolevels = true)
v45 = prepareOneAV("20230430_152430.mp4", autolevels = true, border_r = 1000)
v46 = prepareOneAV("20230430_153120.mp4")
v47 = prepareOneAV("20230430_153140.mp4")
v48 = prepareOneAV("20230501_151330.mp4")
v49 = prepareOneAV("20230501_151407.mp4")
v50 = prepareOneAV("20230501_151434.mp4")
v51 = prepareOneAV("20230501_153123.mp4")
v52 = prepareOneAV("20230506_140857.mp4")
v53 = prepareOneAV("20230508_113656.mp4")
v54 = prepareOneAV("20230521_143248.mp4")
v55 = prepareOneAV("20230521_143603.mp4")
v56 = prepareOneAV("20230521_144438.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56
ConvertToYV12()
