LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220621_205040.mp4")
v1 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220621_205040.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220621_205201.mp4")
v2 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220621_205201.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220622_141658.mp4")
v3 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220622_141658.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220626_075817.mp4")
v4 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220626_075817.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220626_170548.mp4")
v5 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220626_170548.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220627_092447.mp4")
v6 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220627_092447.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220627_092636.mp4")
v7 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\VID_20220627_092636.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_174443.mp4")
v8 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_174443.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_180634.mp4")
v9 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_180634.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_180710.mp4")
v10 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_180710.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181248.mp4")
v11 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181248.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181442.mp4")
v12 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181442.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181740.mp4")
v13 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_181740.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_182121.mp4")
v14 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_182121.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191017.mp4")
v15 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191017.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191104.mp4")
v16 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191104.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191334.mp4")
v17 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191334.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191357.mp4")
v18 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191357.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191523.mp4")
v19 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191523.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191628.mp4")
v20 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191628.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191903.mp4")
v21 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_191903.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_192348.mp4")
v22 = LSMASHVideoSource("m:\Media\video\2022_06_28-Chorvatsko\20220628_192348.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22
return last
