import("..\field_post_office.avs")
v007 = avg.trim(6460, 6693)
v007 = v007.autolevels(ignore_low = 0.01, ignore_high=0.001)
v007 = v007.colorYUV(autowhite=true)
v007 = v007.colorYUV(off_u = -4)
v007 = v007.filter(thSAD=400, thSADC=800)
return v007.prefetch
#adjustframerate
