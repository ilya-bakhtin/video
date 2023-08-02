destination_dir = "M:\Media\video\vanoce-project\"

LSMASHVideoSource(destination_dir + "result\VID_20221224_212434.mp4")
spline64Resize(960, 540)
a = LSMASHAudioSource(destination_dir + "result\VID_20221224_212434.mp4")
audioDub(a)
prefetch
