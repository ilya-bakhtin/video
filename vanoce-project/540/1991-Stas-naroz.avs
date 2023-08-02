destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\1991-Stas-naroz.mp4")
spline64Resize(720, 540)
a = LSMASHAudioSource(destination_dir + "result\1991-Stas-naroz.mp4")
audioDub(a)
prefetch
