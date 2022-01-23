import("..\field_post_office.avs")
# 17770 - 17983, 17790 - 18003
v038 = avg.trim(17707, 17919)
v038 = v038.autolevels(ignore_low = 0.001, ignore_high=0.001)
v038 = v038.colorYUV(off_u = -4)
v038 = v038.filter(thSAD=400, thSADC=800)
return v038.prefetch
#adjustframerate
