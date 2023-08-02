v = LWLibavVideoSource("M:\Media\video\vhs-2002-2005\2004_Winter_Spring-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a = LWLibavAudioSource("M:\Media\video\vhs-2002-2005\2004_Winter_Spring-cam.avi")
v = v.AudioDub(a.GetChannel(1))
v = v.trim(12495, 35460)
ve = v.crop(0, 00, 0, 0).separateFields.selectEven
ve1 = ve.crop(0, 0, 0, -4)
ve2 = ve.crop(0, ve.height - 5, 0, -4)
ve3 = ve.crop(0, ve.height - 3, 0, 0)
ve = ve1.stackVertical(ve2).stackVertical(ve3)

vo = v.crop(0, 00, 0, 0).separateFields.selectOdd
vo1 = vo.crop(0, 0, 0, -4)
vo2_l = vo.crop(0, vo.height - 4, -300, -3)
vo2_r = vo.crop(vo.width - 300, vo.height - 5, 0, -4)
vo2 = vo2_l.stackHorizontal(vo2_r)

#vo2 = vo.crop(0, vo.height - 4, 0, -3)

vo3 = vo.crop(0, vo.height - 3, 0, 0)
vo = vo1.stackVertical(vo2).stackVertical(vo3)
return ve.interleave(vo).\
          weave.\
          crop(12, 2, -6, 0).\
          autolevels.\
          qtgmc(preset="placebo").\
          spline64Resize(1440, 1080).\
          FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16).\
          convertToYV12.\
          colorMatrix(mode="Rec.601->Rec.709", clamp=0).\
          unsharpMask(strength=300, radius=2, threshold=1).\
          prefetch
