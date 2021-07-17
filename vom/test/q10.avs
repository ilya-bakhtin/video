Import("q_inc.avs")

q_prepare("C:\users\ilx\avi\very old movie\!_q10_1.avi")
c1 = last.trim(30,-1326)
c2 = last.trim(1593, 0)

last = c1+c2

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

c3 = q_pattern(83, 29, 0, 0, 0, 0, 0, 0)

dv = avisource("C:\users\ilx\avi\very old movie\q10_yuy2.avi", pixel_type="YuY2")
dv = AudioDub(dv, GetChannel(dv, 1).ResampleAudio(22050))

#dv = avisource("C:\users\ilx\avi\very old movie\yuy2.avi", pixel_type="YuY2")
#dv = AudioDub(dv, GetChannel(dv, 1).ResampleAudio(22050))
#dv_orig = dv

#dv = directshowsource("C:\users\ilx\avi\very old movie\dv.avi", pixel_type="YuY2")
#dv = AudioDub(dv, GetChannel(dv.trim(200,0), 1).ResampleAudio(22050))

#dv = dv.trim(25651,-233) #.filter_e()
#dv = dv.trim(25226,-1000) #-233)
#return dv

dv = dv.crop(24, 10, -24, -6)
dv = dv.addborders(0, 0, 0, 32)
dv = dv.separatefields().filter_e()
dv = dv.LanczosResize(720, 288)
dv = dv.weave()

#return dv

#return stackvertical(dv+c3.trim(1326, 0), dv_orig.trim(25651, 0))


return c3.trim(0, -1326)+dv+c3.trim(1326, 0)
