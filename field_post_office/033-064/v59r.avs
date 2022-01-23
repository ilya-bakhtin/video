import("..\field_post_office.avs")
# 28135 - 28336, 28154 - 28355
v059 = avg.trim(27790, 27991)
v059 = v059.autolevels(ignore_low = 0.01, ignore_high=0.001)
v059 = v059.colorYUV(autowhite=true)
v059 = v059.colorYUV(off_u = -4)
v059 = v059.filter(thSAD=400, thSADC=800)
return v059.prefetch
#adjustframerate
