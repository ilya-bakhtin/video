destination_dir = "M:\Media\video\2003-2004-NY-TDSIE\"

LSMASHVideoSource(destination_dir + "result\2004-NY-TDSIE.mp4")
spline64Resize(720, 540)
a = LSMASHAudioSource(destination_dir + "result\2004-NY-TDSIE.mp4")
audioDub(a)
prefetch
