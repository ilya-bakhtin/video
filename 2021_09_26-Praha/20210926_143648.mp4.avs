LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_26-Praha\20210926_143648.mp4")
v1 = trim(0, 531)
v2 = trim(532, 770)
v3 = trim(771, 0)

v2 = v2.tweak(sat=1.3, coring=false)

return v1+v2+v3
