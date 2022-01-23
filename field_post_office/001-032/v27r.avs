import("..\field_post_office.avs")
v027 = avg.trim(14294, 14507)
v027 = v027.autolevels(ignore_low = 0.01, ignore_high=0.001)
v027 = v027.colorYUV(autowhite=true)
v027 = v027.colorYUV(off_u = -4)
v027 = v027.filter(thSAD=400, thSADC=800)
return v027.prefetch
#adjustframerate
