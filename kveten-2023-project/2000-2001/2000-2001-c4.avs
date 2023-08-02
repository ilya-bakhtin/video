import("cmp.avs", utf8 = true)
import("deinterlace.avs", utf8 = true)

vorg = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

v2000_2001_4 = vorg.trim(185258, 192315)
return v2000_2001_4.deinterlace.prefetch

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
