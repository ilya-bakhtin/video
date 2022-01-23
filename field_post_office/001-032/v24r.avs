import("..\field_post_office.avs")
v024 = avg.trim(13522, 13644)
v024 = v024.autolevels(ignore_low = 0.01, ignore_high=0.006)
v024 = v024.colorYUV(off_u = 10, off_v = -24)
v024 = v024.filter(thSAD=400, thSADC=800)
return v024.prefetch
#adjustframerate
