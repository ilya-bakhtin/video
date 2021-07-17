SetFilterMTMode("LSMASHVideoSource", MT_SERIALIZED)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v1 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_185418.mp4.avi").AssumeFPS(30,1)
v1 = v1.ConvertToYV12()#.ColorYUV(autogain=true)
v1 = v1.tweak(sat=1.3)
v1 = v1.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v2 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_190821.mp4.avi").AssumeFPS(30,1)
v2 = v2.ConvertToYV12()#.ColorYUV(autogain=true, off_u=8, off_v=-8).histogram("levels")
v2 = v2.tweak(sat=1.3)
v2 = v2.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v3 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_193859.mp4.avi").AssumeFPS(30,1)
v3 = v3.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v3 = v3.tweak(sat=1.3)
v3 = v3.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v4_0 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_200150.mp4.avi").ChangeFPS(30,1)
v4_0 = v4_0.ConvertToYV12()

v4 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_200226.mp4.avi").AssumeFPS(30,1)
v4 = v4.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v4 = v4.tweak(sat=1.3)
v4 = v4.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v5 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_202230.mp4.avi").AssumeFPS(30,1)
v5 = v5.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v5 = v5.tweak(sat=1.3)
v5 = v5.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v6 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_202608.mp4.avi").AssumeFPS(30,1)
v6 = v6.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v6 = v6.tweak(sat=1.3)
v6 = v6.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v7 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_202840.mp4.avi").AssumeFPS(30,1)
v7 = v7.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v7 = v7.tweak(sat=1.3)
v7 = v7.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v8 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_203018.mp4.avi").AssumeFPS(30,1)
v8 = v8.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v8 = v8.tweak(sat=1.3)
v8 = v8.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v9 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_204914.mp4.avi").AssumeFPS(30,1)
v9 = v9.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v9 = v9.tweak(sat=1.3)
v9 = v9.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v10 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_205034.mp4.avi").AssumeFPS(30,1)
v10 = v10.ConvertToYV12()#.ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v10 = v10.tweak(sat=1.3)
v10 = v10.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v11 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_205116.mp4.avi").AssumeFPS(30,1)
v11 = v11.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v11 = v11.tweak(sat=1.3)
v11 = v11.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v12 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_205223.mp4.avi").AssumeFPS(30,1)
v12 = v12.ConvertToYV12()#.ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v12 = v12.tweak(sat=1.3)
v12 = v12.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v13 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_210208.mp4.avi").AssumeFPS(30,1)
v13 = v13.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v13 = v13.tweak(sat=1.3)
v13 = v13.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v14 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_212325.mp4.avi").AssumeFPS(30,1)
v14 = v14.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v14 = v14.tweak(sat=1.3)
v14 = v14.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

v15 = LWLibavVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_212432.mp4.avi").AssumeFPS(30,1)
v15 = v15.ConvertToYV12().ColorYUV(autogain=true)#, off_u=8, off_v=-8).histogram("levels")
v15 = v15.tweak(sat=1.6)
v15 = v15.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)
#return v15.Prefetch(6)

v16 = LSMASHVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200125_000509.mp4")
v16 = v16.ChangeFPS(30, 1)
v16 = v16.PointResize(1920, 1080)

v17 = LSMASHVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200125_000924.mp4")
v17 = v17.ChangeFPS(30, 1)
v17 = v17.Spline64Resize(1920, 1080)

###
a1 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_185418.mp4").AssumeFPS(30,1)
#v1 = AudioDub(v1, a1).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a1.AudioRate*a1.AudioDuration/(v1.FrameCount/v1.FrameRate)
v1 = AudioDub(v1, a1).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a2 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_190821.mp4").AssumeFPS(30,1)
#v2 = AudioDub(v2, a2).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a2.AudioRate*a2.AudioDuration/(v2.FrameCount/v2.FrameRate)
v2 = AudioDub(v2, a2).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a3 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_193859.mp4").AssumeFPS(30,1)
#v3 = AudioDub(v3, a3).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a3.AudioRate*a3.AudioDuration/(v3.FrameCount/v3.FrameRate)
v3 = AudioDub(v3, a3).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a4_0 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_200150.mp4").AssumeFPS(60,1)
#v4_0 = AudioDub(v4_0, a4_0).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a4_0.AudioRate*a4_0.AudioDuration/(v4_0.FrameCount/v4_0.FrameRate)
v4_0 = AudioDub(v4_0, a4_0).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a4 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_200226.mp4").AssumeFPS(30,1)
#v4 = AudioDub(v4, a4).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a4.AudioRate*a4.AudioDuration/(v4.FrameCount/v4.FrameRate)
v4 = AudioDub(v4, a4).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)
v4 = v4.trim(916, 0)

a5 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_202230.mp4").AssumeFPS(30,1)
#v5 = AudioDub(v5, a5).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a5.AudioRate*a5.AudioDuration/(v5.FrameCount/v5.FrameRate)
v5 = AudioDub(v5, a5).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a6 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_202608.mp4").AssumeFPS(30,1)
#v6 = AudioDub(v6, a6).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a6.AudioRate*a6.AudioDuration/(v6.FrameCount/v6.FrameRate)
v6 = AudioDub(v6, a6).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a7 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_202840.mp4").AssumeFPS(30,1)
#v7 = AudioDub(v7, a7).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a7.AudioRate*a7.AudioDuration/(v7.FrameCount/v7.FrameRate)
v7 = AudioDub(v7, a7).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a8 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_203018.mp4").AssumeFPS(30,1)
#v8 = AudioDub(v8, a8).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a8.AudioRate*a8.AudioDuration/(v8.FrameCount/v8.FrameRate)
v8 = AudioDub(v8, a8).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a9 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_204914.mp4").AssumeFPS(30,1)
#v9 = AudioDub(v9, a9).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a9.AudioRate*a9.AudioDuration/(v9.FrameCount/v9.FrameRate)
v9 = AudioDub(v9, a9).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a10 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_205034.mp4").AssumeFPS(30,1)
#v10 = AudioDub(v10, a10).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a10.AudioRate*a10.AudioDuration/(v10.FrameCount/v10.FrameRate)
v10 = AudioDub(v10, a10).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a11 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_205116.mp4").AssumeFPS(30,1)
#v11 = AudioDub(v11, a11).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a11.AudioRate*a11.AudioDuration/(v11.FrameCount/v11.FrameRate)
v11 = AudioDub(v11, a11).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a12 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_205223.mp4").AssumeFPS(30,1)
#v12 = AudioDub(v12, a12).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a12.AudioRate*a12.AudioDuration/(v12.FrameCount/v12.FrameRate)
v12 = AudioDub(v12, a12).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a13 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_210208.mp4").AssumeFPS(30,1)
#v13 = AudioDub(v13, a13).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a13.AudioRate*a13.AudioDuration/(v13.FrameCount/v13.FrameRate)
v13 = AudioDub(v13, a13).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a14 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_212325.mp4").AssumeFPS(30,1)
#v14 = AudioDub(v14, a14).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a14.AudioRate*a14.AudioDuration/(v14.FrameCount/v14.FrameRate)
v14 = AudioDub(v14, a14).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a15 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_212432.mp4").AssumeFPS(30,1)
#v15 = AudioDub(v15, a15).AssumeFPS(30,1, true).ResampleAudio(48000)
new_rate = a15.AudioRate*a15.AudioDuration/(v15.FrameCount/v15.FrameRate)
v15 = AudioDub(v15, a15).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a16 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200125_000509.mp4").AssumeFPS(60,1)
new_rate = a16.AudioRate*a16.AudioDuration/(v16.FrameCount/v16.FrameRate)
v16 = AudioDub(v16, a16).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

a17 = LWLibavAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200125_000924.mp4").AssumeFPS(60,1)
new_rate = a17.AudioRate*a17.AudioDuration/(v17.FrameCount/v17.FrameRate)
v17 = AudioDub(v17, a17).AssumeSampleRate(Round(new_rate)).AssumeFPS(30,1, true).ResampleAudio(48000)

#last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17
#return last
###

last = (v16+v17)#.waveform(window=50, height=0.333, under=false, zoom=2.0, marks=true)
return last.Prefetch(6)

vm = v1 + v2 + v3 + v4_0 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17

last = vm
#last = vm.trim(347, 1101) + vm.trim(1940, 3977) + vm.trim(4506, 8187) + vm.trim(8349, 8950) + vm.trim(9364, 10446) + vm.trim(10664, 0)

#ConvertToYV12()
#waveform(window=50, height=0.333, under=false, zoom=2.0, marks=true)
Prefetch(6)
