import("..\field_post_office.avs")
# 27422 - 28133, 27441 - 28152
v058 = avg.trim(27080, 27789)
v058 = v058.autolevels(ignore_low = 0.001, ignore_high=0.001)
v058 = v058.colorYUV(autowhite=true)
v058 = v058.tweak(sat = 0.8, coring = false)
v058 = v058.filter(thSAD=400, thSADC=800)
return v058.prefetch
#adjustframerate
