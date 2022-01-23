import("..\field_post_office.avs")
# 17435 - 17720, 17455 - 17740
v036 = avg.trim(17372, 17657)
v036 = v036.colorYUV(off_u = -6)
v036 = v036.filter(thSAD=400, thSADC=800)
return v036.prefetch
#adjustframerate
