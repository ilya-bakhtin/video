#DirectShowSource("d:\vid\2002_summer.avi")
DirectShowSource("d:\vid\spain_dv.avi")
#Levels(0, 1, 255, 0, 255)
#Levels(0, 1, 255, 16, 235)
#Levels(16, 1, 255, 16, 240, coring=false)
#Levels(16, 1, 235, 0, 255, coring=false)
#ConvertToYV12(interlaced = true)
#Info
#Histogram("levels")
#Limiter(show="luma")
#ConvertToRGB(matrix = "PC.601")
#ConvertToRGB(matrix = "Rec601")
fft3dfilter(sigma=2, plane=4, interlaced = true)
return last



AVISource("C:\users\ilx\avi\very old movie\q3.avi")
Trim(30, 0)
ConvertToRGB

DropEvery12th(5)
return last


cB = last.Trim(0, -1568)
c = last.Trim(1568, -32)
cA = last.Trim(1601, 0)

cB = cB.LanczosResize(720, 576)
cA = cA.LanczosResize(720, 576)


c = c.LeakKernelBob(order=0)
c = c.LanczosResize(720, 576)
c = c.SeparateFields
c = c.SelectEvery(4, 0, 3)
c = c.Weave

return cB+c+cA

#SeparateFields
#LanczosResize(last.width, last.height*2)
