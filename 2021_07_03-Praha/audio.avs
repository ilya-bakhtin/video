function fakeDoubleRate(clip c)
{
    c = c.interleave(c)
    c = c.trim(0, c.FrameCount - 2)
    return c
}

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_07_03-Praha\VID_20210703_153708.mp4")
v1 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_07_03-Praha\VID_20210703_153708.mp4").AssumeFPS(30,1)
v1 = v1.fakeDoubleRate
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)
v1 = v1.trim(0, 1080)

a2 = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_07_03-Praha\VID_20210703_154216.mp4")
v2 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_07_03-Praha\VID_20210703_154216.mp4").AssumeFPS(30,1)
v2 = v2.fakeDoubleRate
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)
v2 = v2.trim(0, 2222)

last = v1 + v2
return last
