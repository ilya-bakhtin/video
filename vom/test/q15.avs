Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q15.avi")
global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)
c0 = q_pattern(792, 33, 562, 30, 110, 35, 88, 37)
return c0 + q_pattern(180, 33, 245, 30, 88, 32, 872, 34) + q_direct(0)
