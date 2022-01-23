import("..\field_post_office.avs")
# 21040 - 23093, 21062 - 23114
v050 = avg.trim(20874, 22924)
v050 = v050.colorYUV(off_u = -4)
v050 = v050.filter(thSAD=400, thSADC=800)
return v050.prefetch
#adjustframerate
