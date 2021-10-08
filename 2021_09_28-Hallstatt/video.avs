LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v = LWLibavVideoSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\dv_avi\2021_09_28-50.avi")
a = LWLibavAudioSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\dv_avi\2021_09_28-50.avi", stream_index=1)
avi = v.AudioDub(a)
#return avi

v001 = avi.trim(0, 1149)
v001 = v001.autolevels().tweak(sat=1.9, coring=false)
#v001 = v001.autogamma
#v001 = v001.histogram("levels")
#v001 = v001.sincResize(1920, 1080)
v001 = v001.spline64Resize(1920, 1080)
v001 = v001.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v002 = avi.trim(1150, 1781)
v002 = v002.autolevels().tweak(sat=1.9, coring=false)
v002 = v002.spline64Resize(1920, 1080)
v002 = v002.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v003 = avi.trim(1782, 2117)
v003 = v003.autolevels().tweak(sat=1.9, coring=false)
v003 = v003.spline64Resize(1920, 1080)
v003 = v003.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v004 = avi.trim(2118, 2953)
v004 = v004.autolevels(gamma=1.5).tweak(sat=3, coring=false)
v004 = v004.spline64Resize(1920, 1080)
v004 = v004.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v005 = avi.trim(2954, 4037)
/*
v005 = v005.autolevels()#.tweak(sat=1.9, coring=false)
v005_1 = v005.trim(0, 648).colorYUV(off_u=0, off_v=0).tweak(sat=2, coring=false)
v005_2 = v005.trim(649, 658).colorYUV(off_u=-1, off_v=0).tweak(sat=2, coring=false)
v005_3 = v005.trim(659, 668).colorYUV(off_u=-2, off_v=1).tweak(sat=1.9, coring=false)
v005_4 = v005.trim(669, 678).colorYUV(off_u=-4, off_v=2).tweak(sat=1.9, coring=false)
v005_5 = v005.trim(679, 688).colorYUV(off_u=-6, off_v=3).tweak(sat=1.8, coring=false)
v005_6 = v005.trim(689, 698).colorYUV(off_u=-8, off_v=4).tweak(sat=1.8, coring=false)
v005_7 = v005.trim(699, 708).colorYUV(off_u=-10, off_v=5).tweak(sat=1.7, coring=false)
v005_8 = v005.trim(709, 718).colorYUV(off_u=-12, off_v=6).tweak(sat=1.7, coring=false)
v005_9 = v005.trim(719, 728).colorYUV(off_u=-14, off_v=7).tweak(sat=1.6, coring=false)
v005_10 = v005.trim(729, 738).colorYUV(off_u=-16, off_v=8).tweak(sat=1.6, coring=false)
v005_11 = v005.trim(739, 748).colorYUV(off_u=-18, off_v=9).tweak(sat=1.5, coring=false)
v005_12 = v005.trim(749, 0).colorYUV(off_u=-20, off_v=10).tweak(sat=1.5, coring=false)
v005 = v005_1+v005_2+v005_3+v005_4+v005_5+v005_6+v005_7+v005_8+v005_9+v005_10+v005_11+v005_12
#v005 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\v005-ds.avi")
v005 = v005.spline64Resize(1920, 1080)
*/
v005a = v005
v005 = LWLibavVideoSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\v005-ds.avi")
v005 = v005.audioDub(v005a)
v005 = v005.convertToYV12().UnsharpMask(strength=300, radius=2, threshold=1)

v006 = avi.trim(4038, 4901)
v006 = v006.autolevels(gamma=1).tweak(sat=1.9, coring=false)
v006 = v006.spline64Resize(1920, 1080)
v006 = v006.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v007 = avi.trim(4902, 6041)
v007 = v007.autolevels(gamma=1).tweak(sat=1.9, coring=false)
v007 = v007.spline64Resize(1920, 1080)
v007 = v007.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v008 = avi.trim(6042, 6609)
/*
v008 = v008.autolevels(gamma=1)#.tweak(sat=1.9, coring=false)
v008_1 = v008.trim(0, 249).colorYUV(off_u=0, off_v=0).tweak(sat=2.1, coring=false)
v008_2 = v008.trim(250, 259).colorYUV(off_u=-2, off_v=1).tweak(sat=2, coring=false)
v008_3 = v008.trim(260, 269).colorYUV(off_u=-4, off_v=2).tweak(sat=2, coring=false)
v008_4 = v008.trim(270, 279).colorYUV(off_u=-6, off_v=3).tweak(sat=1.9, coring=false)
v008_5 = v008.trim(280, 289).colorYUV(off_u=-8, off_v=4).tweak(sat=1.9, coring=false)
v008_6 = v008.trim(290, 299).colorYUV(off_u=-10, off_v=5).tweak(sat=1.8, coring=false)
v008_7 = v008.trim(300, 309).colorYUV(off_u=-12, off_v=6).tweak(sat=1.8, coring=false)
v008_8 = v008.trim(310, 319).colorYUV(off_u=-14, off_v=7).tweak(sat=1.7, coring=false)
v008_9 = v008.trim(320, 329).colorYUV(off_u=-16, off_v=8).tweak(sat=1.7, coring=false)
v008_10 = v008.trim(330, 339).colorYUV(off_u=-18, off_v=9).tweak(sat=1.6, coring=false)
v008_11 = v008.trim(340, 349).colorYUV(off_u=-20, off_v=10).tweak(sat=1.6, coring=false)
v008_12 = v008.trim(350, 0).colorYUV(off_u=-20, off_v=10).tweak(sat=1.5, coring=false)
v008 = v008_1+v008_2+v008_3+v008_4+v008_5+v008_6+v008_7+v008_8+v008_9+v008_10+v008_11+v008_12
v008 = v008.spline64Resize(1920, 1080)
*/
v008a = v008
v008 = LWLibavVideoSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\v008-ds.avi")
v008 = v008.audioDub(v008a)
v008 = v008.convertToYV12().UnsharpMask(strength=300, radius=2, threshold=1)

v009 = avi.trim(6610, 7351)
v009 = v009.autolevels(gamma=1).tweak(sat=1.9, coring=false)
v009 = v009.spline64Resize(1920, 1080)
v009 = v009.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v010 = avi.trim(7352, 7769)
v010 = v010.autolevels(gamma=1.1).tweak(sat=1.7, coring=false)
v010 = v010.spline64Resize(1920, 1080)
v010 = v010.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v011 = avi.trim(7770, 8841)
v011 = v011.autolevels(gamma=1.1)
v1 = v011.trim(0, 833).tweak(sat=1.9, coring=false)
v2 = v011.trim(834, 835).tweak(sat=1.8, coring=false)
v3 = v011.trim(836, 0).tweak(sat=1.5, coring=false)
#v011 = v011.autolevels(gamma=1.1).tweak(sat=1.7, coring=false)
v011 = v1+v2+v3
v011 = v011.spline64Resize(1920, 1080)
v011 = v011.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v012 = avi.trim(8842, 9585)
v012 = v012.autolevels(gamma=1).tweak(sat=1.9, coring=false)
v012 = v012.spline64Resize(1920, 1080)
v012 = v012.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v013 = avi.trim(9586, 10179)
v013 = v013.trim(69, 0).autolevels(debug=false, gamma=1, minRng=0, border_l=200)#, ignore_high=0)
/*
v013_1 = v013.trim(0, 250).colorYUV(off_u=0, off_v=0).tweak(sat=2.1, coring=false)
v013_2 = v013.trim(251, 298).colorYUV(off_u=-3, off_v=1).tweak(sat=1.9, coring=false)
v013_3 = v013.trim(299, 346).colorYUV(off_u=-6, off_v=3).tweak(sat=1.8, bright=-6, coring=false)
v013_4 = v013.trim(347, 356).colorYUV(off_u=-8, off_v=4).tweak(sat=1.8, coring=false)
v013_5 = v013.trim(357, 366).colorYUV(off_u=-12, off_v=6).tweak(sat=1.7, coring=false)
v013_6 = v013.trim(367, 376).colorYUV(off_u=-12, off_v=6).tweak(sat=1.7, coring=false)
v013_7 = v013.trim(377, 386).colorYUV(off_u=-15, off_v=7).tweak(sat=1.7, coring=false)
v013_8 = v013.trim(387, 396).colorYUV(off_u=-19, off_v=9).tweak(sat=1.6, coring=false)
v013_9 = v013.trim(397, 0).colorYUV(off_u=-20, off_v=10).tweak(sat=1.5, coring=false)
v013 = (v013_1+v013_2+v013_3+v013_4+v013_5+v013_6+v013_7+v013_8+v013_9)#.histogram("levels")
#v013 = v013.tweak(sat=1.9, coring=false)
v013 = v013.spline64Resize(1920, 1080)
*/
v013a = v013
v013 = LWLibavVideoSource("d:\users\ilx\wrk\video\2021_09_28-Hallstatt\v013-ds.avi")
v013 = v013.audioDub(v013a)
v013 = v013.convertToYV12().UnsharpMask(strength=300, radius=2, threshold=1)

v014 = avi.trim(10180, 12421)
v014 = v014.autolevels(debug=false).tweak(sat=1.7, coring=false)#.histogram("levels")
v014 = v014.spline64Resize(1920, 1080)
v014 = v014.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v015 = avi.trim(12422, 12785)
v015 = v015.autolevels(debug=false).tweak(sat=1.7, coring=false)#.histogram("levels")
v015 = v015.spline64Resize(1920, 1080)
v015 = v015.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v016 = avi.trim(12786, 14133)
v016 = v016.autolevels(debug=false).tweak(sat=1.7, coring=false)#.histogram("levels")
v016 = v016.spline64Resize(1920, 1080)
v016 = v016.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v017 = avi.trim(14134, 15025)
v017 = v017.autolevels(debug=false, input_high=255, minRng=0, gamma=1.2).tweak(sat=2, coring=false)#.histogram("levels")
v017 = v017.spline64Resize(1920, 1080)
v017 = v017.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v018 = avi.trim(15026, 15549)
v018 = v018.autolevels(debug=false, input_high=255, minRng=0, gamma=1.3).tweak(sat=2, coring=false)#.histogram("levels")
v018 = v018.spline64Resize(1920, 1080)
v018 = v018.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v019 = avi.trim(15550, 16429)
v019 = v019.autolevels(debug=false, ignore_high=0.00003, gamma=1.3, minRng=0).tweak(sat=1.7, coring=false)#.histogram("levels")
v019 = v019.spline64Resize(1920, 1080)
v019 = v019.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v020 = avi.trim(16430, 17173)
v020 = v020.autolevels(debug=false, input_high=255, minRng=0).tweak(sat=1.7, coring=false)#.histogram("levels")
v020 = v020.spline64Resize(1920, 1080)
v020 = v020.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v021 = avi.trim(17174, 17371)
v021 = v021.autolevels(debug=false, minRng=0).tweak(sat=1.7, coring=false)#.histogram("levels")
v021 = v021.spline64Resize(1920, 1080)
v021 = v021.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

v022 = avi.trim(17372, 0)
v022 = v022.autolevels(debug=false, minRng=0).tweak(sat=1.7, coring=false)#.histogram("levels")
v022 = v022.spline64Resize(1920, 1080)
v022 = v022.convertToYV12().UnsharpMask(strength=300, radius=1, threshold=1)

#return v022.prefetch(6)


a1a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133550.mp4")
v1a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133550.mp4").AssumeFPS(30,1)
new_rate = Float(a1a.AudioLength)/v1a.FrameCount*v1a.FrameRateNumerator/v1a.FrameRateDenominator
a1a = a1a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

a2a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133618.mp4")
v2a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133618.mp4").AssumeFPS(30,1)
new_rate = Float(a2a.AudioLength)/v2a.FrameCount*v2a.FrameRateNumerator/v2a.FrameRateDenominator
a2a = a2a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

a3a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134532.mp4")
v3a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134532.mp4").AssumeFPS(30,1)
new_rate = Float(a3a.AudioLength)/v3a.FrameCount*v3a.FrameRateNumerator/v3a.FrameRateDenominator
a3a = a3a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

a4a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134937.mp4")
v4a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134937.mp4").AssumeFPS(30,1)
new_rate = Float(a4a.AudioLength)/v4a.FrameCount*v4a.FrameRateNumerator/v4a.FrameRateDenominator
a4a = a4a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

a5a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_151758.mp4")
v5a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_151758.mp4").AssumeFPS(30,1)
new_rate = Float(a5a.AudioLength)/v5a.FrameCount*v5a.FrameRateNumerator/v5a.FrameRateDenominator
a5a = a5a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

a6a = LSMASHAudioSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_153241.mp4")
v6a = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_153241.mp4").AssumeFPS(30,1)
new_rate = Float(a6a.AudioLength)/v6a.FrameCount*v6a.FrameRateNumerator/v6a.FrameRateDenominator
a6a = a6a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133550.mp4-50.avi")
v1 = v1.convertToYV12
v1 = AudioDub(v1, a1a)

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_133618.mp4-50.avi")
v2 = v2.convertToYV12
v2 = AudioDub(v2, a2a)

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134532.mp4-50.avi")
v3 = v3.convertToYV12
v3 = AudioDub(v3, a3a)

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_134937.mp4-50.avi")
v4 = v4.convertToYV12
v4 = AudioDub(v4, a4a)

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_151758.mp4-50.avi")
v5 = v5.convertToYV12
v5 = AudioDub(v5, a5a)

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\2021_09_28-Hallstatt\20210928_153241.mp4-50.avi")
v6 = v6.convertToYV12
v6 = AudioDub(v6, a6a)

last = v001+v002+v003+v004+v005+v006+v007+v008+v009+v010+v011+v1+v2+v012+v3+v4+v013+v5+\
       v014+v015+v6+v016+v017+v018+v019+v020+v021+v022

prefetch(6)
