LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_135940.mp4")
v1 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_135940.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_135956.mp4")
v2 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_135956.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_140037.mp4")
v3 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_140037.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_140123.mp4")
v4 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_140123.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_140203.mp4")
v5 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_140203.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_140420.mp4")
v6 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_140420.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_140436.mp4")
v7 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_140436.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_142659.mp4")
v8 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_142659.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_142945.mp4")
v9 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_142945.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("M:\Media\video\2023_09_03-Praha\20230903_143052.mp4")
v10 = LSMASHVideoSource("M:\Media\video\2023_09_03-Praha\20230903_143052.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10
return last
