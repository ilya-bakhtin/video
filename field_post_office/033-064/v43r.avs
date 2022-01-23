import("..\field_post_office.avs")
# 18530 - 18601, 18550 - 18621
v043 = avg.trim(18467, 18538)
v043 = v043.autolevels(ignore_low = 0.001, ignore_high=0.01)
v043 = v043.colorYUV(off_u = -2, off_v = -6)
v043 = v043.filter(thSAD=400, thSADC=800)
return v043.prefetch
#adjustframerate
