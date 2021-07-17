LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LSMASHVideoSource("d:\Users\ilx\wrk\video\lucerna_20200124\20200124_200150.mp4").ChangeFPS(30,1).ConvertToYV12()
v = v.Spline64Resize(1920, 1080)
return v
