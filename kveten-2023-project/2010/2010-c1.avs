import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("F:\Media\Video\Кирьяновы (младшие)\2010_01_07_00.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("F:\Media\Video\Кирьяновы (младшие)\2010_01_07_00.avi")
vorg = vorg.AudioDub(aorg)
#return vorg

v2010_1 = vorg.trim(59380, 62867)
#v0 = v2010_1.deinterlace
v2010_1 = v2010_1.filter(thSAD = 100, thSADC = 200)
v2010_1 = v2010_1.deinterlace(sharp_strength = 200, sharp_radius = 3)

#v2010_1 = v0.interleave(v2010_1)
v2010_1 = v2010_1.spline64Resize(960, 540)

return v2010_1.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702