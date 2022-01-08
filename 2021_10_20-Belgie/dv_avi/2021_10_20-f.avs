LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", stream_index=1)
last = v.AudioDub(a)

filter(thSAD=400, thSADC=800)

#QTGMC(Preset="Placebo", EdiThreads=6)
Prefetch

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.SMDegrain(tr=25, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=false, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1)
}
