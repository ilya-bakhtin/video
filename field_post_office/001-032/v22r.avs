import("..\field_post_office.avs")
v022 = avg.trim(13249, 13345)
v022 = v022.colorYUV(off_u = -6)
v022 = v022.filter(thSAD=400, thSADC=800)
return v022.prefetch
#adjustframerate
