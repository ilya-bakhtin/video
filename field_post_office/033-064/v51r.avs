import("..\field_post_office.avs")
# 23095 - 23228, 23116 - 23249
v051 = avg.trim(22925, 23058)
v051 = v051.autolevels(ignore_low = 0.01, ignore_high=0.001)
v051 = v051.colorYUV(autowhite=true)
v051 = v051.colorYUV(off_u = -4)
v051 = v051.filter(thSAD=400, thSADC=800)
return v051.prefetch
#adjustframerate
