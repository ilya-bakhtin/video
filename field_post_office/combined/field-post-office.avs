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

v001 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v1r.avi")
v001 = v001.audioDub(blankClip(v001, audio_rate = 48000, channels = 2))

v002 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v2r.avi")
v002 = v002.applyAudio(v1, 28, 569, v2, 54, 590)

v003 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v3r.avi")
v004 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v4r.avi")
v005 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v5r.avi")
v006 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v6r.avi")
v3_6 = (v003+v004+v005+v006).applyAudio(v1, 576, 6444, v2, 597, 6465, channels = 0)

v007 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v7r.avi")
v007 = v007.applyAudio(v1, 6447, 6680, v2, 6468, 6701)

v008 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v8r.avi")
v008 = v008.applyAudio(v1, 6684, 8234, v2, 6706, 8254)

v009 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v9r.avi")
v009 = v009.applyAudio(v1, 8246, 8378, v2, 8266, 8398)

v010 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v10r.avi")
v010 = v010.applyAudio(v1, 8381, 9593, v2, 8402, 9614)

v011 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v11r.avi")
v011 = v011.applyAudio(v1, 9607, 9930, v2, 9628, 9951, channels = 1)

v012 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v12r.avi")
v012 = v012.applyAudio(v1, 9932, 11323, v2, 9953, 11344)
v012 = v012.trim(0, v012.frameCount - 3)

v013 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v13r.avi")
v013 = v013.applyAudio(v1, 11326, 11505, v2, 11347, 11526)

v014 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v14r.avi")
v014 = v014.applyAudio(v1, 11516, 12005, v2, 11537, 12026)

v015 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v15r.avi")
v016 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v16r.avi")
v017 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v17r.avi")
v018 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v18r.avi")
v019 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v19r.avi")
v020 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v20r.avi")
v021 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v21r.avi")
v022 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v22r.avi")
v15_22 = (v015+v016+v017+v018+v019+v020+v021+v022).applyAudio(v1, 12008, 13383, v2, 12029, 13404)

v023 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v23r.avi")
v023 = v023.applyAudio(v1, 13385, 13560, v2, 13406, 13581)

v024 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v24r.avi")
v024 = v024.applyAudio(v1, 13565, 13688, v2, 13586, 13708)

v025 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v25r.avi")
v025 = v025.applyAudio(v1, 13693, 14097, v2, 13713, 14118)

v026 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v26r.avi")
v026 = v026.applyAudio(v1, 14102, 14345, v2, 14123, 14366)

v027 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v27r.avi")
v027 = v027.applyAudio(v1, 14350, 14563, v2, 14371, 14584)

v028 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v28r.avi")
v028 = v028.applyAudio(v1, 14568, 16430, v2, 14590, 16450)

v029 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v29r.avi")
v030 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v30r.avi")
v031 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v31r.avi")
v032 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v32r.avi")
v033 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v33r.avi")
v034 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v34r.avi")
v035 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v35r.avi")
v036 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v36r.avi")
v037 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v37r.avi")
v038 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v38r.avi")
v039 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v39r.avi")
v040 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v40r.avi")
v041 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v41r.avi")
v042 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v42r.avi")
v043 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v43r.avi")
v29_43 = (v029+v030+v031+v032+v033+v034+v035+v036+v037+v038+v039+v040+v041+v042+v043).\
         applyAudio(v1, 16432, 18601, v2, 16452, 18621)

v044 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v44r.avi")
v044 = v044.applyAudio(v1, 18621, 18797, v2, 18641, 18817)

v045 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v45r.avi")
v045 = v045.applyAudio(v1, 18800, 19334, v2, 18820, 19355)

v046 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v46r.avi")
v047 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v47r.avi")
v46_47 = (v046+v047).applyAudio(v1, 19395, 20693, v2, 19417, 20714)

v048 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v48r.avi")
v048 = v048.applyAudio(v1, 20697, 20888, v2, 20718, 20909)

v049 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v49r.avi")
v049 = v049.applyAudio(v1, 20893, 21026, v2, 20912, 21048)

v050 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v50r.avi")
v050 = v050.applyAudio(v1, 21040, 23093, v2, 21062, 23114)
return v048+v049+v050

v051 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v51r.avi")
v051 = v051.applyAudio(v1, 23095, 23228, v2, 23116, 23249)

v052 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v52r.avi")
v052 = v052.applyAudio(v1, 23234, 24086, v2, 23255, 24107)

v053 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v53r.avi")
v053 = v053.applyAudio(v1, 24089, 24188, v2, 24110, 24209)

v054 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v54r.avi")
v054 = v054.applyAudio(v1, 24275, 25001, v2, 24295, 25022)

v055 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v55r.avi")
v055_0 = v055.trim(0, 42)
v055_0 = v055_0.interleave(v055_0).assumeFPS(50)
v055_1 = v055.trim(43, 0)
v055 = v055_0+v055_1
v055 = v055.applyAudio(v1, 25027, 25233, v2, 25050, 25252, channels=1)

v056 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v56r.avi")
v056 = v056.applyAudio(v1, 25246, 27205, v2, 25266, 27226, channels=1)

v057 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v57r.avi")
v057 = v057.applyAudio(v1, 27213, 27399, v2, 27234, 27420)

v058 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v58r.avi")
v058 = v058.applyAudio(v1, 27422, 28133, v2, 27441, 28152)

v059 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v59r.avi")
v059 = v059.applyAudio(v1, 28135, 28336, v2, 28154, 28355)

v060 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v60r.avi")
v060 = v060.applyAudio(v1, 28340, 29163, v2, 28360, 29184)

v061 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v61r.avi")
v061 = v061.applyAudio(v1, 29166, 29423, v2, 29187, 29443)

v062 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v62r.avi")
v063 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v63r.avi")
v064 = loadSegment("\\seiki5\M\Media\Video\tmp\field_post_office\v64r.avi")
###
v065 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v65rs.avi")
v065 = v065.autolevels(border_l = 200, border_r = 200, border_t = 200, border_b = 200)
v065 = v065.prepareSegmentF
v066 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v66rs.avi")
v066 = v066.colorYUV(autowhite = true)
v066 = v066.prepareSegmentF
###
v62_66 = (v062+v064+v064+v065+v066).applyAudio(v1, 29510, 30803, v2, 29530, 30823)

v067 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v67rs.avi")
v067 = v067.autolevels(ignore_low = 0.01, ignore_high=0.001)
v067 = v067.colorYUV(autowhite=true)
v067 = v067.colorYUV(off_u = -4)
v067 = v067.prepareSegmentF
v067 = v067.applyAudio(v1, 30806, 31039, v2, 30826, 31059)

v068 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v68rs.avi")
v068 = v068.autolevels(ignore_low = 0.006, ignore_high=0.006)
v068 = v068.colorYUV(off_u = 12, off_v = -28)
v068 = v068.prepareSegmentF
v068 = v068.applyAudio(v1, 31041, 32034, v2, 32055, 31059)

v069 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v69rs.avi")
v069 = v069.autolevels(ignore_low = 0.01, ignore_high=0.001)
v069 = v069.colorYUV(autowhite=true)
v069 = v069.colorYUV(off_u = -4)
v069 = v069.prepareSegmentF
v069 = v069.applyAudio(v1, 32039, 32240, v2, 32060, 32260)

###
v070 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v70rs.avi")
v070 = v070.tweak(sat=0.8, coring=false)
v070 = v070.prepareSegmentF
v071 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v71rs.avi")
v071 = v071.prepareSegmentF
v072 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v72rs.avi")
v072 = v072.prepareSegmentF
v073 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v73rs.avi")
v073 = v073.prepareSegmentF
###
v70_73 = (v070+v071+v072+v073).applyAudio(v1, 32260, 33426, v2, 32280, 33447)

v074 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v74rs.avi")
v074 = v074.autolevels(ignore_low = 0.01, ignore_high=0.001)
v074 = v074.colorYUV(autowhite=true)
v074 = v074.colorYUV(off_u = -4)
v074 = v074.prepareSegmentF
v074 = v074.applyAudio(v1, 33430, 33866, v2, 33451, 33886)

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

return (v001+v002+v3_6+v007+v008+v009+v010+v011+v012+v013+v014+v15_22+v023+v024+v025+v026+v027+v028+v29_43+\
        v044+v045+v46_47+v048+v049+v050+v051+v052+v053+v054+v055+v056+v057+v058+v059+v060+v061+v62_66+v067+\
        v068+v069+v70_73+v074+v075+v076_0+v76_77+v076_12+v78_85+v086+v087).prefetch
