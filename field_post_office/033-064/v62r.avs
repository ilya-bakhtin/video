import("..\field_post_office.avs")
# 29510 - 29586, 29530 - 29606
v062 = avg.trim(29072, 29148)
v062 = v062.autolevels(ignore_low = 0.01, ignore_high=0.001)
v062 = v062.tweak(sat = 0.4, coring = false)
v062 = v062.filter(thSAD=400, thSADC=800)
return v062.prefetch
#adjustframerate
