destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\2009_03_05-Katja-tanec.mp4")
spline64Resize(960, 540)
a = LSMASHAudioSource(destination_dir + "result\2009_03_05-Katja-tanec.mp4")
audioDub(a)
prefetch
