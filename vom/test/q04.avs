Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q4.avi")

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, 600)		#eliseeva #1
# process eliseeva */

e1 = q_prepare("C:\users\ilx\avi\test\q04_eliseeva_1.avi").ConvertToYUY2
e1 = e1.crop(18, 4, -62, -62)
e1 = e1.LanczosResize(720, 576)
e1 = e1.filter_e()
#return e1

global pos = 30+571
c0 = e1 + q_direct(1022 - 571)
c1 = q_interlaced(28)
c2 = q_direct(443)
c3 = q_interlaced(26)
c4 = q_direct(516)
c5 = q_interlaced(30)
c6 = q_direct(454)
c7 = q_interlaced(25)
c8 = q_direct(475)
c9 = q_interlaced(25)
c10 = q_direct(0)

return c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10