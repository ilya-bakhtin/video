v = LSMASHVideoSource($$$dir_d$$$ + "result\" + $$$clip_name$$$ + ".mp4")
v = v.spline64Resize(960, 540)

a = LSMASHAudioSource($$$clip_d$$$)
new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v = AudioDub(v, a)

last = v
#prefetch
return last
