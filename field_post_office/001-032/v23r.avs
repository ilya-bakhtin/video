import("..\field_post_office.avs")
v023 = avg.trim(13346, 13521)
v023 = v023.autolevels(ignore_low = 0.01, ignore_high=0.001)
v023 = v023.colorYUV(autowhite=true)
v023 = v023.colorYUV(off_u = -4)
v023 = v023.filter(thSAD=400, thSADC=800)
return v023.prefetch
#adjustframerate
