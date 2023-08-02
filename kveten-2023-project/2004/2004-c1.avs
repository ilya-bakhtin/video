import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("F:\Media\Video\vhs-2002-2005\2004_Winter_Spring-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("F:\Media\Video\vhs-2002-2005\2004_Winter_Spring-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))

v2004_1 = vorg.trim(52047, 53312)
v2004_1 = v2004_1.restore_line
v2004_1 = v2004_1.deinterlace(sharp_strength = 00, sharp_radius = 3)
#v2004_1 = v2004_1.spline64Resize(v2004_1.width/2 - 1, v2004_1.height/2)
return v2004_1.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
