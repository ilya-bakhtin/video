v = LWLibavVideoSource("M:\Media\video\vhs-1989-1996\1996\1996.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
#a = LWLibavAudioSource("M:\Media\video\vhs-1989-1996\1996\1996.avi")
#v = v.AudioDub(a.GetChannel(1))
v = v.trim(71300, 0)
v = v.trim(0, 4718)
#return v
vc = LWLibavVideoSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-4.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
ac = LWLibavAudioSource("E:\Media\video\vhs-1989-1996\1991-1996-cam\1991-1996-4.avi")
vc = vc.AudioDub(ac.GetChannel(1))
vc = vc.trim(4135, 0)
ac = vc.killVideo
vc = vc.killAudio
vc = vc.crop(13, 0, -5, -16)
vc = vc.separateFields
vc = vc.trim(1, 0)
/*
vc = vc.weave
vc = vc.crop(0, 1, 0, 0).addBorders(0, 0, 0, 1).assumeBFF
*/
v = v.crop(10, 0, -8, -16)
#v = v.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 236)
/*
vc = vc.trim(0, 416) +\
     v.trim(417, 417).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(418, 931) +\
     v.trim(932, 932).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(933, 1086) +\
     v.trim(1087, 1087).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(1088, 1208) +\
     v.trim(1209, 1209).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(1210, 1214) +\
     v.trim(1215, 1215).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(1216, 1793) +\
     v.trim(1794, 1794).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(1795, 2424) +\
     v.trim(2425, 2425).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(2426, 2574) +\
     v.trim(2575, 2575).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(2576, 3390) +\
     v.trim(3391, 3391).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 230) +\
     vc.trim(3392, 3473) +\

     v.trim(3474, 3478).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 230) +\
     vc.trim(3479, 0)
*/
v = v.separateFields
#vc = vc.separateFields
vc = vc.trim(0, 834) +\
     vc.trim(834, -1)/*.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 224)*/ +\
     vc.trim(836, 1864) +\
     vc.trim(1864, -1)/*.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 224)*/ +\
     vc.trim(1866, 2174) +\
     vc.trim(2174, -1)/*.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 224)*/ +\
     vc.trim(2176, 2418) +\
     vc.trim(2418, -1)/*.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220)*/ +\
     vc.trim(2420, 2430) +\
     vc.trim(2430, -1)/*.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220)*/ +\
     vc.trim(2432, 3588) +\
     vc.trim(3588, -1) +\
     vc.trim(3590, 3670) +\
     vc.trim(3670, -1) +\
     vc.trim(3672, 3674) +\
     vc.trim(3674, -1) +\
     vc.trim(3676, 4849) +\
     vc.trim(4851, -1) +\
     vc.trim(4851, 5150) +\
     vc.trim(5150, -1) +\
     vc.trim(5152, 6134) +\
     vc.trim(6134, -1) +\
     vc.trim(6136, 6658) +\
     vc.trim(6660, -1) +\
     vc.trim(6660, 6782) +\
     vc.trim(6784, -1) +\
     vc.trim(6784, 6948) +\
     v.trim(6949, -8).autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 220) +\
     vc.trim(6957, 0)
v = v.weave
vc = vc.weave
vc = vc.AudioDub(ac)
vc = vc.trim(0, 4718)

#return v.bob.stackHorizontal(vc.bob).prefetch
#return v.bob.stackHorizontal(vc.qtgmc(preset="placebo")).prefetch
#return v.subtract(vc)
#return v.interleave(vc).histogram("levels")

v = vc
v1 = v
#v = v.autolevels(filterRadius = 0, input_low = 0, output_low = 0, input_high = 255, output_high = 236)
#v = v.colorYUV(autoWhite = true)

v = v.crop(0, 1, 0, -3).assumeBFF
#v = v.bob
v = v.QTGMC(Preset="Placebo")
v1 = v1.QTGMC(Preset="Placebo")
#return v.histogram("levels")

v1 = v1.spline64Resize(1480, 1080)
v1 = v1.convertToYV12

v = v.spline64Resize(1440, 1080)
v = v.convertToYV12

v1 = v1.unsharpMask(strength=400, radius=3, threshold=1)
v =  v.unsharpMask(strength=400, radius=3, threshold=1)#.grainFactory3
#v = v1.interleave(v)
#v = v.histogram("levels")

last = v
prefetch
