import("..\field_post_office.avs")
# 17162 - 17310, 17182 - 17330
v034 = avg.trim(17099, 17247)
v034 = v034.colorYUV(off_v = -6)
v034 = v034.filter(thSAD=400, thSADC=800)
return v034.prefetch
#adjustframerate
