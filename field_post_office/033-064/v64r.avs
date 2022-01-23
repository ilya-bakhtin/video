import("..\field_post_office.avs")
# 29774 - 30033, 29794 - 30053
v064 = avg.trim(29336, 29595)
v064 = v064.autolevels(ignore_low = 0.001, ignore_high=0.001, border_b = 300)
v064 = v064.colorYUV(autowhite=true)
v064 = v064.tweak(sat = 0.6, coring = false)
v064 = v064.filter(thSAD=400, thSADC=800)
return v064.prefetch
#adjustframerate
