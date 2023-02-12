v = LSMASHVideoSource("M:\Media\video\2022_11_12-Atheny\result\20221108_162834.mp4.mp4")
a = LSMASHAudioSource("M:\Media\video\2022_11_12-Atheny\result\20221108_162834.mp4.mp4")
v = v.audioDub(a)
v = v.spline64Resize(1920, 1080)
last = v
prefetch
