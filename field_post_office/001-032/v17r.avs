import("..\field_post_office.avs")
v017 = avg.trim(12207, 12576)
v017 = v017.autolevels(ignore_low = 0.01, ignore_high=0.001)
v017 = v017.colorYUV(autowhite=true)
v017 = v017.filter(thSAD=400, thSADC=800)
return v017.prefetch
#adjustframerate
