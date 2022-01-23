import("..\field_post_office.avs")
v014 = avg.trim(11480, 11969)
v014 = v014.colorYUV(off_u = 8)
v014 = v014.autolevels(ignore_low = 0.01, ignore_high=0.001)
v014 = v014.colorYUV(autowhite=true)
v014 = v014.colorYUV(off_u = -8)
v014 = v014.filter(thSAD=400, thSADC=800)
return v014.prefetch
#adjustframerate
