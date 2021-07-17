Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q3.avi")

global pos = 30

c0 = q_direct(297)

c1 = q_interlaced(27)

c2 = q_direct(152)

c3 = q_interlaced(35)

c4 = q_direct(205)

c5 = q_interlaced(32)

c6 = q_direct(652)

c7 = q_interlaced(29)

c8 = q_direct(161)

c9 = q_interlaced(29)

c10 = q_direct(0)

last = c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10
return last
