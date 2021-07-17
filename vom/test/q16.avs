Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q16.avi")
global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)
c0 = q_pattern(507, 25, 44, 25, 168, 31, 706, 29)
c1 = c0 + q_pattern(210, 31, 367, 33, 0, 0, 0, 0)

return c1.Trim(0, -3102)
