LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a01 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q01.avi", stream_index=1)
v01 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q01.avi").audiodub(a01)

a02 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q02.avi", stream_index=1)
v02 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q02.avi").audiodub(a02)

a03 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q03.avi", stream_index=1)
v03 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q03.avi").audiodub(a03)

a04 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q04.avi", stream_index=1)
v04 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q04.avi").audiodub(a04)

a05 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q05.avi", stream_index=1)
v05 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q05.avi").audiodub(a05)

a06 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q06.avi", stream_index=1)
v06 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q06.avi").audiodub(a06)

a07 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q07.avi", stream_index=1)
v07 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q07.avi").audiodub(a07)

a08 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q08.avi", stream_index=1)
v08 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q08.avi").audiodub(a08)

a09 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q09.avi", stream_index=1)
v09 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q09.avi").audiodub(a09)

a10 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q10.avi", stream_index=1)
v10 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q10.avi").audiodub(a10)

a11 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q11.avi", stream_index=1)
v11 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q11.avi").audiodub(a11)

a12 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q12.avi", stream_index=1)
v12 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q12.avi").audiodub(a12)

a13 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q13.avi", stream_index=1)
v13 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q13.avi").audiodub(a13)

a14 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q14.avi", stream_index=1)
v14 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q14.avi").audiodub(a14)

a15 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q15.avi", stream_index=1)
v15 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q15.avi").audiodub(a15)

a16 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q16.avi", stream_index=1)
v16 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q16.avi").audiodub(a16)

a17 = LWLibavAudioSource("D:\Users\ilx\wrk\video\vom\50hz\q17.avi", stream_index=1)
v17 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q17.avi").audiodub(a17)

last = v01+v02+v03+v04+v05+v06+v07+v08+v09+v10+v11+v12+v13+v14+v15+v16+v17
Prefetch(6)