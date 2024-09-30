LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231014_201503.mp4")
v1 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231014_201503.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231014_201545.mp4")
v2 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231014_201545.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231015_175759.mp4")
v3 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231015_175759.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231015_180041.mp4")
v4 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231015_180041.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_162107.mp4")
v5 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_162107.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_162159.mp4")
v6 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_162159.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_171433.mp4")
v7 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_171433.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_171556.mp4")
v8 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_171556.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_171654.mp4")
v9 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_171654.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("m:\media\video\2023_10_16-Goppingen\20231017_173019.mp4")
v10 = LSMASHVideoSource("m:\media\video\2023_10_16-Goppingen\20231017_173019.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10
return last
