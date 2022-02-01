LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LSMASHVideoSource($$$clip$$$).\
    ConvertToRGB(interlaced=false, chromaresample="sinc")
return v
