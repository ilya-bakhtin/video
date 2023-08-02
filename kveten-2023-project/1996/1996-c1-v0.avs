import("deinterlace.avs", utf8 = true)

v = LSMASHVideoSource("\\seiki5\m\Media\Video\1995-dance.avi-v2-muxed.mp4")
a = LSMASHAudioSource("\\seiki5\m\Media\Video\1995-dance.avi-v2-muxed.mp4")

v =  v.unsharpMask(strength=400, radius=3, threshold=1)#.grainFactory3
v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)

v = v.spline64Resize(720, 540)
v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)

new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v = AudioDub(v, a)

return v

#W = H * (720 - (crop_l + crop_r)) / (576 - (crop_t + crop_b)) * 768 / 702
