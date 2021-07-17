LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("e:\media\video\lucerna_20200124\deshaker\20200124_193859.mp4.avi")
v = v.ConvertToYV24().ColorYUV(autogain=true)
v = v.tweak(sat=1.3)
v = v.BicubicSharp(r = 3, edges = 0.5, str = 1, mode = 1)

a = LSMASHAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_193859.mp4")

last = AudioDub(v, a).AssumeFPS(30,1)
ConvertToRGB()
Prefetch(6)
