import("d:\Users\ilx\wrk\video\2022-Chorvatsko\2022_10_13-Chorvatsko\common.avs")
v0 = LSMASHVideoSource(destination_dir + "video.mp4")
v1 = LSMASHVideoSource(destination_dir + "result\2022_10_13-Chorvatsko-4k.mp4")
return v1.interleave(v0)
