LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_155536.mp4")
v1 = trim(0, 93)
v2 = trim(94, 95)
v3 = trim(96, 97)
v4 = trim(98, 262)
v5 = trim(263, 0)
v1 = v1.tweak(sat=1.2)
v2 = v2.tweak(sat=1.5)
v3 = v3.tweak(sat=1.8)
v4 = v4.tweak(sat=2)
v5 = v5.tweak(sat=1.2)
last = (v1+v2+v3+v4+v5).autolevels
return last
