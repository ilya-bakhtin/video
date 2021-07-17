Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q11.avi")
global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

c0 = q_pattern(392, 33, 970, 25, 222, 27, 1, 1)
c0 = c0.Trim(0, -(c0.Framecount-2))

global pos = pos - 2

return c0 + q_direct(954) + q_direct_title(0)
