import("..\field_post_office.avs")
v003 = avg.trim(591, 1261)
v003 = v003.autolevels(ignore_low = 0.001, ignore_high=0.001)
v003 = v003.filter(thSAD=400, thSADC=800)
#v003 = v003.QTGMC(preset="placebo", noiseProcess=0)
#v003 = v003.sincResize(w, h)
return v003.prefetch
#adjustframerate
