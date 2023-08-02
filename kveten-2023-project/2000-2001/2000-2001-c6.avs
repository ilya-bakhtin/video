import("cmp.avs", utf8 = true)
import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

/*
v2000_2001_1 = vorg.trim(5326, 14136)
return v2000_2001_1.qtgmc(preset = "fast").crop(12, 2, -6, -10).spline64Resize(1470, 1080).prefetch
#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
#W = 1080 * (720 - (12 + 6)) / (576 - (2 + 10)) * 768 / 702 == 1470
*/
/*
#return vorg.trim(107541, 108023)
v2000_2001_2 = v1.trim(107459, 107938)
v2000_2001_2 = v2000_2001_2.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

v2000_2001_2 = v2000_2001_2.spline64Resize(1470/2 - 1, 1080/2)
v2000_2001_2 = v2000_2001_2.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

return v2000_2001_2.prefetch
*/
/*
v2000_2001_3 = vorg.trim(171811, 174807)
v2000_2001_3 = v2000_2001_3.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

v2000_2001_3 = v2000_2001_3.spline64Resize(1470/2 - 1, 1080/2)
v2000_2001_3 = v2000_2001_3.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

return v2000_2001_3.prefetch
*/
/*
v2000_2001_4 = vorg.trim(185258, 192315)
v2000_2001_4 = v2000_2001_4.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

v2000_2001_4 = v2000_2001_4.spline64Resize(1470/2 - 1, 1080/2)
v2000_2001_4 = v2000_2001_4.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

return v2000_2001_4.prefetch
*/
/*
v2000_2001_5 = vorg.trim(284662, 286739)
v2000_2001_5 = v2000_2001_5.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

v2000_2001_5 = v2000_2001_5.spline64Resize(1470/2 - 1, 1080/2)
v2000_2001_5 = v2000_2001_5.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

return v2000_2001_5.prefetch
*/

v2000_2001_6 = vorg.trim(287276, 288207)
/*
v2000_2001_6 = v2000_2001_6.qtgmc(preset = "placebo").crop(12, 2, -6, -10)

v2000_2001_6 = v2000_2001_6.spline64Resize(1470/2 - 1, 1080/2)
v2000_2001_6 = v2000_2001_6.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

return v2000_2001_6.prefetch
*/
return v2000_2001_6.deinterlace.prefetch

#return vorg.trim(365678, 368079)
#return v1.trim(365494, 365494+2393)

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
