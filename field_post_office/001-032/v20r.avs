import("..\field_post_office.avs")
v020 = avg.trim(13021, 13097)
v020 = v020.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v020 = v020.colorYUV(autowhite=true)
v020 = v020.filter(thSAD=400, thSADC=800)
return v020.prefetch
#adjustframerate
