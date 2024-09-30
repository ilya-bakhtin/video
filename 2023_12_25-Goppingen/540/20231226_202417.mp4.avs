import("c:\Users\ilx\wrk\video\2023_12_25-Goppingen\540\common.avs", utf8 = true)

v = LSMASHVideoSource(destination_dir + "result\" + "20231226_202417.mp4" + ".mp4")
v = v.spline64Resize(960, 540)

a = LSMASHAudioSource(destination_dir + "20231226_202417.mp4")
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v
#prefetch
return last
