global pos = 0

Function q_prepare(string file)
{
	global pos = 0
	AVISource(file, pixel_type="yuy2")
	return last
}

global se0=0
global se2=0
global se3=100
global se4=0

Function filter_e(clip c)
{
	return YToUV(\
		c.fft3dfilter(sigma=se0, sigma2=se2, sigma3=se3, sigma4=se4, plane=1).UtoY(),\
		c.fft3dfilter(sigma=se0, sigma2=se2, sigma3=se3, sigma4=se4, plane=2).VtoY(),\
		c.fft3dfilter(sigma=0, sigma2=8, sigma3=8, sigma4=0, plane=0))
}

global s0=0
global s2=10
global s3=20
global s4=0

Function filter(clip c)
{
	return YToUV(\
		c.fft3dfilter(sigma=s0, sigma2=s2, sigma3=s3, sigma4=s4, plane=1).UtoY(),\
		c.fft3dfilter(sigma=s0, sigma2=s2, sigma3=s3, sigma4=s4, plane=2).VtoY(),\
		c.fft3dfilter(sigma=0, sigma2=4, sigma3=4, sigma4=0, plane=0))
}

Function q_direct_title(clip c, int length)
{
	c = c.Trim(pos, -length)
	c = c.TitleExpand()
	c = c.LanczosResize(720, 576)
	c = c.ConvertToYUY2()
	global pos = pos + length
	return c
}

Function trim_n_crop(clip c, int start, int length)
{
	c = c.Trim(start, -length)
	c = c.DropEvery12th(5)
	c = c.Crop(2, 2, -2, -4)
	c = c.AddBorders(2,0,2,0)
	return c
}

Function q_direct_ex(clip c, int start, int length)
{
	c = c.trim_n_crop(start, length)
	c = c.filter
	c = c.LanczosResize(720, 576)
	return c
}

Function q_direct(clip c, int length)
{
	c1 = q_direct_ex(c, pos, length)
	global pos = pos + length
	return c1
}

Function q_interlaced_title(clip c, int length)
{
	c = c.Trim(pos, -length)
	c = c.TitleExpand()
	c = c.LeakKernelBob(order=0)
	c = c.LanczosResize(720, 576)
	c = c.SeparateFields
	c = c.SelectEvery(4, 0, 3)
	global pos = pos + length
	return c.Weave
}

Function q_interlaced_ex(clip c, int start, int length)
{
	c = c.trim_n_crop(start, length)
	c = c.LeakKernelBob(order=0)
	c = c.filter
	c = c.LanczosResize(720, 576)
	c = c.SeparateFields
	c = c.SelectEvery(4, 0, 3)
	return c.Weave
}

Function q_interlaced(clip c, int length)
{
	c1 = q_interlaced_ex(c, pos, length)
	global pos = pos + length
	return c1
}

Function q_pattern2(clip c, int s0, int s1)
{	
	c0 = q_direct(c, s0)
	c1 = q_interlaced(c, s1)

	global last_pattern = (s0 == 0) ? c0 : c1

	return (s0 == 0) ? c0 : (c0 + c1)
}

Function q_pattern4(clip c, int s0, int s1, int s2, int s3)
{	
	c0 = q_pattern2(c, s0, s1)
	return (s0 == 0 || s1 == 0) ? c0 : (c0 + q_pattern2(c, s2, s3))
}

Function q_pattern(clip c, int s0, int s1, int s2, int s3, int s4, int s5, int s6, int s7)
{
	c0 = q_pattern4(c, s0, s1, s2, s3)
	return (s0 == 0 || s1 == 0 || s2 == 0 || s3 == 0) ? c0 : (c0 + q_pattern4(c, s4, s5, s6, s7))
}