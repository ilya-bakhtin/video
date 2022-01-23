LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v1 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_1.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a1 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_1.avi", stream_index=1)
v1 = v1.AudioDub(a1)
v1 = v1.crop(10, 0, -10, -10)

v2 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_2.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a2 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_2.avi", stream_index=1)
v2 = v2.AudioDub(a2)

function prepareAudio(clip v, clip a, int start, int end)
{
    a = a.trim(start, end).killVideo.getChannel(1)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    return a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
}

function applyAudio(clip v, clip a1, int start1, int end1, clip a2, int start2, int end2, int "channels")
{
    channels = Default(channels, 0)
    a1 = channels == 1 ? a2 : v.prepareAudio(a1, start1, end1)
    a2 = channels == 0 ? a1 : v.prepareAudio(a2, start2, end2)

    a = channels == 0 ? monoToStereo(a1, a1) :\
        channels == 1 ? monoToStereo(a2, a2) :\
        channels == 2 ? monoToStereo(a1, a2) : monoToStereo(a2, a1)
    return v.audioDub(a)
}

function loadSegment(string name)
{
    v = LWLibavVideoSource(name)
    v = v.ColorMatrix(mode="Rec.601->Rec.709", clamp=0)
    return v.grainFactory3
}

function prepareSegmentF(clip v)
{
    h = 1080
    w = round(1440 * 700./704. * 576./566)
    w = w / 2 * 2

    v = v.sincResize(w, h)
    v = v.convertToYV12
    v = v.ColorMatrix(mode="Rec.601->Rec.709", clamp=0)
    return v.grainFactory3
}

v075 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v75rs.avi")
v075 = v075.autolevels(ignore_low = 0.001, ignore_high=0.001)
v075 = v075.prepareSegmentF
#v075 = v075.applyAudio(v1, 33870, 36383, v2, 33890, 36403)
v075_0 = v075.trim(0, 217).applyAudio(v1, 33870, 33978, v2, 33890, 33998)
v075_1 = v075.trim(218, 1245).applyAudio(v1, 33979, 34493, v2, 33999, 34513)
v075_2 = v075.trim(1246, 1789).applyAudio(v1, 34494, 34765, v2, 34514, 34785)
v075_3 = v075.trim(1790, 3953).applyAudio(v1, 34766, 35847, v2, 34786, 35867)
v075_4 = v075.trim(3954, 0).applyAudio(v1, 35848, 36383, v2, 35868, 36403)
v075 = v075_0+v075_1+v075_2+v075_3+v075_4

v076 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v76rs.avi")
v076 = v076.autolevels(ignore_low = 0.01, ignore_high=0.01, border_l = 50, border_t = 50)
v076 = v076.colorYUV(autowhite=true)
v076 = v076.colorYUV(off_u=-14, off_v=10)
v076 = v076.tweak(sat=1.2, coring=false)
v076 = v076.prepareSegmentF

v077 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v77rs.avi")
v077 = v077.autolevels(ignore_high=0.09)
v077 = v077.colorYUV(autowhite=true)
v077 = v077.colorYUV(off_u=-4, off_v = 0)
v077 = v077.autolevels(gamma=1.4)
v077 = v077.tweak(sat = 0.6, coring = false)
v077 = v077.prepareSegmentF

v078 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v78rs.avi")
v078 = v078.autolevels
v078 = v078.colorYUV(autowhite=true)
v078 = v078.prepareSegmentF

v079 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v79rs.avi")
v079 = v079.autolevels
v079 = v079.colorYUV(autowhite=true)
v079 = v079.prepareSegmentF

v080 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v80rs.avi")
v080 = v080.autolevels
v080 = v080.colorYUV(autowhite=true)
v080 = v080.prepareSegmentF

v081 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v81rs.avi")
v081 = v081.autolevels
v081 = v081.colorYUV(autowhite=true)
v081 = v081.prepareSegmentF

v082 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v82rs.avi")
v082 = v082.autolevels
v082 = v082.colorYUV(autowhite=true)
v082 = v082.prepareSegmentF

v083 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v83rs.avi")
v083 = v083.autolevels
v083 = v083.colorYUV(autowhite=true)
v083 = v083.prepareSegmentF

v084 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v84rs.avi")
v084 = v084.autolevels
v084 = v084.colorYUV(autowhite=true)
v084 = v084.prepareSegmentF

v085 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v85rs.avi")
v085 = v085.autolevels
v085 = v085.colorYUV(autowhite=true)
v085 = v085.prepareSegmentF

v086 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v86rs.avi")
v086 = v086.autolevels(ignore_low = 0.01, ignore_high=0.01, border_l = 50, border_t = 50)
v086 = v086.colorYUV(autowhite=true)
v086 = v086.colorYUV(off_u=-14, off_v=10)
v086 = v086.tweak(sat=1.2, coring=false)
v086 = v086.prepareSegmentF
#v086 = v086.applyAudio(v1, 38201, 39918, v2, 38221, 39938)
v086_0 = v086.trim(0, 765).applyAudio(v1, 38201, 38583, v2, 38221, 38603)
v086_1 = v086.trim(766, 1629).applyAudio(v1, 38584, 39015, v2, 38604, 39035)
v086_2 = v086.trim(1630, 2471).applyAudio(v1, 39016, 39436, v2, 39036, 39456)
v086_3 = v086.trim(2472, 2651).applyAudio(v1, 39437, 39526, v2, 39457, 39546)
v086_4 = v086.trim(2652, 0).applyAudio(v1, 39527, 39918, v2, 39547, 39938)
v086 = v086_0 + v086_1 + v086_2 + v086_3 + v086_4

v087 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v87rs.avi")
v087 = v087.prepareSegmentF
v087 = v087.audioDub(blankClip(v087, audio_rate = 48000, channels = 2))

v076_0 = v076.trim(0,     611)
v076_0 = v076_0.applyAudio(v1, 36384, 36689, v2, 36404, 36709)

v76_77 = (                      v077.trim(0,   47)+\
          v076.trim(612,   659)+v077.trim(48,  95)+\
          v076.trim(660,   707)+v077.trim(96,  143)+\
          v076.trim(708,   755)+v077.trim(144, 191)+\
          v076.trim(756,   803)+v077.trim(192, 239)+\
          v076.trim(804,   851)+v077.trim(240, 287)+\
          v076.trim(852,   897)+v077.trim(288, 335)+ /* v076 has really 23 (46) frames here */\
          v076.trim(898,   945)+v077.trim(336, 383)+\
          v076.trim(946,   993)+v077.trim(384, 431)+\
          v076.trim(994,  1041)+v077.trim(432, 479)+\
          v076.trim(1042, 1089)+v077.trim(480, 527)+\
          v076.trim(1090, 1137)+v077.trim(528, 575)\
         ).applyAudio(v1, 36690, 37240, v2, 36710, 37260)

v076_12 = v076.trim(1138, 2511)
v076_12 = v076_12.applyAudio(v1, 37241, 37927, v2, 37261, 37947)

v78_85 = (v078+v079+v080+v081+v082+v083+v084+v085).applyAudio(v1, 37928, 38200, v2, 37948, 38220)

return (v075+v076_0+v76_77+v076_12+v78_85+v086).prefetch
