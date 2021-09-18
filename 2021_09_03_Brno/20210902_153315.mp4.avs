LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_03_Brno\20210902_153315.mp4")
#extractY.autolevels(filterRadius=1)
autolevels.colorYUV(off_u=-8).tweak(sat=1.3)#.histogram("levels")
