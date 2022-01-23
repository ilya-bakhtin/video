import("..\field_post_office.avs")
v031 = avg.trim(16680, 16815)
v031 = v031.autolevels(ignore_low = 0.001, ignore_high=0.006)
v031 = v031.colorYUV(autowhite=true)
v031 = v031.filter(thSAD=400, thSADC=800)
return v031.prefetch
#adjustframerate
