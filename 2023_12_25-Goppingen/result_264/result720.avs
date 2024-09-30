#import("c:\Users\ilx\wrk\video\2023_12_25-Goppingen\540\common.avs", utf8 = true)

#v = LSMASHVideoSource(destination_dir + "result\" + "20231226_123042.mp4" + ".mp4")
file = "c:\users\ilx\downloads\Vanoce_2023_720.mp4"
v = LSMASHVideoSource(file)
#v = v.spline64Resize(960, 540)

#a = LSMASHAudioSource(destination_dir + "20231226_123042.mp4")
a = LSMASHAudioSource(file, skip_priming=false).audioTrim(256./48000., 0)
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v
#prefetch
return last
