import("..\field_post_office.avs")
v026 = avg.trim(14050, 14293)
v026 = v026.autolevels(ignore_low = 0.01, ignore_high=0.006)
v026 = v026.colorYUV(off_u = 16, off_v = -24)
v026 = v026.filter(thSAD=400, thSADC=800)
return v026.prefetch
#adjustframerate
