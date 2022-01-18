LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource($$$clip$$$).\
    ConvertToYV24(interlaced=false, chromaresample = "sinc")
#a = LWLibavAudioSource($$$clip$$$, stream_index=1)
#return v.AudioDub(a)
return v
