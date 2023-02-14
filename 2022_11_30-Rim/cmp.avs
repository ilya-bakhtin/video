import("d:\Users\ilx\wrk\video\2022_11_30-Rim\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v0 = LSMASHVideoSource(destination_dir + "20221127_131057.mp4")
v1 = LSMASHVideoSource(destination_dir + "result\20221127_131057.mp4.mp4")
v0 = v0.interleave(v0)
return v0.interleave(v1.spline64Resize(1920, 1080))