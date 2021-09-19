LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_01_09-Praha\20210107_085608.mp4")
autolevels(gamma=1.5).colorYUV(off_u=-3, off_v=3)#.histogram("levels")
