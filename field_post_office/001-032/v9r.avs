import("..\field_post_office.avs")
v009 = avg.trim(8243, 8375)
v009 = v009.autolevels(ignore_low = 0.01, ignore_high=0.001)
v009 = v009.colorYUV(autowhite=true)
v009 = v009.colorYUV(off_u = -4)
v009 = v009.filter(thSAD=400, thSADC=800)
return v009.prefetch
#adjustframerate
