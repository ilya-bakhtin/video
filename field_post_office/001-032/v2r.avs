import("..\field_post_office.avs")
v002 = avg.trim(54, 590)
v002 = v002.autolevels(ignore_low = 0.001, ignore_high=0.001)
v002 = v002.colorYUV(autowhite=true)
v002 = v002.colorYUV(off_u = -4)
v002 = v002.filter(thSAD=400, thSADC=800)
#v002 = v002.QTGMC(preset="placebo", noiseProcess=0)
#v002 = v002.sincResize(w, h)
return v002.prefetch
#adjustframerate
