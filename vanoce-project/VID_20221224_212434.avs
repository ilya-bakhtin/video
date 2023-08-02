v = LSMASHVideoSource("C:\Users\ilx\wrk\video\vanoce-project\marina_downloads\VID_20221224_212434.mp4").ConvertToYV24(interlaced=false)
a = LSMASHAudioSource("C:\Users\ilx\wrk\video\vanoce-project\marina_downloads\VID_20221224_212434.mp4")
v = v.AudioDub(a)

return v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
         convertToYV12.\
         prefetch(3)
