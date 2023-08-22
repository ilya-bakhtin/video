import("c:\Users\ilx\wrk\video\2023_07_01-Lindau-Friedrichshafen\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")

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

v1 = prepareOneAV("20230701_125159.mp4")
v2 = prepareOneAV("20230701_125354.mp4")
v3 = prepareOneAV("20230701_125509.mp4")
v4 = prepareOneAV("20230701_125838.mp4")
v5 = prepareOneAV("20230701_132026.mp4")
v6 = prepareOneAV("20230701_142104.mp4")
v7 = prepareOneAV("20230701_142144.mp4")
v8 = prepareOneAV("20230701_142401.mp4")
v9 = prepareOneAV("20230701_143821.mp4")
v10 = prepareOneAV("20230701_143913.mp4")
v11 = prepareOneAV("20230701_143949.mp4")
v12 = prepareOneAV("20230701_144153.mp4")
v13 = prepareOneAV("20230701_144225.mp4")
v14 = prepareOneAV("20230701_144516.mp4")
v15 = prepareOneAV("20230701_144618.mp4")
v16 = prepareOneAV("20230701_144644.mp4")
v17 = prepareOneAV("20230701_145226.mp4")
v18 = prepareOneAV("20230701_151432.mp4")
v19 = prepareOneAV("20230701_151529.mp4")
v20 = prepareOneAV("20230701_151553.mp4")
v21 = prepareOneAV("20230701_152158.mp4")
v22 = prepareOneAV("20230701_152405.mp4")
v23 = prepareOneAV("20230701_163509.mp4")
v24 = prepareOneAV("20230701_163555.mp4")
v25 = prepareOneAV("20230701_163813.mp4")
v26 = prepareOneAV("20230701_164029.mp4")
v27 = prepareOneAV("20230701_164047.mp4")
v28 = prepareOneAV("20230701_164446.mp4")
v29 = prepareOneAV("20230701_165820.mp4")
v30 = prepareOneAV("20230701_165857.mp4")
v31 = prepareOneAV("20230701_170725.mp4")
v32 = prepareOneAV("20230701_170958.mp4")
v33 = prepareOneAV("20230701_171908.mp4")
v34 = prepareOneAV("20230701_173122.mp4")
v35 = prepareOneAV("20230701_173158.mp4")
v36 = prepareOneAV("20230701_173300.mp4")
v37 = prepareOneAV("20230701_173314.mp4")
v38 = prepareOneAV("20230701_180317.mp4")
v39 = prepareOneAV("20230701_180350.mp4")
v40 = prepareOneAV("20230702_132143.mp4")
v41 = prepareOneAV("20230702_140844.mp4")
v42 = prepareOneAV("20230702_141133.mp4")
v43 = prepareOneAV("20230702_141235.mp4")
v44 = prepareOneAV("20230702_141309.mp4")
v45 = prepareOneAV("20230702_161917.mp4")
v46 = prepareOneAV("20230702_161933.mp4")
v47 = prepareOneAV("20230702_162017.mp4")
v48 = prepareOneAV("20230702_162242.mp4")
v49 = prepareOneAV("20230702_162316.mp4")
v50 = prepareOneAV("20230702_162340.mp4")
v51 = prepareOneAV("20230702_162549.mp4")
v52 = prepareOneAV("20230702_162622.mp4")
v53 = prepareOneAV("20230702_162646.mp4")
v54 = prepareOneAV("20230702_162908.mp4")
v55 = prepareOneAV("20230702_163439.mp4")
v56 = prepareOneAV("20230702_163603.mp4")
v57 = prepareOneAV("20230702_163629.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57
ConvertToYV12()
