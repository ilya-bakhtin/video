import("deinterlace.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)
LoadVirtualdubPlugin("c:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

vorg = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
aorg = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
vorg = vorg.AudioDub(aorg.GetChannel(1))
#return vorg

global filter_and_sharp = false

v2000_2001_1 = vorg.trim(5326, 14136).crop(12, 2, -6, -10)
v2000_2001_1_a = v2000_2001_1.killVideo
v2000_2001_1 = v2000_2001_1.killAudio
v2000_2001_1 = filter_and_sharp ? v2000_2001_1.filter(thSAD = 400, thSADC = 800) : v2000_2001_1
v2000_2001_1 = v2000_2001_1.qtgmc(preset = "placebo").spline64Resize(1470, 1080)

function stabilize(clip v, clip a)
{
    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

    log = "c:\\Users\\ilx\\wrk\\video\\kveten-2023-project\\2000-2001\\v2000_2001_1.log"
#    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
    config = "19|2|30|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|16|1|0|2|2|30|300|4|" + log + "|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|0|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                               ^                                                                                   ^
#                 block                                          borders                                                                             rolling                                                  

    v = v.Deshaker(config).trim(30, 0)

    v = v.convertToYV24(interlaced=false, matrix="PC.709")

#v = v.spline64Resize((v.width / 2) - 1, v.height / 2)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
#    v = v.convertToYV12()

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v = AudioDub(v, a)
    
    v = v.convertToYV12()
    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
    v = filter_and_sharp ? v.unsharpMask(strength=200, radius=3, threshold=1) : v

    return v
}

return v2000_2001_1.stabilize(v2000_2001_1_a).prefetch(6)

#return v2000_2001_1.bob.crop(12, 2, -6, -10).spline64Resize(1470, 1080).prefetch
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
