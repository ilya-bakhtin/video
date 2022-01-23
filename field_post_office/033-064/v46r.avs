import("..\field_post_office.avs")
# 19395 - 20387, 19417 - 20408 
v046 = avg.trim(19250, 20242)
v046 = v046.autolevels(ignore_low = 0.001, ignore_high=0.001)
v046 = v046.colorYUV(autowhite=true)
v046 = v046.colorYUV(off_u = 6)
v046 = v046.filter(thSAD=400, thSADC=800)
return v046.prefetch
#adjustframerate
