Import("q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q17.avi")

global pos = 30

#q_pattern(0, 0, 0, 0, 0, 0, 0, 0)

c1 = q_pattern(488, 30, 165, 30, 259,  28, 179,  28)
#              488  518  683 713  972 1000 1179 1206

c2 = q_direct(746) + q_direct_title(1199) + q_direct(308) + q_direct_title(0)
#               1385 
return c1+c2