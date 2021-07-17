Import("q_inc.avs")

q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q10_.avi")
last = last.AudioDub(audio)
c1 = last.trim(30,-1326)
a1 = c1.KillVideo()
c1 = c1.KillAudio()
c2 = last.trim(1356, 0)
a2 = c2.KillVideo()
c2 = c2.KillAudio()

#q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q10_0u.avi").ConvertToYUY2()
#a1 = audio
last = c1
c1 = q_direct(83) + q_interlaced(29) + q_direct(551) + q_direct(80) + q_direct(185) + q_direct(334) + q_direct(64)

dv = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\source_yuy2\q10_yuy2.avi").ConvertToYV24().AssumeTFF()
adv = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\source_yuy2\q10_yuy2.avi")
adv = adv.GetChannel(1).ResampleAudio(22050)
dv = dv.QTGMC(Preset = "Slower", EdiThreads = 6)
dv = dv.crop(24, 10, -24, -6)
dv = dv.autolevels()
dv = dv.addborders(0, 0, 0, 32)
dv = dv.filter_e()
dv = dv.Spline64Resize(960, 720)
dv = dv.addborders(160, 0, 160, 0)

#q_prepare("D:\Users\ilx\wrk\video\vom\source_yuy2\q10_1u.avi").ConvertToYUY2()
#a2 = audio
global pos = 0
last = c2
c2 = q_direct(70) + q_interlaced(21) + q_direct(134)

last = c1 + dv + c2
last = audio_dub(a1 + adv + a2)
Prefetch(6)

#c1
# 83, 112, 663, 743, 928, 1262, 1326
# 83, i29, 551,  80, 185,  334,   64

#c2
# 70,  91, 225 
# 70, i21, 134