import("..\field_post_office.avs")
# 17311 - 17434, 17331 - 17454
v035 = avg.trim(17248, 17371)
v035 = v035.colorYUV(autowhite=true)
v035 = v035.colorYUV(off_u = -4, off_v = 4)
v035 = v035.filter(thSAD=400, thSADC=800)
return v035.prefetch
#adjustframerate
