Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q6.avi")

global pos = 30

c0 = q_direct(1361)
c1 = q_interlaced(31)

c2 = q_direct(0)

return c0+c1+c2