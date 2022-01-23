import("..\field_post_office.avs")
# 18621 - 18797, 18641 - 18817
v044 = avg.trim(18539, 18715)
v044 = v044.autolevels(ignore_low = 0.01, ignore_high=0.001)
v044 = v044.colorYUV(autowhite=true)
v044 = v044.colorYUV(off_u = -4)
v044 = v044.filter(thSAD=400, thSADC=800)
return v044.prefetch
#adjustframerate
