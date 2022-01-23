import("..\field_post_office.avs")
v001 = avg.trim(0, 53)
v001 = v001.autolevels(ignore_low = 0.0001, ignore_high=0.0001)
v001 = v001.filter(thSAD=200, thSADC=400)
#v001 = v001.QTGMC(preset="placebo", noiseProcess=0)
#v001 = v001.sincResize(w, h)
return v001.prefetch
#adjustframerate
