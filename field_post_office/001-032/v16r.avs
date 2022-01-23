import("..\field_post_office.avs")
v016 = avg.trim(12031, 12206)
v016 = v016.autolevels(ignore_low = 0.01, ignore_high=0.001)
v016 = v016.colorYUV(autowhite=true)
v016 = v016.colorYUV(off_u = -6)
v016 = v016.filter(thSAD=400, thSADC=800)
return v016.prefetch
#adjustframerate
