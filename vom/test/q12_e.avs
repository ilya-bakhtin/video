Import("q_inc.avs")
#q_prepare("E:\users\ilx\avi\very old movie\q12.avi")

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, -69)		#eliseeva #1
#return trim(30+69, -331+69)	#eliseeva #2
#return trim(30+1598, -525)	#eliseeva #3
# process eliseeva */

e1 = q_prepare("E:\users\ilx\avi\test\q12_eliseeva_1.avi").ConvertToYUY2
e1 = e1.crop(10, 4, -40, -24)
e1 = e1.addborders(6, 0, 6, 0)
e1 = e1.LanczosResize(720, 576)
#e1 = e1.filter_e()
#return e1

e2 = q_prepare("E:\users\ilx\avi\test\q12_eliseeva_2.avi").ConvertToYUY2
e2 = e2.crop(32, 6, -20, -36)
e2 = e2.LanczosResize(720, 576)
#e2 = e2.filter_e()
#return e2

e3 = q_prepare("E:\users\ilx\avi\test\q12_eliseeva_3.avi").ConvertToYUY2
e3 = e3.crop(30, 4, -16, -22)
e3 = e3.addborders(8, 0, 8, 0)
e3 = e3.LanczosResize(720, 576)
#e3 = e3.filter_e()
return e3

global pos = 30 + e1.Framecount + e2.Framecount

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)
#return q_pattern(331, 32, 0, 0, 0, 0, 0, 0)

c1 =  e1 + e2 + q_interlaced(32) +q_direct(1235) + e3

global pos = pos + e2.Framecount

return c1 + q_direct_title(0)
