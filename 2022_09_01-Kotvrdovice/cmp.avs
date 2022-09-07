import("d:\Users\ilx\wrk\video\2022_09_01-Kotvrdovice\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LSMASHVideoSource(destination_dir + "result\20220901_154722-.mp4.mp4")
v2 = LSMASHVideoSource(destination_dir + "result\20220901_154722.mp4.mp4")
return v1.interleave(v2)