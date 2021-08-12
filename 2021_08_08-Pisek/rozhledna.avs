v33 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130144.mp4").AssumeFPS(30,1)
v33 = v33.colorYUV(off_u=-5, off_v=-3)
#v33 = v33.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3)
v33 = v33.trim(0, 424)

v34 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130235.mp4").AssumeFPS(30,1)
v34 = v34.colorYUV(off_u=0, off_v=-2)
v34 = v34.autolevels(filterRadius=9, gamma=1.1).tweak(sat=1.1)
v34 = v34.trim(15, 328)

v35 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130322.mp4").AssumeFPS(30,1)
#v35 = v35.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v35 = v35.trim(2, 246)

v36 = LSMASHVideoSource("d:\Users\ilx\wrk\video\2021_08_08-Pisek\20210808_130358.mp4").AssumeFPS(30,1)
#v36 = v36.convertToYV24.autolevels(filterRadius=9, gamma=1.2).tweak(sat=1.3).convertToRGB24
v36 = v36.trim(21, 290)
#return v36.convertToYV12.histogram("levels")
#return (v35.trim(v35.frameCount() - 32, 0) + v36.trim(0, 32))
return (v33+v34+v35+v36)#.histogram("levels")
