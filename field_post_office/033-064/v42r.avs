import("..\field_post_office.avs")
# 18484 - 18529, 18504 - 18549
v042 = avg.trim(18421, 18466)
v042 = v042.autolevels(ignore_low = 0.01, ignore_high=0.001)
v042 = v042.colorYUV(autowhite=true)
v042 = v042.colorYUV(off_u = 2, off_v = 0)
v042 = v042.filter(thSAD=400, thSADC=800)
return v042.prefetch
#adjustframerate
