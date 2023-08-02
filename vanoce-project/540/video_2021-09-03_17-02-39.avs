destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\video_2021-09-03_17-02-39.mp4")
spline64Resize(540, 540)
a = LSMASHAudioSource(destination_dir + "result\video_2021-09-03_17-02-39.mp4")
audioDub(a)
prefetch
