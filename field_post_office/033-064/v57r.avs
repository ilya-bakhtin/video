import("..\field_post_office.avs")
# 27213 - 27399, 27234 - 27420
v057 = avg.trim(26893, 27079)
v057 = v057.autolevels(ignore_low = 0.01, ignore_high=0.001)
v057 = v057.colorYUV(autowhite=true)
v057 = v057.colorYUV(off_u = -4)
v057 = v057.filter(thSAD=400, thSADC=800)
return v057.prefetch
#adjustframerate
