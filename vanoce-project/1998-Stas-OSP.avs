v = LSMASHVideoSource("D:\Users\ilx\wrk\video\field_post_office\combined\osp.mp4").ConvertToYV24(interlaced=false)
a = LSMASHAudioSource("D:\Users\ilx\wrk\video\field_post_office\combined\osp.mp4")
v = v.AudioDub(a)

return v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
         convertToYV12.\
         prefetch(3)
