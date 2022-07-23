import("common.avs")

#v1 = LSMASHVideoSource(mp4_source_dir + "20220706_122724.mp4.mp4")
v1 = LSMASHVideoSource(destination_dir + "20220706_122724.mp4")
v2 = LSMASHVideoSource(destination_dir + "result\4k_crf_18\20220706_122724.mp4")
v2 = v2.selectEvery(2, 0)
#v1 = v1.subtract(v2)
v1 = v1.interleave(v2)
return v1
