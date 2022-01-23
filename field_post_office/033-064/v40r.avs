import("..\field_post_office.avs")
# 18145 - 18276, 18165 - 18296
v040 = avg.trim(18081, 18213)
v040 = v040.colorYUV(autowhite=true)
v040 = v040.filter(thSAD=400, thSADC=800)
return v040.prefetch
#adjustframerate
