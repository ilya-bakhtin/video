v0 = LWLibavVideoSource("f:\Media\Video\vhs-2000-2001\2000-1.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a0 = LWLibavAudioSource("f:\Media\Video\vhs-2000-2001\2000-1.avi")
v0 = v0.AudioDub(a0.GetChannel(1))
v0_1 = LWLibavVideoSource("f:\Media\Video\vhs-2000-2001\2000-2.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a0_1 = LWLibavAudioSource("f:\Media\Video\vhs-2000-2001\2000-2.avi")
v0_1 = v0_1.AudioDub(a0_1.GetChannel(1))
v0_2 = LWLibavVideoSource("f:\Media\Video\vhs-2000-2001\2000-2001.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a0_2 = LWLibavAudioSource("f:\Media\Video\vhs-2000-2001\2000-2001.avi")
v0_2 = v0_2.AudioDub(a0_2.GetChannel(1))
v0_3 = LWLibavVideoSource("f:\Media\Video\vhs-2000-2001\2001.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a0_3 = LWLibavAudioSource("f:\Media\Video\vhs-2000-2001\2001.avi")
v0_3 = v0_3.AudioDub(a0_1.GetChannel(1))
v1 = LWLibavVideoSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
a1 = LWLibavAudioSource("e:\media\video\vhs-2000-2001\2000-2001-cam.avi")
v1 = v1.AudioDub(a1.GetChannel(1))

v0 = v0 + v0_1.trim(998, 0) + v0_2.trim(1317, 0) + v0_3.trim(1424, 0)

v1 = v1.crop(5, 0, 0, 0).addBorders(0, 0, 5, 0)

#v0 = v0.info
#v1 = v1.info
#return v1
v0 = v0.trim(0, 210) + v0.trim(212, 212) + v0.trim(214, 1741) + v0.trim(1742, 2212) + v0.trim(2212, 2445) +\
     v0.trim(2447, 2447) + v0.trim(2449, 10784) + v0.trim(10785, 14832) + v0.trim(14834, 26181) + v0.trim(26183, -1) +\
     v0.trim(26185, -1) + v0.trim(26187, 39894) + v0.trim(39896, -1) + v0.trim(39898, 43543) + v0.trim(43545, 50528) +\
     v0.trim(50530, 57897) + v0.trim(57899, 57899) + v0.trim(57901, 58003) + v0.trim(58005, 71623) + v0.trim(71625, 75589) +\
     v0.trim(75591, 79583) + v0.trim(79585, -1) + v0.trim(79587, 87587) + v0.trim(87589, 89545) + v0.trim(89547, 90272) +\
     v0.trim(90274, 92071) + v0.trim(92073, -1) + v0.trim(92075, -1) + v0.trim(92077, 101066) + v0.trim(101068, 103843) +\
     v0.trim(103845, 110883) + v0.trim(110885, 120157) + v0.trim(120159, 123567) + v0.trim(123569, 132431) +\
     v0.trim(132433, 136671) + v0.trim(136673, 139578) + v0.trim(139580, 153058) + v0.trim(153060, 162173) +\
     v0.trim(162175, -1) + v0.trim(162177, -1) + v0.trim(162179, -1) + v0.trim(162181, -1) + v0.trim(162183, -1) +\
     v0.trim(162185, 169083) + v0.trim(169085, 170160) + v0.trim(170162, 193490) +v0.trim(193492, 204739) +\
     v0.trim(204741, 208552) + v0.trim(208554, 224736) + v0.trim(224738, -1) + v0.trim(224740, -1) + v0.trim(224742, -1) +\
     v0.trim(224744, 230188) + v0.trim(230190, 240388) + v0.trim(240390, 252715) + v0.trim(252717, 268397) +\
     v0.trim(268399, 280506) + v0.trim(280508, 297911) + v0.trim(297913, 312809) + v0.trim(312811, 338602) +\
     v0.trim(338604, -1) + v0.trim(338606, -1) + v0.trim(338608, 342437) + v0.trim(342439, -1) + v0.trim(342441, 342606) +\
     v0.trim(342608, 358673) + v0.trim(358675, 360250) + v0.trim(360252, 366204) + v0.trim(366206, -1) + v0.trim(366208, 0)

v0 = v0.separateFields.info
v1sf = v1.separateFields#.info

#return v1sf.trim(735730, -300)
#return v0.trim(735400, -1).subtract(v1sf.trim(735730, -300))
# 735366 -> 735749
# 735367 -> 735750
# 735368 -> 735750
# 735369 -> 735752
# 735370 -> 735752
# 735371 -> 735754
# 735372 -> 735756
# 735373 -> 735756
# 735374 -> 735756
# 735375 -> 735756
# 735376 -> 735756
# 735377 -> 735758
# 735378 -> 735760
# 735379 -> 735762
# 735380 -> 735762
# 735390 -> 735744

#return v0.info
#v0 = v0.trim(0, 21561) + v0.trim(21563, 21563) + v1sf.trim(21640, 21641) + v0.trim(21564, 21565) + v1sf.trim(21644, 21644) + v0.trim(21566, 0)
v0 = v0.trim(0, 21561) + v0.trim(21563, 21563) + v1sf.trim(21640, 21641) + v0.trim(21564, 21565) + v1sf.trim(21644, 21644) +\
     v0.trim(21566, 33957) + v1sf.trim(34035, 34035) + v0.trim(33958, 33958) + v1sf.trim(34037, 34037) + v0.trim(33959, 49516) +\
     v1sf.trim(49597, 49599) + v0.trim(49520, 49847) + v1sf.trim(49928, 49934) + v0.trim(49853, 50234) + v1sf.trim(50317, 50323) +\
     v0.trim(50240, 76221) + v1sf.trim(76307, 76309) + v0.trim(76224, 76225) + v1sf.trim(76312, -1) + v0.trim(76226, 79203) +\
     v1sf.trim(79291, 79292) + v0.trim(79204, 96006) + v0.trim(96009, 110683) + v1sf.trim(110772, 110775) + v0.trim(110684, 115977) +\
     v1sf.trim(116070, 116071) + v0.trim(115978, 143217) + v1sf.trim(143313, 143314) + v0.trim(143218, 148259) + v1sf.trim(148357, 148360) +\
     v0.trim(148262, 158655) + v0.trim(158657, -1) + v1sf.trim(158757, 158758) + v0.trim(158658, 158659) + v1sf.trim(158761, -1) +\
     v0.trim(158660, 171350) + v1sf.trim(171454, -1) + v0.trim(171351, 171352) + v1sf.trim(171457, -1) + v0.trim(171353, 182230) +\
     v0.trim(182232, 182233) + v1sf.trim(182345, 182348) + v0.trim(182234, 182244) + v0.trim(182246, 182619) + v1sf.trim(182734, 182735) +\
     v0.trim(182620, 206861) + v0.trim(206863, -1) + v1sf.trim(206980, 206981) + v0.trim(206864, 206865) + v1sf.trim(206984, -1) +\
     v0.trim(206866, 221711) + v0.trim(221713, -1) + v1sf.trim(221833, 221835) + v0.trim(221714, 239449) + v1sf.trim(239572, 239573) +\
     v0.trim(239450, 246687) + v0.trim(246689, 246693) + v1sf.trim(246818, -1) + v0.trim(246694, 259907) + v1sf.trim(260033, 260034) +\
     v0.trim(259908, 268045) + v1sf.trim(268173, 268176) + v0.trim(268048, 277767) + v1sf.trim(277897, 277898) + v0.trim(277768, 311081) +\
     v1sf.trim(311216, -1) + v0.trim(311083, 318786) + v1sf.trim(319023, 319026) + v0.trim(318789, 335279) + v1sf.trim(335518, 335519) +\
     v0.trim(335280, 359193) + v1sf.trim(359434, 359435) + v0.trim(359194, 385657) + v0.trim(385659, -1) + v1sf.trim(385902, 385904) +\
     v0.trim(385660, 412754) + v1sf.trim(412999, -1) + v0.trim(412755, 412757) + v1sf.trim(413003, -1) + v0.trim(412758, 414384) +\
     v1sf.trim(414632, 414635) + v0.trim(414387, 447413) + v1sf.trim(447753, 447756) + v0.trim(447416, 447799) + v1sf.trim(448141, 448144) +\
     v0.trim(447802, 478357) + v1sf.trim(478701, 478702) + v0.trim(478358, 503427) + v1sf.trim(503773, 503774) + v0.trim(503428, 534919) +\
     v1sf.trim(535267, 535272) + v0.trim(534924, 553765) + v1sf.trim(554115, 554116) + v0.trim(553766, 560569) + v0.trim(560571, 560575) +\
     v1sf.trim(560927, -1) + v0.trim(560576, 600344) + v1sf.trim(600692, 600693) + v0.trim(600345, 634074) + v1sf.trim(634429, 634430) +\
     v0.trim(634075, 674949) + v1sf.trim(675307, 675308) + v0.trim(674950, 675195) + v1sf.trim(675555, 675556) + v0.trim(675196, 675577) +\
     v1sf.trim(675939, 675940) + v0.trim(675578, 684750) + v1sf.trim(685114, 685123) + v0.trim(684755, 720267) + v1sf.trim(720637, 720644) +\
     v0.trim(720274, 730933) + v1sf.trim(731306, 731307) + v0.trim(730934, 731115) + v1sf.trim(731491, 731492) + v0.trim(731116, 732633) +\
     v1sf.trim(733010, 733011) + v0.trim(732634, 735325) + v1sf.trim(735704, -1) + v0.trim(735326, 735327) + v1sf.trim(735707, -1) +\
     v0.trim(735328, 735359) + v1sf.trim(735740, -1) + v0.trim(735360, 735364)+ v1sf.trim(735747, -1) + v0.trim(735365, 735382) +\
     v1sf.trim(735764, 735765) + v0.trim(735383, 735525) + v1sf.trim(735910, 735911) + v0.trim(735526, 735549) + v1sf.trim(735936, 735939) +\
     v0.trim(735550, 0)
v0 = v0.weave
v0 = v0.trim(39, 0)

v1 = v1.trim(0, 11115) + v0.trim(11039, 11039) + v1.trim(11116, 88288) + v1.trim(88291, 90978) + v1.trim(90981, 159236) +\
     v1.trim(159288, 223685) + v1.trim(223730, 368045) + v1.trim(368054, 0)

v1 = v1.separateFields()
#v1 = v1.info
#return v1
v1 = v1.trim(1, 3554) + v1.trim(3556, 21637) + v1.trim(21639, 49596) + v1.trim(49598, 76307) + v1.trim(76309, 96112) + v1.trim(96114, 143311) +\
     v1.trim(143313, 158756) + v1.trim(158758, 206971) + v1.trim(206973, 221824) + v1.trim(221826, 246805) + v1.trim(246807, 304776) +\
     v1.trim(304778, 311207) + v1.trim(311209, 318376) + v1.trim(318378, 385791) + v1.trim(385793, 447262) + v1.trim(447265, 560724) +\
     v1.trim(560726, 675107) + v1.trim(675109, 731108) + v1.trim(731110, 0)

v1 = v1.weave

#v1 = v1.trim(0, 1776).crop(0, 1, 0, 0).addBorders(0, 0, 0, 1).assumeBFF +\
#     v1.trim(1777, 0).crop(0, 2, 0, 0).addBorders(0, 0, 0, 2).assumeBFF

v1 = v1.trim(76, 0)
#return v1
#return v0.separateFields.subtract(v1.separateFields)
/*
v0 = v0.trim(360000, 390000)
v1 = v1.trim(360000, 390000)

#v0 = v0.bob
#v1 = v1.bob

#return v1#.info

#return v0.subtract(v1).prefetch
return v0.interleave(v1).assumeFPS(120).prefetch
*/