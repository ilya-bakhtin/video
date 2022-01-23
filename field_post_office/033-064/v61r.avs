import("..\field_post_office.avs")
# 29166 - 29423, 29187 - 29443
v061 = avg.trim(28816, 29071)
v061 = v061.autolevels(ignore_low = 0.01, ignore_high=0.001)
v061 = v061.colorYUV(autowhite=true)
v061 = v061.colorYUV(off_u = -4)
v061 = v061.filter(thSAD=400, thSADC=800)
return v061.prefetch
#adjustframerate
