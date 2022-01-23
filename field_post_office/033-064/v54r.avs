import("..\field_post_office.avs")
# 24275 - 25001, 24295 - 25022
v054 = avg.trim(24012, 24738)
v054 = v054.colorYUV(autowhite=true)
v054 = v054.tweak(sat = 0.8, coring = false)
v054 = v054.colorYUV(off_u = 4)
v054 = v054.filter(thSAD=400, thSADC=800)
return v054.prefetch
#adjustframerate
