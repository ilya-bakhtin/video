import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\4k_crf_18\common.avs")

v = LSMASHVideoSource(mp4_source_dir + "20220707_141842.mp4" + ".mp4")
#v = v.spline64Resize(960, 540)

a = LSMASHAudioSource(destination_dir + "20220707_141842.mp4")
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v
#prefetch
return last
