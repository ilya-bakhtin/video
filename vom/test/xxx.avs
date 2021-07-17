Import("C:\users\ilx\avi\test\q_inc.avs")
q_prepare("C:\users\ilx\avi\very old movie\q1.avi")
#avisource("C:\users\ilx\avi\very old movie\q1.avi")
dr = DropEvery12th(5).Trim(285, -1)

Trim(285, -1)
return StackHorizontal(dr)

Crop(2,0,-2,0)
AddBorders(2,0,2,0)
AddBorders(4,0,4,0)


#UtoY()
#fft3dfilter(sigma=0, sigma2=0, sigma3=0, sigma4=0)

#LanczosResize(720, 576)
LanczosResize(1280, 1024)
return last

s0=0
s2=10
s3=20
s4=0

YToUV(\
fft3dfilter(sigma=s0, sigma2=s2, sigma3=s3, sigma4=s4, plane=1).UtoY(),\
fft3dfilter(sigma=s0, sigma2=s2, sigma3=s3, sigma4=s4, plane=2).VtoY(),\
fft3dfilter(sigma=0, sigma2=4, sigma3=4, sigma4=0, plane=0))

AddBorders(8,0,8,0)
LanczosResize(820, 600)
return last


LanczosResize(646, 576)
AddBorders(37,0,37,0)
LanczosResize(820, 600)

