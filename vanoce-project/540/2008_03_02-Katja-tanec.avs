destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\2008_03_02-Katja-tanec.mp4")
spline64Resize(720, 540)
a = LSMASHAudioSource(destination_dir + "result\2008_03_02-Katja-tanec.mp4")
audioDub(a)
prefetch
