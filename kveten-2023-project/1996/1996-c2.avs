import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-4.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-4.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))

v1996_2 = vorg.trim(10509, 11379)
return v1996_2.deinterlace.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
