v0 = LWLibavVideoSource("M:\Media\video\vhs-1989-1996\1991-1995\1991-1995.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
v0a = LWLibavAudioSource("M:\Media\video\vhs-1989-1996\1991-1995\1991-1995.avi")
v0 = v0.audioDub(v0a)
#v0 = v0.info
v0 = v0.trim(0, 4355) + \
     v0.trim(4357, -1) + v0.trim(4359, -1) + v0.trim(4361, 4362) + v0.trim(4364, -1) + v0.trim(4366, 4368) + v0.trim(4370, 4376) + \
     v0.trim(4378, -1) + v0.trim(4380, -1) + v0.trim(4382, 4384) + v0.trim(4386, -1) + v0.trim(4388, 4394) + v0.trim(4396, -1) + \
     v0.trim(4398, 4401) + v0.trim(4403, -1) + v0.trim(4405, 4408) + v0.trim(4410, -1) + v0.trim(4412, 4416) + v0.trim(4418, 4428) + \
     v0.trim(4430, -1) + v0.trim(4432, -1) + v0.trim(4434, 4436) + v0.trim(4438, 4439) + v0.trim(4441, 4442) + v0.trim(4444, 4445) + \
     v0.trim(4447, -1) + v0.trim(4449, 4462) + v0.trim(4462, -2) + v0.trim(4463, 4486) + v0.trim(4487, 4512) + v0.trim(4514, -1) + v0.trim(4516, -1) + \
     v0.trim(4518, -1) + v0.trim(4520, -1) + v0.trim(4522, -1) + v0.trim(4524, -1) + v0.trim(4526, -1) + v0.trim(4528, -1) + \
     v0.trim(4530, -1) + v0.trim(4532, -1) + v0.trim(4534, -1) + v0.trim(4536, -1) + v0.trim(4538, -1) + v0.trim(4540, -1) + \
     v0.trim(4542, -1) + v0.trim(4544, -1) + v0.trim(4546, -1) + v0.trim(4548, -1) + v0.trim(4550, -1) + v0.trim(4552, -1) + \
     v0.trim(4554, -1) + v0.trim(4556, -1) + v0.trim(4558, -1) + v0.trim(4560, -1) + v0.trim(4562, -1) + v0.trim(4564, -1) + \
     v0.trim(4566, -1) + v0.trim(4568, -1) + v0.trim(4570, -1) + v0.trim(4572, -1) + v0.trim(4574, -1) + v0.trim(4576, -1) + \
     v0.trim(4578, -1) + v0.trim(4580, -1) + v0.trim(4582, -1) + v0.trim(4584, -1) + v0.trim(4586, -1) + v0.trim(4588, -1) + \
     v0.trim(4590, -1) + v0.trim(4592, -1) + v0.trim(4594, -1) + v0.trim(4596, -1) + v0.trim(4598, -1) + v0.trim(4600, 4771) + v0.trim(4771, -1) +\
     v0.trim(4772, 4912) + v0.trim(4914, 5378) + v0.trim(5378, 5439) + v0.trim(5439, 5448) + v0.trim(5450, -1) + v0.trim(5452, 6440) +\
     v0.trim(6440, 6596) + v0.trim(6598, 21238) + v0.trim(21238, 21365) + v0.trim(21365, 21428) + v0.trim(21428, 21454) +\
     v0.trim(21454, 21465) + v0.trim(21467, -1) + v0.trim(21469, -1) +\
     v0.trim(21471, -1) + v0.trim(21473, 0)
#return v0
v0 = v0.trim(3215, 0)
#v0 = v0.info
v0 = v0.separateFields
v0 = v0.trim(1, 0).Weave
#v0 = v0.bob
#return v0
v1_0 = LWLibavVideoSource("E:\media\video\vhs-1989-1996\1991-1996-cam\1991-1996-1.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
v1_0a = LWLibavAudioSource("E:\media\video\vhs-1989-1996\1991-1996-cam\1991-1996-1.avi")
v1_0 = v1_0.audioDub(v1_0a)
v1_0 = v1_0.trim(124, 0)
v1_0 = v1_0.separateFields.trim(1, 0).Weave
#return v1_0.info
v1_1 = LWLibavVideoSource("E:\media\video\vhs-1989-1996\1991-1996-cam\1991-1996-2.avi").ConvertToYV24(interlaced=true, ChromaInPlacement="DV")
v1_1a = LWLibavAudioSource("E:\media\video\vhs-1989-1996\1991-1996-cam\1991-1996-2.avi")
v1_1 = v1_1.audioDub(v1_1a)
v1_1 = v1_1.separateFields.trim(1, 0).Weave
#return v1_1.info
v1_1 = v1_0.trim(0, 214) + v1_1
v1 = v1_1.trim(0, 1159) + v1_0.trim(1160, 1161) + v1_1.trim(1162, 1470) + v1_0.trim(1471, 1485) + v1_1.trim(1486, 0)
#return v1

v1 = v1.crop(3, 1, 0, 0).addBorders(0, 0, 3, 1).assumeBFF

v0 = (v0.trim(0, 1188).separateFields + v1.trim(1189, 1205).separateFields +\
      v0.trim(1189, 1214).separateFields + v0.trim(1215, 0).separateFields.trim(1, 0))
#v0 = v0.trim(0, 57934) /*+ v0.trim(57934, -1)*/ + v0.trim(57935, 0)
v0 = v0.weave

#return v0.trim(1133, 30461).separateFields
#v1 = v1.info

v0 = v0.trim(1133, 30461).autolevels(input_low = 0, output_low = 0, input_high = 255, output_high = 235, gamma = 0.92)
v1 = v1.trim(1133, 30461)

#v1 = v1.trim(0, 214) + v0.trim(215, 216) + v1.trim(217, 954) + v0.trim(955, 960) + v1.trim(961, 0)
v0 = v0.separateFields
v1 = v1.separateFields

v1a = v1.killVideo

#     v1.trim(623, -1).crop(0, 0, 0, -190).stackVertical(v0.trim(623, -1).crop(0, v0.height - 190, 0, -175)).stackVertical(v1.trim(623, -1).crop(0, v1.height - 175, 0, 0)) +\
v1 = v1.trim(0, 429) + v0.trim(430, -1) + v1.trim(431, -1) + v0.trim(432, -1) + v1.trim(433, 622) +\
     v0.stackVert3x(v1, 185, 175).trim(623, -1) +\
     v1.trim(624, 781) +\
     v0.stackVert3x(v1, 146, 136).trim(782, 787) +\
     v1.trim(788, 804) +\
     v0.stackVert3x(v1, 156, 146).trim(805, 808) +\
     v1.trim(809, 1909) + v0.trim(1910, 1920) + v1.trim(1921, 2230) + v0.trim(2231, -1) + v1.trim(2232, 3554) +\
     v0.trim(3555, -1) + v1.trim(3556, 4077) + v0.trim(4078, -1).spline64Resize(v0.width, v0.height, 0, -10) +\
     v1.trim(4079, 4126) + v0.trim(4127, -1) + v1.trim(4128, 4149) +\
     v0.stackVert3x(v1, 90, 70).trim(4150, 4152) +\
     v1.trim(4153, 7564) +\
     v0.stackVert3x(v1, 156, 146).trim(7565, -1) +\
     v1.trim(7566, 11019) + v0.trim(11020, -1) + v1.trim(11021, 13724) + v0.trim(13725, -1) + v1.trim(13726, 13910) +\
     v0.trim(13911, -1).spline64Resize(v0.width, v0.height, 0, -8) +\
     v1.trim(13912, 14942) + v0.trim(14943, -1) + v1.trim(14944, -1) + v0.trim(14945, -1) + v1.trim(14946, -1) +\
     v0.trim(14947, -1) + v1.trim(14948, -1) + v0.trim(14949, -1) + v1.trim(14950, 16448) +\
     v0.stackVert3x(v1, 120, 30).trim(16449, -1) +\
     v1.trim(16450, 16575) + v0.trim(16576, -1) + v1.trim(16577, 17527) +\
     v0.stackVert3x(v1, 180, 162).trim(17528, 17530) +\
     v1.trim(17531, 17637) +\
     v0.stackVert3x(v1, 80, 0).trim(17638, -1) +\
     v1.trim(17639, 18216) +\
     v0.stackVert3x(v1, 276, 254).trim(18217, -1) +\
     v1.trim(18218, 18229) +\
     v0.trim(18230, -1) +\
     v1.trim(18231, 20408) +\
     v0.stackVert3x(v1, 120, 0).trim(20409, -1) +\
     v1.trim(20410, 21222) +\
     v0.stackVert3x(v1, 150, 100).trim(21223, -1) +\
     v1.trim(21224, 21414) +\
     v0.stackVert3x(v1, 20, 0).trim(21415, -1) +\
     v1.trim(21416, -1) +\
     v0.stackVert3x(v1, 288, 240).trim(21417, -1) +\
     v1.trim(21418, 21546) +\
     v0.stackVert3x(v1, 100, 50).trim(21547, 21549) +\
     v1.trim(21550, 21689) +\
     v0.trim(21690, -1) +\
     v1.trim(21691, 21926) +\
     v0.stackVert3x(v1, 60, 0).trim(21927, -1) +\
     v1.trim(21928, 24792) +\
     v0.trim(24793, -1) +\
     v1.trim(24794, 25327) +\
     v0.stackVert3x(v1, 30, 0).trim(25328, 25330) +\
     v0.trim(25331, 25333) +\
     v1.trim(25334, 27016) +\
     v0.trim(27017, -1) +\
     v1.trim(27018, 27232) +\
     v0.stackVert3x(v1, 58, 32).trim(27233, -1) +\
     v1.trim(27234, 28179) +\
     v1.trim(28181, -1).spline64Resize(v1.width, v1.height, 0, -0.5) +\
     v1.trim(28181, 28526) +\
     v0.stackVert3x(v1, 110, 70).trim(28527, -1) +\
     v1.trim(28528, 31073) +\
     v0.stackVert3x(v1, 105, 95).trim(31074, -1) +\
     v1.trim(31075, 31104) +\
     v0.trim(31105, -1) +\
     v1.trim(31106, 31111) +\
     v0.stackVert3x(v1, 80, 0).trim(31112, 31114) +\
     v0.trim(31115, -1) +\
     v1.trim(31116, -1) +\
     v0.trim(31117, -1) +\
     v1.trim(31118, 31613) +\
     v0.stackVert3x(v1, 250, 180).trim(31614, -1) +\
     v1.trim(31615, 32332) +\
     v0.trim(32333, -1) +\
     v1.trim(32334, 32704) +\
     v0.stackVert3x(v1, 130, 110).trim(32705, -1) +\
     v1.trim(32706, 33062) +\
     v0.trim(33063, -1) +\
     v1.trim(33064, 34154) +\
     v0.trim(34155, -1) +\
     v1.trim(34156, -1) +\
     v0.trim(34157, -1) +\
     v1.trim(34158, 34319) +\
     v0.trim(34320, -1) +\
     v1.trim(34321, 34385) +\
     v0.trim(34386, -1) +\
     v1.trim(34387, 34954) +\
     v0.stackVert3x(v1, 288, 270).trim(34955, -1) +\
     v1.trim(34956, 34965) +\
     v0.trim(34966, -1) +\
     v1.trim(34967, 35188) +\
     v0.stackVert3x(v1, 255, 230).trim(35189, -1) +\
     v1.trim(35190, 35477) +\
     v0.stackVert3x(v1, 60, 40).trim(35478, -1) +\
     v1.trim(35479, 35544) +\
     v0.stackVert3x(v1, 40, 20).trim(35545, -1) +\
     v1.trim(35546, 35662) +\
     v0.stackVert3x(v1, 240, 210).trim(35663, -1) +\
     v1.trim(35664, 35690) +\
     v0.trim(35691, 35693) +\
     v1.trim(35694, 36068) +\
     v0.trim(36069, -1) +\
     v1.trim(36070, 36607) +\
     v0.trim(36608, 36610) +\
     v1.trim(36611, 41010) +\
     v0.trim(41011, -1) +\
     v1.trim(41012, -1) +\
     v0.trim(41013, -1) +\
     v1.trim(41014, 42370) +\
     v0.stackVert3x(v1, 50, 25).trim(42371, -1) +\
     v1.trim(42372, 44080) +\
     v0.stackVert3x(v1, 288, 270).trim(44081, -1) +\
     v1.trim(44082, 44366) +\
     v0.stackVert3x(v1, 150, 130).trim(44367, -1) +\
     v1.trim(44368, 45633) +\
     v0.stackVert3x(v1, 150, 30).trim(45634, -1) +\
     v1.trim(45635, 46119) +\
     v0.trim(46120, 46129) +\
     v1.trim(46130, 46134) +\
     v0.stackVert3x(v1, 288, 250).trim(46135, 46146) +\
     v1.trim(46147, 46203) +\
     v0.stackVert3x(v1, 100, 0).trim(46204, -1) +\
     v1.trim(46205, 47674) +\
     v0.stackVert3x(v1, 288, 210).trim(47675, 47729) +\
     v1.trim(47730, 48895) +\
     v0.trim(48896, 48897) +\
     v0.stackVert3x(v1, 288, 160).trim(48898 , -1) +\
     v1.trim(48899, 52044) +\
     v0.trim(52045, -1) +\
     v1.trim(52046, -1) +\
     v0.trim(52047, -1) +\
     v1.trim(52048, 52416) +\
     v0.trim(52417, 52422) +\
     v1.trim(52423, 55451) +\
     v0.trim(55452, 55452) +\
     v1.trim(55453, 55478) +\
     v0.stackVert3x(v1, 288, 160).trim(55479, -1) +\
     v1.trim(55480, 55654) +\
     v0.trim(55655, -1) +\
     v1.trim(55656, -1) +\
     v0.trim(55657, -1) +\
     v1.trim(55658, -1) +\
     v0.trim(55659, -1) +\
     v1.trim(55660, 55668) +\
     v0.trim(55669, -1) +\
     v0.trim(55670, -1) +\
     v0.stackVert3x(v1, 288, 160).trim(55671, -1) +\
     v1.trim(55672, 55717) +\
     v0.stackVert3x(v1, 260, 160).trim(55718, 55766) +\
     v1.trim(55767, 56313) +\
     v0.stackVert3x(v1, 120, 90).trim(56314, -1) +\
     v1.trim(56315, 0)
v0 = v0.weave
v1 = v1.weave
#return v0.interleave(v1)

v0 = v0.crop(12, 0, -12, -20).assumeBFF
v0 = v0.qtgmc(preset = "placebo")
v1 = v1.crop(12, 0, -12, -20).assumeBFF
v1b = v1.bob
v1 = v1.qtgmc(preset = "placebo")

desired_h = 1080
#desired_h = 720
w = int(desired_h * 4. / 3. * float(v0.width) / float(v0.height) * 576. / 704.)
v0 = v0.spline64Resize(w, desired_h)
v1 = v1.spline64Resize(w, desired_h)
v1b = v1b.spline64Resize(w, desired_h)
v1 = v1.convertToYV12.UnsharpMask(strength=500, radius=3, threshold=1)
v1 = v1.killAudio
v1 = v1.audioDub(v1a)
return v1.prefetch
#return v1_0.interleave(v1)
#return v0.bob.interleave(v1.bob)
return v0.interleave(v1).info.histogram("levels")

#v0 = v0 + v0_1.trim(998, 0) + v0_2.trim(1317, 0) + v0_3.trim(1424, 0)

function stackVert3x(clip c0, clip c1, int y0, int y1)
{
    if (y0 >= c0.height)
    {
        return c0.crop(0, 0, 0, -y1).stackVertical(c1.crop(0, c1.height - y1, 0, 0))
    }
    if (y1 == 0)
    {
        return c1.crop(0, 0, 0, -y0).stackVertical(c0.crop(0, c0.height - y0, 0, 0))
    }
    
    return c1.crop(0, 0, 0, -y0).stackVertical(c0.crop(0, c0.height - y0, 0, -y1)).stackVertical(c1.crop(0, c1.height - y1, 0, 0))
}

