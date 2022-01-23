import("..\field_post_office.avs")
# 29587 - 29773, 29607 - 29793
v063 = avg.trim(29149, 29335)
v063 = v063.autolevels(ignore_low = 0.01, ignore_high=0.001)
v063 = v063.filter(thSAD=400, thSADC=800)
return v063.prefetch
#adjustframerate
