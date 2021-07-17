Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q5.avi")

# /* process eliseeva
#DropEvery12th(5)
#addborders(4, 0, 4, 0)
#return trim(30, 450)		#eliseeva #1
#return trim(1489, -176)		#eliseeva #2
# process eliseeva */

e1 = q_prepare("C:\users\ilx\avi\test\q05_eliseeva_1.avi").ConvertToYUY2
e1 = e1.crop(36, 2, -16, -32)
e1 = e1.addborders(6,0,6,0)
e1 = e1.LanczosResize(720, 576)
e1 = e1.filter_e()

e2 = q_prepare("C:\users\ilx\avi\test\q05_eliseeva_2.avi").ConvertToYUY2
e2 = e2.crop(16, 2, -20, -26)
e2 = e2.LanczosResize(720, 576)
e2 = e2.filter_e()

global pos = 30+e1.Framecount

#c0 = q_direct(421)
c0 = e1 
c1 = q_interlaced(34)			#455

c2 = q_pattern2(132, 32)		#587, 619

#c3 = q_direct(1416)
c3 = q_direct(840)+e2			#1459, 1635
global pos = pos+e2.Framecount
c4 = q_direct(1416-840-e2.Framecount)	#2035

c5 = q_interlaced(31)			#2066

c6 = q_direct(287)			#2353
c7 = q_interlaced(33)			#2386

c8 = q_direct(336)			#2722
c9 = q_interlaced(33)			#2755

c10 = q_direct(161)			#2916
c11 = q_interlaced(31)			#2947

c12 = q_direct(0)

return c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12