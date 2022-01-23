import("..\field_post_office.avs")
v013 = avg.trim(11300, 11479)
v013 = v013.autolevels(ignore_low = 0.01, ignore_high=0.001)
v013 = v013.colorYUV(autowhite=true)
v013 = v013.colorYUV(off_u = -4)
v013 = v013.filter(thSAD=400, thSADC=800)
return v013.prefetch
#adjustframerate
