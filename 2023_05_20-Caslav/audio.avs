LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_114552.mp4")
v1 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_114552.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_115309.mp4")
v2 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_115309.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_115325.mp4")
v3 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_115325.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_115336.mp4")
v4 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_115336.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_120201.mp4")
v5 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_120201.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_121538.mp4")
v6 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_121538.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_121621.mp4")
v7 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_121621.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_121730.mp4")
v8 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_121730.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_121807.mp4")
v9 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_121807.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_122431.mp4")
v10 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_122431.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_122853.mp4")
v11 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_122853.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_134254.mp4")
v12 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_134254.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_134311.mp4")
v13 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_134311.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_134343.mp4")
v14 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_134343.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_134416.mp4")
v15 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_134416.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_134534.mp4")
v16 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_134534.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_135738.mp4")
v17 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_135738.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140006.mp4")
v18 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140006.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140028.mp4")
v19 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140028.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140054.mp4")
v20 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140054.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140105.mp4")
v21 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140105.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140218.mp4")
v22 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140218.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140243.mp4")
v23 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140243.mp4").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140348.mp4")
v24 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140348.mp4").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140640.mp4")
v25 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140640.mp4").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140705.mp4")
v26 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140705.mp4").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_140730.mp4")
v27 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_140730.mp4").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a28 = LSMASHAudioSource("M:\Media\video\2023_05_20-Caslav\20230520_141346.mp4")
v28 = LSMASHVideoSource("M:\Media\video\2023_05_20-Caslav\20230520_141346.mp4").AssumeFPS(30,1)
new_rate = Float(a28.AudioLength)/v28.FrameCount*v28.FrameRateNumerator/v28.FrameRateDenominator
a28 = a28.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v28 = AudioDub(v28, a28)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28
return last
