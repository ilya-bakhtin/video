destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\2010_01_06-Dasha.K.mp4")
spline64Resize(960, 540)
a = LSMASHAudioSource(destination_dir + "result\2010_01_06-Dasha.K.mp4")
audioDub(a)
prefetch
