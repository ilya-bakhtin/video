Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q14.avi")
global pos = 60

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

c0 = q_pattern(200, 22, 1615, 27, 409, 30, 1149, 27)
c1 = q_pattern(548, 25, 113, 25, 50, 23, 79, 19)
return c0 + c1 + q_pattern(166, 24, 0, 0, 0, 0, 0, 0)

