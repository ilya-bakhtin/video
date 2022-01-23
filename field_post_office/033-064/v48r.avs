import("..\field_post_office.avs")
# 20697 - 20888, 20718 - 20909
v048 = avg.trim(20548, 20739)
v048 = v048.autolevels(ignore_low = 0.01, ignore_high=0.001)
v048 = v048.colorYUV(autowhite=true)
v048 = v048.colorYUV(off_u = -4)
v048 = v048.filter(thSAD=400, thSADC=800)
return v048.prefetch
#adjustframerate
