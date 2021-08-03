LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_07_31-Pisek\20210731_134135.mp4")

autolevels(gamma=0.7, minRng=0)

v1 = last.tweak(sat=1.8, coring=false)
v2 = last.tweak(sat=1.75, coring=false)
v3 = last.tweak(sat=1.7, coring=false)
v4 = last.tweak(sat=1.65, coring=false)
v5 = last.tweak(sat=1.6, coring=false)
v6 = last.tweak(sat=1.55, coring=false)
v7 = last.tweak(sat=1.5, coring=false)
v8 = last.tweak(sat=1.45, coring=false)
v9 = last.tweak(sat=1.4, coring=false)
v10 = last.tweak(sat=1.35, coring=false)
v11 = last.tweak(sat=1.3, coring=false)
v12 = last.tweak(sat=1.25, coring=false)
v13 = last.tweak(sat=1.2, coring=false)

last = v1.trim(0, 409) + v2.trim(410, 419) + v3.trim(420, 429) + v4.trim(430, 439) + v5.trim(440, 449) + v6.trim(450, 459) + v7.trim(460, 469) +\
       v8.trim(470, 479) + v9.trim(480, 489) + v10.trim(490, 499) + v11.trim(500, 509) + v12.trim(510, 519) + v13.trim(520, 0)

prefetch(6)