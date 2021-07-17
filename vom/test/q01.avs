Import("C:\users\ilx\avi\test\q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q1.avi")

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(405, 629)		#eliseeva #1
#return trim(1133, 1567)	#eliseeva #2
# process eliseeva */

e1 = q_prepare("C:\users\ilx\avi\test\q01_eliseeva_1.avi").ConvertToYUY2
e1 = e1.crop(32, 8, -12, -12)
e1 = e1.addborders(10, 0, 10, 0)
e1 = e1.LanczosResize(720, 576)
e1 = e1.filter_e()
#return e1

e2 = q_prepare("C:\users\ilx\avi\test\q01_eliseeva_2.avi").ConvertToYUY2
e2 = e2.crop(32, 14, -28, -10)
e2 = e2.addborders(15, 0, 15, 0)
e2 = e2.LanczosResize(720, 576)
e2 = e2.filter_e()
#return e2

c0 = q_direct_title(30) + q_direct(255) + q_direct_title(120) + e1
global pos = pos + 225
c0 = c0 + q_direct(1568-30-255-120-225-435) + e2
global pos = pos + 435
c1 = q_interlaced(32)
global pos = pos + 1
c2 = q_direct(0)

return c0+c1+c2
