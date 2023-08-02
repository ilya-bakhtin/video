SetFilterMTMode("Deshaker", MT_SERIALIZED)
LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\2021_06_15.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\Cassette-2021_06_15-\2021_06_15.avi", stream_index=1)
last = v.AudioDub(a)
#last = v
trim(125, 450) + trim(486, 0)

#return last

global audio = false
global resize = true

function qtgmc_d(clip input)
{
    return audio ? input : input.QTGMC( Preset="Placebo", EdiThreads=6 )
}

function resize_d(clip input)
{
    return audio || !resize ? input : input.SincResize(1920, 1080)
}

v000_org = trim(0, 337)
/*
v000 = v000_org.colorYUV(off_u = 16, off_v = -12).tweak(sat=4, coring=false)
v000 = v000.qtgmc_d
*/
v000 = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\v000s.avi", format="RGB")
v000 = v000.audioDub(v000_org)
v000 = audio ? v000.bilinearResize(720, 288).assumeFieldBased.weave : v000
#return v000.resize_d#.crop((1920 - v000.width)/2, (1080 - v000.height)/2, -1920 + v000.width + (1920 - v000.width)/2, -1080 + v000.height + (1080 - v000.height)/2)

v001_org = trim(338, 731)
/*
v001 = v001_org.colorYUV(off_u = 6, off_v = -6).tweak(sat=3, coring=false)
v001 = v001.qtgmc_d
*/
v001 = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\v001s.avi", format="RGB")
v001 = v001.audioDub(v001_org)
v001 = audio ? v001.bilinearResize(720, 288).assumeFieldBased.weave : v001
#return v001.resize_d#.crop((1920 - v000.width)/2, (1080 - v000.height)/2, -1920 + v000.width + (1920 - v000.width)/2, -1080 + v000.height + (1080 - v000.height)/2)

v002_1 = trim(732, 1350)
v002_2 = trim(1351, 1979)
v002_3 = trim(1980, 2461)

#v002_1 = v002_1.autolevels(autolevel=false, input_low=30, input_high=190, coring=false).histogram("levels")
v002_1 = v002_1.levels(18, 1, 204, 0, 255, coring=false)#.histogram("levels")
v002_1 = v002_1.qtgmc_d

#v002_2 = v002_2.autolevels(debug=true/*autolevel=false, input_low=30, input_high=190, coring=false*/).histogram("levels")
v002_2 = v002_2.levels(18, 1, 204, 0, 255, coring=false)#.histogram("levels")
v002_2 = v002_2.qtgmc_d

#v002_3 = v002_3.autolevels(debug=true/*autolevel=false, input_low=30, input_high=190, coring=false*/).histogram("levels")
v002_3 = v002_3.levels(18, 1, 204, 0, 255, coring=false)#.histogram("levels")
v002_3 = v002_3.qtgmc_d

v002 = v002_1 + v002_2 + v002_3
v002 = v002.resize_d

v003_1 = trim(2462, 2990)
v003_2 = trim(2991, 3177)
v003_3 = trim(3178, 3415)

v003_1 = v003_1.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v003_1 = v003_1.qtgmc_d

v003_2 = v003_2.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v003_2 = v003_2.qtgmc_d

v003_3 = v003_3.autolevels(autolevel=false, input_low = 36, input_high = 238, gamma=1.3, coring=false).tweak(sat=1.9, coring=false)#.histogram("levels")
v003_3 = v003_3.qtgmc_d

v003 = v003_1 + v003_2 + v003_3
v003 = v003.resize_d

v004 = trim(3416, 4245)
v004_1 = v004.trim(0, 314)
v004_2 = v004.trim(315, 493)
v004_3 = v004.trim(494, 0)
v004_1 = v004_1.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v004_2 = v004_2.autolevels(autolevel=false, input_low=40, input_high = 240, gamma = 1.3).tweak(sat=1.9, coring=false)
v004_3 = v004_3.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v004 = v004_1 + v004_2 + v004_3
v004 = v004.qtgmc_d
v004 = v004.resize_d

v005 = trim(4246, 11594)
v005 = v005.trim(0, 1712) + v005.trim(1724, 0)
v005_0 = v005.trim(0, 1846).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v005_1 = v005.trim(1847, 2453).autolevels(gamma = 1.3, autolevel=false, input_low = 40, input_high = 200).tweak(sat=1.9, coring=false)
v005_2 = v005.trim(2454, 2889).autolevels(gamma = 1.3, autolevel=false, input_low = 40, input_high = 200).tweak(sat=1.9, coring=false)
v005_3 = v005.trim(2890, 3552).autolevels(gamma = 1.3, autolevel=false, input_low = 38, input_high = 240).tweak(sat=1.9, coring=false)
v005_4 = v005.trim(3553, 0).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v005 = v005_0 + v005_1 + v005_2 + v005_3 + v005_4
v005 = v005.qtgmc_d
v005 = v005.resize_d

#return last
v006_org = trim(11595, 11978)
v006_a = v006_org.killVideo
#/*
v006_1 = v006_org.trim(0, 192)
v006_2 = v006_org.trim(193, 0)
v006_1 = v006_1.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v006_2 = v006_2.autolevels(gamma = 1.3, autolevel=false, input_low = 55, input_high = 155).tweak(sat=1.9, coring=false)
v006 = v006_1 + v006_2

v006 = v006.QTGMC(Preset="placebo")

v006 = v006.spline64Resize(1920, 1080)

v006 = v006.stabilize("D:\Users\ilx\wrk\video\2021_06_16-Chorvatsko\dv_avi\test_v006_stab_1080.log")

v006 = v006.convertToYV12
v006 = v006.colorMatrix(mode="Rec.601->Rec.709", clamp=0)
v006 = v006.unsharpMask(strength=500, radius=1, threshold=1)

v006 = v006.killAudio.audioDub(v006_a)
v006 = v006.trim(0, 719)

return v006.prefetch
#*/
v006 = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\v006s.avi", format="RGB").ConvertToYV24(interlaced=false)
v006 = v006.audioDub(v006_org)
v006 = v006.trim(0, 706)
v006 = audio ? v006.bilinearResize(720, 288).assumeFieldBased.weave : v006.resize_d

v007 = trim(11979, 16300)
v007_1 = v007.trim(0, 1796).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v007_2 = v007.trim(1963, 2246).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v007_3 = v007.trim(2422, 2731).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v007_4 = v007.trim(2843, 3080).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v007_5 = v007.trim(3081, 3518).autolevels(autolevel=false, minRng=0, input_low = 40, input_high = 225, gamma = 1.3).tweak(sat=1.9, coring=false)
v007_6 = v007.trim(3519, 4036).autolevels(autolevel=false, minRng=0, input_low = 30, input_high = 225, gamma = 1.3).tweak(sat=1.9, coring=false)
v007_7 = v007.trim(4037, 4321).autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v007 = v007_1 + v007_2 + v007_3 + v007_4 + v007_5 + v007_6 + v007_7
v007 = v007.qtgmc_d
v007 = v007.resize_d

v008 = trim(16301, 17464)
v008_1 = v008.trim(0, 1066)
v008_2 = v008.trim(1067, 1068)
v008_3 = v008.trim(1069, 1070)
v008_4 = v008.trim(1071, 1072)
v008_5 = v008.trim(1073, 1074)
v008_6 = v008.trim(1075, 1076)
v008_7 = v008.trim(1077, 1078)
v008_8 = v008.trim(1079, 1080)
v008_9 = v008.trim(1081, 1082)
v008_10 = v008.trim(1083, 1084)
v008_11 = v008.trim(1085, 0)
v008_1 = v008_1.autolevels(autolevel=false, minRng=0, input_low = 30, input_high = 200, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_2 = v008_2.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 202, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_3 = v008_3.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 204, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_4 = v008_4.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 206, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_5 = v008_5.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 208, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_6 = v008_6.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 210, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_7 = v008_7.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 212, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_8 = v008_8.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 214, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_9 = v008_9.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 216, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_10 = v008_10.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 218, gamma = 1.3).tweak(sat=1.9, coring=false)
v008_11 = v008_11.autolevels(autolevel=false, minRng=0, input_low = 28, input_high = 220, gamma = 1.3).tweak(sat=1.9, coring=false)
v008 = v008_1 + v008_2 + v008_3 + v008_4 + v008_5 + v008_6 + v008_7 + v008_8 + v008_9 + v008_10 + v008_11
v008 = v008.qtgmc_d
v008 = v008.resize_d

v009 = trim(17465, 17907)
v009 = v009.autolevels(autolevel=false, minRng=0, input_low = 38, input_high = 210, gamma = 1.3).tweak(sat=1.9, coring=false)
v009 = v009.qtgmc_d
v009 = v009.resize_d

v010 = trim(17908, 19420)
v010_1 = v010.trim(0, 731)
v010_2 = v010.trim(732, 0)
v010_1 = v010_1.autolevels(gamma = 1.3, autolevel=false, input_low = 20, input_high = 230).tweak(sat=1.9, coring=false)
v010_2 = v010_2.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v010 = v010_1 + v010_2
v010 = v010.qtgmc_d
v010 = v010.resize_d

v011 = trim(19421, 20187)
v011_1 = v011.trim(0, 197)
v011_2 = v011.trim(198, 441)
v011_3 = v011.trim(442, 0)
v011_1 = v011_1.autolevels(gamma = 1.3, autolevel=false, input_low = 20, input_high = 235).tweak(sat=1.9, coring=false)
v011_2 = v011_2.autolevels(gamma = 1.3, filterRadius=9).tweak(sat=1.9, coring=false)
v011_3 = v011_3.autolevels(gamma = 1.3, input_high = 250).tweak(sat=1.9, coring=false)
v011 = v011_1 + v011_2 + v011_3
v011 = v011.qtgmc_d
v011 = v011.resize_d

v012 = trim(20188, 44517)
v012_1 = v012.trim(0, 1399)
v012_2 = v012.trim(1400, 2391)
v012_3 = v012.trim(2392, 4943)

#v012_4 = v012.trim(4944, 5164)
v012_4_1 = v012.trim(4944, 5115).autolevels(gamma = 1.1, input_high = 235).tweak(sat=1.8, coring=false).\
           colorYUV(off_v = -8)
v012_4_2 = v012.trim(5116, 5116).autolevels(gamma = 1.1, input_high = 235).tweak(sat=1.7, coring=false).\
           colorYUV(off_v = -9)
v012_4_3 = v012.trim(5117, 5164).autolevels(gamma = 1.1, input_high = 235).tweak(sat=1.6, coring=false).\
           colorYUV(off_v = -10)
v012_4 = v012_4_1 + v012_4_2 + v012_4_3

v012_5 = v012.trim(5165, 0)
v012_1 = v012_1.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v012_2 = v012_2.autolevels(gamma = 1.3, autolevel=false, input_low = 25, input_high = 250).\
         tweak(sat=1.6, coring=false).colorYUV(off_u = 10, off_v = -10)
v012_3 = v012_3.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
#v012_4 = v012_4.autolevels(gamma = 1.3, debug=true).tweak(sat=1.9, coring=false)
v012_5 = v012_5.autolevels(gamma = 1.3).tweak(sat=1.9, coring=false)
v012 = v012_1 + v012_2 + v012_3 + v012_4 + v012_5
v012 = v012.qtgmc_d
v012 = v012.resize_d

v002_005 = v002 + v003 + v004 + v005
v007_012 = v007 + v008 + v009 + v010 + v011 + v012
#return v007_012.prefetch(6)

v002_005 = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\v002-005.avi")
a002_005 = LWLibavAudioSource("m:\media\video\Cassette-2021_06_15-\v002-005.avi")
v002_005 = v002_005.audioDub(a002_005)
v002_005 = v002_005.SincResize(1920, 1080).ConvertToYV12(interlaced=false)

v007_012 = LWLibavVideoSource("m:\media\video\Cassette-2021_06_15-\v007-012.avi")
a007_012 = LWLibavAudioSource("m:\media\video\Cassette-2021_06_15-\v007-012.avi")
v007_012 = v007_012.audioDub(a007_012)
v007_012 = v007_012.SincResize(1920, 1080).ConvertToYV12(interlaced=false)
#return v007_012.prefetch(6)

function v1920(string avi)
{
    v = LWLibavVideoSource(avi).AssumeFPS(30,1).ConvertToYV24(chromaresample = "sinc")
    v = v.FrameRateConverter(Output="Flow", Preset="Slowest", NewNum=50, NewDen=1, blksize=16)
    v = v.ConvertToYV12(interlaced=false)
    return v
}

function v1920_50(string avi, string mp4)
{
    v50 = LWLibavVideoSource(avi)
    a = LSMASHAudioSource(mp4)
    v = LSMASHVideoSource(mp4).AssumeFPS(30,1)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
    v50 = AudioDub(v50, a)
    return v50
}

function stabilize(clip c, string log)
{
    c = c.convertToRGB32(interlaced=false, matrix="PC.601")

    c = c + c.loop(30, 0, 0).trim(0, 29)

#   config = "19|2|30|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|4|1|0|2|8|30|300|4|" + log + "|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
    config = "19|2|16|4|1|0|1|0|640|480|0|1|10000|10000|1000|1000|8|1|0|2|2|30|300|4|" + log + "|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"

    c = c.Deshaker(config).trim(30, 0)
    c = c.convertToYV24(interlaced=false, matrix="PC.601")

    return c
}

#v20210616_180609 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210616_180609.mp4.avi")
#v20210616_183119 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210616_183119.mp4.avi")
#v20210617_170259 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210617_170259.mp4.avi")
#v20210618_133732 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210618_133732.mp4.avi")
#v20210619_125935 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210619_125935.mp4.avi")
#v20210620_201808 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210620_201808.mp4.avi")
#v20210621_115424 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210621_115424.mp4.avi")
#v20210621_115441 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210621_115441.mp4.avi")
#v20210621_130122 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210621_130122.mp4.avi")
#v20210621_130232 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210621_130232.mp4.avi")
#v20210623_091955 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210623_091955.mp4.avi")
#v20210624_202325 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210624_202325.mp4.avi")
#v20210624_211500 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210624_211500.mp4.avi")
#v20210627_112055 = v1920("m:\media\video\2021_06_16-Chorvatsko\20210627_112055.mp4.avi")
#return v20210624_202325.prefetch(6)

v20210616_180609 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210616_180609-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210616_180609.mp4")
v20210616_183119 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210616_183119-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210616_183119.mp4")
v20210617_170259 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210617_170259-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\20210617_170259.mp4")
v20210618_133732 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210618_133732-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210618_133732.mp4")
v20210619_125935 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210619_125935-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\20210619_125935.mp4")

v20210620_201808 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210620_201808-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210620_201808.mp4")
v20210620_201808 = v20210620_201808.trim(0, 939)

v20210621_115424 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210621_115424-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210621_115424.mp4")
v20210621_115424 = v20210621_115424.trim(0, 415)

v20210621_115441 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210621_115441-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210621_115441.mp4")
v20210621_115441 = v20210621_115441.trim(0, 281)

v20210621_130122 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210621_130122-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210621_130122.mp4")
v20210621_130122 = v20210621_130122.trim(0, 1167)

v20210621_130232 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210621_130232-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210621_130232.mp4")
v20210623_091955 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210623_091955-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\20210623_091955.mp4")
v20210624_202325 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210624_202325-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\VID_20210624_202325.mp4")
v20210624_211500 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210624_211500-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\20210624_211500.mp4")
v20210627_112055 = v1920_50("m:\media\video\2021_06_16-Chorvatsko\20210627_112055-50.mp4.avi",\
                            "m:\media\video\2021_06_16-Chorvatsko\20210627_112055.mp4")

v000 = v000.ConvertToYV12(interlaced=false)
v001 = v001.ConvertToYV12(interlaced=false)
v006 = v006.ConvertToYV12(interlaced=false)

last = v20210616_180609 + v20210616_183119 + v000 + v001 + v002_005.trim(0, 10721) + v20210617_170259 +\
       v20210618_133732 + v20210619_125935 + v002_005.trim(10722, 20339) + v20210620_201808 +\
       v002_005.trim(20340, 0) + v006 + v007_012.trim(0, 3593) + v20210621_115424 + v20210621_115441 +\
       v007_012.trim(3594, 10953) + v20210621_130122 + v20210621_130232 + v20210623_091955 +\
       v007_012.trim(10954, 39675) + v20210624_202325 + v007_012.trim(39676, 45449) + v20210624_211500 +\
       v007_012.trim(45450, 0) + v20210627_112055
#last = v007_012
#ConvertToYV12(interlaced=false)
Prefetch(6)
