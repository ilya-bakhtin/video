LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v0 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q01_v0.avi")
v1 = LWLibavVideoSource("D:\Users\ilx\wrk\video\vom\50hz\q01.avi")

vert = v0.StackVertical(v1)
sub = v0.Subtract(v1)
sub = sub.StackVertical(sub)
last = vert.stackhorizontal(sub)
Prefetch(6)
