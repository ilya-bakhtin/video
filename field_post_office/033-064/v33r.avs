import("..\field_post_office.avs")
# 16914 - 17161, 16934 - 17181
v033 = avg.trim(16851, 17098)
v033 = v033.colorYUV(off_u = -16)
v033 = v033.colorYUV(autowhite=true)
v033 = v033.colorYUV(off_u = 6)
v033 = v033.filter(thSAD=400, thSADC=800)
return v033.prefetch
#adjustframerate
