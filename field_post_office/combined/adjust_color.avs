LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareSegmentF(clip v)
{
    h = 1080
    w = round(1440 * 700./704. * 576./566)
    w = w / 2 * 2

#    v = v.sincResize(w, h)
    v = v.convertToYV12
    v = v.ColorMatrix(mode="Rec.601->Rec.709", clamp=0)
    return v.grainFactory3
}

v065 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v65rs.avi")
v065 = v065.autolevels(border_l = 200, border_r = 200, border_t = 200, border_b = 200)
v065 = v065.prepareSegmentF

v066 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v66rs.avi")
v066 = v066.colorYUV(autowhite = true)
v066 = v066.prepareSegmentF
return v066.prefetch

v067 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v67rs.avi")
v067 = v067.autolevels(ignore_low = 0.01, ignore_high=0.001)
v067 = v067.colorYUV(autowhite=true)
v067 = v067.colorYUV(off_u = -4)
v067 = v067.prepareSegmentF

v068 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v68rs.avi")
v068 = v068.autolevels(ignore_low = 0.006, ignore_high=0.006)
v068 = v068.colorYUV(off_u = 12, off_v = -28)
v068 = v068.prepareSegmentF

v069 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v69rs.avi")
v069 = v069.autolevels(ignore_low = 0.01, ignore_high=0.001)
v069 = v069.colorYUV(autowhite=true)
v069 = v069.colorYUV(off_u = -4)
v069 = v069.prepareSegmentF

v070 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v70rs.avi")
v070 = v070.tweak(sat=0.8, coring=false)
v070 = v070.prepareSegmentF

v071 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v71rs.avi")
v071 = v071.prepareSegmentF

v072 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v72rs.avi")
v072 = v072.prepareSegmentF

v073 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v73rs.avi")
v073 = v073.prepareSegmentF

v074 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v74rs.avi")
v074 = v074.autolevels(ignore_low = 0.01, ignore_high=0.001)
v074 = v074.colorYUV(autowhite=true)
v074 = v074.colorYUV(off_u = -4)
v074 = v074.prepareSegmentF

v075 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v75rs.avi")
v075 = v075.autolevels(ignore_low = 0.001, ignore_high=0.001)
v075 = v075.prepareSegmentF

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

v087 = LWLibavVideoSource("\\seiki5\M\Media\Video\tmp\field_post_office\v87rs.avi")
v087 = v087.histogram("levels")
v087 = v087.prepareSegmentF
