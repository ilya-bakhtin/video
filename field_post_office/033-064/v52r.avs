import("..\field_post_office.avs")
# 23234 - 24086, 23255 - 24107
v052 = avg.trim(23059, 23911)
v052 = v052.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 300)
v052 = v052.colorYUV(autowhite=true)
v052 = v052.colorYUV(off_u = -4)
v052 = v052.filter(thSAD=400, thSADC=800)
return v052.prefetch
#adjustframerate
