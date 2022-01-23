import("..\field_post_office.avs")
# 25027 - 25233, 25050 - 25252
v055 = avg.trim(24739, 24924)
v055 = v055.autolevels(ignore_low = 0.01, ignore_high=0.001)
v055 = v055.colorYUV(autowhite=true)
v055 = v055.colorYUV(off_u = -4)
v055 = v055.filter(thSAD=400, thSADC=800)
return v055.prefetch
#adjustframerate
