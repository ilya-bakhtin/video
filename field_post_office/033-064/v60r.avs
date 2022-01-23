import("..\field_post_office.avs")
# 28340 - 29163, 28360 - 29184
v060 = avg.trim(27992, 28815)
v060 = v060.autolevels(ignore_low = 0.01, ignore_high=0.001)
v060 = v060.colorYUV(autowhite=true)
v060 = v060.colorYUV(off_u = -4)
v060 = v060.filter(thSAD=400, thSADC=800)
return v060.prefetch
#adjustframerate
