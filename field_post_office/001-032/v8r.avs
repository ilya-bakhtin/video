import("..\field_post_office.avs")
v008 = avg.trim(6694, 8242)
v008 = v008.colorYUV(off_u = 8, off_v = -36)
v008 = v008.filter(thSAD=400, thSADC=800)
return v008.prefetch
#adjustframerate
