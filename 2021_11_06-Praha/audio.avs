LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141114.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141114.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141147.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141147.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141228.mp4")
v3 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141228.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141502.mp4")
v4 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141502.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141624.mp4")
v5 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_141624.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_143023.mp4")
v6 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_143023.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_143101.mp4")
v7 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_143101.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_144215.mp4")
v8 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_144215.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_144919.mp4")
v9 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_144919.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145008.mp4")
v10 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145008.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145105.mp4")
v11 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145105.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145221.mp4")
v12 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145221.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145257.mp4")
v13 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_145257.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_150041.mp4")
v14 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_150041.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_151937.mp4")
v15 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_151937.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_152047.mp4")
v16 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_152047.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_152157.mp4")
v17 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_11_06-Praha\20211106_152157.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17
return last
