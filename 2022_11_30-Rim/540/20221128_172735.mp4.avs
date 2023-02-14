import("d:\Users\ilx\wrk\video\2022_11_30-Rim\common.avs")
LSMASHVideoSource(destination_dir + "result\20221128_172735.mp4" + ".mp4")
spline64Resize(960, 540)
a = LSMASHAudioSource(destination_dir + "result\20221128_172735.mp4" + ".mp4")
audioDub(a)
prefetch
