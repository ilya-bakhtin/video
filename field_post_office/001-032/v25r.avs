import("..\field_post_office.avs")
v025 = avg.trim(13645, 14049)
v025 = v025.autolevels(ignore_low = 0.01, ignore_high=0.006)
v025 = v025.colorYUV(off_u = 10, off_v = -24)
v025 = v025.filter(thSAD=400, thSADC=800)
return v025.prefetch
#adjustframerate
