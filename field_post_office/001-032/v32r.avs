import("..\field_post_office.avs")
v032 = avg.trim(16816, 16850)
v032 = v032.autolevels(ignore_low = 0.001, ignore_high=0.006)
v032 = v032.filter(thSAD=400, thSADC=800)
return v032.prefetch
#adjustframerate
