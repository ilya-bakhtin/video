import("d:\users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

v0 = LSMASHVideoSource("M:\Media\video\2021_07_31-Pisek\2021_07_31-Pisek.mp4")
return v0

v1 = LSMASHVideoSource(destination_dir + "20220705_183507.mp4")
v1 = v1.interleave(v1)
#v2 = LSMASHVideoSource(destination_dir + "result\20220705_183507.mp4.mp4")
v2 = LSMASHVideoSource(destination_dir + "result\video.mp4")
v1 = v1.interleave(v2)
return v1
