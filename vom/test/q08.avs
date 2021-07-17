Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q8.avi")

e1 = q_prepare("C:\users\ilx\avi\test\q08_eliseeva_1.avi").ConvertToYUY2
e1 = e1.crop(36, 18, -16, -24)
e1 = e1.LanczosResize(720, 576)
e1 = e1.filter_e()

global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

#c0 = q_pattern(130, 33, 513, 28, 227, 28, 633, 30)
c0 = q_pattern(130, 33, 513, 28, 227, 28, 292, 1)
c0 = c0.Trim(0, -(c0.Framecount-1))
global pos = pos-1
c0 = c0 + q_direct_title(341) + q_interlaced_title(30) + q_direct_title(78)

c1 = q_pattern(383-78, 48, 63, 49, 195, 31, 292, 32)

c1 = c0 + c1 + q_direct(269) + q_direct_title(120)

# /* process eliseeva
#e1 = last.Trim(pos, -223)	#eliseeva 1
#e1 = e1.DropEvery12th(5)
#e1 = e1.addborders(4, 0, 4, 0)
#return e1
# process eliseeva */


global pos = pos + e1.Framecount

return c1 + e1 + q_direct_title(0)
