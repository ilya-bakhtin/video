import("..\field_post_office.avs")
v011 = v2.trim(9588, 9908).trim(0, 83) + avg.trim(9588, 9908).trim(84, 0)
v011 = v011.autolevels(ignore_low = 0.01, ignore_high=0.001)
v011 = v011.colorYUV(autowhite=true)
v011 = v011.colorYUV(off_u = -4)
v011 = v011.filter(thSAD=400, thSADC=800)
return v011.prefetch
#adjustframerate
