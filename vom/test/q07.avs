Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q7.avi")

global pos = 30

c0 = q_direct(308)
c1 = q_interlaced(33)

c2 = q_direct(785)
c3 = q_interlaced(41)

c4 = q_direct(77)
c5 = q_interlaced(32)

c6 = q_direct(805)
c7 = q_interlaced(32)

c8 = q_direct(456)
c9 = q_interlaced(25)

c10 = q_direct(129)
c11 = q_interlaced(29)

c12 = q_direct(34)
c13 = q_interlaced(30)

c14 = q_direct(0)

return c0+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14