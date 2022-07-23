import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\540\common.avs")

v = LSMASHVideoSource(destination_dir + "result\4k_crf_18\" + "20220705_191926.mp4")
v = v.spline64Resize(960, 540)

a = LSMASHAudioSource(destination_dir + "20220705_191926.mp4")
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v
#prefetch
return last
