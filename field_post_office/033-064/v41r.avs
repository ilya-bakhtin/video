import("..\field_post_office.avs")
# 18277 - 18483, 18297 - 18503
v041 = avg.trim(18214, 18420)
v041 = v041.autolevels(ignore_low = 0.001, ignore_high=0.001)
v041 = v041.colorYUV(off_u = -8)
v041 = v041.filter(thSAD=400, thSADC=800)
return v041.prefetch
#adjustframerate
