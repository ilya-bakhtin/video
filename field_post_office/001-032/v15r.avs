import("..\field_post_office.avs")
v015 = avg.trim(11970, 12030)
v015 = v015.colorYUV(autowhite=true)
v015 = v015.colorYUV(off_u = -6)
v015 = v015.filter(thSAD=400, thSADC=800)
return v015.prefetch
#adjustframerate
