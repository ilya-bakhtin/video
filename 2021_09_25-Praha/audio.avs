function fakeDoubleRate(clip c)
{
    c = c.interleave(c)
    c = c.trim(0, c.FrameCount - 2)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171010.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171010.mp4").AssumeFPS(30,1)
v1 = v1.fakeDoubleRate
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171104.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171104.mp4").AssumeFPS(30,1)
v2 = v2.fakeDoubleRate
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171124.mp4")
v3 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_25-Praha\20210925_171124.mp4").AssumeFPS(30,1)
v3 = v3.fakeDoubleRate
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

last = v1 + v2 + v3
return last
