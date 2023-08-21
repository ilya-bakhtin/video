LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_132922.mp4")
v1 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_132922.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_134422.mp4")
v2 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_134422.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_134623.mp4")
v3 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_134623.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_135545.mp4")
v4 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_135545.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_135640.mp4")
v5 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_135640.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_135751.mp4")
v6 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_135751.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_141743.mp4")
v7 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_141743.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_141847.mp4")
v8 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_141847.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_141909.mp4")
v9 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_141909.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_141942.mp4")
v10 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_141942.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_142008.mp4")
v11 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_142008.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_142030.mp4")
v12 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_142030.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_142053.mp4")
v13 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_142053.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_142115.mp4")
v14 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_142115.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("M:\Media\video\2023_06_25-Goppingen\20230625_142912.mp4")
v15 = LSMASHVideoSource("M:\Media\video\2023_06_25-Goppingen\20230625_142912.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15
return last
