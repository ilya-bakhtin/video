destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\video_2021-01-31_12-30-47.mp4")
spline64Resize(960, 540)
a = LSMASHAudioSource(destination_dir + "result\video_2021-01-31_12-30-47.mp4")
audioDub(a)
prefetch
