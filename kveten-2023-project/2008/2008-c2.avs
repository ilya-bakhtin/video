import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("F:\Media\Video\Cassette 2008_03_02 2008_03_08\2008_03_02-2008_03_08.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("F:\Media\Video\Cassette 2008_03_02 2008_03_08\2008_03_02-2008_03_08.avi")
vorg = vorg.AudioDub(aorg)
#return vorg

v2008_2 = vorg.trim(64069, 68176)
#v0 = v2008_2.deinterlace
v2008_2 = v2008_2.filter(thSAD = 100, thSADC = 200)
v2008_2 = v2008_2.deinterlace(sharp_strength = 200, sharp_radius = 3)

#v2008_2 = v0.interleave(v2008_1)
#v2008_2 = v2008_2.spline64Resize(v2008_2.width/2, v2008_2.height/2)

return v2008_2.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702