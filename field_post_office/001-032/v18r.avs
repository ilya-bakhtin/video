import("..\field_post_office.avs")
v018 = avg.trim(12577, 12995)
v018 = v018.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v018 = v018.colorYUV(autowhite=true)
v018 = v018.filter(thSAD=400, thSADC=800)
return v018.prefetch
#adjustframerate
