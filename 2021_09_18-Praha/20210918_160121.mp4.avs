LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_09_18-Praha\20210918_160121.mp4")
v1 = trim(0, 123).tweak(sat=1.3)
v2 = trim(124, 0)
return (v1+v2).trim(0, 242).autolevels
