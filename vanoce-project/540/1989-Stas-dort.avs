destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\1989-Stas-dort.mp4")
spline64Resize(728, 540)
a = LSMASHAudioSource(destination_dir + "result\1989-Stas-dort.mp4")
audioDub(a)
prefetch
