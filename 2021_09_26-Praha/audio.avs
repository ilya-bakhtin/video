function fakeDoubleRate(clip c)
{
    c = c.interleave(c)
    c = c.trim(0, c.FrameCount - 2)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143648.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143648.mp4").AssumeFPS(30,1)
v1 = v1.fakeDoubleRate
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143749.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143749.mp4").AssumeFPS(30,1)
v2 = v2.fakeDoubleRate
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154523.mp4")
v3 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154523.mp4").AssumeFPS(30,1)
v3 = v3.fakeDoubleRate
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154707.mp4")
v4 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154707.mp4").AssumeFPS(30,1)
v4 = v4.fakeDoubleRate
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154753.mp4")
v5 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154753.mp4").AssumeFPS(30,1)
v5 = v5.fakeDoubleRate
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154830.mp4")
v6 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154830.mp4").AssumeFPS(30,1)
v6 = v6.fakeDoubleRate
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154919.mp4")
v7 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_154919.mp4").AssumeFPS(30,1)
v7 = v7.fakeDoubleRate
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155423.mp4")
v8 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155423.mp4").AssumeFPS(30,1)
v8 = v8.fakeDoubleRate
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)
v8 = v8.trim(0, 1040)

a9 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155553.mp4")
v9 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155553.mp4").AssumeFPS(30,1)
v9 = v9.fakeDoubleRate
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155616.mp4")
v10 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155616.mp4").AssumeFPS(30,1)
v10 = v10.fakeDoubleRate
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155649.mp4")
v11 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155649.mp4").AssumeFPS(30,1)
v11 = v11.fakeDoubleRate
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155752.mp4")
v12 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_155752.mp4").AssumeFPS(30,1)
v12 = v12.fakeDoubleRate
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160151.mp4")
v13 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160151.mp4").AssumeFPS(30,1)
v13 = v13.fakeDoubleRate
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160352.mp4")
v14 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_160352.mp4").AssumeFPS(30,1)
v14 = v14.fakeDoubleRate
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14
return last
