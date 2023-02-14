LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_094204.mp4")
v1 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_094204.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_094423.mp4")
v2 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_094423.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_094454.mp4")
v3 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_094454.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_094510.mp4")
v4 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_094510.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_122848.mp4")
v5 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_122848.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_122947.mp4")
v6 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_122947.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_123411.mp4")
v7 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_123411.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_123451.mp4")
v8 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_123451.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_123540.mp4")
v9 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_123540.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_151414.mp4")
v10 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_151414.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_151458.mp4")
v11 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_151458.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221126_151512.mp4")
v12 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221126_151512.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_090941.mp4")
v13 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_090941.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102038.mp4")
v14 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102038.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102116.mp4")
v15 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102116.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102147.mp4")
v16 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102147.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102219.mp4")
v17 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102219.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102253.mp4")
v18 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102253.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102321.mp4")
v19 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102321.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_102817.mp4")
v20 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_102817.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_104741.mp4")
v21 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_104741.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_104806.mp4")
v22 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_104806.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_105308.mp4")
v23 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_105308.mp4").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_105443.mp4")
v24 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_105443.mp4").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_105722.mp4")
v25 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_105722.mp4").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_105849.mp4")
v26 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_105849.mp4").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110027.mp4")
v27 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110027.mp4").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a28 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110043.mp4")
v28 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110043.mp4").AssumeFPS(30,1)
new_rate = Float(a28.AudioLength)/v28.FrameCount*v28.FrameRateNumerator/v28.FrameRateDenominator
a28 = a28.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v28 = AudioDub(v28, a28)

a29 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110149.mp4")
v29 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110149.mp4").AssumeFPS(30,1)
new_rate = Float(a29.AudioLength)/v29.FrameCount*v29.FrameRateNumerator/v29.FrameRateDenominator
a29 = a29.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v29 = AudioDub(v29, a29)

a30 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110645.mp4")
v30 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110645.mp4").AssumeFPS(30,1)
new_rate = Float(a30.AudioLength)/v30.FrameCount*v30.FrameRateNumerator/v30.FrameRateDenominator
a30 = a30.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v30 = AudioDub(v30, a30)

a31 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110835.mp4")
v31 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110835.mp4").AssumeFPS(30,1)
new_rate = Float(a31.AudioLength)/v31.FrameCount*v31.FrameRateNumerator/v31.FrameRateDenominator
a31 = a31.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v31 = AudioDub(v31, a31)

a32 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110902.mp4")
v32 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110902.mp4").AssumeFPS(30,1)
new_rate = Float(a32.AudioLength)/v32.FrameCount*v32.FrameRateNumerator/v32.FrameRateDenominator
a32 = a32.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v32 = AudioDub(v32, a32)

a33 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_110921.mp4")
v33 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_110921.mp4").AssumeFPS(30,1)
new_rate = Float(a33.AudioLength)/v33.FrameCount*v33.FrameRateNumerator/v33.FrameRateDenominator
a33 = a33.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v33 = AudioDub(v33, a33)

a34 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_111935.mp4")
v34 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_111935.mp4").AssumeFPS(30,1)
new_rate = Float(a34.AudioLength)/v34.FrameCount*v34.FrameRateNumerator/v34.FrameRateDenominator
a34 = a34.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v34 = AudioDub(v34, a34)

a35 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_112147.mp4")
v35 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_112147.mp4").AssumeFPS(30,1)
new_rate = Float(a35.AudioLength)/v35.FrameCount*v35.FrameRateNumerator/v35.FrameRateDenominator
a35 = a35.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v35 = AudioDub(v35, a35)

a36 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_112219.mp4")
v36 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_112219.mp4").AssumeFPS(30,1)
new_rate = Float(a36.AudioLength)/v36.FrameCount*v36.FrameRateNumerator/v36.FrameRateDenominator
a36 = a36.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v36 = AudioDub(v36, a36)

a37 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_112237.mp4")
v37 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_112237.mp4").AssumeFPS(30,1)
new_rate = Float(a37.AudioLength)/v37.FrameCount*v37.FrameRateNumerator/v37.FrameRateDenominator
a37 = a37.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v37 = AudioDub(v37, a37)

a38 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_114040.mp4")
v38 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_114040.mp4").AssumeFPS(30,1)
new_rate = Float(a38.AudioLength)/v38.FrameCount*v38.FrameRateNumerator/v38.FrameRateDenominator
a38 = a38.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v38 = AudioDub(v38, a38)

a39 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_114058.mp4")
v39 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_114058.mp4").AssumeFPS(30,1)
new_rate = Float(a39.AudioLength)/v39.FrameCount*v39.FrameRateNumerator/v39.FrameRateDenominator
a39 = a39.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v39 = AudioDub(v39, a39)

a40 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_114230.mp4")
v40 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_114230.mp4").AssumeFPS(30,1)
new_rate = Float(a40.AudioLength)/v40.FrameCount*v40.FrameRateNumerator/v40.FrameRateDenominator
a40 = a40.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v40 = AudioDub(v40, a40)

a41 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_114331.mp4")
v41 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_114331.mp4").AssumeFPS(30,1)
new_rate = Float(a41.AudioLength)/v41.FrameCount*v41.FrameRateNumerator/v41.FrameRateDenominator
a41 = a41.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v41 = AudioDub(v41, a41)

a42 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_114939.mp4")
v42 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_114939.mp4").AssumeFPS(30,1)
new_rate = Float(a42.AudioLength)/v42.FrameCount*v42.FrameRateNumerator/v42.FrameRateDenominator
a42 = a42.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v42 = AudioDub(v42, a42)

a43 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_115735.mp4")
v43 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_115735.mp4").AssumeFPS(30,1)
new_rate = Float(a43.AudioLength)/v43.FrameCount*v43.FrameRateNumerator/v43.FrameRateDenominator
a43 = a43.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v43 = AudioDub(v43, a43)

a44 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_115900.mp4")
v44 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_115900.mp4").AssumeFPS(30,1)
new_rate = Float(a44.AudioLength)/v44.FrameCount*v44.FrameRateNumerator/v44.FrameRateDenominator
a44 = a44.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v44 = AudioDub(v44, a44)

a45 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_120621.mp4")
v45 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_120621.mp4").AssumeFPS(30,1)
new_rate = Float(a45.AudioLength)/v45.FrameCount*v45.FrameRateNumerator/v45.FrameRateDenominator
a45 = a45.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v45 = AudioDub(v45, a45)

a46 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_120645.mp4")
v46 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_120645.mp4").AssumeFPS(30,1)
new_rate = Float(a46.AudioLength)/v46.FrameCount*v46.FrameRateNumerator/v46.FrameRateDenominator
a46 = a46.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v46 = AudioDub(v46, a46)

a47 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_121634.mp4")
v47 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_121634.mp4").AssumeFPS(30,1)
new_rate = Float(a47.AudioLength)/v47.FrameCount*v47.FrameRateNumerator/v47.FrameRateDenominator
a47 = a47.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v47 = AudioDub(v47, a47)

a48 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_121649.mp4")
v48 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_121649.mp4").AssumeFPS(30,1)
new_rate = Float(a48.AudioLength)/v48.FrameCount*v48.FrameRateNumerator/v48.FrameRateDenominator
a48 = a48.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v48 = AudioDub(v48, a48)

a49 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_123531.mp4")
v49 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_123531.mp4").AssumeFPS(30,1)
new_rate = Float(a49.AudioLength)/v49.FrameCount*v49.FrameRateNumerator/v49.FrameRateDenominator
a49 = a49.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v49 = AudioDub(v49, a49)

a50 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_125646.mp4")
v50 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_125646.mp4").AssumeFPS(30,1)
new_rate = Float(a50.AudioLength)/v50.FrameCount*v50.FrameRateNumerator/v50.FrameRateDenominator
a50 = a50.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v50 = AudioDub(v50, a50)

a51 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_130753.mp4")
v51 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_130753.mp4").AssumeFPS(30,1)
new_rate = Float(a51.AudioLength)/v51.FrameCount*v51.FrameRateNumerator/v51.FrameRateDenominator
a51 = a51.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v51 = AudioDub(v51, a51)

a52 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131026.mp4")
v52 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131026.mp4").AssumeFPS(30,1)
new_rate = Float(a52.AudioLength)/v52.FrameCount*v52.FrameRateNumerator/v52.FrameRateDenominator
a52 = a52.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v52 = AudioDub(v52, a52)

a53 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131057.mp4")
v53 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131057.mp4").AssumeFPS(30,1)
new_rate = Float(a53.AudioLength)/v53.FrameCount*v53.FrameRateNumerator/v53.FrameRateDenominator
a53 = a53.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v53 = AudioDub(v53, a53)

a54 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131440.mp4")
v54 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131440.mp4").AssumeFPS(30,1)
new_rate = Float(a54.AudioLength)/v54.FrameCount*v54.FrameRateNumerator/v54.FrameRateDenominator
a54 = a54.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v54 = AudioDub(v54, a54)

a55 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131501.mp4")
v55 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131501.mp4").AssumeFPS(30,1)
new_rate = Float(a55.AudioLength)/v55.FrameCount*v55.FrameRateNumerator/v55.FrameRateDenominator
a55 = a55.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v55 = AudioDub(v55, a55)

a56 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131535.mp4")
v56 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131535.mp4").AssumeFPS(30,1)
new_rate = Float(a56.AudioLength)/v56.FrameCount*v56.FrameRateNumerator/v56.FrameRateDenominator
a56 = a56.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v56 = AudioDub(v56, a56)

a57 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131557.mp4")
v57 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131557.mp4").AssumeFPS(30,1)
new_rate = Float(a57.AudioLength)/v57.FrameCount*v57.FrameRateNumerator/v57.FrameRateDenominator
a57 = a57.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v57 = AudioDub(v57, a57)

a58 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131656.mp4")
v58 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131656.mp4").AssumeFPS(30,1)
new_rate = Float(a58.AudioLength)/v58.FrameCount*v58.FrameRateNumerator/v58.FrameRateDenominator
a58 = a58.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v58 = AudioDub(v58, a58)

a59 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131815.mp4")
v59 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131815.mp4").AssumeFPS(30,1)
new_rate = Float(a59.AudioLength)/v59.FrameCount*v59.FrameRateNumerator/v59.FrameRateDenominator
a59 = a59.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v59 = AudioDub(v59, a59)

a60 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_131948.mp4")
v60 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_131948.mp4").AssumeFPS(30,1)
new_rate = Float(a60.AudioLength)/v60.FrameCount*v60.FrameRateNumerator/v60.FrameRateDenominator
a60 = a60.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v60 = AudioDub(v60, a60)

a61 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_132256.mp4")
v61 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_132256.mp4").AssumeFPS(30,1)
new_rate = Float(a61.AudioLength)/v61.FrameCount*v61.FrameRateNumerator/v61.FrameRateDenominator
a61 = a61.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v61 = AudioDub(v61, a61)

a62 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_132502.mp4")
v62 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_132502.mp4").AssumeFPS(30,1)
new_rate = Float(a62.AudioLength)/v62.FrameCount*v62.FrameRateNumerator/v62.FrameRateDenominator
a62 = a62.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v62 = AudioDub(v62, a62)

a63 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_132541.mp4")
v63 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_132541.mp4").AssumeFPS(30,1)
new_rate = Float(a63.AudioLength)/v63.FrameCount*v63.FrameRateNumerator/v63.FrameRateDenominator
a63 = a63.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v63 = AudioDub(v63, a63)

a64 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_133753.mp4")
v64 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_133753.mp4").AssumeFPS(30,1)
new_rate = Float(a64.AudioLength)/v64.FrameCount*v64.FrameRateNumerator/v64.FrameRateDenominator
a64 = a64.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v64 = AudioDub(v64, a64)

a65 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_135637.mp4")
v65 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_135637.mp4").AssumeFPS(30,1)
new_rate = Float(a65.AudioLength)/v65.FrameCount*v65.FrameRateNumerator/v65.FrameRateDenominator
a65 = a65.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v65 = AudioDub(v65, a65)

a66 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_135709.mp4")
v66 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_135709.mp4").AssumeFPS(30,1)
new_rate = Float(a66.AudioLength)/v66.FrameCount*v66.FrameRateNumerator/v66.FrameRateDenominator
a66 = a66.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v66 = AudioDub(v66, a66)

a67 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_135823.mp4")
v67 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_135823.mp4").AssumeFPS(30,1)
new_rate = Float(a67.AudioLength)/v67.FrameCount*v67.FrameRateNumerator/v67.FrameRateDenominator
a67 = a67.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v67 = AudioDub(v67, a67)

a68 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_140146.mp4")
v68 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_140146.mp4").AssumeFPS(30,1)
new_rate = Float(a68.AudioLength)/v68.FrameCount*v68.FrameRateNumerator/v68.FrameRateDenominator
a68 = a68.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v68 = AudioDub(v68, a68)

a69 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_141247.mp4")
v69 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_141247.mp4").AssumeFPS(30,1)
new_rate = Float(a69.AudioLength)/v69.FrameCount*v69.FrameRateNumerator/v69.FrameRateDenominator
a69 = a69.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v69 = AudioDub(v69, a69)

a70 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_141308.mp4")
v70 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_141308.mp4").AssumeFPS(30,1)
new_rate = Float(a70.AudioLength)/v70.FrameCount*v70.FrameRateNumerator/v70.FrameRateDenominator
a70 = a70.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v70 = AudioDub(v70, a70)

a71 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_141448.mp4")
v71 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_141448.mp4").AssumeFPS(30,1)
new_rate = Float(a71.AudioLength)/v71.FrameCount*v71.FrameRateNumerator/v71.FrameRateDenominator
a71 = a71.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v71 = AudioDub(v71, a71)

a72 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_141504.mp4")
v72 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_141504.mp4").AssumeFPS(30,1)
new_rate = Float(a72.AudioLength)/v72.FrameCount*v72.FrameRateNumerator/v72.FrameRateDenominator
a72 = a72.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v72 = AudioDub(v72, a72)

a73 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_160904.mp4")
v73 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_160904.mp4").AssumeFPS(30,1)
new_rate = Float(a73.AudioLength)/v73.FrameCount*v73.FrameRateNumerator/v73.FrameRateDenominator
a73 = a73.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v73 = AudioDub(v73, a73)

a74 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_161046.mp4")
v74 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_161046.mp4").AssumeFPS(30,1)
new_rate = Float(a74.AudioLength)/v74.FrameCount*v74.FrameRateNumerator/v74.FrameRateDenominator
a74 = a74.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v74 = AudioDub(v74, a74)

a75 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221127_161816.mp4")
v75 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221127_161816.mp4").AssumeFPS(30,1)
new_rate = Float(a75.AudioLength)/v75.FrameCount*v75.FrameRateNumerator/v75.FrameRateDenominator
a75 = a75.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v75 = AudioDub(v75, a75)

a76 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_110950.mp4")
v76 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_110950.mp4").AssumeFPS(30,1)
new_rate = Float(a76.AudioLength)/v76.FrameCount*v76.FrameRateNumerator/v76.FrameRateDenominator
a76 = a76.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v76 = AudioDub(v76, a76)

a77 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_113138.mp4")
v77 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_113138.mp4").AssumeFPS(30,1)
new_rate = Float(a77.AudioLength)/v77.FrameCount*v77.FrameRateNumerator/v77.FrameRateDenominator
a77 = a77.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v77 = AudioDub(v77, a77)

a78 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_113940.mp4")
v78 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_113940.mp4").AssumeFPS(30,1)
new_rate = Float(a78.AudioLength)/v78.FrameCount*v78.FrameRateNumerator/v78.FrameRateDenominator
a78 = a78.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v78 = AudioDub(v78, a78)

a79 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_114001.mp4")
v79 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_114001.mp4").AssumeFPS(30,1)
new_rate = Float(a79.AudioLength)/v79.FrameCount*v79.FrameRateNumerator/v79.FrameRateDenominator
a79 = a79.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v79 = AudioDub(v79, a79)

a80 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_114027.mp4")
v80 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_114027.mp4").AssumeFPS(30,1)
new_rate = Float(a80.AudioLength)/v80.FrameCount*v80.FrameRateNumerator/v80.FrameRateDenominator
a80 = a80.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v80 = AudioDub(v80, a80)

a81 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_114052.mp4")
v81 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_114052.mp4").AssumeFPS(30,1)
new_rate = Float(a81.AudioLength)/v81.FrameCount*v81.FrameRateNumerator/v81.FrameRateDenominator
a81 = a81.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v81 = AudioDub(v81, a81)

a82 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_114303.mp4")
v82 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_114303.mp4").AssumeFPS(30,1)
new_rate = Float(a82.AudioLength)/v82.FrameCount*v82.FrameRateNumerator/v82.FrameRateDenominator
a82 = a82.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v82 = AudioDub(v82, a82)

a83 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_114347.mp4")
v83 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_114347.mp4").AssumeFPS(30,1)
new_rate = Float(a83.AudioLength)/v83.FrameCount*v83.FrameRateNumerator/v83.FrameRateDenominator
a83 = a83.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v83 = AudioDub(v83, a83)

a84 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_120819.mp4")
v84 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_120819.mp4").AssumeFPS(30,1)
new_rate = Float(a84.AudioLength)/v84.FrameCount*v84.FrameRateNumerator/v84.FrameRateDenominator
a84 = a84.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v84 = AudioDub(v84, a84)

a85 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_121051.mp4")
v85 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_121051.mp4").AssumeFPS(30,1)
new_rate = Float(a85.AudioLength)/v85.FrameCount*v85.FrameRateNumerator/v85.FrameRateDenominator
a85 = a85.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v85 = AudioDub(v85, a85)

a86 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_121932.mp4")
v86 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_121932.mp4").AssumeFPS(30,1)
new_rate = Float(a86.AudioLength)/v86.FrameCount*v86.FrameRateNumerator/v86.FrameRateDenominator
a86 = a86.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v86 = AudioDub(v86, a86)

a87 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_122253.mp4")
v87 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_122253.mp4").AssumeFPS(30,1)
new_rate = Float(a87.AudioLength)/v87.FrameCount*v87.FrameRateNumerator/v87.FrameRateDenominator
a87 = a87.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v87 = AudioDub(v87, a87)

a88 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_122821.mp4")
v88 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_122821.mp4").AssumeFPS(30,1)
new_rate = Float(a88.AudioLength)/v88.FrameCount*v88.FrameRateNumerator/v88.FrameRateDenominator
a88 = a88.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v88 = AudioDub(v88, a88)

a89 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_122914.mp4")
v89 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_122914.mp4").AssumeFPS(30,1)
new_rate = Float(a89.AudioLength)/v89.FrameCount*v89.FrameRateNumerator/v89.FrameRateDenominator
a89 = a89.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v89 = AudioDub(v89, a89)

a90 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_130829.mp4")
v90 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_130829.mp4").AssumeFPS(30,1)
new_rate = Float(a90.AudioLength)/v90.FrameCount*v90.FrameRateNumerator/v90.FrameRateDenominator
a90 = a90.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v90 = AudioDub(v90, a90)

a91 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_130906.mp4")
v91 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_130906.mp4").AssumeFPS(30,1)
new_rate = Float(a91.AudioLength)/v91.FrameCount*v91.FrameRateNumerator/v91.FrameRateDenominator
a91 = a91.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v91 = AudioDub(v91, a91)

a92 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_131511.mp4")
v92 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_131511.mp4").AssumeFPS(30,1)
new_rate = Float(a92.AudioLength)/v92.FrameCount*v92.FrameRateNumerator/v92.FrameRateDenominator
a92 = a92.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v92 = AudioDub(v92, a92)

a93 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_160058.mp4")
v93 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_160058.mp4").AssumeFPS(30,1)
new_rate = Float(a93.AudioLength)/v93.FrameCount*v93.FrameRateNumerator/v93.FrameRateDenominator
a93 = a93.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v93 = AudioDub(v93, a93)

a94 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_160149.mp4")
v94 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_160149.mp4").AssumeFPS(30,1)
new_rate = Float(a94.AudioLength)/v94.FrameCount*v94.FrameRateNumerator/v94.FrameRateDenominator
a94 = a94.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v94 = AudioDub(v94, a94)

a95 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_171818.mp4")
v95 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_171818.mp4").AssumeFPS(30,1)
new_rate = Float(a95.AudioLength)/v95.FrameCount*v95.FrameRateNumerator/v95.FrameRateDenominator
a95 = a95.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v95 = AudioDub(v95, a95)

a96 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_172158.mp4")
v96 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_172158.mp4").AssumeFPS(30,1)
new_rate = Float(a96.AudioLength)/v96.FrameCount*v96.FrameRateNumerator/v96.FrameRateDenominator
a96 = a96.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v96 = AudioDub(v96, a96)

a97 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_172313.mp4")
v97 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_172313.mp4").AssumeFPS(30,1)
new_rate = Float(a97.AudioLength)/v97.FrameCount*v97.FrameRateNumerator/v97.FrameRateDenominator
a97 = a97.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v97 = AudioDub(v97, a97)

a98 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_172519.mp4")
v98 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_172519.mp4").AssumeFPS(30,1)
new_rate = Float(a98.AudioLength)/v98.FrameCount*v98.FrameRateNumerator/v98.FrameRateDenominator
a98 = a98.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v98 = AudioDub(v98, a98)

a99 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_172735.mp4")
v99 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_172735.mp4").AssumeFPS(30,1)
new_rate = Float(a99.AudioLength)/v99.FrameCount*v99.FrameRateNumerator/v99.FrameRateDenominator
a99 = a99.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v99 = AudioDub(v99, a99)

a100 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221128_173758.mp4")
v100 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221128_173758.mp4").AssumeFPS(30,1)
new_rate = Float(a100.AudioLength)/v100.FrameCount*v100.FrameRateNumerator/v100.FrameRateDenominator
a100 = a100.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v100 = AudioDub(v100, a100)

a101 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_115551.mp4")
v101 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_115551.mp4").AssumeFPS(30,1)
new_rate = Float(a101.AudioLength)/v101.FrameCount*v101.FrameRateNumerator/v101.FrameRateDenominator
a101 = a101.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v101 = AudioDub(v101, a101)

a102 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121234.mp4")
v102 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121234.mp4").AssumeFPS(30,1)
new_rate = Float(a102.AudioLength)/v102.FrameCount*v102.FrameRateNumerator/v102.FrameRateDenominator
a102 = a102.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v102 = AudioDub(v102, a102)

a103 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121312.mp4")
v103 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121312.mp4").AssumeFPS(30,1)
new_rate = Float(a103.AudioLength)/v103.FrameCount*v103.FrameRateNumerator/v103.FrameRateDenominator
a103 = a103.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v103 = AudioDub(v103, a103)

a104 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121338.mp4")
v104 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121338.mp4").AssumeFPS(30,1)
new_rate = Float(a104.AudioLength)/v104.FrameCount*v104.FrameRateNumerator/v104.FrameRateDenominator
a104 = a104.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v104 = AudioDub(v104, a104)

a105 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121422.mp4")
v105 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121422.mp4").AssumeFPS(30,1)
new_rate = Float(a105.AudioLength)/v105.FrameCount*v105.FrameRateNumerator/v105.FrameRateDenominator
a105 = a105.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v105 = AudioDub(v105, a105)

a106 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121545.mp4")
v106 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121545.mp4").AssumeFPS(30,1)
new_rate = Float(a106.AudioLength)/v106.FrameCount*v106.FrameRateNumerator/v106.FrameRateDenominator
a106 = a106.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v106 = AudioDub(v106, a106)

a107 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121912.mp4")
v107 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121912.mp4").AssumeFPS(30,1)
new_rate = Float(a107.AudioLength)/v107.FrameCount*v107.FrameRateNumerator/v107.FrameRateDenominator
a107 = a107.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v107 = AudioDub(v107, a107)

a108 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_121929.mp4")
v108 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_121929.mp4").AssumeFPS(30,1)
new_rate = Float(a108.AudioLength)/v108.FrameCount*v108.FrameRateNumerator/v108.FrameRateDenominator
a108 = a108.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v108 = AudioDub(v108, a108)

a109 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_122141.mp4")
v109 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_122141.mp4").AssumeFPS(30,1)
new_rate = Float(a109.AudioLength)/v109.FrameCount*v109.FrameRateNumerator/v109.FrameRateDenominator
a109 = a109.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v109 = AudioDub(v109, a109)

a110 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_122158.mp4")
v110 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_122158.mp4").AssumeFPS(30,1)
new_rate = Float(a110.AudioLength)/v110.FrameCount*v110.FrameRateNumerator/v110.FrameRateDenominator
a110 = a110.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v110 = AudioDub(v110, a110)

a111 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_122222.mp4")
v111 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_122222.mp4").AssumeFPS(30,1)
new_rate = Float(a111.AudioLength)/v111.FrameCount*v111.FrameRateNumerator/v111.FrameRateDenominator
a111 = a111.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v111 = AudioDub(v111, a111)

a112 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_122303.mp4")
v112 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_122303.mp4").AssumeFPS(30,1)
new_rate = Float(a112.AudioLength)/v112.FrameCount*v112.FrameRateNumerator/v112.FrameRateDenominator
a112 = a112.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v112 = AudioDub(v112, a112)

a113 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_122343.mp4")
v113 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_122343.mp4").AssumeFPS(30,1)
new_rate = Float(a113.AudioLength)/v113.FrameCount*v113.FrameRateNumerator/v113.FrameRateDenominator
a113 = a113.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v113 = AudioDub(v113, a113)

a114 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123109.mp4")
v114 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123109.mp4").AssumeFPS(30,1)
new_rate = Float(a114.AudioLength)/v114.FrameCount*v114.FrameRateNumerator/v114.FrameRateDenominator
a114 = a114.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v114 = AudioDub(v114, a114)

a115 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123351.mp4")
v115 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123351.mp4").AssumeFPS(30,1)
new_rate = Float(a115.AudioLength)/v115.FrameCount*v115.FrameRateNumerator/v115.FrameRateDenominator
a115 = a115.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v115 = AudioDub(v115, a115)

a116 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123518.mp4")
v116 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123518.mp4").AssumeFPS(30,1)
new_rate = Float(a116.AudioLength)/v116.FrameCount*v116.FrameRateNumerator/v116.FrameRateDenominator
a116 = a116.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v116 = AudioDub(v116, a116)

a117 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123536.mp4")
v117 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123536.mp4").AssumeFPS(30,1)
new_rate = Float(a117.AudioLength)/v117.FrameCount*v117.FrameRateNumerator/v117.FrameRateDenominator
a117 = a117.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v117 = AudioDub(v117, a117)

a118 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123558.mp4")
v118 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123558.mp4").AssumeFPS(30,1)
new_rate = Float(a118.AudioLength)/v118.FrameCount*v118.FrameRateNumerator/v118.FrameRateDenominator
a118 = a118.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v118 = AudioDub(v118, a118)

a119 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_123632.mp4")
v119 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_123632.mp4").AssumeFPS(30,1)
new_rate = Float(a119.AudioLength)/v119.FrameCount*v119.FrameRateNumerator/v119.FrameRateDenominator
a119 = a119.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v119 = AudioDub(v119, a119)

a120 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124148.mp4")
v120 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124148.mp4").AssumeFPS(30,1)
new_rate = Float(a120.AudioLength)/v120.FrameCount*v120.FrameRateNumerator/v120.FrameRateDenominator
a120 = a120.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v120 = AudioDub(v120, a120)

a121 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124219.mp4")
v121 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124219.mp4").AssumeFPS(30,1)
new_rate = Float(a121.AudioLength)/v121.FrameCount*v121.FrameRateNumerator/v121.FrameRateDenominator
a121 = a121.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v121 = AudioDub(v121, a121)

a122 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124237.mp4")
v122 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124237.mp4").AssumeFPS(30,1)
new_rate = Float(a122.AudioLength)/v122.FrameCount*v122.FrameRateNumerator/v122.FrameRateDenominator
a122 = a122.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v122 = AudioDub(v122, a122)

a123 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124337.mp4")
v123 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124337.mp4").AssumeFPS(30,1)
new_rate = Float(a123.AudioLength)/v123.FrameCount*v123.FrameRateNumerator/v123.FrameRateDenominator
a123 = a123.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v123 = AudioDub(v123, a123)

a124 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124359.mp4")
v124 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124359.mp4").AssumeFPS(30,1)
new_rate = Float(a124.AudioLength)/v124.FrameCount*v124.FrameRateNumerator/v124.FrameRateDenominator
a124 = a124.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v124 = AudioDub(v124, a124)

a125 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124744.mp4")
v125 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124744.mp4").AssumeFPS(30,1)
new_rate = Float(a125.AudioLength)/v125.FrameCount*v125.FrameRateNumerator/v125.FrameRateDenominator
a125 = a125.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v125 = AudioDub(v125, a125)

a126 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124822.mp4")
v126 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124822.mp4").AssumeFPS(30,1)
new_rate = Float(a126.AudioLength)/v126.FrameCount*v126.FrameRateNumerator/v126.FrameRateDenominator
a126 = a126.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v126 = AudioDub(v126, a126)

a127 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_124854.mp4")
v127 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_124854.mp4").AssumeFPS(30,1)
new_rate = Float(a127.AudioLength)/v127.FrameCount*v127.FrameRateNumerator/v127.FrameRateDenominator
a127 = a127.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v127 = AudioDub(v127, a127)

a128 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_125256.mp4")
v128 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_125256.mp4").AssumeFPS(30,1)
new_rate = Float(a128.AudioLength)/v128.FrameCount*v128.FrameRateNumerator/v128.FrameRateDenominator
a128 = a128.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v128 = AudioDub(v128, a128)

a129 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_125411.mp4")
v129 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_125411.mp4").AssumeFPS(30,1)
new_rate = Float(a129.AudioLength)/v129.FrameCount*v129.FrameRateNumerator/v129.FrameRateDenominator
a129 = a129.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v129 = AudioDub(v129, a129)

a130 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_125432.mp4")
v130 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_125432.mp4").AssumeFPS(30,1)
new_rate = Float(a130.AudioLength)/v130.FrameCount*v130.FrameRateNumerator/v130.FrameRateDenominator
a130 = a130.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v130 = AudioDub(v130, a130)

a131 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_135843.mp4")
v131 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_135843.mp4").AssumeFPS(30,1)
new_rate = Float(a131.AudioLength)/v131.FrameCount*v131.FrameRateNumerator/v131.FrameRateDenominator
a131 = a131.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v131 = AudioDub(v131, a131)

a132 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_135911.mp4")
v132 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_135911.mp4").AssumeFPS(30,1)
new_rate = Float(a132.AudioLength)/v132.FrameCount*v132.FrameRateNumerator/v132.FrameRateDenominator
a132 = a132.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v132 = AudioDub(v132, a132)

a133 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_135942.mp4")
v133 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_135942.mp4").AssumeFPS(30,1)
new_rate = Float(a133.AudioLength)/v133.FrameCount*v133.FrameRateNumerator/v133.FrameRateDenominator
a133 = a133.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v133 = AudioDub(v133, a133)

a134 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_140034.mp4")
v134 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_140034.mp4").AssumeFPS(30,1)
new_rate = Float(a134.AudioLength)/v134.FrameCount*v134.FrameRateNumerator/v134.FrameRateDenominator
a134 = a134.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v134 = AudioDub(v134, a134)

a135 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_140145.mp4")
v135 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_140145.mp4").AssumeFPS(30,1)
new_rate = Float(a135.AudioLength)/v135.FrameCount*v135.FrameRateNumerator/v135.FrameRateDenominator
a135 = a135.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v135 = AudioDub(v135, a135)

a136 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_152524.mp4")
v136 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_152524.mp4").AssumeFPS(30,1)
new_rate = Float(a136.AudioLength)/v136.FrameCount*v136.FrameRateNumerator/v136.FrameRateDenominator
a136 = a136.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v136 = AudioDub(v136, a136)

a137 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_152648.mp4")
v137 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_152648.mp4").AssumeFPS(30,1)
new_rate = Float(a137.AudioLength)/v137.FrameCount*v137.FrameRateNumerator/v137.FrameRateDenominator
a137 = a137.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v137 = AudioDub(v137, a137)

a138 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_152713.mp4")
v138 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_152713.mp4").AssumeFPS(30,1)
new_rate = Float(a138.AudioLength)/v138.FrameCount*v138.FrameRateNumerator/v138.FrameRateDenominator
a138 = a138.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v138 = AudioDub(v138, a138)

a139 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_152807.mp4")
v139 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_152807.mp4").AssumeFPS(30,1)
new_rate = Float(a139.AudioLength)/v139.FrameCount*v139.FrameRateNumerator/v139.FrameRateDenominator
a139 = a139.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v139 = AudioDub(v139, a139)

a140 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_162151.mp4")
v140 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_162151.mp4").AssumeFPS(30,1)
new_rate = Float(a140.AudioLength)/v140.FrameCount*v140.FrameRateNumerator/v140.FrameRateDenominator
a140 = a140.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v140 = AudioDub(v140, a140)

a141 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_163457.mp4")
v141 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_163457.mp4").AssumeFPS(30,1)
new_rate = Float(a141.AudioLength)/v141.FrameCount*v141.FrameRateNumerator/v141.FrameRateDenominator
a141 = a141.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v141 = AudioDub(v141, a141)

a142 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_164429.mp4")
v142 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_164429.mp4").AssumeFPS(30,1)
new_rate = Float(a142.AudioLength)/v142.FrameCount*v142.FrameRateNumerator/v142.FrameRateDenominator
a142 = a142.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v142 = AudioDub(v142, a142)

a143 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_170842.mp4")
v143 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_170842.mp4").AssumeFPS(30,1)
new_rate = Float(a143.AudioLength)/v143.FrameCount*v143.FrameRateNumerator/v143.FrameRateDenominator
a143 = a143.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v143 = AudioDub(v143, a143)

a144 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_171734.mp4")
v144 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_171734.mp4").AssumeFPS(30,1)
new_rate = Float(a144.AudioLength)/v144.FrameCount*v144.FrameRateNumerator/v144.FrameRateDenominator
a144 = a144.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v144 = AudioDub(v144, a144)

a145 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_171922.mp4")
v145 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_171922.mp4").AssumeFPS(30,1)
new_rate = Float(a145.AudioLength)/v145.FrameCount*v145.FrameRateNumerator/v145.FrameRateDenominator
a145 = a145.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v145 = AudioDub(v145, a145)

a146 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_172519.mp4")
v146 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_172519.mp4").AssumeFPS(30,1)
new_rate = Float(a146.AudioLength)/v146.FrameCount*v146.FrameRateNumerator/v146.FrameRateDenominator
a146 = a146.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v146 = AudioDub(v146, a146)

a147 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_172753.mp4")
v147 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_172753.mp4").AssumeFPS(30,1)
new_rate = Float(a147.AudioLength)/v147.FrameCount*v147.FrameRateNumerator/v147.FrameRateDenominator
a147 = a147.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v147 = AudioDub(v147, a147)

a148 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_173158.mp4")
v148 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_173158.mp4").AssumeFPS(30,1)
new_rate = Float(a148.AudioLength)/v148.FrameCount*v148.FrameRateNumerator/v148.FrameRateDenominator
a148 = a148.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v148 = AudioDub(v148, a148)

a149 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_173336.mp4")
v149 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_173336.mp4").AssumeFPS(30,1)
new_rate = Float(a149.AudioLength)/v149.FrameCount*v149.FrameRateNumerator/v149.FrameRateDenominator
a149 = a149.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v149 = AudioDub(v149, a149)

a150 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_173357.mp4")
v150 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_173357.mp4").AssumeFPS(30,1)
new_rate = Float(a150.AudioLength)/v150.FrameCount*v150.FrameRateNumerator/v150.FrameRateDenominator
a150 = a150.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v150 = AudioDub(v150, a150)

a151 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_173942.mp4")
v151 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_173942.mp4").AssumeFPS(30,1)
new_rate = Float(a151.AudioLength)/v151.FrameCount*v151.FrameRateNumerator/v151.FrameRateDenominator
a151 = a151.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v151 = AudioDub(v151, a151)

a152 = LSMASHAudioSource("M:\Media\video\2022_11_30-Rim\20221129_174014.mp4")
v152 = LSMASHVideoSource("M:\Media\video\2022_11_30-Rim\20221129_174014.mp4").AssumeFPS(30,1)
new_rate = Float(a152.AudioLength)/v152.FrameCount*v152.FrameRateNumerator/v152.FrameRateDenominator
a152 = a152.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v152 = AudioDub(v152, a152)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128 + v129 + v130 + v131 + v132 + v133 + v134 + v135 + v136 + v137 + v138 + v139 + v140 + v141 + v142 + v143 + v144 + v145 + v146 + v147 + v148 + v149 + v150 + v151 + v152
return last
