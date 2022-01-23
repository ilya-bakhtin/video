import("..\field_post_office.avs")
# 25236 - 27205, 25256 - 27226
v056 = avg.trim(24935, 26892)
v056 = v056.autolevels(ignore_low = 0.01, ignore_high=0.01, border_b = 200)
v056 = v056.colorYUV(autowhite=true)
v056 = v056.colorYUV(off_u = 2, off_v = -8)
v056 = v056.filter(thSAD=400, thSADC=800)
return v056.prefetch
#adjustframerate
