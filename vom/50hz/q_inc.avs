LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

global pos = 0

Function q_prepare(string file, int "trim")
{
	trim = Default(trim, 0)
	global pos = 0
#	AVISource(file, pixel_type="YUY2")
	last = LWLibavVideoSource(file)
	global audio = LWLibavAudioSource(file)
	global audio = AudioDub(last, audio).trim(trim, 0).AssumeFps(25).KillVideo()
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
	c = c.ConvertToYV24()
	c = c.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
	c = c.Spline64Resize(960, 720)
	c = c.addborders(160, 0, 160, 0)
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

Function q_direct_ex(clip c, int start, int length, bool "alevels")
{
	alevels = Default(alevels, false)

	c = c.trim_n_crop(start, length)
	c = c.filter
#c = c.ConvertToRGB()
#c = c.GamMac(LockChan=1, Scale=2, loTh=0.2, hiTh=0.2, verbosity=5, show=false)
	c = alevels ? c.autolevels() : c
	c = c.ConvertToYV24()
	c = c.AssumeFPS(25).AdjustFrameRate(preset_p = "slowest")
	c = c.Spline64Resize(960, 720)
	c = c.addborders(160, 0, 160, 0)
	return c
}

Function q_direct(clip c, int length, bool "alevels")
{
	alevels = Default(alevels, false)

	c1 = q_direct_ex(c, pos, length, alevels)
	global pos = pos + length
	return c1
}

Function q_interlaced_title(clip c, int length)
{
	c = c.Trim(pos, -length)
	c = c.TitleExpand()

	c = c.ConvertToYV24()
	c = c.QTGMC( Preset="Slower", EdiThreads=6 )
	c = c.filter
	c = c.Spline64Resize(960, 720)
	c = c.addborders(160, 0, 160, 0)

	global pos = pos + length
	return c
}

Function q_interlaced_ex(clip c, int start, int length)
{
	c = c.trim_n_crop(start, length)
	c = c.ConvertToYV24()
	c = c.QTGMC( Preset="Slower", EdiThreads=6 )
	c = c.filter
	c = c.Spline64Resize(960, 720)
	c = c.addborders(160, 0, 160, 0)
	return c
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

function AdjustFrameRate(clip c, string "preset_p", string "output_p", int "blksize_p")
{
    preset_p = Default(preset_p, "Slow")
    output_p = Default(output_p, "Flow")
#    blksize_p = Default(blksize_p, 12)
#    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=50, NewDen=1, blksize=blksize_p)
    c = c.FrameRateConverter(Output=output_p, Preset=preset_p, NewNum=50, NewDen=1)
    return c
}

function audio_dub(clip c, clip aud)
{
    new_rate = aud.AudioRate()*aud.AudioDuration()/(c.FrameCount/c.FrameRate)
    aud = aud.AssumeFPS(25).AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    return AudioDub(c, aud)
}
