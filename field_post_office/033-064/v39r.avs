import("..\field_post_office.avs")
# 17984 - 18144, 18004 - 18164
v039 = avg.trim(17920, 18080)
#v039 = v039.autolevels(ignore_low = 0.001, ignore_high=0.001)
v039 = v039.colorYUV(autowhite=true)
v039 = v039.colorYUV(off_v = 6)
v039 = v039.filter(thSAD=400, thSADC=800)
return v039.prefetch
#adjustframerate
