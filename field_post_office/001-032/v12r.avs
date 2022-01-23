import("..\field_post_office.avs")
v012 = avg.trim(9909, 11299)
v012 = v012.colorYUV(off_u = 8)
v012 = v012.autolevels(ignore_low = 0.01, ignore_high=0.001)
v012 = v012.colorYUV(autowhite=true)
v012 = v012.colorYUV(off_u = -8)
v012 = v012.filter(thSAD=400, thSADC=800)
return v012.prefetch
#adjustframerate
