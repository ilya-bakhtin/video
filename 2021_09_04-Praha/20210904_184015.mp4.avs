LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_04-Praha\20210904_184015.mp4")
autolevels(gamma=1.7).colorYUV(/*off_u=-8, off_v=4*/autowhite=true).tweak(sat=1.3, coring=false)#.histogram("levels")
