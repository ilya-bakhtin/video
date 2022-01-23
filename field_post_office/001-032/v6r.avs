import("..\field_post_office.avs")
v006 = avg.trim(3770, 6459)
v006 = v006.colorYUV(autowhite=true)
v006 = v006.filter(thSAD=400, thSADC=800)
return v006.prefetch
#adjustframerate
