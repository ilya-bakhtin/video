LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112711.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112711.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112754.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_112754.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)
v2 = v2.trim(36, 0)

a3 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113038.mp4")
v3 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113038.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113155.mp4")
v4 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_113155.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115715.mp4")
v5 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115715.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115935.mp4")
v6 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115935.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115952.mp4")
v7 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_115952.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120053.mp4")
v8 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120053.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)
v8 = v8.trim(24, 0)

a9 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120122.mp4")
v9 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120122.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120209.mp4")
v10 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120209.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120316.mp4")
v11 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120316.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120453.mp4")
v12 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_120453.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_121816.mp4")
v13 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_121816.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122146.mp4")
v14 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122146.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122219.mp4")
v15 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122219.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122328.mp4")
v16 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122328.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122354.mp4")
v17 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_122354.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_123031.mp4")
v18 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_123031.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124048.mp4")
v19 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124048.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124226.mp4")
v20 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124226.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124442.mp4")
v21 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_124442.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125217.mp4")
v22 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125217.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125402.mp4")
v23 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125402.mp4").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125427.mp4")
v24 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_125427.mp4").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140456.mp4")
v25 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140456.mp4").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140720.mp4")
v26 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_140720.mp4").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_150448.mp4")
v27 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_150448.mp4").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a29 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_155930.mp4")
v29 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_155930.mp4").AssumeFPS(30,1)
new_rate = Float(a29.AudioLength)/v29.FrameCount*v29.FrameRateNumerator/v29.FrameRateDenominator
a29 = a29.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v29 = AudioDub(v29, a29)

a30 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_165726.mp4")
v30 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210807_165726.mp4").AssumeFPS(30,1)
new_rate = Float(a30.AudioLength)/v30.FrameCount*v30.FrameRateNumerator/v30.FrameRateDenominator
a30 = a30.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v30 = AudioDub(v30, a30)

a31 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110622.mp4")
v31 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110622.mp4").AssumeFPS(30,1)
new_rate = Float(a31.AudioLength)/v31.FrameCount*v31.FrameRateNumerator/v31.FrameRateDenominator
a31 = a31.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v31 = AudioDub(v31, a31)
v31 = v31.trim(27, 0)

a32 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110718.mp4")
v32 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_110718.mp4").AssumeFPS(30,1)
new_rate = Float(a32.AudioLength)/v32.FrameCount*v32.FrameRateNumerator/v32.FrameRateDenominator
a32 = a32.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v32 = AudioDub(v32, a32)
v32 = v32.trim(0, 632)

a33 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130144.mp4")
v33 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130144.mp4").AssumeFPS(30,1)
new_rate = Float(a33.AudioLength)/v33.FrameCount*v33.FrameRateNumerator/v33.FrameRateDenominator
a33 = a33.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v33 = AudioDub(v33, a33)
v33 = v33.trim(0, 424)

a34 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130235.mp4")
v34 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130235.mp4").AssumeFPS(30,1)
new_rate = Float(a34.AudioLength)/v34.FrameCount*v34.FrameRateNumerator/v34.FrameRateDenominator
a34 = a34.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v34 = AudioDub(v34, a34)
v34 = v34.trim(15, 328)

a35 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130322.mp4")
v35 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130322.mp4").AssumeFPS(30,1)
new_rate = Float(a35.AudioLength)/v35.FrameCount*v35.FrameRateNumerator/v35.FrameRateDenominator
a35 = a35.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v35 = AudioDub(v35, a35)
v35 = v35.trim(2, 246)

a36 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130358.mp4")
v36 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130358.mp4").AssumeFPS(30,1)
new_rate = Float(a36.AudioLength)/v36.FrameCount*v36.FrameRateNumerator/v36.FrameRateDenominator
a36 = a36.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v36 = AudioDub(v36, a36)
v36 = v36.trim(21, 290)

a37 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162634.mp4")
v37 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162634.mp4").AssumeFPS(30,1)
new_rate = Float(a37.AudioLength)/v37.FrameCount*v37.FrameRateNumerator/v37.FrameRateDenominator
a37 = a37.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v37 = AudioDub(v37, a37)

a38 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162713.mp4")
v38 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162713.mp4").AssumeFPS(30,1)
new_rate = Float(a38.AudioLength)/v38.FrameCount*v38.FrameRateNumerator/v38.FrameRateDenominator
a38 = a38.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v38 = AudioDub(v38, a38)

a39 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162757.mp4")
v39 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_162757.mp4").AssumeFPS(30,1)
new_rate = Float(a39.AudioLength)/v39.FrameCount*v39.FrameRateNumerator/v39.FrameRateDenominator
a39 = a39.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v39 = AudioDub(v39, a39)

a40 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163258.mp4")
v40 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163258.mp4").AssumeFPS(30,1)
new_rate = Float(a40.AudioLength)/v40.FrameCount*v40.FrameRateNumerator/v40.FrameRateDenominator
a40 = a40.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v40 = AudioDub(v40, a40)

a41 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163349.mp4")
v41 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163349.mp4").AssumeFPS(30,1)
new_rate = Float(a41.AudioLength)/v41.FrameCount*v41.FrameRateNumerator/v41.FrameRateDenominator
a41 = a41.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v41 = AudioDub(v41, a41)

a42 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163513.mp4")
v42 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_163513.mp4").AssumeFPS(30,1)
new_rate = Float(a42.AudioLength)/v42.FrameCount*v42.FrameRateNumerator/v42.FrameRateDenominator
a42 = a42.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v42 = AudioDub(v42, a42)

a43 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_111746.mp4")
v43 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_111746.mp4").AssumeFPS(30,1)
new_rate = Float(a43.AudioLength)/v43.FrameCount*v43.FrameRateNumerator/v43.FrameRateDenominator
a43 = a43.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v43 = AudioDub(v43, a43)
v43 = v43.bilinearResize(1920, 1080)

a44 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_121210.mp4")
v44 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_121210.mp4").AssumeFPS(30,1)
new_rate = Float(a44.AudioLength)/v44.FrameCount*v44.FrameRateNumerator/v44.FrameRateDenominator
a44 = a44.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v44 = AudioDub(v44, a44)
v44 = v44.bilinearResize(1920, 1080)

a45 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_122729.mp4")
v45 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_122729.mp4").AssumeFPS(30,1)
new_rate = Float(a45.AudioLength)/v45.FrameCount*v45.FrameRateNumerator/v45.FrameRateDenominator
a45 = a45.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v45 = AudioDub(v45, a45)
v45 = v45.bilinearResize(1920, 1080)

a46 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_131901.mp4")
v46 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_131901.mp4").AssumeFPS(30,1)
new_rate = Float(a46.AudioLength)/v46.FrameCount*v46.FrameRateNumerator/v46.FrameRateDenominator
a46 = a46.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v46 = AudioDub(v46, a46)
v46 = v46.bilinearResize(1920, 1080)

a47 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_152146.mp4")
v47 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_152146.mp4").AssumeFPS(30,1)
new_rate = Float(a47.AudioLength)/v47.FrameCount*v47.FrameRateNumerator/v47.FrameRateDenominator
a47 = a47.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v47 = AudioDub(v47, a47)
v47 = v47.bilinearResize(1920, 1080)

a48 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_170924.mp4")
v48 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_170924.mp4").AssumeFPS(30,1)
new_rate = Float(a48.AudioLength)/v48.FrameCount*v48.FrameRateNumerator/v48.FrameRateDenominator
a48 = a48.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v48 = AudioDub(v48, a48)

a49 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_171012.mp4")
v49 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210807_171012.mp4").AssumeFPS(30,1)
new_rate = Float(a49.AudioLength)/v49.FrameCount*v49.FrameRateNumerator/v49.FrameRateDenominator
a49 = a49.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v49 = AudioDub(v49, a49)

a50 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170221.mp4")
v50 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170221.mp4").AssumeFPS(30,1)
new_rate = Float(a50.AudioLength)/v50.FrameCount*v50.FrameRateNumerator/v50.FrameRateDenominator
a50 = a50.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v50 = AudioDub(v50, a50)
v50 = v50.bilinearResize(1920, 1080)

a51 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170412.mp4")
v51 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\VID_20210808_170412.mp4").AssumeFPS(30,1)
new_rate = Float(a51.AudioLength)/v51.FrameCount*v51.FrameRateNumerator/v51.FrameRateDenominator
a51 = a51.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v51 = AudioDub(v51, a51)
v51 = v51.bilinearResize(1920, 1080)

#last = v43 + v44 + v45 + v46 + v47 /*+ v48 + v49*/ + v50 + v51

last = v43 + v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v44 + v13 + v14 + v15 + v16 +\
       v17 + v45 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v46 + v25 + v26 + v27 + v47 + v29 + v30 +\
       v48 + v49 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v50 + v51

return last
