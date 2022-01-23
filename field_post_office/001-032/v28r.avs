import("..\field_post_office.avs")
v028 = avg.trim(14508, 16368)
v028 = v028.autolevels(ignore_low = 0.001, ignore_high=0.006)
v028 = v028.colorYUV(off_u = 16, off_v = -16)
v028 = v028.filter(thSAD=400, thSADC=800)
return v028.prefetch
#adjustframerate
