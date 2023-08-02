import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("e:\media\video\vhs-2002-2005\xxx-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2002-2005\xxx-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

v2002_4 = vorg.trim(98073, 98550)
return v2002_4.deinterlace.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
