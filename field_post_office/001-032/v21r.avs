import("..\field_post_office.avs")
v021 = avg.trim(13098, 13248)
v021 = v021.colorYUV(off_u = -6)
v021 = v021.autolevels(ignore_low = 0.01, ignore_high=0.001)
v021 = v021.colorYUV(autowhite=true)
v021 = v021.filter(thSAD=400, thSADC=800)
return v021.prefetch
#adjustframerate
