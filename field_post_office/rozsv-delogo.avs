LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LSMASHVideoSource("D:\Users\ilx\wrk\video\field_post_office\Rozsv-1.mp4")
#return last
#mask = trim(370, -1).crop(1100, 40, -80, -940).addBorders(1100, 40, 80, 940)
#return mask
mask = imageSource("D:\Users\ilx\wrk\video\field_post_office\mask.png").convertToYV12
delogo = last.InpaintLogo(mask, radius=50, sharpness=100)
last = last.trim(0, 279) + delogo.trim(280, 646) + last.trim(647, 0)
prefetch(6)