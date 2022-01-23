import("..\field_post_office.avs")
v019 = avg.trim(12996, 13020)
v019 = v019.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v019 = v019.colorYUV(autowhite=true)
v019 = v019.filter(thSAD=400, thSADC=800)
return v019.prefetch
#adjustframerate
