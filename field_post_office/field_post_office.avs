LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

v1 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_1.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a1 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_1.avi", stream_index=1)
#v1 = v1.AudioDub(a1)
v1 = v1.crop(10, 0, -10, -10)

v2 = LWLibavVideoSource("K:\Media\Video\vhs\field_post_office_2.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a2 = LWLibavAudioSource("K:\Media\Video\vhs\field_post_office_2.avi", stream_index=1)
#v2 = v2.AudioDub(a2)
v2 = v2.crop(10, 0, -10, -10)

#v1 = v1.loop(31, 0, 0)
#v2 = v2.loop(11, 0, 0)

v2 = v2.trim(0, 26) + v2.trim(28, 0)
v2 = v2.trim(0, 27) + v2.trim(29, 0)
v2 = v2.trim(0, 28) + v2.trim(30, 0)
v2 = v2.trim(0, 29) + v2.trim(31, 0)
v2 = v2.trim(0, 30) + v2.trim(32, 0)
v2 = v2.trim(0, 31) + v2.trim(33, 0)

#v1 = v1.trim(0, 4) + v1.trim(47, 53).loop(7) + v1.trim(54, 0)
v1 = v1.trim(17, 21) + v1.trim(17, 23).loop(7) + v1.trim(24, 0)
v2 = v2.trim(22, 43) + v2.trim(12, 0)

v1 = v1.trim(0, 53) + v1.trim(58, 0) ###
v2 = v2.trim(0, 53) + v2.trim(58, 0) ###

v1 = v1.trim(0, 64) + v2.trim(65, 65) + v1.trim(66, 0)

v1 = v1.trim(0, 92) + v1.trim(94, 0)
v1 = v1.trim(0, 94) + v1.trim(96, 0)
v1 = v1.trim(0, 94) + v1.trim(96, 0)
v1 = v1.trim(0, 95) + v1.trim(97, 0)
v1 = v1.trim(0, 96) + v1.trim(98, 0)

v2 = v2.trim(0, 115) + v1.trim(116, 117) + v2.trim(118, 0)
v1 = v1.trim(0, 139) + v2.trim(140, 140) + v1.trim(141, 0)

v1 = v1.trim(0, 590) + v1.trim(597, 0)
v2 = v2.trim(0, 590) + v2.trim(597, 0)

v1 = v1.trim(0, 5112) + v2.trim(5113, 5114) + v1.trim(5114, 0)
v1 = v1.trim(0, 5821) + v1.trim(5823, 0)

v1 = v1.trim(0, 6459) + v1.trim(6462, 0)
v2 = v2.trim(0, 6459) + v2.trim(6462, 0)

v1 = v1.trim(0, 6693) + v1.trim(6697, 0)
v2 = v2.trim(0, 6693) + v2.trim(6698, 0)

v1 = v1.trim(0, 6724) + v1.trim(6726, 0)
v1 = v1.trim(0, 6726) + v1.trim(6728, 0)

v1 = v1.trim(0, 6757) + v2.trim(6758, 6758) + v1.trim(6759, 0)
v1 = v1.trim(0, 7042) + v2.trim(7043, 7043) + v1.trim(7044, 0)
v2 = v2.trim(0, 7182) + v1.trim(7183, 7183) + v2.trim(7184, 0)
v1 = v1.trim(0, 7228) + v2.trim(7229, 7229) + v1.trim(7230, 0)
v2 = v2.trim(0, 7450) + v1.trim(7451, 7451) + v2.trim(7452, 0)
v1 = v1.trim(0, 7578) + v2.trim(7579, 7579) + v1.trim(7580, 0)

v1 = v1.trim(0, 8242) + v1.trim(8254, 0)
v2 = v2.trim(0, 8242) + v2.trim(8254, 0)

v1 = v1.trim(0, 8375) + v1.trim(8378, 0)
v2 = v2.trim(0, 8375) + v2.trim(8379, 0)

v2 = v2.trim(0, 8396) + v2.trim(8398, 0)

v1 = v1.trim(0, 8490) + v1.trim(8492, 0)

v1 = v1.trim(0, 9517) + v2.trim(9518, 9518) + v1.trim(9519, 0)

v1 = v1.trim(0, 9587) + v1.trim(9601, 0)
v2 = v2.trim(0, 9587) + v2.trim(9601, 0)

v1 = v1.trim(0, 9597) + v1.trim(9599, 0)
v1 = v1.trim(0, 9598) + v1.trim(9600, 0)
v2 = v2.trim(0, 9607) + v2.trim(9609, 0)
v1 = v1.trim(0, 9666) + v1.trim(9668, 0)
v1 = v1.trim(0, 9667) + v1.trim(9669, 0)
v2 = v2.trim(0, 9777) + v2.trim(9779, 0)
v1 = v1.trim(0, 9795) + v2.trim(9796, 9796) + v1.trim(9796, 0)
v2 = v2.trim(0, 9826) + v2.trim(9828, 0)

v1 = v1.trim(0, 9908) + v1.trim(9910, 0)
v2 = v2.trim(0, 9908) + v2.trim(9910, 0)

v1 = v1.trim(0, 10011) + v1.trim(10013, 0)

v2 = v2.trim(0, 10114) + v2.trim(10116, 0)

v1 = v1.trim(0, 11299) + v1.trim(11302, 0)
v2 = v2.trim(0, 11299) + v2.trim(11302, 0)

v2 = v2.trim(0, 11432) + v1.trim(11433, 11433) + v2.trim(11434, 0)

v1 = v1.trim(0, 11479) + v1.trim(11490, 0)
v2 = v2.trim(0, 11479) + v2.trim(11490, 0)

v1 = v1.trim(0, 11969) + v1.trim(11972, 0)
v2 = v2.trim(0, 11969) + v2.trim(11972, 0)

v1 = v1.trim(0, 13345) + v1.trim(13347, 0)
v2 = v2.trim(0, 13345) + v2.trim(13347, 0)

v1 = v1.trim(0, 13521) + v1.trim(13526, 0)
v2 = v2.trim(0, 13521) + v2.trim(13526, 0)
####################
v2 = v2.trim(0, 13534) + v1.trim(13535, 13538) + v2.trim(13539, 0)
v1 = v1.trim(0, 13540) + v1.trim(13542, 0)

v1 = v1.trim(0, 13644) + v1.trim(13649, 0)
v2 = v2.trim(0, 13644) + v2.trim(13649, 0)

v2 = v2.trim(0, 13860) + v2.trim(13862, 0)

v1 = v1.trim(0, 14049) + v1.trim(14054, 0)
v2 = v2.trim(0, 14049) + v2.trim(14054, 0)

v1 = v1.trim(0, 14293) + v1.trim(14298, 0)
v2 = v2.trim(0, 14293) + v2.trim(14298, 0)

v1 = v1.trim(0, 14507) + v1.trim(14512, 0)
v2 = v2.trim(0, 14507) + v2.trim(14513, 0)

v1 = v1.trim(0, 14828) + v1.trim(14830, 0)
v1 = v1.trim(0, 14829) + v1.trim(14831, 0)

v2 = v2.trim(0, 14915) + v1.trim(14916, 14917) + v2.trim(14917, 0)

v2 = v2.trim(0, 14919) + v2.trim(14921, 0)

v1 = v1.trim(0, 16368) + v1.trim(16370, 0)
v2 = v2.trim(0, 16368) + v2.trim(16370, 0)

v1 = v1.trim(0, 18538) + v1.trim(18558, 0)
v2 = v2.trim(0, 18538) + v2.trim(18558, 0)

v1 = v1.trim(0, 18715) + v1.trim(18718, 0)
v2 = v2.trim(0, 18715) + v2.trim(18718, 0)

v1 = v1.trim(0, 19009) + v1.trim(19011, 0)

v2 = v2.trim(0, 19027) + v2.trim(19029, 0)
v2 = v2.trim(0, 19028) + v2.trim(19030, 0)

v1 = v1.trim(0, 19249) + v1.trim(19310, 0)
v2 = v2.trim(0, 19249) + v2.trim(19311, 0)

v1 = v1.trim(0, 19371) + v1.trim(19373, 0)

v2 = v2.trim(0, 19375) + v1.trim(19376, 19376) + v2.trim(19377, 0)

v1 = v1.trim(0, 19408) + v2.trim(19409, 19409) + v1.trim(19410, 0)
v1 = v1.trim(0, 19410) + v2.trim(19411, 19411) + v1.trim(19412, 0)
v2 = v2.trim(0, 19411) + v1.trim(19412, 19412) + v2.trim(19413, 0)
v2 = v2.trim(0, 19435) + v1.trim(19436, 19436) + v2.trim(19437, 0)
v1 = v1.trim(0, 19440) + v2.trim(19441, 19441) + v1.trim(19442, 0)
v1 = v1.trim(0, 19484) + v2.trim(19485, 19486) + v1.trim(19487, 0)
v1 = v1.trim(0, 19507) + v2.trim(19508, 19508) + v1.trim(19509, 0)
v2 = v2.trim(0, 19528) + v1.trim(19529, 19529) + v2.trim(19530, 0)
v1 = v1.trim(0, 19534) + v2.trim(19535, 19535) + v1.trim(19536, 0)
v2 = v2.trim(0, 19539) + v1.trim(19540, 19540) + v2.trim(19541, 0)
v2 = v2.trim(0, 19541) + v1.trim(19542, 19542) + v2.trim(19543, 0)
v2 = v2.trim(0, 19545) + v1.trim(19546, 19546) + v2.trim(19547, 0)
v2 = v2.trim(0, 19547) + v1.trim(19548, 19548) + v2.trim(19549, 0)
v2 = v2.trim(0, 19549) + v1.trim(19550, 19550) + v2.trim(19551, 0)
v2 = v2.trim(0, 19558) + v1.trim(19559, 19559) + v2.trim(19560, 0)
v1 = v1.trim(0, 19570) + v2.trim(19571, 19571) + v1.trim(19572, 0)
v2 = v2.trim(0, 19578) + v1.trim(19579, 19579) + v2.trim(19580, 0)
v2 = v2.trim(0, 19580) + v1.trim(19581, 19581) + v2.trim(19582, 0)
v2 = v2.trim(0, 19590) + v1.trim(19591, 19591) + v2.trim(19592, 0)
v2 = v2.trim(0, 19605) + v1.trim(19606, 19606) + v2.trim(19607, 0)
v2 = v2.trim(0, 19612) + v1.trim(19613, 19613) + v2.trim(19614, 0)
v1 = v1.trim(0, 19614) + v2.trim(19615, 19615) + v1.trim(19616, 0)
v2 = v2.trim(0, 19622) + v1.trim(19623, 19623) + v2.trim(19624, 0)
v1 = v1.trim(0, 19623) + v2.trim(19624, 19624) + v1.trim(19625, 0)
v2 = v2.trim(0, 19624) + v1.trim(19625, 19625) + v2.trim(19626, 0)
v2 = v2.trim(0, 19627) + v1.trim(19628, 19628) + v2.trim(19629, 0)
v1 = v1.trim(0, 19628) + v2.trim(19629, 19629) + v1.trim(19630, 0)
v2 = v2.trim(0, 19638) + v1.trim(19639, 19639) + v2.trim(19640, 0)
v1 = v1.trim(0, 19645) + v2.trim(19646, 19646) + v1.trim(19647, 0)
v2 = v2.trim(0, 19646) + v1.trim(19647, 19647) + v2.trim(19648, 0)
v2 = v2.trim(0, 19666) + v1.trim(19667, 19667) + v2.trim(19668, 0)
v2 = v2.trim(0, 19676) + v1.trim(19677, 19677) + v2.trim(19678, 0)
v2 = v2.trim(0, 19680) + v1.trim(19681, 19681) + v2.trim(19682, 0)
v1 = v1.trim(0, 19696) + v2.trim(19697, 19697) + v1.trim(19698, 0)
v2 = v2.trim(0, 19704) + v1.trim(19705, 19705) + v2.trim(19706, 0)
v2 = v2.trim(0, 19760) + v1.trim(19761, 19762) + v2.trim(19763, 0)
v1 = v1.trim(0, 19807) + v2.trim(19808, 19808) + v1.trim(19809, 0)
v2 = v2.trim(0, 19820) + v1.trim(19821, 19821) + v2.trim(19822, 0)
v2 = v2.trim(0, 19832) + v1.trim(19833, 19833) + v2.trim(19834, 0)
v2 = v2.trim(0, 19836) + v1.trim(19837, 19837) + v2.trim(19838, 0)
v2 = v2.trim(0, 19840) + v1.trim(19841, 19841) + v2.trim(19842, 0)
v1 = v1.trim(0, 19871) + v2.trim(19872, 19872) + v1.trim(19873, 0)
v1 = v1.trim(0, 19874) + v2.trim(19875, 19875) + v1.trim(19876, 0)
v1 = v1.trim(0, 19880) + v2.trim(19881, 19881) + v1.trim(19882, 0)
v1 = v1.trim(0, 19917) + v2.trim(19918, 19918) + v1.trim(19919, 0)
v2 = v2.trim(0, 19932) + v1.trim(19933, 19933) + v2.trim(19934, 0)
v1 = v1.trim(0, 19950) + v2.trim(19951, 19951) + v1.trim(19952, 0)
v1 = v1.trim(0, 19983) + v2.trim(19984, 19984) + v1.trim(19985, 0)
v2 = v2.trim(0, 20014) + v1.trim(20015, 20016) + v2.trim(20017, 0)
v1 = v1.trim(0, 20067) + v2.trim(20068, 20068) + v1.trim(20069, 0)
v2 = v2.trim(0, 20089) + v1.trim(20090, 20090) + v2.trim(20091, 0)
v2 = v2.trim(0, 20096) + v1.trim(20097, 20097) + v2.trim(20098, 0)
v2 = v2.trim(0, 20124) + v1.trim(20125, 20125) + v2.trim(20126, 0)
v1 = v1.trim(0, 20126) + v2.trim(20127, 20127) + v1.trim(20128, 0)
v2 = v2.trim(0, 20131) + v1.trim(20132, 20132) + v2.trim(20133, 0)
v1 = v1.trim(0, 20136) + v1.trim(20138, 20138) + v1.trim(20138, 0) # drop 20137, dup 20138
v2 = v2.trim(0, 20136) + v2.trim(20138, 20138) + v2.trim(20138, 0) # drop 20137, dup 20138
v2 = v2.trim(0, 20148) + v1.trim(20149, 20149) + v2.trim(20150, 0)
v1 = v1.trim(0, 20153) + v2.trim(20154, 20154) + v1.trim(20155, 0)
v2 = v2.trim(0, 20157) + v1.trim(20158, 20158) + v2.trim(20159, 0)
v2 = v2.trim(0, 20187) + v1.trim(20188, 20188) + v2.trim(20189, 0)
v2 = v2.trim(0, 20193) + v1.trim(20194, 20194) + v2.trim(20195, 0)
v2 = v2.trim(0, 20210) + v1.trim(20211, 20212) + v2.trim(20213, 0)
v2 = v2.trim(0, 20249) + v1.trim(20250, 20250) + v2.trim(20251, 0)
v2 = v2.trim(0, 20258) + v1.trim(20259, 20259) + v2.trim(20260, 0)
v1 = v1.trim(0, 20301) + v2.trim(20302, 20302) + v1.trim(20303, 0)
v1 = v1.trim(0, 20341) + v2.trim(20342, 20342) + v1.trim(20343, 0)
v2 = v2.trim(0, 20343) + v1.trim(20344, 20344) + v2.trim(20345, 0)
v1 = v1.trim(0, 20381) + v2.trim(20382, 20382) + v1.trim(20383, 0)
v2 = v2.trim(0, 20393) + v1.trim(20394, 20395) + v2.trim(20396, 0)
v1 = v1.trim(0, 20407) + v2.trim(20408, 20408) + v1.trim(20409, 0)
v1 = v1.trim(0, 20411) + v2.trim(20412, 20412) + v1.trim(20413, 0)
v2 = v2.trim(0, 20412) + v1.trim(20413, 20413) + v2.trim(20414, 0)
v2 = v2.trim(0, 20416) + v1.trim(20417, 20417) + v2.trim(20418, 0)
v1 = v1.trim(0, 20417) + v2.trim(20418, 20418) + v1.trim(20419, 0)
v2 = v2.trim(0, 20443) + v1.trim(20444, 20444) + v2.trim(20445, 0)
v1 = v1.trim(0, 20446) + v2.trim(20447, 20447) + v1.trim(20448, 0)
v2 = v2.trim(0, 20447) + v1.trim(20448, 20449) + v2.trim(20450, 0)
v2 = v2.trim(0, 20503) + v1.trim(20504, 20505) + v2.trim(20506, 0)

v1 = v1.trim(0, 20547) + v1.trim(20551, 0)
v2 = v2.trim(0, 20547) + v2.trim(20551, 0)

v1 = v1.trim(0, 20739) + v1.trim(20744, 0)
v2 = v2.trim(0, 20739) + v2.trim(20742, 0)

v2 = v2.trim(0, 20756) + v2.trim(20758, 0)
v2 = v2.trim(0, 20757) + v2.trim(20759, 0)
v2 = v2.trim(0, 20758) + v2.trim(20760, 0)

v1 = v1.trim(0, 20873) + v1.trim(20887, 0)
v2 = v2.trim(0, 20873) + v2.trim(20887, 0)

v1 = v1.trim(0, 20917) + v1.trim(20919, 0)
v1 = v1.trim(0, 20918) + v1.trim(20920, 0)
v1 = v1.trim(0, 20919) + v1.trim(20921, 0)

v2 = v2.trim(0, 20975) + v2.trim(20977, 0)
v2 = v2.trim(0, 20976) + v2.trim(20978, 0)

v1 = v1.trim(0, 22924) + v1.trim(22926, 0)
v2 = v2.trim(0, 22924) + v2.trim(22926, 0)

v1 = v1.trim(0, 23058) + v1.trim(23064, 0)
v2 = v2.trim(0, 23058) + v2.trim(23064, 0)

v1 = v1.trim(0, 23911) + v1.trim(23914, 0)
v2 = v2.trim(0, 23911) + v2.trim(23914, 0)

v1 = v1.trim(0, 24011) + v1.trim(24098, 0)
v2 = v2.trim(0, 24011) + v2.trim(24097, 0)

v2 = v2.trim(0, 24147) + v1.trim(24148, 24148) + v2.trim(24149, 0)
v2 = v2.trim(0, 24153) + v1.trim(24154, 24154) + v2.trim(24155, 0)
v1 = v1.trim(0, 24159) + v2.trim(24160, 24161) + v1.trim(24162, 0)
v2 = v2.trim(0, 24186) + v1.trim(24187, 24189) + v2.trim(24190, 0)
v1 = v1.trim(0, 24194) + v2.trim(24195, 24195) + v1.trim(24196, 0)
v2 = v2.trim(0, 24201) + v1.trim(24202, 24202) + v2.trim(24203, 0)
v2 = v2.trim(0, 24211) + v1.trim(24212, 24212) + v2.trim(24213, 0)
v1 = v1.trim(0, 24268) + v2.trim(24269, 24269) + v1.trim(24270, 0)
v1 = v1.trim(0, 24287) + v2.trim(24288, 24288) + v1.trim(24289, 0)
v2 = v2.trim(0, 24288) + v1.trim(24289, 24289) + v2.trim(24290, 0)
v2 = v2.trim(0, 24318) + v1.trim(24319, 24319) + v2.trim(24320, 0)
v2 = v2.trim(0, 24320) + v1.trim(24321, 24321) + v2.trim(24322, 0)
v2 = v2.trim(0, 24353) + v1.trim(24354, 24354) + v2.trim(24355, 0)
v1 = v1.trim(0, 24355) + v2.trim(24356, 24356) + v1.trim(24357, 0)
v1 = v1.trim(0, 24361) + v2.trim(24362, 24362) + v1.trim(24363, 0)
v1 = v1.trim(0, 24362) + v2.trim(24363, 24363) + v1.trim(24364, 0)
v2 = v2.trim(0, 24364) + v1.trim(24365, 24365) + v2.trim(24366, 0)
v1 = v1.trim(0, 24393) + v2.trim(24394, 24394) + v1.trim(24395, 0)
v2 = v2.trim(0, 24400) + v1.trim(24401, 24401) + v2.trim(24402, 0)
v1 = v1.trim(0, 24423) + v2.trim(24424, 24424) + v1.trim(24425, 0)
v2 = v2.trim(0, 24438) + v1.trim(24439, 24439) + v2.trim(24440, 0)
v2 = v2.trim(0, 24447) + v1.trim(24448, 24448) + v2.trim(24449, 0)
v2 = v2.trim(0, 24469) + v1.trim(24470, 24470) + v2.trim(24471, 0)
v2 = v2.trim(0, 24504) + v1.trim(24505, 24505) + v2.trim(24506, 0)
v2 = v2.trim(0, 24553) + v1.trim(24554, 24555) + v2.trim(24556, 0)
v2 = v2.trim(0, 24574) + v1.trim(24575, 24575) + v2.trim(24576, 0)
v2 = v2.trim(0, 24578) + v1.trim(24579, 24579) + v2.trim(24580, 0)
v2 = v2.trim(0, 24590) + v1.trim(24591, 24591) + v2.trim(24592, 0)
v1 = v1.trim(0, 24593) + v2.trim(24594, 24594) + v1.trim(24595, 0)
v1 = v1.trim(0, 24618) + v2.trim(24619, 24619) + v1.trim(24620, 0)
v2 = v2.trim(0, 24620) + v2.trim(24622, 0)
v2 = v2.trim(0, 24622) + v1.trim(24623, 24624) + v2.trim(24625, 0)
v2 = v2.trim(0, 24628) + v1.trim(24629, 24629) + v2.trim(24630, 0)
v1 = v1.trim(0, 24629) + v2.trim(24630, 24630) + v1.trim(24631, 0)
v2 = v2.trim(0, 24638) + v1.trim(24639, 24639) + v2.trim(24640, 0)
v2 = v2.trim(0, 24645) + v1.trim(24646, 24646) + v2.trim(24647, 0)

v1 = v1.trim(0, 24738) + v1.trim(24764, 0)
v2 = v2.trim(0, 24738) + v2.trim(24766, 0)

v1 = v1.trim(0, 24739) + v1.trim(24741, 0)
v2 = v2.trim(0, 24739) + v2.trim(24741, 0)
v1 = v1.trim(0, 24740) + v1.trim(24742, 0)
v2 = v2.trim(0, 24740) + v2.trim(24742, 0)
v1 = v1.trim(0, 24741) + v1.trim(24743, 0)
v2 = v2.trim(0, 24741) + v2.trim(24743, 0)
v1 = v1.trim(0, 24742) + v1.trim(24744, 0)
v2 = v2.trim(0, 24742) + v2.trim(24744, 0)
v1 = v1.trim(0, 24743) + v1.trim(24745, 0)
v2 = v2.trim(0, 24743) + v2.trim(24745, 0)
v1 = v1.trim(0, 24744) + v1.trim(24746, 0)
v2 = v2.trim(0, 24744) + v2.trim(24746, 0)
v1 = v1.trim(0, 24745) + v1.trim(24747, 0)
v2 = v2.trim(0, 24745) + v2.trim(24747, 0)
v1 = v1.trim(0, 24746) + v1.trim(24748, 0)
v2 = v2.trim(0, 24746) + v2.trim(24748, 0)
v1 = v1.trim(0, 24747) + v1.trim(24749, 0)
v2 = v2.trim(0, 24747) + v2.trim(24749, 0)
v1 = v1.trim(0, 24748) + v1.trim(24750, 0)
v2 = v2.trim(0, 24748) + v2.trim(24750, 0)
v1 = v1.trim(0, 24749) + v1.trim(24751, 0)
v2 = v2.trim(0, 24749) + v2.trim(24751, 0)
v1 = v1.trim(0, 24750) + v1.trim(24752, 0)
v2 = v2.trim(0, 24750) + v2.trim(24752, 0)
v1 = v1.trim(0, 24751) + v1.trim(24753, 0)
v2 = v2.trim(0, 24751) + v2.trim(24753, 0)
v1 = v1.trim(0, 24752) + v1.trim(24754, 0)
v2 = v2.trim(0, 24752) + v2.trim(24754, 0)
v1 = v1.trim(0, 24753) + v1.trim(24755, 0)
v2 = v2.trim(0, 24753) + v2.trim(24755, 0)
v1 = v1.trim(0, 24754) + v1.trim(24756, 0)
v2 = v2.trim(0, 24754) + v2.trim(24756, 0)
v1 = v1.trim(0, 24755) + v1.trim(24757, 0)
v2 = v2.trim(0, 24755) + v2.trim(24757, 0)
v1 = v1.trim(0, 24756) + v1.trim(24758, 0)
v2 = v2.trim(0, 24756) + v2.trim(24758, 0)

v1 = v1.trim(0, 24757) + v1.trim(24759, 0)
v1 = v1.trim(0, 24758) + v1.trim(24760, 0)
v1 = v1.trim(0, 24759) + v1.trim(24761, 0)

v2 = v2.trim(0, 24767) + v1.trim(24768, 24771) + v2.trim(24771, 0)

v1 = v1.trim(0, 24924) + v1.trim(24927, 0)
v2 = v2.trim(0, 24924) + v2.trim(24928, 0)

v2 = v2.trim(0, 24936) + v2.trim(24938, 0)
v2 = v2.trim(0, 24937) + v2.trim(24939, 0)
v2 = v2.trim(0, 25229) + v2.trim(25231, 0)
v1 = v1.trim(0, 25471) + v1.trim(25473, 0)
v1 = v1.trim(0, 25472) + v1.trim(25474, 0)

v2 = v2.trim(0, 25521) + v1.trim(25522, 25523) + v2.trim(25524, 0)
v1 = v1.trim(0, 25556) + v2.trim(25557, 25557) + v1.trim(25558, 0)
v1 = v1.trim(0, 25575) + v2.trim(25576, 25576) + v1.trim(25577, 0)
v1 = v1.trim(0, 25680) + v2.trim(25681, 25682) + v1.trim(25683, 0)
v2 = v2.trim(0, 25981) + v1.trim(25982, 25983) + v2.trim(25984, 0)
v2 = v2.trim(0, 26025) + v1.trim(26026, 26026) + v2.trim(26027, 0)
v1 = v1.trim(0, 26057) + v2.trim(26058, 26059) + v1.trim(26060, 0)
v2 = v2.trim(0, 26063) + v1.trim(26064, 26065) + v2.trim(26066, 0)
v2 = v2.trim(0, 26152) + v1.trim(26153, 26154) + v2.trim(26155, 0)
v1 = v1.trim(0, 26285) + v2.trim(26286, 26286) + v1.trim(26287, 0)
v1 = v1.trim(0, 26418) + v2.trim(26419, 26420) + v1.trim(26421, 0)
v2 = v2.trim(0, 26426) + v1.trim(26427, 26427) + v2.trim(26428, 0)
v2 = v2.trim(0, 26620) + v1.trim(26621, 26622) + v2.trim(26623, 0)
v1 = v1.trim(0, 26640) + v2.trim(26641, 26642) + v1.trim(26643, 0)
v1 = v1.trim(0, 26648) + v2.trim(26649, 26650) + v1.trim(26651, 0)
v2 = v2.trim(0, 26653) + v1.trim(26654, 26655) + v2.trim(26656, 0)
v1 = v1.trim(0, 26656) + v2.trim(26657, 26660) + v1.trim(26661, 0)
v1 = v1.trim(0, 26661) + v2.trim(26662, 26663) + v1.trim(26664, 0)
v2 = v2.trim(0, 26708) + v1.trim(26709, 26710) + v2.trim(26711, 0)
v1 = v1.trim(0, 26733) + v2.trim(26734, 26734) + v1.trim(26735, 0)
v1 = v1.trim(0, 26746) + v2.trim(26747, 26747) + v1.trim(26748, 0)

v1 = v1.trim(0, 26892) + v1.trim(26900, 0)
v2 = v2.trim(0, 26892) + v2.trim(26900, 0)

v1 = v1.trim(0, 26957) + v2.trim(26958, 26958) + v1.trim(26959, 0)

v1 = v1.trim(0, 27079) + v1.trim(27102, 0)
v2 = v2.trim(0, 27079) + v2.trim(27100, 0)

v2 = v2.trim(0, 27114) + v2.trim(27116, 0)
v2 = v2.trim(0, 27115) + v2.trim(27117, 0)

v1 = v1.trim(0, 27117) + v2.trim(27118, 27120) + v1.trim(27120, 0)

v1 = v1.trim(0, 27153) + v1.trim(27155, 0)
v1 = v1.trim(0, 27154) + v1.trim(27156, 0)
v1 = v1.trim(0, 27155) + v1.trim(27157, 0)

v2 = v2.trim(0, 27391) + v1.trim(27392, 27393) + v2.trim(27394, 0)

v1 = v1.trim(0, 27789) + v1.trim(27791, 0)
v2 = v2.trim(0, 27789) + v2.trim(27791, 0)

v1 = v1.trim(0, 27991) + v1.trim(27995, 0)
v2 = v2.trim(0, 27991) + v2.trim(27996, 0)

v1 = v1.trim(0, 28072) + v2.trim(28073, 28073) + v1.trim(28074, 0)
v2 = v2.trim(0, 28169) + v1.trim(28170, 28171) + v2.trim(28172, 0)
v1 = v1.trim(0, 28202) + v2.trim(28203, 28204) + v1.trim(28205, 0)
v1 = v1.trim(0, 28217) + v2.trim(28218, 28218) + v1.trim(28219, 0)
v1 = v1.trim(0, 28240) + v2.trim(28241, 28241) + v1.trim(28242, 0)

v2 = v2.trim(0, 28261) + v2.trim(28263, 0)

v1 = v1.trim(0, 28360) + v2.trim(28361, 28361) + v1.trim(28362, 0)
v1 = v1.trim(0, 28619) + v2.trim(28620, 28621) + v1.trim(28622, 0)
v2 = v2.trim(0, 28633) + v1.trim(28634, 28634) + v2.trim(28635, 0)
v2 = v2.trim(0, 28659) + v1.trim(28660, 28660) + v2.trim(28661, 0)

v1 = v1.trim(0, 28815) + v1.trim(28818, 0)
v2 = v2.trim(0, 28815) + v2.trim(28818, 0)

v2 = v2.trim(0, 28951) + v2.trim(28953, 0)

v2 = v2.trim(0, 28958) + v1.trim(28959, 28960) + v2.trim(28961, 0)
v1 = v1.trim(0, 28960) + v1.trim(28962, 0)
v1 = v1.trim(0, 28961) + v1.trim(28963, 0)

v1 = v1.trim(0, 29071) + v1.trim(29158, 0)
v2 = v2.trim(0, 29071) + v2.trim(29158, 0)

v1 = v1.trim(0, 29110) + v2.trim(29111, 29111) + v1.trim(29112, 0)
v1 = v1.trim(0, 29113) + v2.trim(29114, 29116) + v1.trim(29117, 0)
v1 = v1.trim(0, 29133) + v2.trim(29134, 29135) + v1.trim(29136, 0)
v2 = v2.trim(0, 29146) + v1.trim(29147, 29147) + v2.trim(29148, 0)
v1 = v1.trim(0, 29152) + v2.trim(29153, 29153) + v1.trim(29154, 0)
v2 = v2.trim(0, 29174) + v1.trim(29175, 29175) + v2.trim(29176, 0)
v2 = v2.trim(0, 29199) + v1.trim(29200, 29200) + v2.trim(29201, 0)
v2 = v2.trim(0, 29208) + v1.trim(29209, 29209) + v2.trim(29210, 0)
v1 = v1.trim(0, 29211) + v2.trim(29212, 29214) + v1.trim(29215, 0)
v2 = v2.trim(0, 29231) + v1.trim(29232, 29232) + v2.trim(29233, 0)
v2 = v2.trim(0, 29244) + v1.trim(29245, 29245) + v2.trim(29246, 0)
v1 = v1.trim(0, 29270) + v2.trim(29271, 29272) + v1.trim(29273, 0)
v1 = v1.trim(0, 29295) + v2.trim(29296, 29296) + v1.trim(29297, 0)
v2 = v2.trim(0, 29315) + v1.trim(29316, 29316) + v2.trim(29317, 0)
v2 = v2.trim(0, 29334) + v1.trim(29335, 29335) + v2.trim(29336, 0)
v1 = v1.trim(0, 29383) + v2.trim(29384, 29384) + v1.trim(29385, 0)
v2 = v2.trim(0, 29404) + v1.trim(29405, 29405) + v2.trim(29406, 0)
v1 = v1.trim(0, 29413) + v2.trim(29414, 29414) + v1.trim(29415, 0)
v2 = v2.trim(0, 29427) + v1.trim(29428, 29428) + v2.trim(29429, 0)
v2 = v2.trim(0, 29439) + v1.trim(29440, 29440) + v2.trim(29441, 0)
v2 = v2.trim(0, 29457) + v1.trim(29458, 29458) + v2.trim(29459, 0)
v1 = v1.trim(0, 29458) + v2.trim(29459, 29459) + v1.trim(29460, 0)
v2 = v2.trim(0, 29480) + v1.trim(29481, 29481) + v2.trim(29482, 0)
v1 = v1.trim(0, 29485) + v2.trim(29486, 29486) + v1.trim(29487, 0)

v2 = v2.trim(0, 29523) + v1.trim(29524, 29525) + v2.trim(29526, 0)
v2 = v2.trim(0, 29534) + v1.trim(29535, 29535) + v2.trim(29536, 0)
v2 = v2.trim(0, 29536) + v1.trim(29537, 29537) + v2.trim(29538, 0)
v2 = v2.trim(0, 29544) + v1.trim(29545, 29545) + v2.trim(29546, 0)
v1 = v1.trim(0, 29545) + v2.trim(29546, 29546) + v1.trim(29547, 0)
v1 = v1.trim(0, 29555) + v2.trim(29556, 29556) + v1.trim(29557, 0)
v1 = v1.trim(0, 29562) + v2.trim(29563, 29564) + v1.trim(29565, 0)
v1 = v1.trim(0, 29572) + v2.trim(29573, 29573) + v1.trim(29574, 0)
v2 = v2.trim(0, 29573) + v1.trim(29574, 29574) + v2.trim(29575, 0)
v1 = v1.trim(0, 29576) + v2.trim(29577, 29577) + v1.trim(29578, 0)
v2 = v2.trim(0, 29583) + v1.trim(29584, 29584) + v2.trim(29585, 0)
v1 = v1.trim(0, 29590) + v2.trim(29591, 29591) + v1.trim(29592, 0)
v1 = v1.trim(0, 29599) + v2.trim(29600, 29600) + v1.trim(29601, 0)
v2 = v2.trim(0, 29604) + v1.trim(29605, 29605) + v2.trim(29606, 0)
v2 = v2.trim(0, 29617) + v1.trim(29618, 29618) + v2.trim(29619, 0)
v1 = v1.trim(0, 29638) + v2.trim(29639, 29639) + v1.trim(29640, 0)
v2 = v2.trim(0, 29658) + v1.trim(29659, 29659) + v2.trim(29660, 0)
v1 = v1.trim(0, 29663) + v2.trim(29664, 29664) + v1.trim(29665, 0)
v2 = v2.trim(0, 29665) + v1.trim(29666, 29666) + v2.trim(29667, 0)
v2 = v2.trim(0, 29672) + v1.trim(29673, 29673) + v2.trim(29674, 0)
v1 = v1.trim(0, 29674) + v2.trim(29675, 29675) + v1.trim(29676, 0)
v2 = v2.trim(0, 29678) + v1.trim(29679, 29679) + v2.trim(29680, 0)
v2 = v2.trim(0, 29685) + v1.trim(29686, 29686) + v2.trim(29687, 0)
v1 = v1.trim(0, 29689) + v2.trim(29690, 29690) + v1.trim(29691, 0)
v2 = v2.trim(0, 29694) + v1.trim(29695, 29695) + v2.trim(29696, 0)
v1 = v1.trim(0, 29711) + v2.trim(29712, 29712) + v1.trim(29713, 0)
v2 = v2.trim(0, 29719) + v1.trim(29720, 29720) + v2.trim(29721, 0)
v2 = v2.trim(0, 29752) + v1.trim(29753, 29753) + v2.trim(29754, 0)
v1 = v1.trim(0, 29753) + v2.trim(29754, 29754) + v1.trim(29755, 0)
v1 = v1.trim(0, 29775) + v2.trim(29776, 29776) + v1.trim(29777, 0)
v2 = v2.trim(0, 29797) + v1.trim(29798, 29798) + v2.trim(29799, 0)
v1 = v1.trim(0, 29802) + v2.trim(29803, 29803) + v1.trim(29804, 0)
v1 = v1.trim(0, 29818) + v2.trim(29819, 29819) + v1.trim(29820, 0)
v2 = v2.trim(0, 29820) + v1.trim(29821, 29822) + v2.trim(29823, 0)
v2 = v2.trim(0, 29912) + v1.trim(29913, 29913) + v2.trim(29914, 0)
v2 = v2.trim(0, 29956) + v1.trim(29957, 29957) + v2.trim(29958, 0)
v1 = v1.trim(0, 29972) + v2.trim(29973, 29974) + v1.trim(29975, 0)
v2 = v2.trim(0, 29976) + v1.trim(29977, 29977) + v2.trim(29978, 0)
v2 = v2.trim(0, 29980) + v1.trim(29981, 29981) + v2.trim(29982, 0)
v2 = v2.trim(0, 29983) + v1.trim(29984, 29984) + v2.trim(29985, 0)
v1 = v1.trim(0, 29986) + v2.trim(29987, 29987) + v1.trim(29988, 0)
v2 = v2.trim(0, 29996) + v1.trim(29997, 29997) + v2.trim(29998, 0)
v1 = v1.trim(0, 30002) + v2.trim(30003, 30003) + v1.trim(30004, 0)
v1 = v1.trim(0, 30063) + v2.trim(30064, 30064) + v1.trim(30065, 0)
v2 = v2.trim(0, 30064) + v1.trim(30065, 30065) + v2.trim(30066, 0)
v2 = v2.trim(0, 30070) + v1.trim(30071, 30071) + v2.trim(30072, 0)
v2 = v2.trim(0, 30079) + v1.trim(30080, 30080) + v2.trim(30081, 0)
v2 = v2.trim(0, 30106) + v1.trim(30107, 30107) + v2.trim(30108, 0)
v2 = v2.trim(0, 30172) + v1.trim(30173, 30173) + v2.trim(30174, 0)
v1 = v1.trim(0, 30173) + v2.trim(30174, 30174) + v1.trim(30175, 0)
v2 = v2.trim(0, 30200) + v1.trim(30201, 30201) + v2.trim(30202, 0)
v1 = v1.trim(0, 30219) + v2.trim(30220, 30220) + v1.trim(30221, 0)
v1 = v1.trim(0, 30250) + v2.trim(30251, 30251) + v1.trim(30252, 0)
v2 = v2.trim(0, 30253) + v1.trim(30254, 30254) + v2.trim(30255, 0)
v2 = v2.trim(0, 30257) + v1.trim(30258, 30258) + v2.trim(30259, 0)
v2 = v2.trim(0, 30289) + v1.trim(30290, 30290) + v2.trim(30291, 0)
v1 = v1.trim(0, 30301) + v2.trim(30302, 30302) + v1.trim(30303, 0)
v2 = v2.trim(0, 30328) + v1.trim(30329, 30329) + v2.trim(30330, 0)
v1 = v1.trim(0, 30329) + v2.trim(30330, 30330) + v1.trim(30331, 0)

v1 = v1.trim(0, 30365) + v1.trim(30368, 0)
v2 = v2.trim(0, 30365) + v2.trim(30368, 0)

v1 = v1.trim(0, 30599) + v1.trim(30601, 0)
v2 = v2.trim(0, 30599) + v2.trim(30601, 0)

v1 = v1.trim(0, 30625) + v1.trim(30627, 0)

v1 = v1.trim(0, 30647) + v1.trim(30651, 0)
v2 = v2.trim(0, 30647) + v2.trim(30651, 0)

v1 = v1.trim(0, 30804) + v2.trim(30805, 30805) + v1.trim(30806, 0)

v1 = v1.trim(0, 30814) + v1.trim(30816, 0)
v2 = v2.trim(0, 30907) + v2.trim(30909, 0)
v2 = v2.trim(0, 30908) + v2.trim(30910, 0)
v2 = v2.trim(0, 30909) + v2.trim(30911, 0)

v1 = v1.trim(0, 31170) + v2.trim(31171, 31171) + v1.trim(31172, 0)

v1 = v1.trim(0, 31588) + v1.trim(31593, 0)
v2 = v2.trim(0, 31588) + v2.trim(31593, 0)

v1 = v1.trim(0, 31607) + v1.trim(31609, 0)

v1 = v1.trim(0, 31630) + v1.trim(31632, 0)
v1 = v1.trim(0, 31628) + v2.trim(31629, 31632) + v1.trim(31631, 0)
v1 = v1.trim(0, 31633) + v1.trim(31635, 0)

v1 = v1.trim(0, 31789) + v1.trim(31809, 0)
v2 = v2.trim(0, 31789) + v2.trim(31809, 0)

v2 = v2.trim(0, 32080) + v1.trim(32081, 32081) + v2.trim(32082, 0)

v2 = v2.trim(0, 32094) + v2.trim(32096, 0)

v1 = v1.trim(0, 32956) + v1.trim(32960, 0)
v2 = v2.trim(0, 32956) + v2.trim(32960, 0)

v1 = v1.trim(0, 33009) + v1.trim(33011, 0)

v1 = v1.trim(0, 33392) + v1.trim(33396, 0)
v2 = v2.trim(0, 33392) + v2.trim(33396, 0)

v2 = v2.trim(0, 33603) + v2.trim(33605, 0)

v2 = v2.trim(0, 33753) + v1.trim(33754, 33754) + v2.trim(33755, 0)

v1 = v1.trim(0, 33967) + v1.trim(33969, 0)

v2 = v2.trim(0, 34920) + v1.trim(34921, 34921) + v2.trim(34922, 0)

v1 = v1.trim(0, 35441) + v1.trim(35445, 0)
v2 = v2.trim(0, 35441) + v2.trim(35445, 0)

v1 = v1.trim(0, 35776) + v1.trim(35778, 0)
v2 = v2.trim(0, 35776) + v2.trim(35778, 0)

v1 = v1.trim(0, 35820) + v1.trim(35824, 0)
v2 = v2.trim(0, 35820) + v2.trim(35824, 0)

v2 = v2.trim(0, 38156) + v1.trim(38157, 38159) + v2.trim(38160, 0)

v2 = v2.trim(0, 38203) + v1.trim(38204, 38204) + v2.trim(38205, 0)
v2 = v2.trim(0, 38219) + v1.trim(38220, 38225) + v2.trim(38226, 0)
v2 = v2.trim(0, 38244) + v1.trim(38245, 38250) + v2.trim(38251, 0)
v2 = v2.trim(0, 38253) + v1.trim(38254, 38260) + v2.trim(38261, 0)
v2 = v2.trim(0, 38271) + v1.trim(38272, 38276) + v2.trim(38277, 0)
v2 = v2.trim(0, 38278) + v1.trim(38279, 38287) + v2.trim(38288, 0)
v2 = v2.trim(0, 38331) + v1.trim(38332, 38333) + v2.trim(38334, 0)
v2 = v2.trim(0, 38335) + v1.trim(38336, 38336) + v2.trim(38337, 0)
v2 = v2.trim(0, 38342) + v1.trim(38343, 38344) + v2.trim(38345, 0)
v2 = v2.trim(0, 38366) + v1.trim(38367, 38368) + v2.trim(38369, 0)
v2 = v2.trim(0, 38383) + v1.trim(38384, 38385) + v2.trim(38386, 0)
v2 = v2.trim(0, 38408) + v1.trim(38409, 38412) + v2.trim(38413, 0)
v2 = v2.trim(0, 38415) + v1.trim(38416, 38420) + v2.trim(38421, 0)
v2 = v2.trim(0, 38422) + v1.trim(38423, 38430) + v2.trim(38431, 0)
v2 = v2.trim(0, 38432) + v1.trim(38433, 38434) + v2.trim(38435, 0)
v2 = v2.trim(0, 38445) + v1.trim(38446, 38451) + v2.trim(38452, 0)
v2 = v2.trim(0, 38462) + v1.trim(38463, 38465) + v2.trim(38466, 0)
v2 = v2.trim(0, 38522) + v1.trim(38523, 38523) + v2.trim(38524, 0)
v2 = v2.trim(0, 38536) + v1.trim(38537, 38537) + v2.trim(38538, 0)
v2 = v2.trim(0, 38612) + v1.trim(38613, 38617) + v2.trim(38618, 0)
v2 = v2.trim(0, 38622) + v1.trim(38623, 38624) + v2.trim(38625, 0)
v2 = v2.trim(0, 38637) + v1.trim(38638, 38640) + v2.trim(38641, 0)
v2 = v2.trim(0, 38643) + v1.trim(38644, 38644) + v2.trim(38645, 0)
v2 = v2.trim(0, 38649) + v1.trim(38650, 38650) + v2.trim(38651, 0)
v2 = v2.trim(0, 38675) + v1.trim(38676, 38688) + v2.trim(38689, 0)
v2 = v2.trim(0, 38692) + v1.trim(38693, 38697) + v2.trim(38698, 0)
v2 = v2.trim(0, 38701) + v1.trim(38702, 38706) + v2.trim(38707, 0)
v2 = v2.trim(0, 38718) + v1.trim(38719, 38721) + v2.trim(38722, 0)
v2 = v2.trim(0, 38745) + v1.trim(38746, 38747) + v2.trim(38748, 0)
v2 = v2.trim(0, 38783) + v1.trim(38784, 38785) + v2.trim(38786, 0)
v2 = v2.trim(0, 38798) + v1.trim(38799, 38800) + v2.trim(38801, 0)
v2 = v2.trim(0, 38816) + v1.trim(38817, 38818) + v2.trim(38819, 0)
v2 = v2.trim(0, 38854) + v1.trim(38855, 38859) + v2.trim(38860, 0)
v2 = v2.trim(0, 39076) + v1.trim(39077, 39078) + v2.trim(39079, 0)
v1 = v1.trim(0, 39293) + v2.trim(39294, 39295) + v1.trim(39296, 0)

v1 = v1.trim(0, 39433) + v1.trim(39472, 0)
v2 = v2.trim(0, 39433) + v2.trim(39472, 0)

v1 = v1.trim(0, 40506)
v2 = v2.trim(0, 40506)

avg = average(v2, 0.5, v1, 0.5)

h = 1080
w = round(1440 * 700./704. * 576./566)

# 54, 591, 1262, 1336, 3770, 6460, 6694, 8243, 8376, 9588, 9909, 11300, 11480, 11970, 12031, 12207,
# 12577, 12996, 13021, 13098, 13249, 13346, 13522, 13645, 14050, 14294, 14508, 16369, 16627, 16680,
# 16816, 16852, 17099, 17248, 17372, 17659, 17707, 17920, 18081, 18214, 18421, 18467, 18539, 18716,
# 19250, 20243, 20548, 20740, 20874, 22925, 23059, 23912, 24012, 24739, 24935, 26893, 27080, 27790,
# 27992, 28816, 29072, 29149, 29336, 29596, 29696, 30366, 30600, 31589, 31790, 32376, 32456, 32527,
# 32957, 33393, 36229, 36253, 36277, 36301, 36325, 36349, 36373, 36377, 36421, 36445, 36469, 36492,
# 36516, 36540, 36564, 36588, 36612, 36636, 36660, 36684, 36708, 36732, 36756, 37443, 37476, 37509,
# 37545, 37580, 37619, 37652, 37685, 37716, 39434

/*

v001 = avg.trim(0, 53)
v001 = v001.autolevels(ignore_low = 0.0001, ignore_high=0.0001)
v001 = v001.filter(thSAD=200, thSADC=400)
#v001 = v001.QTGMC(preset="placebo", noiseProcess=0)
#v001 = v001.sincResize(w, h)
return v001.prefetch
#adjustframerate

v002 = avg.trim(54, 590)
v002 = v002.autolevels(ignore_low = 0.001, ignore_high=0.001)
v002 = v002.colorYUV(autowhite=true)
v002 = v002.colorYUV(off_u = -4)
v002 = v002.filter(thSAD=400, thSADC=800)
#v002 = v002.QTGMC(preset="placebo", noiseProcess=0)
#v002 = v002.sincResize(w, h)
return v002.prefetch
#adjustframerate

v003 = avg.trim(591, 1261)
v003 = v003.autolevels(ignore_low = 0.001, ignore_high=0.001)
v003 = v003.filter(thSAD=400, thSADC=800)
#v003 = v003.QTGMC(preset="placebo", noiseProcess=0)
#v003 = v003.sincResize(w, h)
return v003.prefetch
#adjustframerate

v004 = avg.trim(1262, 1335)
v004 = v004.filter(thSAD=400, thSADC=800)
return v004.prefetch
#adjustframerate

v005 = avg.trim(1336, 3769)
v005 = v005.filter(thSAD=400, thSADC=800)
return v005.prefetch
#adjustframerate

v006 = avg.trim(3770, 6459)
v006 = v006.colorYUV(autowhite=true)
v006 = v006.filter(thSAD=400, thSADC=800)
return v006.prefetch
#adjustframerate

v007 = avg.trim(6460, 6693)
v007 = v007.autolevels(ignore_low = 0.01, ignore_high=0.001)
v007 = v007.colorYUV(autowhite=true)
v007 = v007.colorYUV(off_u = -4)
v007 = v007.filter(thSAD=400, thSADC=800)
return v007.prefetch
#adjustframerate

v008 = avg.trim(6694, 8242)
v008 = v008.colorYUV(off_u = 8, off_v = -36)
v008 = v008.filter(thSAD=400, thSADC=800)
return v008.prefetch
#adjustframerate

v009 = avg.trim(8243, 8375)
v009 = v009.autolevels(ignore_low = 0.01, ignore_high=0.001)
v009 = v009.colorYUV(autowhite=true)
v009 = v009.colorYUV(off_u = -4)
v009 = v009.filter(thSAD=400, thSADC=800)
return v009.prefetch
#adjustframerate

v010 = avg.trim(8376, 9587)
v010 = v010.filter(thSAD=400, thSADC=800)
return v010.prefetch
#adjustframerate

v011 = v2.trim(9588, 9908).trim(0, 83) + avg.trim(9588, 9908).trim(84, 0)
v011 = v011.autolevels(ignore_low = 0.01, ignore_high=0.001)
v011 = v011.colorYUV(autowhite=true)
v011 = v011.colorYUV(off_u = -4)
v011 = v011.filter(thSAD=400, thSADC=800)
return v011.prefetch
#adjustframerate

v012 = avg.trim(9909, 11299)
v012 = v012.colorYUV(off_u = 8)
v012 = v012.autolevels(ignore_low = 0.01, ignore_high=0.001)
v012 = v012.colorYUV(autowhite=true)
v012 = v012.colorYUV(off_u = -8)
v012 = v012.filter(thSAD=400, thSADC=800)
return v012.prefetch
#adjustframerate

v013 = avg.trim(11300, 11479)
v013 = v013.autolevels(ignore_low = 0.01, ignore_high=0.001)
v013 = v013.colorYUV(autowhite=true)
v013 = v013.colorYUV(off_u = -4)
v013 = v013.filter(thSAD=400, thSADC=800)
return v013.prefetch
#adjustframerate

v014 = avg.trim(11480, 11969)
v014 = v014.colorYUV(off_u = 8)
v014 = v014.autolevels(ignore_low = 0.01, ignore_high=0.001)
v014 = v014.colorYUV(autowhite=true)
v014 = v014.colorYUV(off_u = -8)
v014 = v014.filter(thSAD=400, thSADC=800)
return v014.prefetch
#adjustframerate

v015 = avg.trim(11970, 12030)
v015 = v015.colorYUV(autowhite=true)
v015 = v015.colorYUV(off_u = -6)
v015 = v015.filter(thSAD=400, thSADC=800)
return v015.prefetch
#adjustframerate

v016 = avg.trim(12031, 12206)
v016 = v016.autolevels(ignore_low = 0.01, ignore_high=0.001)
v016 = v016.colorYUV(autowhite=true)
v016 = v016.colorYUV(off_u = -6)
v016 = v016.filter(thSAD=400, thSADC=800)
return v016.prefetch
#adjustframerate

v017 = avg.trim(12207, 12576)
v017 = v017.autolevels(ignore_low = 0.01, ignore_high=0.001)
v017 = v017.colorYUV(autowhite=true)
v017 = v017.filter(thSAD=400, thSADC=800)
return v017.prefetch
#adjustframerate

v018 = avg.trim(12577, 12995)
v018 = v018.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v018 = v018.colorYUV(autowhite=true)
v018 = v018.filter(thSAD=400, thSADC=800)
return v018.prefetch
#adjustframerate

v019 = avg.trim(12996, 13020)
v019 = v019.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v019 = v019.colorYUV(autowhite=true)
v019 = v019.filter(thSAD=400, thSADC=800)
return v019.prefetch
#adjustframerate

v020 = avg.trim(13021, 13097)
v020 = v020.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 100, border_r = 100, border_t = 100, border_b = 100)
v020 = v020.colorYUV(autowhite=true)
v020 = v020.filter(thSAD=400, thSADC=800)
return v020.prefetch
#adjustframerate

v021 = avg.trim(13098, 13248)
v021 = v021.colorYUV(off_u = -6)
v021 = v021.autolevels(ignore_low = 0.01, ignore_high=0.001)
v021 = v021.colorYUV(autowhite=true)
v021 = v021.filter(thSAD=400, thSADC=800)
return v021.prefetch
#adjustframerate

v022 = avg.trim(13249, 13345)
v022 = v022.colorYUV(off_u = -6)
v022 = v022.filter(thSAD=400, thSADC=800)
return v022.prefetch
#adjustframerate

v023 = avg.trim(13346, 13521)
v023 = v023.autolevels(ignore_low = 0.01, ignore_high=0.001)
v023 = v023.colorYUV(autowhite=true)
v023 = v023.colorYUV(off_u = -4)
v023 = v023.filter(thSAD=400, thSADC=800)
return v023.prefetch
#adjustframerate

v024 = avg.trim(13522, 13644)
v024 = v024.autolevels(ignore_low = 0.01, ignore_high=0.006)
v024 = v024.colorYUV(off_u = 10, off_v = -24)
v024 = v024.filter(thSAD=400, thSADC=800)
return v024.prefetch
#adjustframerate

v025 = avg.trim(13645, 14049)
v025 = v025.autolevels(ignore_low = 0.01, ignore_high=0.006)
v025 = v025.colorYUV(off_u = 10, off_v = -24)
v025 = v025.filter(thSAD=400, thSADC=800)
return v025.prefetch
#adjustframerate

v026 = avg.trim(14050, 14293)
v026 = v026.autolevels(ignore_low = 0.01, ignore_high=0.006)
v026 = v026.colorYUV(off_u = 16, off_v = -24)
v026 = v026.filter(thSAD=400, thSADC=800)
return v026.prefetch
#adjustframerate

v027 = avg.trim(14294, 14507)
v027 = v027.autolevels(ignore_low = 0.01, ignore_high=0.001)
v027 = v027.colorYUV(autowhite=true)
v027 = v027.colorYUV(off_u = -4)
v027 = v027.filter(thSAD=400, thSADC=800)
return v027.prefetch
#adjustframerate

v028 = avg.trim(14508, 16368)
v028 = v028.autolevels(ignore_low = 0.001, ignore_high=0.006)
v028 = v028.colorYUV(off_u = 16, off_v = -16)
v028 = v028.filter(thSAD=400, thSADC=800)
return v028.prefetch
#adjustframerate

v029 = avg.trim(16369, 16626)
v029 = v029.filter(thSAD=400, thSADC=800)
return v029.prefetch
#adjustframerate

v030 = avg.trim(16627, 16679)
v030 = v030.filter(thSAD=400, thSADC=800)
return v030.prefetch
#adjustframerate

v031 = avg.trim(16680, 16815)
v031 = v031.autolevels(ignore_low = 0.001, ignore_high=0.006)
v031 = v031.colorYUV(autowhite=true)
v031 = v031.filter(thSAD=400, thSADC=800)
return v031.prefetch
#adjustframerate

v032 = avg.trim(16816, 16850)
v032 = v032.autolevels(ignore_low = 0.001, ignore_high=0.006)
v032 = v032.filter(thSAD=400, thSADC=800)
return v032.prefetch
#adjustframerate

# 16914 - 17161, 16934 - 17181
v033 = avg.trim(16851, 17098)
v033 = v033.colorYUV(off_u = -16)
v033 = v033.colorYUV(autowhite=true)
v033 = v033.colorYUV(off_u = 6)
v033 = v033.filter(thSAD=400, thSADC=800)
return v033.prefetch
#adjustframerate

# 17162 - 17310, 17182 - 17330
v034 = avg.trim(17099, 17247)
v034 = v034.colorYUV(off_v = -6)
v034 = v034.filter(thSAD=400, thSADC=800)
return v034.prefetch
#adjustframerate

# 17311 - 17434, 17331 - 17454
v035 = avg.trim(17248, 17371)
v035 = v035.colorYUV(autowhite=true)
v035 = v035.colorYUV(off_u = -4, off_v = 4)
v035 = v035.filter(thSAD=400, thSADC=800)
return v035.prefetch
#adjustframerate

# 17435 - 17720, 17455 - 17740
v036 = avg.trim(17372, 17657)
v036 = v036.colorYUV(off_u = -6)
v036 = v036.filter(thSAD=400, thSADC=800)
return v036.prefetch
#adjustframerate

# 17721 - 17769, 17741 - 17789
v037 = avg.trim(17658, 17706)
v037 = v037.filter(thSAD=400, thSADC=800)
return v037.prefetch
#adjustframerate

# 17770 - 17983, 17790 - 18003
v038 = avg.trim(17707, 17919)
v038 = v038.autolevels(ignore_low = 0.001, ignore_high=0.001)
v038 = v038.colorYUV(off_u = -4)
v038 = v038.filter(thSAD=400, thSADC=800)
return v038.prefetch
#adjustframerate

# 17984 - 18144, 18004 - 18164
v039 = avg.trim(17920, 18080)
#v039 = v039.autolevels(ignore_low = 0.001, ignore_high=0.001)
v039 = v039.colorYUV(autowhite=true)
v039 = v039.colorYUV(off_v = 6)
v039 = v039.filter(thSAD=400, thSADC=800)
return v039.prefetch
#adjustframerate

# 18145 - 18276, 18165 - 18296
v040 = avg.trim(18081, 18213)
v040 = v040.colorYUV(autowhite=true)
v040 = v040.filter(thSAD=400, thSADC=800)
return v040.prefetch
#adjustframerate

# 18277 - 18483, 18297 - 18503
v041 = avg.trim(18214, 18420)
v041 = v041.autolevels(ignore_low = 0.001, ignore_high=0.001)
v041 = v041.colorYUV(off_u = -8)
v041 = v041.filter(thSAD=400, thSADC=800)
return v041.prefetch
#adjustframerate

# 18484 - 18529, 18504 - 18549
v042 = avg.trim(18421, 18466)
v042 = v042.autolevels(ignore_low = 0.01, ignore_high=0.001)
v042 = v042.colorYUV(autowhite=true)
v042 = v042.colorYUV(off_u = 2, off_v = 0)
v042 = v042.filter(thSAD=400, thSADC=800)
return v042.prefetch
#adjustframerate

# 18530 - 18601, 18550 - 18621
v043 = avg.trim(18467, 18538)
v043 = v043.autolevels(ignore_low = 0.001, ignore_high=0.01)
v043 = v043.colorYUV(off_u = -2, off_v = -6)
v043 = v043.filter(thSAD=400, thSADC=800)
return v043.prefetch
#adjustframerate

# 18621 - 18797, 18641 - 18817
v044 = avg.trim(18539, 18715)
v044 = v044.autolevels(ignore_low = 0.01, ignore_high=0.001)
v044 = v044.colorYUV(autowhite=true)
v044 = v044.colorYUV(off_u = -4)
v044 = v044.filter(thSAD=400, thSADC=800)
return v044.prefetch
#adjustframerate

# 18800 - 19334, 18820 - 19355
v045 = avg.trim(18716, 19249)
v045 = v045.filter(thSAD=400, thSADC=800)
return v045.prefetch
#adjustframerate

# 19395 - 20387, 19417 - 20408 
v046 = avg.trim(19250, 20242)
v046 = v046.autolevels(ignore_low = 0.001, ignore_high=0.001)
v046 = v046.colorYUV(autowhite=true)
v046 = v046.colorYUV(off_u = 6)
v046 = v046.filter(thSAD=400, thSADC=800)
return v046.prefetch
#adjustframerate

# 20388 - 20693, 20409 - 20714
v047 = avg.trim(20243, 20547)
v047 = v047.filter(thSAD=400, thSADC=800)
return v047.prefetch
#adjustframerate

# 20697 - 20888, 20718 - 20909
v048 = avg.trim(20548, 20739)
v048 = v048.autolevels(ignore_low = 0.01, ignore_high=0.001)
v048 = v048.colorYUV(autowhite=true)
v048 = v048.colorYUV(off_u = -4)
v048 = v048.filter(thSAD=400, thSADC=800)
return v048.prefetch
#adjustframerate

# 20893 - 21026, 20912 - 21048
v049 = avg.trim(20740, 20873)
v049 = v049.filter(thSAD=400, thSADC=800)
return v049.prefetch
#adjustframerate

# 21040 - 23093, 21062 - 23114
v050 = avg.trim(20874, 22924)
v050 = v050.colorYUV(off_u = -4)
v050 = v050.filter(thSAD=400, thSADC=800)
return v050.prefetch
#adjustframerate

# 23095 - 23228, 23116 - 23249
v051 = avg.trim(22925, 23058)
v051 = v051.autolevels(ignore_low = 0.01, ignore_high=0.001)
v051 = v051.colorYUV(autowhite=true)
v051 = v051.colorYUV(off_u = -4)
v051 = v051.filter(thSAD=400, thSADC=800)
return v051.prefetch
#adjustframerate

# 23234 - 24086, 23255 - 24107
v052 = avg.trim(23059, 23911)
v052 = v052.autolevels(ignore_low = 0.01, ignore_high=0.001, border_l = 300)
v052 = v052.colorYUV(autowhite=true)
v052 = v052.colorYUV(off_u = -4)
v052 = v052.filter(thSAD=400, thSADC=800)
return v052.prefetch
#adjustframerate

# 24089 - 24188, 24110 - 24209
v053 = avg.trim(23912, 24011)
v053 = v053.autolevels(ignore_low = 0.01, ignore_high=0.001)
v053 = v053.colorYUV(autowhite=true)
v053 = v053.colorYUV(off_u = -4)
v053 = v053.filter(thSAD=400, thSADC=800)
return v053.prefetch
#adjustframerate

# 24275 - 25001, 24295 - 25022
v054 = avg.trim(24012, 24738)
v054 = v054.colorYUV(autowhite=true)
v054 = v054.tweak(sat = 0.8, coring = false)
v054 = v054.colorYUV(off_u = 4)
v054 = v054.filter(thSAD=400, thSADC=800)
return v054.prefetch
#adjustframerate

# 25027 - 25233, 25050 - 25252
v055 = avg.trim(24739, 24924)
v055 = v055.autolevels(ignore_low = 0.01, ignore_high=0.001)
v055 = v055.colorYUV(autowhite=true)
v055 = v055.colorYUV(off_u = -4)
v055 = v055.filter(thSAD=400, thSADC=800)
return v055.prefetch
#adjustframerate

# 25236 - 27205, 25256 - 27226
v056 = avg.trim(24935, 26892)
v056 = v056.autolevels(ignore_low = 0.01, ignore_high=0.01, border_b = 200)
v056 = v056.colorYUV(autowhite=true)
v056 = v056.colorYUV(off_u = 2, off_v = -8)
v056 = v056.filter(thSAD=400, thSADC=800)
return v056.prefetch
#adjustframerate

# 27213 - 27399, 27234 - 27420
v057 = avg.trim(26893, 27079)
v057 = v057.autolevels(ignore_low = 0.01, ignore_high=0.001)
v057 = v057.colorYUV(autowhite=true)
v057 = v057.colorYUV(off_u = -4)
v057 = v057.filter(thSAD=400, thSADC=800)
return v057.prefetch
#adjustframerate

# 27422 - 28133, 27441 - 28152
v058 = avg.trim(27080, 27789)
v058 = v058.autolevels(ignore_low = 0.001, ignore_high=0.001)
v058 = v058.colorYUV(autowhite=true)
v058 = v058.tweak(sat = 0.8, coring = false)
v058 = v058.filter(thSAD=400, thSADC=800)
return v058.prefetch
#adjustframerate

# 28135 - 28336, 28154 - 28355
v059 = avg.trim(27790, 27991)
v059 = v059.autolevels(ignore_low = 0.01, ignore_high=0.001)
v059 = v059.colorYUV(autowhite=true)
v059 = v059.colorYUV(off_u = -4)
v059 = v059.filter(thSAD=400, thSADC=800)
return v059.prefetch
#adjustframerate

# 28340 - 29163, 28360 - 29184
v060 = avg.trim(27992, 28815)
v060 = v060.autolevels(ignore_low = 0.01, ignore_high=0.001)
v060 = v060.colorYUV(autowhite=true)
v060 = v060.colorYUV(off_u = -4)
v060 = v060.filter(thSAD=400, thSADC=800)
return v060.prefetch
#adjustframerate

# 29166 - 29423, 29187 - 29443
v061 = avg.trim(28816, 29071)
v061 = v061.autolevels(ignore_low = 0.01, ignore_high=0.001)
v061 = v061.colorYUV(autowhite=true)
v061 = v061.colorYUV(off_u = -4)
v061 = v061.filter(thSAD=400, thSADC=800)
return v061.prefetch
#adjustframerate

# 29510 - 29586, 29530 - 29606
v062 = avg.trim(29072, 29148)
v062 = v062.autolevels(ignore_low = 0.01, ignore_high=0.001)
v062 = v062.tweak(sat = 0.4, coring = false)
v062 = v062.filter(thSAD=400, thSADC=800)
return v062.prefetch
#adjustframerate

# 29587 - 29773, 29607 - 29793
v063 = avg.trim(29149, 29335)
v063 = v063.autolevels(ignore_low = 0.01, ignore_high=0.001)
v063 = v063.filter(thSAD=400, thSADC=800)
return v063.prefetch
#adjustframerate

# 29774 - 30033, 29794 - 30053
v064 = avg.trim(29336, 29595)
v064 = v064.autolevels(ignore_low = 0.001, ignore_high=0.001, border_b = 300)
v064 = v064.colorYUV(autowhite=true)
v064 = v064.tweak(sat = 0.6, coring = false)
v064 = v064.filter(thSAD=400, thSADC=800)
return v064.prefetch
#adjustframerate

#******

# 65

v065 = avg.trim(29596, 29695)
v065 = v065.filter(thSAD=400, thSADC=800)
return v065.prefetch
#adjustframerate

v066 = avg.trim(29696, 30365)
v066 = v066.filter(thSAD=400, thSADC=800)
return v066.prefetch
#adjustframerate

v067 = avg.trim(30366, 30599)
v067 = v067.filter(thSAD=400, thSADC=800)
return v067.prefetch
#adjustframerate

v068 = avg.trim(30600, 31588)
v068 = v068.filter(thSAD=400, thSADC=800)
return v068.prefetch
#adjustframerate

v069 = avg.trim(31589, 31789)
v069 = v069.filter(thSAD=400, thSADC=800)
return v069.prefetch
#adjustframerate

v070 = avg.trim(31790, 32375)
v070 = v070.filter(thSAD=400, thSADC=800)
return v070.prefetch
#adjustframerate

v071 = avg.trim(32376, 32455)
v071 = v071.filter(thSAD=400, thSADC=800)
return v071.prefetch
#adjustframerate

v072 = avg.trim(32456, 32526)
v072 = v072.filter(thSAD=400, thSADC=800)
return v072.prefetch
#adjustframerate

v073 = avg.trim(32527, 32956)
v073 = v073.filter(thSAD=400, thSADC=800)
return v073.prefetch
#adjustframerate

v074 = avg.trim(32957, 33392)
v074 = v074.filter(thSAD=400, thSADC=800)
return v074.prefetch
#adjustframerate

v075 = avg.trim(33393, 35898)
v075 = v075.filter(thSAD=400, thSADC=800)
return v075.prefetch
#adjustframerate

v075_2 = avg.trim(35899, 36204)
v076 = avg.trim(36229, 36252)
v078 = avg.trim(36277, 36300)
v080 = avg.trim(36325, 36348)
v082 = avg.trim(36373, 36396)
v084 = avg.trim(36421, 36444)
v086 = avg.trim(36469, 36491)
v088 = avg.trim(36516, 36539)
v090 = avg.trim(36564, 36587)
v092 = avg.trim(36612, 36635)
v094 = avg.trim(36660, 36683)
v096 = avg.trim(36708, 36731)
v098 = avg.trim(36756, 37442)
v076 = (v075_2+v076+v078+v080+v082+v084+v086+v088+v090+v092+v094+v096+v098)
v076 = v076.filter(thSAD=400, thSADC=800)
return v076.prefetch
#adjustframerate

v075_3 = avg.trim(36205, 36228)
v077 = avg.trim(36253, 36276)
v079 = avg.trim(36301, 36324)
v081 = avg.trim(36349, 36372)
v083 = avg.trim(36397, 36420)
v085 = avg.trim(36445, 36468)
v087 = avg.trim(36492, 36515)
v089 = avg.trim(36540, 36563)
v091 = avg.trim(36588, 36611)
v093 = avg.trim(36636, 36659)
v095 = avg.trim(36684, 36707)
v097 = avg.trim(36732, 36755)
v077 = (v075_3+v077+v079+v081+v083+v085+v087+v089+v091+v093+v095+v097)
v077 = v077.filter(thSAD=400, thSADC=800)
return v077.prefetch
#adjustframerate

v078 = avg.trim(37443, 37475)
v078 = v078.filter(thSAD=400, thSADC=800)
return v078.prefetch
#adjustframerate

v079 = avg.trim(37476, 37508)
v079 = v079.filter(thSAD=400, thSADC=800)
return v079.prefetch
#adjustframerate

v080 = avg.trim(37509, 37544)
v080 = v080.filter(thSAD=400, thSADC=800)
return v080.prefetch
#adjustframerate

v081 = avg.trim(37545, 37579)
v081 = v081.filter(thSAD=400, thSADC=800)
return v081.prefetch
#adjustframerate

v082 = avg.trim(37580, 37618)
v082 = v082.filter(thSAD=400, thSADC=800)
return v082.prefetch
#adjustframerate

v083 = avg.trim(37619, 37651)
v083 = v083.filter(thSAD=400, thSADC=800)
return v083.prefetch
#adjustframerate

v084 = avg.trim(37652, 37684)
v084 = v084.filter(thSAD=400, thSADC=800)
return v084.prefetch
#adjustframerate

v085 = avg.trim(37685, 37715)
v085 = v085.filter(thSAD=400, thSADC=800)
return v085.prefetch
#adjustframerate

v086 = avg.trim(37716, 39433)
v086 = v086.filter(thSAD=400, thSADC=800)
return v086.prefetch
#adjustframerate

v087 = avg.trim(39434, 0)
v087 = v087.filter(thSAD=400, thSADC=800)
return v087.prefetch
#adjustframerate

#******

*/
/*
v1 = v1.bob #qtgmc(preset="placebo", noiseProcess=0)
v2 = v2.bob #qtgmc(preset="placebo", noiseProcess=0)

#v1 = v1.autolevels(ignore_low = 0.0001, ignore_high=0.0001)
#v2 = v2.autolevels(ignore_low = 0.0001, ignore_high=0.0001)

#v1 = v1.histogram("levels")
#v2 = v2.histogram("levels")

#avg = average(v2, 0.5, v1, 0.5).\
#    addBorders(0, 0, 0, 2).\
#    SMDegrain(tr=25, thSAD=400, thSADC=800, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
#              interlaced=true, RefineMotion=false, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
#    crop(0, 0, 0, -2)


#return avg.qtgmc(preset="placebo", noiseProcess=0).interleave(v2.bob).prefetch(6)
#return v1.interleave(v2)

sub = v1.subtract(v2)
sub = sub.stackHorizontal(sub)

last = v1.stackHorizontal(v2)

#QTGMC(preset="placebo", noiseProcess=0)
#SMDegrain(tr=25, thSAD=200, thSADC=400, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
#          RefineMotion=false, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1)
stackVertical(sub)

#autolevels(MinRng=0)

return last.prefetch
*/

function filter(clip c, int "thSAD", int "thSADC")
{
    return c.addBorders(0, 0, 0, 2).\
             SMDegrain(tr=25, thSAD=thSAD, thSADC=thSADC, dct=1, blksize=16, overlap=8, search=3, truemotion=false,\
             interlaced=true, RefineMotion=false, prefilter=-1, contrasharp=false, globals=0, pel=1, subpixel=1).\
             crop(0, 0, 0, -2)
}
