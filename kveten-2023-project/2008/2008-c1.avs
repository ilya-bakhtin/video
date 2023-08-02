import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("F:\Media\Video\Cassette-2008_08_08-2009_06_24\2008_08_08-2009_06_24.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("F:\Media\Video\Cassette-2008_08_08-2009_06_24\2008_08_08-2009_06_24.avi")
vorg = vorg.AudioDub(aorg)
#return vorg

v2008_1 = vorg.trim(24956, 26520)
#v0 = v2008_1.deinterlace
v2008_1 = v2008_1.filter(thSAD = 100, thSADC = 200)
v2008_1 = v2008_1.deinterlace(sharp_strength = 200, sharp_radius = 3)

#v2008_1 = v0.interleave(v2008_1)
v2008_1 = v2008_1.spline64Resize(v2008_1.width/2, v2008_1.height/2)

return v2008_1.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702