#import("cmp.avs")
vorg = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

v2000_2001_1 = vorg.trim(5326, 14136)
return v2000_2001_1.qtgmc(preset = "fast").crop(12, 2, -6, -10).spline64Resize(1470, 1080).prefetch
return v2000_2001_1.bob.crop(12, 2, -6, -10).spline64Resize(1470, 1080).prefetch
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
#W = 1080 * (720 - (12 + 6)) / (576 - (2 + 10)) * 768 / 702 == 1470

#return vorg.trim(107541, 108023)
#return v1.trim(107459, 107938)

#return vorg.trim(171811, 174807)

#return vorg.trim(185258, 192315)

#return vorg.trim(284662, 286739)

#return vorg.trim(287276, 288207)

#return vorg.trim(365678, 368079)
#return v1.trim(365494, 365494+2393)

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
