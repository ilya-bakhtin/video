function fakeDoubleRate(clip c)
{
    c = c.interleave(c)
    c = c.trim(0, c.FrameCount - 2)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_121858.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_121858.mp4").AssumeFPS(30,1)
v1 = v1.fakeDoubleRate
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122131.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122131.mp4").AssumeFPS(30,1)
v2 = v2.fakeDoubleRate
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122331.mp4")
v3 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122331.mp4").AssumeFPS(30,1)
v3 = v3.fakeDoubleRate
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122435.mp4")
v4 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_122435.mp4").AssumeFPS(30,1)
v4 = v4.fakeDoubleRate
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)
v4 = v4.trim(0, 1474)

a5 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155536.mp4")
v5 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155536.mp4").AssumeFPS(30,1)
v5 = v5.fakeDoubleRate
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155750.mp4")
v6 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155750.mp4").AssumeFPS(30,1)
v6 = v6.fakeDoubleRate
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155904.mp4")
v7 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155904.mp4").AssumeFPS(30,1)
v7 = v7.fakeDoubleRate
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_160121.mp4")
v8 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_160121.mp4").AssumeFPS(30,1)
v8 = v8.fakeDoubleRate
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)
v8 = v8.trim(0, 484)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8
return last
