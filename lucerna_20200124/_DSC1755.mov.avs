#SetFilterMTMode("DEFAULT_MT_MODE", 3)
#SetFilterMTMode("SVSuper",1)
#SetFilterMTMode("SVAnalyse",1)
#SetFilterMTMode("SVSmoothFps",1)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v = LSMASHVideoSource("D:\Users\ilx\wrk\video\lucerna_20200124\_DSC1755.MOV")

v = v.FrameRateConverter(NewNum=60, NewDen=1)
v = v.ChangeFPS(30)

a = LSMASHAudioSource("d:\Users\ilx\wrk\video\lucerna_20200124\_DSC1755.MOV")

last = AudioDub(v, a)
trim(9000, 11400)
AssumeFPS(30,1)
ConvertToRGB()
Prefetch(6)
