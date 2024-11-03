LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_115313.mp4")
v1 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_115313.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_124243.mp4")
v2 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_124243.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142455.mp4")
v3 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142455.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142512.mp4")
v4 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142512.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142613.mp4")
v5 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_142613.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_160342.mp4")
v6 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_160342.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_160403.mp4")
v7 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_160403.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_162134.mp4")
v8 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_162134.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174456.mp4")
v9 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174456.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174521.mp4")
v10 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174521.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174557.mp4")
v11 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_174557.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_190948.mp4")
v12 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_190948.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_191407.mp4")
v13 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240527_191407.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_102720.mp4")
v14 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_102720.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_102809.mp4")
v15 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_102809.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_103340.mp4")
v16 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_103340.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_103721.mp4")
v17 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_103721.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_104232.mp4")
v18 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_104232.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_104357.mp4")
v19 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_104357.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_105244.mp4")
v20 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_105244.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_105625.mp4")
v21 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_105625.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_110502.mp4")
v22 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_110502.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_112718.mp4")
v23 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_112718.mp4").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_120056.mp4")
v24 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_120056.mp4").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_120350.mp4")
v25 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_120350.mp4").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_124102.mp4")
v26 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_124102.mp4").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_135415.mp4")
v27 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_135415.mp4").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a28 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_142325.mp4")
v28 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_142325.mp4").AssumeFPS(30,1)
new_rate = Float(a28.AudioLength)/v28.FrameCount*v28.FrameRateNumerator/v28.FrameRateDenominator
a28 = a28.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v28 = AudioDub(v28, a28)

a29 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143026.mp4")
v29 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143026.mp4").AssumeFPS(30,1)
new_rate = Float(a29.AudioLength)/v29.FrameCount*v29.FrameRateNumerator/v29.FrameRateDenominator
a29 = a29.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v29 = AudioDub(v29, a29)

a30 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143201.mp4")
v30 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143201.mp4").AssumeFPS(30,1)
new_rate = Float(a30.AudioLength)/v30.FrameCount*v30.FrameRateNumerator/v30.FrameRateDenominator
a30 = a30.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v30 = AudioDub(v30, a30)

a31 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143449.mp4")
v31 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_143449.mp4").AssumeFPS(30,1)
new_rate = Float(a31.AudioLength)/v31.FrameCount*v31.FrameRateNumerator/v31.FrameRateDenominator
a31 = a31.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v31 = AudioDub(v31, a31)

a32 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_170814.mp4")
v32 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240528_170814.mp4").AssumeFPS(30,1)
new_rate = Float(a32.AudioLength)/v32.FrameCount*v32.FrameRateNumerator/v32.FrameRateDenominator
a32 = a32.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v32 = AudioDub(v32, a32)

a33 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_101038.mp4")
v33 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_101038.mp4").AssumeFPS(30,1)
new_rate = Float(a33.AudioLength)/v33.FrameCount*v33.FrameRateNumerator/v33.FrameRateDenominator
a33 = a33.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v33 = AudioDub(v33, a33)

a34 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104334.mp4")
v34 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104334.mp4").AssumeFPS(30,1)
new_rate = Float(a34.AudioLength)/v34.FrameCount*v34.FrameRateNumerator/v34.FrameRateDenominator
a34 = a34.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v34 = AudioDub(v34, a34)

a35 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104430.mp4")
v35 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104430.mp4").AssumeFPS(30,1)
new_rate = Float(a35.AudioLength)/v35.FrameCount*v35.FrameRateNumerator/v35.FrameRateDenominator
a35 = a35.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v35 = AudioDub(v35, a35)

a36 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104558.mp4")
v36 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104558.mp4").AssumeFPS(30,1)
new_rate = Float(a36.AudioLength)/v36.FrameCount*v36.FrameRateNumerator/v36.FrameRateDenominator
a36 = a36.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v36 = AudioDub(v36, a36)

a37 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104650.mp4")
v37 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_104650.mp4").AssumeFPS(30,1)
new_rate = Float(a37.AudioLength)/v37.FrameCount*v37.FrameRateNumerator/v37.FrameRateDenominator
a37 = a37.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v37 = AudioDub(v37, a37)

a38 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_130026.mp4")
v38 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_130026.mp4").AssumeFPS(30,1)
new_rate = Float(a38.AudioLength)/v38.FrameCount*v38.FrameRateNumerator/v38.FrameRateDenominator
a38 = a38.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v38 = AudioDub(v38, a38)

a39 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_130046.mp4")
v39 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240529_130046.mp4").AssumeFPS(30,1)
new_rate = Float(a39.AudioLength)/v39.FrameCount*v39.FrameRateNumerator/v39.FrameRateDenominator
a39 = a39.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v39 = AudioDub(v39, a39)

a40 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_114811.mp4")
v40 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_114811.mp4").AssumeFPS(30,1)
new_rate = Float(a40.AudioLength)/v40.FrameCount*v40.FrameRateNumerator/v40.FrameRateDenominator
a40 = a40.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v40 = AudioDub(v40, a40)

a41 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_114908.mp4")
v41 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_114908.mp4").AssumeFPS(30,1)
new_rate = Float(a41.AudioLength)/v41.FrameCount*v41.FrameRateNumerator/v41.FrameRateDenominator
a41 = a41.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v41 = AudioDub(v41, a41)

a42 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_115004.mp4")
v42 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_115004.mp4").AssumeFPS(30,1)
new_rate = Float(a42.AudioLength)/v42.FrameCount*v42.FrameRateNumerator/v42.FrameRateDenominator
a42 = a42.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v42 = AudioDub(v42, a42)

a43 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_115315.mp4")
v43 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_115315.mp4").AssumeFPS(30,1)
new_rate = Float(a43.AudioLength)/v43.FrameCount*v43.FrameRateNumerator/v43.FrameRateDenominator
a43 = a43.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v43 = AudioDub(v43, a43)

a44 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120344.mp4")
v44 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120344.mp4").AssumeFPS(30,1)
new_rate = Float(a44.AudioLength)/v44.FrameCount*v44.FrameRateNumerator/v44.FrameRateDenominator
a44 = a44.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v44 = AudioDub(v44, a44)

a45 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120407.mp4")
v45 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120407.mp4").AssumeFPS(30,1)
new_rate = Float(a45.AudioLength)/v45.FrameCount*v45.FrameRateNumerator/v45.FrameRateDenominator
a45 = a45.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v45 = AudioDub(v45, a45)

a46 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120546.mp4")
v46 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120546.mp4").AssumeFPS(30,1)
new_rate = Float(a46.AudioLength)/v46.FrameCount*v46.FrameRateNumerator/v46.FrameRateDenominator
a46 = a46.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v46 = AudioDub(v46, a46)

a47 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120622.mp4")
v47 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_120622.mp4").AssumeFPS(30,1)
new_rate = Float(a47.AudioLength)/v47.FrameCount*v47.FrameRateNumerator/v47.FrameRateDenominator
a47 = a47.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v47 = AudioDub(v47, a47)

a48 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_121058.mp4")
v48 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_121058.mp4").AssumeFPS(30,1)
new_rate = Float(a48.AudioLength)/v48.FrameCount*v48.FrameRateNumerator/v48.FrameRateDenominator
a48 = a48.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v48 = AudioDub(v48, a48)

a49 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130556.mp4")
v49 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130556.mp4").AssumeFPS(30,1)
new_rate = Float(a49.AudioLength)/v49.FrameCount*v49.FrameRateNumerator/v49.FrameRateDenominator
a49 = a49.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v49 = AudioDub(v49, a49)

a50 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130712.mp4")
v50 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130712.mp4").AssumeFPS(30,1)
new_rate = Float(a50.AudioLength)/v50.FrameCount*v50.FrameRateNumerator/v50.FrameRateDenominator
a50 = a50.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v50 = AudioDub(v50, a50)

a51 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130813.mp4")
v51 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_130813.mp4").AssumeFPS(30,1)
new_rate = Float(a51.AudioLength)/v51.FrameCount*v51.FrameRateNumerator/v51.FrameRateDenominator
a51 = a51.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v51 = AudioDub(v51, a51)

a52 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143148.mp4")
v52 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143148.mp4").AssumeFPS(30,1)
new_rate = Float(a52.AudioLength)/v52.FrameCount*v52.FrameRateNumerator/v52.FrameRateDenominator
a52 = a52.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v52 = AudioDub(v52, a52)

a53 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143824.mp4")
v53 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143824.mp4").AssumeFPS(30,1)
new_rate = Float(a53.AudioLength)/v53.FrameCount*v53.FrameRateNumerator/v53.FrameRateDenominator
a53 = a53.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v53 = AudioDub(v53, a53)

a54 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143941.mp4")
v54 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_143941.mp4").AssumeFPS(30,1)
new_rate = Float(a54.AudioLength)/v54.FrameCount*v54.FrameRateNumerator/v54.FrameRateDenominator
a54 = a54.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v54 = AudioDub(v54, a54)

a55 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_173359.mp4")
v55 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_173359.mp4").AssumeFPS(30,1)
new_rate = Float(a55.AudioLength)/v55.FrameCount*v55.FrameRateNumerator/v55.FrameRateDenominator
a55 = a55.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v55 = AudioDub(v55, a55)

a56 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_174349.mp4")
v56 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240530_174349.mp4").AssumeFPS(30,1)
new_rate = Float(a56.AudioLength)/v56.FrameCount*v56.FrameRateNumerator/v56.FrameRateDenominator
a56 = a56.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v56 = AudioDub(v56, a56)

a57 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_100707.mp4")
v57 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_100707.mp4").AssumeFPS(30,1)
new_rate = Float(a57.AudioLength)/v57.FrameCount*v57.FrameRateNumerator/v57.FrameRateDenominator
a57 = a57.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v57 = AudioDub(v57, a57)

a58 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_130054.mp4")
v58 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_130054.mp4").AssumeFPS(30,1)
new_rate = Float(a58.AudioLength)/v58.FrameCount*v58.FrameRateNumerator/v58.FrameRateDenominator
a58 = a58.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v58 = AudioDub(v58, a58)

a59 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_130113.mp4")
v59 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_130113.mp4").AssumeFPS(30,1)
new_rate = Float(a59.AudioLength)/v59.FrameCount*v59.FrameRateNumerator/v59.FrameRateDenominator
a59 = a59.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v59 = AudioDub(v59, a59)

a60 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_131101.mp4")
v60 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_131101.mp4").AssumeFPS(30,1)
new_rate = Float(a60.AudioLength)/v60.FrameCount*v60.FrameRateNumerator/v60.FrameRateDenominator
a60 = a60.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v60 = AudioDub(v60, a60)

a61 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132615.mp4")
v61 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132615.mp4").AssumeFPS(30,1)
new_rate = Float(a61.AudioLength)/v61.FrameCount*v61.FrameRateNumerator/v61.FrameRateDenominator
a61 = a61.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v61 = AudioDub(v61, a61)

a62 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132635.mp4")
v62 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132635.mp4").AssumeFPS(30,1)
new_rate = Float(a62.AudioLength)/v62.FrameCount*v62.FrameRateNumerator/v62.FrameRateDenominator
a62 = a62.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v62 = AudioDub(v62, a62)

a63 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132655.mp4")
v63 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_132655.mp4").AssumeFPS(30,1)
new_rate = Float(a63.AudioLength)/v63.FrameCount*v63.FrameRateNumerator/v63.FrameRateDenominator
a63 = a63.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v63 = AudioDub(v63, a63)

a64 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_135617.mp4")
v64 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_135617.mp4").AssumeFPS(30,1)
new_rate = Float(a64.AudioLength)/v64.FrameCount*v64.FrameRateNumerator/v64.FrameRateDenominator
a64 = a64.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v64 = AudioDub(v64, a64)

a65 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_140632.mp4")
v65 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_140632.mp4").AssumeFPS(30,1)
new_rate = Float(a65.AudioLength)/v65.FrameCount*v65.FrameRateNumerator/v65.FrameRateDenominator
a65 = a65.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v65 = AudioDub(v65, a65)

a66 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_150128.mp4")
v66 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240531_150128.mp4").AssumeFPS(30,1)
new_rate = Float(a66.AudioLength)/v66.FrameCount*v66.FrameRateNumerator/v66.FrameRateDenominator
a66 = a66.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v66 = AudioDub(v66, a66)

a67 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_112929.mp4")
v67 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_112929.mp4").AssumeFPS(30,1)
new_rate = Float(a67.AudioLength)/v67.FrameCount*v67.FrameRateNumerator/v67.FrameRateDenominator
a67 = a67.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v67 = AudioDub(v67, a67)

a68 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_114623.mp4")
v68 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_114623.mp4").AssumeFPS(30,1)
new_rate = Float(a68.AudioLength)/v68.FrameCount*v68.FrameRateNumerator/v68.FrameRateDenominator
a68 = a68.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v68 = AudioDub(v68, a68)

a69 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_115419.mp4")
v69 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_115419.mp4").AssumeFPS(30,1)
new_rate = Float(a69.AudioLength)/v69.FrameCount*v69.FrameRateNumerator/v69.FrameRateDenominator
a69 = a69.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v69 = AudioDub(v69, a69)

a70 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_115453.mp4")
v70 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_115453.mp4").AssumeFPS(30,1)
new_rate = Float(a70.AudioLength)/v70.FrameCount*v70.FrameRateNumerator/v70.FrameRateDenominator
a70 = a70.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v70 = AudioDub(v70, a70)

a71 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131159.mp4")
v71 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131159.mp4").AssumeFPS(30,1)
new_rate = Float(a71.AudioLength)/v71.FrameCount*v71.FrameRateNumerator/v71.FrameRateDenominator
a71 = a71.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v71 = AudioDub(v71, a71)

a72 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131248.mp4")
v72 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131248.mp4").AssumeFPS(30,1)
new_rate = Float(a72.AudioLength)/v72.FrameCount*v72.FrameRateNumerator/v72.FrameRateDenominator
a72 = a72.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v72 = AudioDub(v72, a72)

a73 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131648.mp4")
v73 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_131648.mp4").AssumeFPS(30,1)
new_rate = Float(a73.AudioLength)/v73.FrameCount*v73.FrameRateNumerator/v73.FrameRateDenominator
a73 = a73.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v73 = AudioDub(v73, a73)

a74 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_133124.mp4")
v74 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_133124.mp4").AssumeFPS(30,1)
new_rate = Float(a74.AudioLength)/v74.FrameCount*v74.FrameRateNumerator/v74.FrameRateDenominator
a74 = a74.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v74 = AudioDub(v74, a74)

a75 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_135312.mp4")
v75 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_135312.mp4").AssumeFPS(30,1)
new_rate = Float(a75.AudioLength)/v75.FrameCount*v75.FrameRateNumerator/v75.FrameRateDenominator
a75 = a75.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v75 = AudioDub(v75, a75)

a76 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_140031.mp4")
v76 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_140031.mp4").AssumeFPS(30,1)
new_rate = Float(a76.AudioLength)/v76.FrameCount*v76.FrameRateNumerator/v76.FrameRateDenominator
a76 = a76.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v76 = AudioDub(v76, a76)

a77 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_143653.mp4")
v77 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_143653.mp4").AssumeFPS(30,1)
new_rate = Float(a77.AudioLength)/v77.FrameCount*v77.FrameRateNumerator/v77.FrameRateDenominator
a77 = a77.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v77 = AudioDub(v77, a77)

a78 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_152236.mp4")
v78 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_152236.mp4").AssumeFPS(30,1)
new_rate = Float(a78.AudioLength)/v78.FrameCount*v78.FrameRateNumerator/v78.FrameRateDenominator
a78 = a78.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v78 = AudioDub(v78, a78)

a79 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_162822.mp4")
v79 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_162822.mp4").AssumeFPS(30,1)
new_rate = Float(a79.AudioLength)/v79.FrameCount*v79.FrameRateNumerator/v79.FrameRateDenominator
a79 = a79.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v79 = AudioDub(v79, a79)

a80 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_163038.mp4")
v80 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_163038.mp4").AssumeFPS(30,1)
new_rate = Float(a80.AudioLength)/v80.FrameCount*v80.FrameRateNumerator/v80.FrameRateDenominator
a80 = a80.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v80 = AudioDub(v80, a80)

a81 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_163058.mp4")
v81 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_163058.mp4").AssumeFPS(30,1)
new_rate = Float(a81.AudioLength)/v81.FrameCount*v81.FrameRateNumerator/v81.FrameRateDenominator
a81 = a81.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v81 = AudioDub(v81, a81)

a82 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_194009.mp4")
v82 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240601_194009.mp4").AssumeFPS(30,1)
new_rate = Float(a82.AudioLength)/v82.FrameCount*v82.FrameRateNumerator/v82.FrameRateDenominator
a82 = a82.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v82 = AudioDub(v82, a82)

a83 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111210.mp4")
v83 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111210.mp4").AssumeFPS(30,1)
new_rate = Float(a83.AudioLength)/v83.FrameCount*v83.FrameRateNumerator/v83.FrameRateDenominator
a83 = a83.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v83 = AudioDub(v83, a83)

a84 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111328.mp4")
v84 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111328.mp4").AssumeFPS(30,1)
new_rate = Float(a84.AudioLength)/v84.FrameCount*v84.FrameRateNumerator/v84.FrameRateDenominator
a84 = a84.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v84 = AudioDub(v84, a84)

a85 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111440.mp4")
v85 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_111440.mp4").AssumeFPS(30,1)
new_rate = Float(a85.AudioLength)/v85.FrameCount*v85.FrameRateNumerator/v85.FrameRateDenominator
a85 = a85.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v85 = AudioDub(v85, a85)

a86 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112153.mp4")
v86 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112153.mp4").AssumeFPS(30,1)
new_rate = Float(a86.AudioLength)/v86.FrameCount*v86.FrameRateNumerator/v86.FrameRateDenominator
a86 = a86.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v86 = AudioDub(v86, a86)

a87 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112224.mp4")
v87 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112224.mp4").AssumeFPS(30,1)
new_rate = Float(a87.AudioLength)/v87.FrameCount*v87.FrameRateNumerator/v87.FrameRateDenominator
a87 = a87.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v87 = AudioDub(v87, a87)

a88 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112607.mp4")
v88 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112607.mp4").AssumeFPS(30,1)
new_rate = Float(a88.AudioLength)/v88.FrameCount*v88.FrameRateNumerator/v88.FrameRateDenominator
a88 = a88.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v88 = AudioDub(v88, a88)

a89 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112650.mp4")
v89 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112650.mp4").AssumeFPS(30,1)
new_rate = Float(a89.AudioLength)/v89.FrameCount*v89.FrameRateNumerator/v89.FrameRateDenominator
a89 = a89.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v89 = AudioDub(v89, a89)

a90 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112814.mp4")
v90 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_112814.mp4").AssumeFPS(30,1)
new_rate = Float(a90.AudioLength)/v90.FrameCount*v90.FrameRateNumerator/v90.FrameRateDenominator
a90 = a90.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v90 = AudioDub(v90, a90)

a91 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_115909.mp4")
v91 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_115909.mp4").AssumeFPS(30,1)
new_rate = Float(a91.AudioLength)/v91.FrameCount*v91.FrameRateNumerator/v91.FrameRateDenominator
a91 = a91.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v91 = AudioDub(v91, a91)

a92 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_120303.mp4")
v92 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_120303.mp4").AssumeFPS(30,1)
new_rate = Float(a92.AudioLength)/v92.FrameCount*v92.FrameRateNumerator/v92.FrameRateDenominator
a92 = a92.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v92 = AudioDub(v92, a92)

a93 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_120931.mp4")
v93 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_120931.mp4").AssumeFPS(30,1)
new_rate = Float(a93.AudioLength)/v93.FrameCount*v93.FrameRateNumerator/v93.FrameRateDenominator
a93 = a93.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v93 = AudioDub(v93, a93)

a94 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121025.mp4")
v94 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121025.mp4").AssumeFPS(30,1)
new_rate = Float(a94.AudioLength)/v94.FrameCount*v94.FrameRateNumerator/v94.FrameRateDenominator
a94 = a94.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v94 = AudioDub(v94, a94)

a95 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121115.mp4")
v95 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121115.mp4").AssumeFPS(30,1)
new_rate = Float(a95.AudioLength)/v95.FrameCount*v95.FrameRateNumerator/v95.FrameRateDenominator
a95 = a95.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v95 = AudioDub(v95, a95)

a96 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121341.mp4")
v96 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_121341.mp4").AssumeFPS(30,1)
new_rate = Float(a96.AudioLength)/v96.FrameCount*v96.FrameRateNumerator/v96.FrameRateDenominator
a96 = a96.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v96 = AudioDub(v96, a96)

a97 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_130757.mp4")
v97 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_130757.mp4").AssumeFPS(30,1)
new_rate = Float(a97.AudioLength)/v97.FrameCount*v97.FrameRateNumerator/v97.FrameRateDenominator
a97 = a97.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v97 = AudioDub(v97, a97)

a98 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_133656.mp4")
v98 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_133656.mp4").AssumeFPS(30,1)
new_rate = Float(a98.AudioLength)/v98.FrameCount*v98.FrameRateNumerator/v98.FrameRateDenominator
a98 = a98.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v98 = AudioDub(v98, a98)

a99 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_133922.mp4")
v99 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_133922.mp4").AssumeFPS(30,1)
new_rate = Float(a99.AudioLength)/v99.FrameCount*v99.FrameRateNumerator/v99.FrameRateDenominator
a99 = a99.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v99 = AudioDub(v99, a99)

a100 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_134041.mp4")
v100 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_134041.mp4").AssumeFPS(30,1)
new_rate = Float(a100.AudioLength)/v100.FrameCount*v100.FrameRateNumerator/v100.FrameRateDenominator
a100 = a100.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v100 = AudioDub(v100, a100)

a101 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140706.mp4")
v101 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140706.mp4").AssumeFPS(30,1)
new_rate = Float(a101.AudioLength)/v101.FrameCount*v101.FrameRateNumerator/v101.FrameRateDenominator
a101 = a101.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v101 = AudioDub(v101, a101)

a102 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140725.mp4")
v102 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140725.mp4").AssumeFPS(30,1)
new_rate = Float(a102.AudioLength)/v102.FrameCount*v102.FrameRateNumerator/v102.FrameRateDenominator
a102 = a102.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v102 = AudioDub(v102, a102)

a103 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140843.mp4")
v103 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_140843.mp4").AssumeFPS(30,1)
new_rate = Float(a103.AudioLength)/v103.FrameCount*v103.FrameRateNumerator/v103.FrameRateDenominator
a103 = a103.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v103 = AudioDub(v103, a103)

a104 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141029.mp4")
v104 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141029.mp4").AssumeFPS(30,1)
new_rate = Float(a104.AudioLength)/v104.FrameCount*v104.FrameRateNumerator/v104.FrameRateDenominator
a104 = a104.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v104 = AudioDub(v104, a104)

a105 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141214.mp4")
v105 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141214.mp4").AssumeFPS(30,1)
new_rate = Float(a105.AudioLength)/v105.FrameCount*v105.FrameRateNumerator/v105.FrameRateDenominator
a105 = a105.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v105 = AudioDub(v105, a105)

a106 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141247.mp4")
v106 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_141247.mp4").AssumeFPS(30,1)
new_rate = Float(a106.AudioLength)/v106.FrameCount*v106.FrameRateNumerator/v106.FrameRateDenominator
a106 = a106.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v106 = AudioDub(v106, a106)

a107 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151329.mp4")
v107 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151329.mp4").AssumeFPS(30,1)
new_rate = Float(a107.AudioLength)/v107.FrameCount*v107.FrameRateNumerator/v107.FrameRateDenominator
a107 = a107.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v107 = AudioDub(v107, a107)

a108 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151426.mp4")
v108 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151426.mp4").AssumeFPS(30,1)
new_rate = Float(a108.AudioLength)/v108.FrameCount*v108.FrameRateNumerator/v108.FrameRateDenominator
a108 = a108.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v108 = AudioDub(v108, a108)

a109 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151518.mp4")
v109 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151518.mp4").AssumeFPS(30,1)
new_rate = Float(a109.AudioLength)/v109.FrameCount*v109.FrameRateNumerator/v109.FrameRateDenominator
a109 = a109.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v109 = AudioDub(v109, a109)

a110 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151559.mp4")
v110 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151559.mp4").AssumeFPS(30,1)
new_rate = Float(a110.AudioLength)/v110.FrameCount*v110.FrameRateNumerator/v110.FrameRateDenominator
a110 = a110.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v110 = AudioDub(v110, a110)

a111 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151809.mp4")
v111 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151809.mp4").AssumeFPS(30,1)
new_rate = Float(a111.AudioLength)/v111.FrameCount*v111.FrameRateNumerator/v111.FrameRateDenominator
a111 = a111.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v111 = AudioDub(v111, a111)

a112 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151946.mp4")
v112 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240602_151946.mp4").AssumeFPS(30,1)
new_rate = Float(a112.AudioLength)/v112.FrameCount*v112.FrameRateNumerator/v112.FrameRateDenominator
a112 = a112.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v112 = AudioDub(v112, a112)

a113 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_101031.mp4")
v113 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_101031.mp4").AssumeFPS(30,1)
new_rate = Float(a113.AudioLength)/v113.FrameCount*v113.FrameRateNumerator/v113.FrameRateDenominator
a113 = a113.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v113 = AudioDub(v113, a113)

a114 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_105403.mp4")
v114 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_105403.mp4").AssumeFPS(30,1)
new_rate = Float(a114.AudioLength)/v114.FrameCount*v114.FrameRateNumerator/v114.FrameRateDenominator
a114 = a114.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v114 = AudioDub(v114, a114)

a115 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_105445.mp4")
v115 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_105445.mp4").AssumeFPS(30,1)
new_rate = Float(a115.AudioLength)/v115.FrameCount*v115.FrameRateNumerator/v115.FrameRateDenominator
a115 = a115.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v115 = AudioDub(v115, a115)

a116 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_110923.mp4")
v116 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_110923.mp4").AssumeFPS(30,1)
new_rate = Float(a116.AudioLength)/v116.FrameCount*v116.FrameRateNumerator/v116.FrameRateDenominator
a116 = a116.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v116 = AudioDub(v116, a116)

a117 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_132006.mp4")
v117 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_132006.mp4").AssumeFPS(30,1)
new_rate = Float(a117.AudioLength)/v117.FrameCount*v117.FrameRateNumerator/v117.FrameRateDenominator
a117 = a117.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v117 = AudioDub(v117, a117)

a118 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_140917.mp4")
v118 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_140917.mp4").AssumeFPS(30,1)
new_rate = Float(a118.AudioLength)/v118.FrameCount*v118.FrameRateNumerator/v118.FrameRateDenominator
a118 = a118.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v118 = AudioDub(v118, a118)

a119 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_194939.mp4")
v119 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_194939.mp4").AssumeFPS(30,1)
new_rate = Float(a119.AudioLength)/v119.FrameCount*v119.FrameRateNumerator/v119.FrameRateDenominator
a119 = a119.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v119 = AudioDub(v119, a119)

a120 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_195800.mp4")
v120 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240603_195800.mp4").AssumeFPS(30,1)
new_rate = Float(a120.AudioLength)/v120.FrameCount*v120.FrameRateNumerator/v120.FrameRateDenominator
a120 = a120.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v120 = AudioDub(v120, a120)

a121 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_082827.mp4")
v121 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_082827.mp4").AssumeFPS(30,1)
new_rate = Float(a121.AudioLength)/v121.FrameCount*v121.FrameRateNumerator/v121.FrameRateDenominator
a121 = a121.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v121 = AudioDub(v121, a121)

a122 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_083003.mp4")
v122 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_083003.mp4").AssumeFPS(30,1)
new_rate = Float(a122.AudioLength)/v122.FrameCount*v122.FrameRateNumerator/v122.FrameRateDenominator
a122 = a122.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v122 = AudioDub(v122, a122)

a123 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_114929.mp4")
v123 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_114929.mp4").AssumeFPS(30,1)
new_rate = Float(a123.AudioLength)/v123.FrameCount*v123.FrameRateNumerator/v123.FrameRateDenominator
a123 = a123.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v123 = AudioDub(v123, a123)

a124 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115055.mp4")
v124 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115055.mp4").AssumeFPS(30,1)
new_rate = Float(a124.AudioLength)/v124.FrameCount*v124.FrameRateNumerator/v124.FrameRateDenominator
a124 = a124.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v124 = AudioDub(v124, a124)

a125 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115315.mp4")
v125 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115315.mp4").AssumeFPS(30,1)
new_rate = Float(a125.AudioLength)/v125.FrameCount*v125.FrameRateNumerator/v125.FrameRateDenominator
a125 = a125.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v125 = AudioDub(v125, a125)

a126 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115354.mp4")
v126 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_115354.mp4").AssumeFPS(30,1)
new_rate = Float(a126.AudioLength)/v126.FrameCount*v126.FrameRateNumerator/v126.FrameRateDenominator
a126 = a126.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v126 = AudioDub(v126, a126)

a127 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_141853.mp4")
v127 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240604_141853.mp4").AssumeFPS(30,1)
new_rate = Float(a127.AudioLength)/v127.FrameCount*v127.FrameRateNumerator/v127.FrameRateDenominator
a127 = a127.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v127 = AudioDub(v127, a127)

a128 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120508.mp4")
v128 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120508.mp4").AssumeFPS(30,1)
new_rate = Float(a128.AudioLength)/v128.FrameCount*v128.FrameRateNumerator/v128.FrameRateDenominator
a128 = a128.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v128 = AudioDub(v128, a128)

a129 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120652.mp4")
v129 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120652.mp4").AssumeFPS(30,1)
new_rate = Float(a129.AudioLength)/v129.FrameCount*v129.FrameRateNumerator/v129.FrameRateDenominator
a129 = a129.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v129 = AudioDub(v129, a129)

a130 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120909.mp4")
v130 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120909.mp4").AssumeFPS(30,1)
new_rate = Float(a130.AudioLength)/v130.FrameCount*v130.FrameRateNumerator/v130.FrameRateDenominator
a130 = a130.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v130 = AudioDub(v130, a130)

a131 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120959.mp4")
v131 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_120959.mp4").AssumeFPS(30,1)
new_rate = Float(a131.AudioLength)/v131.FrameCount*v131.FrameRateNumerator/v131.FrameRateDenominator
a131 = a131.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v131 = AudioDub(v131, a131)

a132 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_121409.mp4")
v132 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_121409.mp4").AssumeFPS(30,1)
new_rate = Float(a132.AudioLength)/v132.FrameCount*v132.FrameRateNumerator/v132.FrameRateDenominator
a132 = a132.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v132 = AudioDub(v132, a132)

a133 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_141149.mp4")
v133 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_141149.mp4").AssumeFPS(30,1)
new_rate = Float(a133.AudioLength)/v133.FrameCount*v133.FrameRateNumerator/v133.FrameRateDenominator
a133 = a133.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v133 = AudioDub(v133, a133)

a134 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_141233.mp4")
v134 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_141233.mp4").AssumeFPS(30,1)
new_rate = Float(a134.AudioLength)/v134.FrameCount*v134.FrameRateNumerator/v134.FrameRateDenominator
a134 = a134.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v134 = AudioDub(v134, a134)

a135 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_163705.mp4")
v135 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240605_163705.mp4").AssumeFPS(30,1)
new_rate = Float(a135.AudioLength)/v135.FrameCount*v135.FrameRateNumerator/v135.FrameRateDenominator
a135 = a135.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v135 = AudioDub(v135, a135)

a136 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_114810.mp4")
v136 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_114810.mp4").AssumeFPS(30,1)
new_rate = Float(a136.AudioLength)/v136.FrameCount*v136.FrameRateNumerator/v136.FrameRateDenominator
a136 = a136.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v136 = AudioDub(v136, a136)

a137 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115156.mp4")
v137 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115156.mp4").AssumeFPS(30,1)
new_rate = Float(a137.AudioLength)/v137.FrameCount*v137.FrameRateNumerator/v137.FrameRateDenominator
a137 = a137.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v137 = AudioDub(v137, a137)

a138 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115218.mp4")
v138 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115218.mp4").AssumeFPS(30,1)
new_rate = Float(a138.AudioLength)/v138.FrameCount*v138.FrameRateNumerator/v138.FrameRateDenominator
a138 = a138.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v138 = AudioDub(v138, a138)

a139 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115532.mp4")
v139 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115532.mp4").AssumeFPS(30,1)
new_rate = Float(a139.AudioLength)/v139.FrameCount*v139.FrameRateNumerator/v139.FrameRateDenominator
a139 = a139.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v139 = AudioDub(v139, a139)

a140 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115639.mp4")
v140 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115639.mp4").AssumeFPS(30,1)
new_rate = Float(a140.AudioLength)/v140.FrameCount*v140.FrameRateNumerator/v140.FrameRateDenominator
a140 = a140.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v140 = AudioDub(v140, a140)

a141 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115930.mp4")
v141 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_115930.mp4").AssumeFPS(30,1)
new_rate = Float(a141.AudioLength)/v141.FrameCount*v141.FrameRateNumerator/v141.FrameRateDenominator
a141 = a141.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v141 = AudioDub(v141, a141)

a142 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_120058.mp4")
v142 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_120058.mp4").AssumeFPS(30,1)
new_rate = Float(a142.AudioLength)/v142.FrameCount*v142.FrameRateNumerator/v142.FrameRateDenominator
a142 = a142.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v142 = AudioDub(v142, a142)

a143 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_120717.mp4")
v143 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_120717.mp4").AssumeFPS(30,1)
new_rate = Float(a143.AudioLength)/v143.FrameCount*v143.FrameRateNumerator/v143.FrameRateDenominator
a143 = a143.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v143 = AudioDub(v143, a143)

a144 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_121116.mp4")
v144 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_121116.mp4").AssumeFPS(30,1)
new_rate = Float(a144.AudioLength)/v144.FrameCount*v144.FrameRateNumerator/v144.FrameRateDenominator
a144 = a144.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v144 = AudioDub(v144, a144)

a145 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_165908.mp4")
v145 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_165908.mp4").AssumeFPS(30,1)
new_rate = Float(a145.AudioLength)/v145.FrameCount*v145.FrameRateNumerator/v145.FrameRateDenominator
a145 = a145.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v145 = AudioDub(v145, a145)

a146 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_190451.mp4")
v146 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_190451.mp4").AssumeFPS(30,1)
new_rate = Float(a146.AudioLength)/v146.FrameCount*v146.FrameRateNumerator/v146.FrameRateDenominator
a146 = a146.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v146 = AudioDub(v146, a146)

a147 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_192752.mp4")
v147 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_192752.mp4").AssumeFPS(30,1)
new_rate = Float(a147.AudioLength)/v147.FrameCount*v147.FrameRateNumerator/v147.FrameRateDenominator
a147 = a147.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v147 = AudioDub(v147, a147)

a148 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_192812.mp4")
v148 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240606_192812.mp4").AssumeFPS(30,1)
new_rate = Float(a148.AudioLength)/v148.FrameCount*v148.FrameRateNumerator/v148.FrameRateDenominator
a148 = a148.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v148 = AudioDub(v148, a148)

a149 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240607_115504.mp4")
v149 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240607_115504.mp4").AssumeFPS(30,1)
new_rate = Float(a149.AudioLength)/v149.FrameCount*v149.FrameRateNumerator/v149.FrameRateDenominator
a149 = a149.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v149 = AudioDub(v149, a149)

a150 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240607_115709.mp4")
v150 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240607_115709.mp4").AssumeFPS(30,1)
new_rate = Float(a150.AudioLength)/v150.FrameCount*v150.FrameRateNumerator/v150.FrameRateDenominator
a150 = a150.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v150 = AudioDub(v150, a150)

a151 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_104718.mp4")
v151 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_104718.mp4").AssumeFPS(30,1)
new_rate = Float(a151.AudioLength)/v151.FrameCount*v151.FrameRateNumerator/v151.FrameRateDenominator
a151 = a151.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v151 = AudioDub(v151, a151)

a152 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_112002.mp4")
v152 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_112002.mp4").AssumeFPS(30,1)
new_rate = Float(a152.AudioLength)/v152.FrameCount*v152.FrameRateNumerator/v152.FrameRateDenominator
a152 = a152.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v152 = AudioDub(v152, a152)

a153 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_141922.mp4")
v153 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_141922.mp4").AssumeFPS(30,1)
new_rate = Float(a153.AudioLength)/v153.FrameCount*v153.FrameRateNumerator/v153.FrameRateDenominator
a153 = a153.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v153 = AudioDub(v153, a153)

a154 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_152330.mp4")
v154 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_152330.mp4").AssumeFPS(30,1)
new_rate = Float(a154.AudioLength)/v154.FrameCount*v154.FrameRateNumerator/v154.FrameRateDenominator
a154 = a154.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v154 = AudioDub(v154, a154)

a155 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_153121.mp4")
v155 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_153121.mp4").AssumeFPS(30,1)
new_rate = Float(a155.AudioLength)/v155.FrameCount*v155.FrameRateNumerator/v155.FrameRateDenominator
a155 = a155.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v155 = AudioDub(v155, a155)

a156 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_161116.mp4")
v156 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_161116.mp4").AssumeFPS(30,1)
new_rate = Float(a156.AudioLength)/v156.FrameCount*v156.FrameRateNumerator/v156.FrameRateDenominator
a156 = a156.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v156 = AudioDub(v156, a156)

a157 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_175615.mp4")
v157 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_175615.mp4").AssumeFPS(30,1)
new_rate = Float(a157.AudioLength)/v157.FrameCount*v157.FrameRateNumerator/v157.FrameRateDenominator
a157 = a157.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v157 = AudioDub(v157, a157)

a158 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_181234.mp4")
v158 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_181234.mp4").AssumeFPS(30,1)
new_rate = Float(a158.AudioLength)/v158.FrameCount*v158.FrameRateNumerator/v158.FrameRateDenominator
a158 = a158.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v158 = AudioDub(v158, a158)

a159 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_182604.mp4")
v159 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240608_182604.mp4").AssumeFPS(30,1)
new_rate = Float(a159.AudioLength)/v159.FrameCount*v159.FrameRateNumerator/v159.FrameRateDenominator
a159 = a159.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v159 = AudioDub(v159, a159)

a160 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095102.mp4")
v160 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095102.mp4").AssumeFPS(30,1)
new_rate = Float(a160.AudioLength)/v160.FrameCount*v160.FrameRateNumerator/v160.FrameRateDenominator
a160 = a160.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v160 = AudioDub(v160, a160)

a161 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095209.mp4")
v161 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095209.mp4").AssumeFPS(30,1)
new_rate = Float(a161.AudioLength)/v161.FrameCount*v161.FrameRateNumerator/v161.FrameRateDenominator
a161 = a161.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v161 = AudioDub(v161, a161)

a162 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095246.mp4")
v162 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095246.mp4").AssumeFPS(30,1)
new_rate = Float(a162.AudioLength)/v162.FrameCount*v162.FrameRateNumerator/v162.FrameRateDenominator
a162 = a162.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v162 = AudioDub(v162, a162)

a163 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095323.mp4")
v163 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_095323.mp4").AssumeFPS(30,1)
new_rate = Float(a163.AudioLength)/v163.FrameCount*v163.FrameRateNumerator/v163.FrameRateDenominator
a163 = a163.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v163 = AudioDub(v163, a163)

a164 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_101807.mp4")
v164 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_101807.mp4").AssumeFPS(30,1)
new_rate = Float(a164.AudioLength)/v164.FrameCount*v164.FrameRateNumerator/v164.FrameRateDenominator
a164 = a164.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v164 = AudioDub(v164, a164)

a165 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185358.mp4")
v165 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185358.mp4").AssumeFPS(30,1)
new_rate = Float(a165.AudioLength)/v165.FrameCount*v165.FrameRateNumerator/v165.FrameRateDenominator
a165 = a165.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v165 = AudioDub(v165, a165)

a166 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185439.mp4")
v166 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185439.mp4").AssumeFPS(30,1)
new_rate = Float(a166.AudioLength)/v166.FrameCount*v166.FrameRateNumerator/v166.FrameRateDenominator
a166 = a166.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v166 = AudioDub(v166, a166)

a167 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185505.mp4")
v167 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240609_185505.mp4").AssumeFPS(30,1)
new_rate = Float(a167.AudioLength)/v167.FrameCount*v167.FrameRateNumerator/v167.FrameRateDenominator
a167 = a167.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v167 = AudioDub(v167, a167)

a168 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_093219.mp4")
v168 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_093219.mp4").AssumeFPS(30,1)
new_rate = Float(a168.AudioLength)/v168.FrameCount*v168.FrameRateNumerator/v168.FrameRateDenominator
a168 = a168.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v168 = AudioDub(v168, a168)

a169 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131139.mp4")
v169 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131139.mp4").AssumeFPS(30,1)
new_rate = Float(a169.AudioLength)/v169.FrameCount*v169.FrameRateNumerator/v169.FrameRateDenominator
a169 = a169.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v169 = AudioDub(v169, a169)

a170 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131204.mp4")
v170 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131204.mp4").AssumeFPS(30,1)
new_rate = Float(a170.AudioLength)/v170.FrameCount*v170.FrameRateNumerator/v170.FrameRateDenominator
a170 = a170.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v170 = AudioDub(v170, a170)

a171 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131240.mp4")
v171 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131240.mp4").AssumeFPS(30,1)
new_rate = Float(a171.AudioLength)/v171.FrameCount*v171.FrameRateNumerator/v171.FrameRateDenominator
a171 = a171.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v171 = AudioDub(v171, a171)

a172 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131308.mp4")
v172 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131308.mp4").AssumeFPS(30,1)
new_rate = Float(a172.AudioLength)/v172.FrameCount*v172.FrameRateNumerator/v172.FrameRateDenominator
a172 = a172.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v172 = AudioDub(v172, a172)

a173 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131348.mp4")
v173 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131348.mp4").AssumeFPS(30,1)
new_rate = Float(a173.AudioLength)/v173.FrameCount*v173.FrameRateNumerator/v173.FrameRateDenominator
a173 = a173.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v173 = AudioDub(v173, a173)

a174 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131419.mp4")
v174 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_131419.mp4").AssumeFPS(30,1)
new_rate = Float(a174.AudioLength)/v174.FrameCount*v174.FrameRateNumerator/v174.FrameRateDenominator
a174 = a174.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v174 = AudioDub(v174, a174)

a175 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132616.mp4")
v175 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132616.mp4").AssumeFPS(30,1)
new_rate = Float(a175.AudioLength)/v175.FrameCount*v175.FrameRateNumerator/v175.FrameRateDenominator
a175 = a175.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v175 = AudioDub(v175, a175)

a176 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132626.mp4")
v176 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132626.mp4").AssumeFPS(30,1)
new_rate = Float(a176.AudioLength)/v176.FrameCount*v176.FrameRateNumerator/v176.FrameRateDenominator
a176 = a176.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v176 = AudioDub(v176, a176)

a177 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132947.mp4")
v177 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_132947.mp4").AssumeFPS(30,1)
new_rate = Float(a177.AudioLength)/v177.FrameCount*v177.FrameRateNumerator/v177.FrameRateDenominator
a177 = a177.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v177 = AudioDub(v177, a177)

a178 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133216.mp4")
v178 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133216.mp4").AssumeFPS(30,1)
new_rate = Float(a178.AudioLength)/v178.FrameCount*v178.FrameRateNumerator/v178.FrameRateDenominator
a178 = a178.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v178 = AudioDub(v178, a178)

a179 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133249.mp4")
v179 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133249.mp4").AssumeFPS(30,1)
new_rate = Float(a179.AudioLength)/v179.FrameCount*v179.FrameRateNumerator/v179.FrameRateDenominator
a179 = a179.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v179 = AudioDub(v179, a179)

a180 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133357.mp4")
v180 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133357.mp4").AssumeFPS(30,1)
new_rate = Float(a180.AudioLength)/v180.FrameCount*v180.FrameRateNumerator/v180.FrameRateDenominator
a180 = a180.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v180 = AudioDub(v180, a180)

a181 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133755.mp4")
v181 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133755.mp4").AssumeFPS(30,1)
new_rate = Float(a181.AudioLength)/v181.FrameCount*v181.FrameRateNumerator/v181.FrameRateDenominator
a181 = a181.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v181 = AudioDub(v181, a181)

a182 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133928.mp4")
v182 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_133928.mp4").AssumeFPS(30,1)
new_rate = Float(a182.AudioLength)/v182.FrameCount*v182.FrameRateNumerator/v182.FrameRateDenominator
a182 = a182.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v182 = AudioDub(v182, a182)

a183 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_140131.mp4")
v183 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_140131.mp4").AssumeFPS(30,1)
new_rate = Float(a183.AudioLength)/v183.FrameCount*v183.FrameRateNumerator/v183.FrameRateDenominator
a183 = a183.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v183 = AudioDub(v183, a183)

a184 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_192028.mp4")
v184 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_192028.mp4").AssumeFPS(30,1)
new_rate = Float(a184.AudioLength)/v184.FrameCount*v184.FrameRateNumerator/v184.FrameRateDenominator
a184 = a184.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v184 = AudioDub(v184, a184)

a185 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_195754.mp4")
v185 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240612_195754.mp4").AssumeFPS(30,1)
new_rate = Float(a185.AudioLength)/v185.FrameCount*v185.FrameRateNumerator/v185.FrameRateDenominator
a185 = a185.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v185 = AudioDub(v185, a185)

a186 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_161000.mp4")
v186 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_161000.mp4").AssumeFPS(30,1)
new_rate = Float(a186.AudioLength)/v186.FrameCount*v186.FrameRateNumerator/v186.FrameRateDenominator
a186 = a186.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v186 = AudioDub(v186, a186)

a187 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200656.mp4")
v187 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200656.mp4").AssumeFPS(30,1)
new_rate = Float(a187.AudioLength)/v187.FrameCount*v187.FrameRateNumerator/v187.FrameRateDenominator
a187 = a187.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v187 = AudioDub(v187, a187)

a188 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200721.mp4")
v188 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200721.mp4").AssumeFPS(30,1)
new_rate = Float(a188.AudioLength)/v188.FrameCount*v188.FrameRateNumerator/v188.FrameRateDenominator
a188 = a188.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v188 = AudioDub(v188, a188)

a189 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200812.mp4")
v189 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240613_200812.mp4").AssumeFPS(30,1)
new_rate = Float(a189.AudioLength)/v189.FrameCount*v189.FrameRateNumerator/v189.FrameRateDenominator
a189 = a189.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v189 = AudioDub(v189, a189)

a190 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_102919.mp4")
v190 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_102919.mp4").AssumeFPS(30,1)
new_rate = Float(a190.AudioLength)/v190.FrameCount*v190.FrameRateNumerator/v190.FrameRateDenominator
a190 = a190.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v190 = AudioDub(v190, a190)

a191 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_110047.mp4")
v191 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_110047.mp4").AssumeFPS(30,1)
new_rate = Float(a191.AudioLength)/v191.FrameCount*v191.FrameRateNumerator/v191.FrameRateDenominator
a191 = a191.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v191 = AudioDub(v191, a191)

a192 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_110110.mp4")
v192 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_110110.mp4").AssumeFPS(30,1)
new_rate = Float(a192.AudioLength)/v192.FrameCount*v192.FrameRateNumerator/v192.FrameRateDenominator
a192 = a192.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v192 = AudioDub(v192, a192)

a193 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_114518.mp4")
v193 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_114518.mp4").AssumeFPS(30,1)
new_rate = Float(a193.AudioLength)/v193.FrameCount*v193.FrameRateNumerator/v193.FrameRateDenominator
a193 = a193.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v193 = AudioDub(v193, a193)

a194 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131034.mp4")
v194 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131034.mp4").AssumeFPS(30,1)
new_rate = Float(a194.AudioLength)/v194.FrameCount*v194.FrameRateNumerator/v194.FrameRateDenominator
a194 = a194.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v194 = AudioDub(v194, a194)

a195 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131142.mp4")
v195 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131142.mp4").AssumeFPS(30,1)
new_rate = Float(a195.AudioLength)/v195.FrameCount*v195.FrameRateNumerator/v195.FrameRateDenominator
a195 = a195.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v195 = AudioDub(v195, a195)

a196 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131221.mp4")
v196 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_131221.mp4").AssumeFPS(30,1)
new_rate = Float(a196.AudioLength)/v196.FrameCount*v196.FrameRateNumerator/v196.FrameRateDenominator
a196 = a196.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v196 = AudioDub(v196, a196)

a197 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_165841.mp4")
v197 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_165841.mp4").AssumeFPS(30,1)
new_rate = Float(a197.AudioLength)/v197.FrameCount*v197.FrameRateNumerator/v197.FrameRateDenominator
a197 = a197.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v197 = AudioDub(v197, a197)

a198 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_165911.mp4")
v198 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_165911.mp4").AssumeFPS(30,1)
new_rate = Float(a198.AudioLength)/v198.FrameCount*v198.FrameRateNumerator/v198.FrameRateDenominator
a198 = a198.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v198 = AudioDub(v198, a198)

a199 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170106.mp4")
v199 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170106.mp4").AssumeFPS(30,1)
new_rate = Float(a199.AudioLength)/v199.FrameCount*v199.FrameRateNumerator/v199.FrameRateDenominator
a199 = a199.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v199 = AudioDub(v199, a199)

a200 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170300.mp4")
v200 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170300.mp4").AssumeFPS(30,1)
new_rate = Float(a200.AudioLength)/v200.FrameCount*v200.FrameRateNumerator/v200.FrameRateDenominator
a200 = a200.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v200 = AudioDub(v200, a200)

a201 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170832.mp4")
v201 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_170832.mp4").AssumeFPS(30,1)
new_rate = Float(a201.AudioLength)/v201.FrameCount*v201.FrameRateNumerator/v201.FrameRateDenominator
a201 = a201.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v201 = AudioDub(v201, a201)

a202 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_172506.mp4")
v202 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_172506.mp4").AssumeFPS(30,1)
new_rate = Float(a202.AudioLength)/v202.FrameCount*v202.FrameRateNumerator/v202.FrameRateDenominator
a202 = a202.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v202 = AudioDub(v202, a202)

a203 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_172524.mp4")
v203 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_172524.mp4").AssumeFPS(30,1)
new_rate = Float(a203.AudioLength)/v203.FrameCount*v203.FrameRateNumerator/v203.FrameRateDenominator
a203 = a203.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v203 = AudioDub(v203, a203)

a204 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175039.mp4")
v204 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175039.mp4").AssumeFPS(30,1)
new_rate = Float(a204.AudioLength)/v204.FrameCount*v204.FrameRateNumerator/v204.FrameRateDenominator
a204 = a204.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v204 = AudioDub(v204, a204)

a205 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175114.mp4")
v205 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175114.mp4").AssumeFPS(30,1)
new_rate = Float(a205.AudioLength)/v205.FrameCount*v205.FrameRateNumerator/v205.FrameRateDenominator
a205 = a205.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v205 = AudioDub(v205, a205)

a206 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175131.mp4")
v206 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175131.mp4").AssumeFPS(30,1)
new_rate = Float(a206.AudioLength)/v206.FrameCount*v206.FrameRateNumerator/v206.FrameRateDenominator
a206 = a206.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v206 = AudioDub(v206, a206)

a207 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175202.mp4")
v207 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_175202.mp4").AssumeFPS(30,1)
new_rate = Float(a207.AudioLength)/v207.FrameCount*v207.FrameRateNumerator/v207.FrameRateDenominator
a207 = a207.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v207 = AudioDub(v207, a207)

a208 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184400.mp4")
v208 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184400.mp4").AssumeFPS(30,1)
new_rate = Float(a208.AudioLength)/v208.FrameCount*v208.FrameRateNumerator/v208.FrameRateDenominator
a208 = a208.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v208 = AudioDub(v208, a208)

a209 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184428.mp4")
v209 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184428.mp4").AssumeFPS(30,1)
new_rate = Float(a209.AudioLength)/v209.FrameCount*v209.FrameRateNumerator/v209.FrameRateDenominator
a209 = a209.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v209 = AudioDub(v209, a209)

a210 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184500.mp4")
v210 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_184500.mp4").AssumeFPS(30,1)
new_rate = Float(a210.AudioLength)/v210.FrameCount*v210.FrameRateNumerator/v210.FrameRateDenominator
a210 = a210.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v210 = AudioDub(v210, a210)

a211 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191356.mp4")
v211 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191356.mp4").AssumeFPS(30,1)
new_rate = Float(a211.AudioLength)/v211.FrameCount*v211.FrameRateNumerator/v211.FrameRateDenominator
a211 = a211.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v211 = AudioDub(v211, a211)

a212 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191435.mp4")
v212 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191435.mp4").AssumeFPS(30,1)
new_rate = Float(a212.AudioLength)/v212.FrameCount*v212.FrameRateNumerator/v212.FrameRateDenominator
a212 = a212.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v212 = AudioDub(v212, a212)

a213 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191500.mp4")
v213 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240614_191500.mp4").AssumeFPS(30,1)
new_rate = Float(a213.AudioLength)/v213.FrameCount*v213.FrameRateNumerator/v213.FrameRateDenominator
a213 = a213.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v213 = AudioDub(v213, a213)

a214 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_100630.mp4")
v214 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_100630.mp4").AssumeFPS(30,1)
new_rate = Float(a214.AudioLength)/v214.FrameCount*v214.FrameRateNumerator/v214.FrameRateDenominator
a214 = a214.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v214 = AudioDub(v214, a214)

a215 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_100748.mp4")
v215 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_100748.mp4").AssumeFPS(30,1)
new_rate = Float(a215.AudioLength)/v215.FrameCount*v215.FrameRateNumerator/v215.FrameRateDenominator
a215 = a215.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v215 = AudioDub(v215, a215)

a216 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101117.mp4")
v216 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101117.mp4").AssumeFPS(30,1)
new_rate = Float(a216.AudioLength)/v216.FrameCount*v216.FrameRateNumerator/v216.FrameRateDenominator
a216 = a216.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v216 = AudioDub(v216, a216)

a217 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101204.mp4")
v217 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101204.mp4").AssumeFPS(30,1)
new_rate = Float(a217.AudioLength)/v217.FrameCount*v217.FrameRateNumerator/v217.FrameRateDenominator
a217 = a217.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v217 = AudioDub(v217, a217)

a218 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101642.mp4")
v218 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101642.mp4").AssumeFPS(30,1)
new_rate = Float(a218.AudioLength)/v218.FrameCount*v218.FrameRateNumerator/v218.FrameRateDenominator
a218 = a218.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v218 = AudioDub(v218, a218)

a219 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101958.mp4")
v219 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_101958.mp4").AssumeFPS(30,1)
new_rate = Float(a219.AudioLength)/v219.FrameCount*v219.FrameRateNumerator/v219.FrameRateDenominator
a219 = a219.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v219 = AudioDub(v219, a219)

a220 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_121429.mp4")
v220 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_121429.mp4").AssumeFPS(30,1)
new_rate = Float(a220.AudioLength)/v220.FrameCount*v220.FrameRateNumerator/v220.FrameRateDenominator
a220 = a220.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v220 = AudioDub(v220, a220)

a221 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_121451.mp4")
v221 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240615_121451.mp4").AssumeFPS(30,1)
new_rate = Float(a221.AudioLength)/v221.FrameCount*v221.FrameRateNumerator/v221.FrameRateDenominator
a221 = a221.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v221 = AudioDub(v221, a221)

a222 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_112840.mp4")
v222 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_112840.mp4").AssumeFPS(30,1)
new_rate = Float(a222.AudioLength)/v222.FrameCount*v222.FrameRateNumerator/v222.FrameRateDenominator
a222 = a222.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v222 = AudioDub(v222, a222)

a223 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134919.mp4")
v223 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134919.mp4").AssumeFPS(30,1)
new_rate = Float(a223.AudioLength)/v223.FrameCount*v223.FrameRateNumerator/v223.FrameRateDenominator
a223 = a223.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v223 = AudioDub(v223, a223)

a224 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134936.mp4")
v224 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134936.mp4").AssumeFPS(30,1)
new_rate = Float(a224.AudioLength)/v224.FrameCount*v224.FrameRateNumerator/v224.FrameRateDenominator
a224 = a224.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v224 = AudioDub(v224, a224)

a225 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134954.mp4")
v225 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_134954.mp4").AssumeFPS(30,1)
new_rate = Float(a225.AudioLength)/v225.FrameCount*v225.FrameRateNumerator/v225.FrameRateDenominator
a225 = a225.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v225 = AudioDub(v225, a225)

a226 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_140828.mp4")
v226 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_140828.mp4").AssumeFPS(30,1)
new_rate = Float(a226.AudioLength)/v226.FrameCount*v226.FrameRateNumerator/v226.FrameRateDenominator
a226 = a226.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v226 = AudioDub(v226, a226)

a227 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_141257.mp4")
v227 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_141257.mp4").AssumeFPS(30,1)
new_rate = Float(a227.AudioLength)/v227.FrameCount*v227.FrameRateNumerator/v227.FrameRateDenominator
a227 = a227.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v227 = AudioDub(v227, a227)

a228 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_142011.mp4")
v228 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_142011.mp4").AssumeFPS(30,1)
new_rate = Float(a228.AudioLength)/v228.FrameCount*v228.FrameRateNumerator/v228.FrameRateDenominator
a228 = a228.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v228 = AudioDub(v228, a228)

a229 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_142210.mp4")
v229 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_142210.mp4").AssumeFPS(30,1)
new_rate = Float(a229.AudioLength)/v229.FrameCount*v229.FrameRateNumerator/v229.FrameRateDenominator
a229 = a229.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v229 = AudioDub(v229, a229)

a230 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_181824.mp4")
v230 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240616_181824.mp4").AssumeFPS(30,1)
new_rate = Float(a230.AudioLength)/v230.FrameCount*v230.FrameRateNumerator/v230.FrameRateDenominator
a230 = a230.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v230 = AudioDub(v230, a230)

a231 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240617_170118.mp4")
v231 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240617_170118.mp4").AssumeFPS(30,1)
new_rate = Float(a231.AudioLength)/v231.FrameCount*v231.FrameRateNumerator/v231.FrameRateDenominator
a231 = a231.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v231 = AudioDub(v231, a231)

a232 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240617_171627.mp4")
v232 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240617_171627.mp4").AssumeFPS(30,1)
new_rate = Float(a232.AudioLength)/v232.FrameCount*v232.FrameRateNumerator/v232.FrameRateDenominator
a232 = a232.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v232 = AudioDub(v232, a232)

a233 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_092928.mp4")
v233 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_092928.mp4").AssumeFPS(30,1)
new_rate = Float(a233.AudioLength)/v233.FrameCount*v233.FrameRateNumerator/v233.FrameRateDenominator
a233 = a233.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v233 = AudioDub(v233, a233)

a234 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_093033.mp4")
v234 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_093033.mp4").AssumeFPS(30,1)
new_rate = Float(a234.AudioLength)/v234.FrameCount*v234.FrameRateNumerator/v234.FrameRateDenominator
a234 = a234.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v234 = AudioDub(v234, a234)

a235 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_094113.mp4")
v235 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_094113.mp4").AssumeFPS(30,1)
new_rate = Float(a235.AudioLength)/v235.FrameCount*v235.FrameRateNumerator/v235.FrameRateDenominator
a235 = a235.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v235 = AudioDub(v235, a235)

a236 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_104228.mp4")
v236 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_104228.mp4").AssumeFPS(30,1)
new_rate = Float(a236.AudioLength)/v236.FrameCount*v236.FrameRateNumerator/v236.FrameRateDenominator
a236 = a236.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v236 = AudioDub(v236, a236)

a237 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_120449.mp4")
v237 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_120449.mp4").AssumeFPS(30,1)
new_rate = Float(a237.AudioLength)/v237.FrameCount*v237.FrameRateNumerator/v237.FrameRateDenominator
a237 = a237.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v237 = AudioDub(v237, a237)

a238 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_120511.mp4")
v238 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_120511.mp4").AssumeFPS(30,1)
new_rate = Float(a238.AudioLength)/v238.FrameCount*v238.FrameRateNumerator/v238.FrameRateDenominator
a238 = a238.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v238 = AudioDub(v238, a238)

a239 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_131402.mp4")
v239 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240618_131402.mp4").AssumeFPS(30,1)
new_rate = Float(a239.AudioLength)/v239.FrameCount*v239.FrameRateNumerator/v239.FrameRateDenominator
a239 = a239.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v239 = AudioDub(v239, a239)

a240 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_070944.mp4")
v240 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_070944.mp4").AssumeFPS(30,1)
new_rate = Float(a240.AudioLength)/v240.FrameCount*v240.FrameRateNumerator/v240.FrameRateDenominator
a240 = a240.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v240 = AudioDub(v240, a240)

a241 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104223.mp4")
v241 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104223.mp4").AssumeFPS(30,1)
new_rate = Float(a241.AudioLength)/v241.FrameCount*v241.FrameRateNumerator/v241.FrameRateDenominator
a241 = a241.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v241 = AudioDub(v241, a241)

a242 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104459.mp4")
v242 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104459.mp4").AssumeFPS(30,1)
new_rate = Float(a242.AudioLength)/v242.FrameCount*v242.FrameRateNumerator/v242.FrameRateDenominator
a242 = a242.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v242 = AudioDub(v242, a242)

a243 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104641.mp4")
v243 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104641.mp4").AssumeFPS(30,1)
new_rate = Float(a243.AudioLength)/v243.FrameCount*v243.FrameRateNumerator/v243.FrameRateDenominator
a243 = a243.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v243 = AudioDub(v243, a243)

a244 = LSMASHAudioSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104716.mp4")
v244 = LSMASHVideoSource("m:\Media\video\2024-Kveten-Cerven-Chorvatsko\20240619_104716.mp4").AssumeFPS(30,1)
new_rate = Float(a244.AudioLength)/v244.FrameCount*v244.FrameRateNumerator/v244.FrameRateDenominator
a244 = a244.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v244 = AudioDub(v244, a244)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128 + v129 + v130 + v131 + v132 + v133 + v134 + v135 + v136 + v137 + v138 + v139 + v140 + v141 + v142 + v143 + v144 + v145 + v146 + v147 + v148 + v149 + v150 + v151 + v152 + v153 + v154 + v155 + v156 + v157 + v158 + v159 + v160 + v161 + v162 + v163 + v164 + v165 + v166 + v167 + v168 + v169 + v170 + v171 + v172 + v173 + v174 + v175 + v176 + v177 + v178 + v179 + v180 + v181 + v182 + v183 + v184 + v185 + v186 + v187 + v188 + v189 + v190 + v191 + v192 + v193 + v194 + v195 + v196 + v197 + v198 + v199 + v200 + v201 + v202 + v203 + v204 + v205 + v206 + v207 + v208 + v209 + v210 + v211 + v212 + v213 + v214 + v215 + v216 + v217 + v218 + v219 + v220 + v221 + v222 + v223 + v224 + v225 + v226 + v227 + v228 + v229 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v241 + v242 + v243 + v244
return last
