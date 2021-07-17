LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LWLibavVideoSource("D:\Users\ilx\wrk\video\lucerna_20200124\deshaker\20200124_212432.mp4.avi")

#GamMac(LockChan=1, Scale=2, loTh=0.2, hiTh=0.2, RedMul=1, GrnMul=1, BluMul=1, verbosity=5, show=false)
ConvertToYV24()
#BicubicSharp(r = 5, edges = 0.5, str = 2, mode = 1)
ColorYUV(autogain=true, autowhite=true).ColorYUV(gamma_y=32, off_u=0).histogram("levels")
Tweak(sat=2)
