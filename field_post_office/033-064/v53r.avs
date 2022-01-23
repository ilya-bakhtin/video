import("..\field_post_office.avs")
# 24089 - 24188, 24110 - 24209
v053 = avg.trim(23912, 24011)
v053 = v053.autolevels(ignore_low = 0.01, ignore_high=0.001)
v053 = v053.colorYUV(autowhite=true)
v053 = v053.colorYUV(off_u = -4)
v053 = v053.filter(thSAD=400, thSADC=800)
return v053.prefetch
#adjustframerate
