import("c:\Users\ilx\wrk\video\2023_12_25-Goppingen\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
    v = autolevels ? v.autolevels : v

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

v1 = prepareOneAV("20231222_123326.mp4")
v2 = prepareOneAV("20231222_123653.mp4")
v3 = prepareOneAV("20231222_123722.mp4")
v4 = prepareOneAV("20231222_123832.mp4")
v5 = prepareOneAV("20231223_094959.mp4")
v6 = prepareOneAV("20231223_095755.mp4")
v7 = prepareOneAV("20231223_095907.mp4")
v8 = prepareOneAV("20231223_095913.mp4")
v9 = prepareOneAV("20231223_103429.mp4")
v10 = prepareOneAV("20231223_115805.mp4")
v11 = prepareOneAV("20231223_164409.mp4")
v12 = prepareOneAV("20231223_164903.mp4")
v13 = prepareOneAV("20231224_110205.mp4")
v14 = prepareOneAV("20231224_110816.mp4")
v15 = prepareOneAV("20231224_114030.mp4")
v16 = prepareOneAV("20231224_114746.mp4")
v17 = prepareOneAV("20231224_114810.mp4")
v18 = prepareOneAV("20231224_114841.mp4")
v19 = prepareOneAV("20231224_114955.mp4")
v20 = prepareOneAV("20231224_115024.mp4")
v21 = prepareOneAV("20231224_115116.mp4")
v22 = prepareOneAV("20231224_115229.mp4")
v23 = prepareOneAV("20231224_115330.mp4")
v24 = prepareOneAV("20231224_115401.mp4")
v25 = prepareOneAV("20231224_121109.mp4")
v26 = prepareOneAV("20231224_121129.mp4")
v27 = prepareOneAV("20231224_121150.mp4")
v28 = prepareOneAV("20231224_121208.mp4")
v29 = prepareOneAV("20231224_121242.mp4")
v30 = prepareOneAV("20231224_121322.mp4")
v31 = prepareOneAV("20231224_121516.mp4")
v32 = prepareOneAV("20231224_122345.mp4")
v33 = prepareOneAV("PXL_20231224_132717037.TS.mp4")
v34 = prepareOneAV("PXL_20231224_133057962.TS.mp4")
v35 = prepareOneAV("PXL_20231224_140427827.TS.mp4")
v36 = prepareOneAV("20231224_140452.mp4")
v37 = prepareOneAV("20231224_140536.mp4")
v38 = prepareOneAV("20231224_140653.mp4")
v39 = prepareOneAV("20231224_140754.mp4")
v40 = prepareOneAV("20231224_170354.mp4")
v41 = prepareOneAV("20231225_104819.mp4")
v42 = prepareOneAV("20231225_112232.mp4")
v43 = prepareOneAV("20231225_112301.mp4")
v44 = prepareOneAV("20231225_112335.mp4")
v45 = prepareOneAV("20231225_112526.mp4")
v46 = prepareOneAV("20231225_113207.mp4")
v47 = prepareOneAV("20231225_113244.mp4")
v48 = prepareOneAV("20231225_113317.mp4")
v49 = prepareOneAV("20231225_113424.mp4")
v50 = prepareOneAV("20231225_113503.mp4")
v51 = prepareOneAV("20231225_113646.mp4")
v52 = prepareOneAV("20231225_122024_05.mp4")
v53 = prepareOneAV("20231225_123919.mp4")
v54 = prepareOneAV("20231225_123956.mp4")
v55 = prepareOneAV("20231225_124033.mp4")
v56 = prepareOneAV("20231225_124124.mp4")
v57 = prepareOneAV("20231225_124337.mp4")
v58 = prepareOneAV("20231225_124517.mp4")
v59 = prepareOneAV("20231225_124623.mp4")
v60 = prepareOneAV("20231225_124711.mp4")
v61 = prepareOneAV("20231225_142939.mp4")
v62 = prepareOneAV("20231225_143028.mp4")
v63 = prepareOneAV("20231225_185638.mp4")
v64 = prepareOneAV("20231225_190132.mp4")
v65 = prepareOneAV("20231225_191421.mp4")
v66 = prepareOneAV("20231225_191657.mp4")
v67 = prepareOneAV("20231225_191730.mp4")
v68 = prepareOneAV("20231225_191745.mp4")
v69 = prepareOneAV("20231226_111622.mp4")
v70 = prepareOneAV("20231226_123042.mp4")
v71 = prepareOneAV("20231226_124329.mp4")
v72 = prepareOneAV("20231226_154240.mp4")
v73 = prepareOneAV("20231226_182710.mp4")
v74 = prepareOneAV("20231226_182721.mp4")
v75 = prepareOneAV("20231226_184951.mp4")
v76 = prepareOneAV("20231226_202417.mp4")
v77 = prepareOneAV("20231230_111446.mp4")
v78 = prepareOneAV("20231230_111945.mp4")
v79 = prepareOneAV("20231230_112401.mp4")
v80 = prepareOneAV("20231230_153357.mp4")
v81 = prepareOneAV("20231230_194639.mp4")
v82 = prepareOneAV("PXL_20231231_094540745.TS.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82
ConvertToYV12()
