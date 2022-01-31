import("m:\Media\video\2021_10_20-Belgie\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio)
{
    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24()
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

#LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

#timeshift -207

v = LWLibavVideoSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20-50.avi", format="YUV420P8").\
    ConvertToYV24(interlaced=true, ChromaInPlacement="DV",  chromaresample = "sinc")
a = LWLibavAudioSource("m:\media\video\2021_10_20-Belgie\dv_avi\2021_10_20.avi", stream_index=1)
source = v.AudioDub(a)

function prepareDV(clip v)
{
    a = v

    v = v.killAudio()
    v = v.spline64Resize(1920, 1080)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()
    v = v.UnsharpMask(strength=300, radius=1, threshold=1)

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("source_dir + "video.mp4.avi"", "source_dir + "video.mp4"")
v2 = prepareOneAV("source_dir + "2021_10_20-Belgie.mp4.avi"", "source_dir + "2021_10_20-Belgie.mp4"")
v3 = prepareOneAV("source_dir + "20211020_154308.mp4.avi"", "source_dir + "20211020_154308.mp4"")
v4 = prepareOneAV("source_dir + "20211020_154518.mp4.avi"", "source_dir + "20211020_154518.mp4"")
v5 = prepareOneAV("source_dir + "20211020_165633.mp4.avi"", "source_dir + "20211020_165633.mp4"")
v6 = prepareOneAV("source_dir + "20211020_165818.mp4.avi"", "source_dir + "20211020_165818.mp4"")
v7 = prepareOneAV("source_dir + "20211020_170037.mp4.avi"", "source_dir + "20211020_170037.mp4"")
v8 = prepareOneAV("source_dir + "20211020_170125.mp4.avi"", "source_dir + "20211020_170125.mp4"")
v9 = prepareOneAV("source_dir + "20211020_170203.mp4.avi"", "source_dir + "20211020_170203.mp4"")
v10 = prepareOneAV("source_dir + "20211020_172055.mp4.avi"", "source_dir + "20211020_172055.mp4"")
v11 = prepareOneAV("source_dir + "20211020_174715.mp4.avi"", "source_dir + "20211020_174715.mp4"")
v12 = prepareOneAV("source_dir + "20211020_183724.mp4.avi"", "source_dir + "20211020_183724.mp4"")
v13 = prepareOneAV("source_dir + "2021_10_20-Belgie-50.mp4.avi"", "source_dir + "2021_10_20-Belgie-50.mp4"")
v14 = prepareOneAV("source_dir + "20211021_100221.mp4.avi"", "source_dir + "20211021_100221.mp4"")
v15 = prepareOneAV("source_dir + "20211021_100253.mp4.avi"", "source_dir + "20211021_100253.mp4"")
v16 = prepareOneAV("source_dir + "20211021_100325.mp4.avi"", "source_dir + "20211021_100325.mp4"")
v17 = prepareOneAV("source_dir + "20211021_110346.mp4.avi"", "source_dir + "20211021_110346.mp4"")
v18 = prepareOneAV("source_dir + "20211021_144718.mp4.avi"", "source_dir + "20211021_144718.mp4"")
v19 = prepareOneAV("source_dir + "20211021_160809.mp4.avi"", "source_dir + "20211021_160809.mp4"")
v20 = prepareOneAV("source_dir + "20211021_160927.mp4.avi"", "source_dir + "20211021_160927.mp4"")
v21 = prepareOneAV("source_dir + "20211021_161123.mp4.avi"", "source_dir + "20211021_161123.mp4"")
v22 = prepareOneAV("source_dir + "20211021_161423.mp4.avi"", "source_dir + "20211021_161423.mp4"")
v23 = prepareOneAV("source_dir + "20211021_161510.mp4.avi"", "source_dir + "20211021_161510.mp4"")
v24 = source.trim(0*2,  334*2 + 1).prepareDV
v25 = source.trim(335*2,  588*2 + 1).prepareDV
v26 = source.trim(589*2,  877*2 + 1).prepareDV
v27 = source.trim(878*2,  1023*2 + 1).prepareDV
v28 = source.trim(1024*2,  1296*2 + 1).prepareDV
v29 = source.trim(1297*2,  1458*2 + 1).prepareDV
v30 = source.trim(1459*2,  1703*2 + 1).prepareDV
v31 = source.trim(1704*2,  1796*2 + 1).prepareDV
v32 = source.trim(1797*2,  2215*2 + 1).prepareDV
v33 = source.trim(2216*2,  2353*2 + 1).prepareDV
v34 = source.trim(2354*2,  2667*2 + 1).prepareDV
v35 = source.trim(2668*2,  2974*2 + 1).prepareDV
v36 = source.trim(2975*2,  3518*2 + 1).prepareDV
v37 = source.trim(3519*2,  3735*2 + 1).prepareDV
v38 = source.trim(3736*2,  3930*2 + 1).prepareDV
v39 = source.trim(3931*2,  4093*2 + 1).prepareDV
v40 = prepareOneAV("source_dir + "20211021_172714.mp4.avi"", "source_dir + "20211021_172714.mp4"")
v41 = source.trim(4094*2,  4474*2 + 1).prepareDV
v42 = prepareOneAV("source_dir + "20211021_172811.mp4.avi"", "source_dir + "20211021_172811.mp4"")
v43 = source.trim(4475*2,  4706*2 + 1).prepareDV
v44 = prepareOneAV("source_dir + "20211021_173050.mp4.avi"", "source_dir + "20211021_173050.mp4"")
v45 = source.trim(4707*2,  4855*2 + 1).prepareDV
v46 = source.trim(4856*2,  5401*2 + 1).prepareDV
v47 = source.trim(5402*2,  6180*2 + 1).prepareDV
v48 = source.trim(6181*2,  6460*2 + 1).prepareDV
v49 = prepareOneAV("source_dir + "20211021_173429.mp4.avi"", "source_dir + "20211021_173429.mp4"")
v50 = source.trim(6461*2,  7099*2 + 1).prepareDV
v51 = prepareOneAV("source_dir + "20211021_173722.mp4.avi"", "source_dir + "20211021_173722.mp4"")
v52 = prepareOneAV("source_dir + "20211021_174706.mp4.avi"", "source_dir + "20211021_174706.mp4"")
v53 = prepareOneAV("source_dir + "20211021_174738.mp4.avi"", "source_dir + "20211021_174738.mp4"")
v54 = prepareOneAV("source_dir + "20211021_174815.mp4.avi"", "source_dir + "20211021_174815.mp4"")
v55 = source.trim(7100*2,  7538*2 + 1).prepareDV
v56 = source.trim(7539*2,  7977*2 + 1).prepareDV
v57 = source.trim(7978*2,  8255*2 + 1).prepareDV
v58 = source.trim(8256*2,  9104*2 + 1).prepareDV
v59 = source.trim(9105*2,  9114*2 + 1).prepareDV
v60 = source.trim(9115*2,  9192*2 + 1).prepareDV
v61 = source.trim(9193*2,  10060*2 + 1).prepareDV
v62 = source.trim(10061*2,  10179*2 + 1).prepareDV
v63 = source.trim(10180*2,  10344*2 + 1).prepareDV
v64 = source.trim(10345*2,  10610*2 + 1).prepareDV
v65 = prepareOneAV("source_dir + "20211022_115528.mp4.avi"", "source_dir + "20211022_115528.mp4"")
v66 = prepareOneAV("source_dir + "20211022_115546.mp4.avi"", "source_dir + "20211022_115546.mp4"")
v67 = prepareOneAV("source_dir + "20211022_152102.mp4.avi"", "source_dir + "20211022_152102.mp4"")
v68 = prepareOneAV("source_dir + "20211022_153447.mp4.avi"", "source_dir + "20211022_153447.mp4"")
v69 = prepareOneAV("source_dir + "20211022_153718.mp4.avi"", "source_dir + "20211022_153718.mp4"")
v70 = prepareOneAV("source_dir + "20211022_153806.mp4.avi"", "source_dir + "20211022_153806.mp4"")
v71 = prepareOneAV("source_dir + "20211022_154256.mp4.avi"", "source_dir + "20211022_154256.mp4"")
v72 = source.trim(10611*2,  11064*2 + 1).prepareDV
v73 = source.trim(11065*2,  11349*2 + 1).prepareDV
v74 = source.trim(11350*2,  11719*2 + 1).prepareDV
v75 = source.trim(11720*2,  12202*2 + 1).prepareDV
v76 = source.trim(12203*2,  12776*2 + 1).prepareDV
v77 = source.trim(12777*2,  12988*2 + 1).prepareDV
v78 = source.trim(12989*2,  13207*2 + 1).prepareDV
v79 = source.trim(13208*2,  13408*2 + 1).prepareDV
v80 = source.trim(13409*2,  13800*2 + 1).prepareDV
v81 = source.trim(13801*2,  14146*2 + 1).prepareDV
v82 = prepareOneAV("source_dir + "20211022_161526.mp4.avi"", "source_dir + "20211022_161526.mp4"")
v83 = source.trim(14147*2,  14479*2 + 1).prepareDV
v84 = source.trim(14480*2,  14624*2 + 1).prepareDV
v85 = source.trim(14625*2,  14927*2 + 1).prepareDV
v86 = prepareOneAV("source_dir + "20211022_163026.mp4.avi"", "source_dir + "20211022_163026.mp4"")
v87 = prepareOneAV("source_dir + "20211022_164132.mp4.avi"", "source_dir + "20211022_164132.mp4"")
v88 = prepareOneAV("source_dir + "20211022_172129.mp4.avi"", "source_dir + "20211022_172129.mp4"")
v89 = prepareOneAV("source_dir + "20211022_172259.mp4.avi"", "source_dir + "20211022_172259.mp4"")
v90 = prepareOneAV("source_dir + "20211022_172445.mp4.avi"", "source_dir + "20211022_172445.mp4"")
v91 = prepareOneAV("source_dir + "20211022_175209.mp4.avi"", "source_dir + "20211022_175209.mp4"")
v92 = prepareOneAV("source_dir + "20211022_175331.mp4.avi"", "source_dir + "20211022_175331.mp4"")
v93 = prepareOneAV("source_dir + "20211022_175409.mp4.avi"", "source_dir + "20211022_175409.mp4"")
v94 = prepareOneAV("source_dir + "20211023_122250.mp4.avi"", "source_dir + "20211023_122250.mp4"")
v95 = prepareOneAV("source_dir + "20211023_122455.mp4.avi"", "source_dir + "20211023_122455.mp4"")
v96 = source.trim(14928*2,  15481*2 + 1).prepareDV
v97 = source.trim(15482*2,  15683*2 + 1).prepareDV
v98 = prepareOneAV("source_dir + "20211023_123252.mp4.avi"", "source_dir + "20211023_123252.mp4"")
v99 = prepareOneAV("source_dir + "20211023_123406.mp4.avi"", "source_dir + "20211023_123406.mp4"")
v100 = prepareOneAV("source_dir + "20211023_123434.mp4.avi"", "source_dir + "20211023_123434.mp4"")
v101 = prepareOneAV("source_dir + "20211023_123649.mp4.avi"", "source_dir + "20211023_123649.mp4"")
v102 = prepareOneAV("source_dir + "20211023_133231.mp4.avi"", "source_dir + "20211023_133231.mp4"")
v103 = prepareOneAV("source_dir + "20211023_133359.mp4.avi"", "source_dir + "20211023_133359.mp4"")
v104 = prepareOneAV("source_dir + "20211023_134418.mp4.avi"", "source_dir + "20211023_134418.mp4"")
v105 = prepareOneAV("source_dir + "20211023_134808.mp4.avi"", "source_dir + "20211023_134808.mp4"")
v106 = prepareOneAV("source_dir + "20211023_135027.mp4.avi"", "source_dir + "20211023_135027.mp4"")
v107 = prepareOneAV("source_dir + "20211023_135443.mp4.avi"", "source_dir + "20211023_135443.mp4"")
v108 = source.trim(15684*2,  16456*2 + 1).prepareDV
v109 = source.trim(16457*2,  18109*2 + 1).prepareDV
v110 = source.trim(18110*2,  18847*2 + 1).prepareDV
v111 = source.trim(18848*2,  19332*2 + 1).prepareDV
v112 = source.trim(19333*2,  19899*2 + 1).prepareDV
v113 = source.trim(19900*2,  19978*2 + 1).prepareDV
v114 = source.trim(19979*2,  20498*2 + 1).prepareDV
v115 = source.trim(20499*2,  20779*2 + 1).prepareDV
v116 = prepareOneAV("source_dir + "20211024_122326.mp4.avi"", "source_dir + "20211024_122326.mp4"")
v117 = source.trim(20780*2,  21492*2 + 1).prepareDV
v118 = source.trim(21493*2,  21774*2 + 1).prepareDV
v119 = prepareOneAV("source_dir + "20211024_135757.mp4.avi"", "source_dir + "20211024_135757.mp4"")
v120 = prepareOneAV("source_dir + "20211024_140244.mp4.avi"", "source_dir + "20211024_140244.mp4"")
v121 = prepareOneAV("source_dir + "20211024_140435.mp4.avi"", "source_dir + "20211024_140435.mp4"")
v122 = prepareOneAV("source_dir + "20211024_144715.mp4.avi"", "source_dir + "20211024_144715.mp4"")
v123 = prepareOneAV("source_dir + "20211024_144852.mp4.avi"", "source_dir + "20211024_144852.mp4"")
v124 = prepareOneAV("source_dir + "20211024_151212.mp4.avi"", "source_dir + "20211024_151212.mp4"")
v125 = prepareOneAV("source_dir + "20211024_151236.mp4.avi"", "source_dir + "20211024_151236.mp4"")
v126 = prepareOneAV("source_dir + "20211024_151442.mp4.avi"", "source_dir + "20211024_151442.mp4"")
v127 = prepareOneAV("source_dir + "20211024_151511.mp4.avi"", "source_dir + "20211024_151511.mp4"")
v128 = prepareOneAV("source_dir + "20211024_151543.mp4.avi"", "source_dir + "20211024_151543.mp4"")
v129 = prepareOneAV("source_dir + "20211024_151623.mp4.avi"", "source_dir + "20211024_151623.mp4"")
v130 = prepareOneAV("source_dir + "20211024_155014.mp4.avi"", "source_dir + "20211024_155014.mp4"")
v131 = prepareOneAV("source_dir + "20211024_165115.mp4.avi"", "source_dir + "20211024_165115.mp4"")
v132 = source.trim(21775*2,  22414*2 + 1).prepareDV
v133 = source.trim(22415*2,  22662*2 + 1).prepareDV
v134 = source.trim(22663*2,  23234*2 + 1).prepareDV
v135 = prepareOneAV("source_dir + "20211025_100631.mp4.avi"", "source_dir + "20211025_100631.mp4"")
v136 = prepareOneAV("source_dir + "20211025_100702.mp4.avi"", "source_dir + "20211025_100702.mp4"")
v137 = prepareOneAV("source_dir + "20211025_100908.mp4.avi"", "source_dir + "20211025_100908.mp4"")
v138 = source.trim(23235*2,  23587*2 + 1).prepareDV
v139 = source.trim(23588*2,  23813*2 + 1).prepareDV
v140 = source.trim(23814*2,  24222*2 + 1).prepareDV
v141 = source.trim(24223*2,  24580*2 + 1).prepareDV
v142 = prepareOneAV("source_dir + "20211025_102818.mp4.avi"", "source_dir + "20211025_102818.mp4"")
v143 = source.trim(24581*2,  24753*2 + 1).prepareDV
v144 = source.trim(24754*2,  25342*2 + 1).prepareDV
v145 = prepareOneAV("source_dir + "20211025_102923.mp4.avi"", "source_dir + "20211025_102923.mp4"")
v146 = source.trim(25343*2,  25599*2 + 1).prepareDV
v147 = prepareOneAV("source_dir + "20211025_102948.mp4.avi"", "source_dir + "20211025_102948.mp4"")
v148 = prepareOneAV("source_dir + "20211025_103000.mp4.avi"", "source_dir + "20211025_103000.mp4"")
v149 = source.trim(25600*2,  25894*2 + 1).prepareDV
v150 = prepareOneAV("source_dir + "20211025_103031.mp4.avi"", "source_dir + "20211025_103031.mp4"")
v151 = source.trim(25895*2,  26065*2 + 1).prepareDV
v152 = prepareOneAV("source_dir + "20211025_103120.mp4.avi"", "source_dir + "20211025_103120.mp4"")
v153 = source.trim(26066*2,  26449*2 + 1).prepareDV
v154 = source.trim(26450*2,  26872*2 + 1).prepareDV
v155 = prepareOneAV("source_dir + "20211025_103209.mp4.avi"", "source_dir + "20211025_103209.mp4"")
v156 = source.trim(26873*2,  27092*2 + 1).prepareDV
v157 = prepareOneAV("source_dir + "20211025_103235.mp4.avi"", "source_dir + "20211025_103235.mp4"")
v158 = source.trim(27093*2,  27550*2 + 1).prepareDV
v159 = prepareOneAV("source_dir + "20211025_103309.mp4.avi"", "source_dir + "20211025_103309.mp4"")
v160 = source.trim(27551*2,  27845*2 + 1).prepareDV
v161 = prepareOneAV("source_dir + "20211025_103353.mp4.avi"", "source_dir + "20211025_103353.mp4"")
v162 = source.trim(27846*2,  28096*2 + 1).prepareDV
v163 = prepareOneAV("source_dir + "20211025_103443.mp4.avi"", "source_dir + "20211025_103443.mp4"")
v164 = prepareOneAV("source_dir + "20211025_103503.mp4.avi"", "source_dir + "20211025_103503.mp4"")
v165 = source.trim(28097*2,  28372*2 + 1).prepareDV
v166 = source.trim(28373*2,  29282*2 + 1).prepareDV
v167 = prepareOneAV("source_dir + "20211025_103603.mp4.avi"", "source_dir + "20211025_103603.mp4"")
v168 = source.trim(29283*2,  29964*2 + 1).prepareDV
v169 = source.trim(29965*2,  30297*2 + 1).prepareDV
v170 = prepareOneAV("source_dir + "20211025_103718.mp4.avi"", "source_dir + "20211025_103718.mp4"")
v171 = prepareOneAV("source_dir + "20211025_103740.mp4.avi"", "source_dir + "20211025_103740.mp4"")
v172 = source.trim(30298*2,  30380*2 + 1).prepareDV
v173 = source.trim(30381*2,  30715*2 + 1).prepareDV
v174 = source.trim(30716*2,  31372*2 + 1).prepareDV
v175 = prepareOneAV("source_dir + "20211025_103859.mp4.avi"", "source_dir + "20211025_103859.mp4"")
v176 = source.trim(31373*2,  31670*2 + 1).prepareDV
v177 = source.trim(31671*2,  32401*2 + 1).prepareDV
v178 = prepareOneAV("source_dir + "20211025_103954.mp4.avi"", "source_dir + "20211025_103954.mp4"")
v179 = prepareOneAV("source_dir + "20211025_104017.mp4.avi"", "source_dir + "20211025_104017.mp4"")
v180 = prepareOneAV("source_dir + "20211025_104114.mp4.avi"", "source_dir + "20211025_104114.mp4"")
v181 = prepareOneAV("source_dir + "20211025_104156.mp4.avi"", "source_dir + "20211025_104156.mp4"")
v182 = prepareOneAV("source_dir + "20211025_104222.mp4.avi"", "source_dir + "20211025_104222.mp4"")
v183 = source.trim(32402*2,  33850*2 + 1).prepareDV
v184 = prepareOneAV("source_dir + "20211025_104300.mp4.avi"", "source_dir + "20211025_104300.mp4"")
v185 = prepareOneAV("source_dir + "20211025_104342.mp4.avi"", "source_dir + "20211025_104342.mp4"")
v186 = source.trim(33851*2,  34074*2 + 1).prepareDV
v187 = prepareOneAV("source_dir + "20211025_104434.mp4.avi"", "source_dir + "20211025_104434.mp4"")
v188 = source.trim(34075*2,  34283*2 + 1).prepareDV
v189 = source.trim(34284*2,  34502*2 + 1).prepareDV
v190 = source.trim(34503*2,  35568*2 + 1).prepareDV
v191 = prepareOneAV("source_dir + "20211025_104553.mp4.avi"", "source_dir + "20211025_104553.mp4"")
v192 = source.trim(35569*2,  36161*2 + 1).prepareDV
v193 = prepareOneAV("source_dir + "20211025_104634.mp4.avi"", "source_dir + "20211025_104634.mp4"")
v194 = prepareOneAV("source_dir + "20211025_104700.mp4.avi"", "source_dir + "20211025_104700.mp4"")
v195 = source.trim(36162*2,  36979*2 + 1).prepareDV
v196 = prepareOneAV("source_dir + "20211025_104724.mp4.avi"", "source_dir + "20211025_104724.mp4"")
v197 = source.trim(36980*2,  37129*2 + 1).prepareDV
v198 = source.trim(37130*2,  37279*2 + 1).prepareDV
v199 = source.trim(37280*2,  37450*2 + 1).prepareDV
v200 = prepareOneAV("source_dir + "20211025_105130.mp4.avi"", "source_dir + "20211025_105130.mp4"")
v201 = source.trim(37451*2,  37693*2 + 1).prepareDV
v202 = source.trim(37694*2,  38109*2 + 1).prepareDV
v203 = prepareOneAV("source_dir + "20211025_105241.mp4.avi"", "source_dir + "20211025_105241.mp4"")
v204 = source.trim(38110*2,  38567*2 + 1).prepareDV
v205 = source.trim(38568*2,  39029*2 + 1).prepareDV
v206 = prepareOneAV("source_dir + "20211025_105359.mp4.avi"", "source_dir + "20211025_105359.mp4"")
v207 = source.trim(39030*2,  39334*2 + 1).prepareDV
v208 = prepareOneAV("source_dir + "20211025_105448.mp4.avi"", "source_dir + "20211025_105448.mp4"")
v209 = prepareOneAV("source_dir + "20211025_105514.mp4.avi"", "source_dir + "20211025_105514.mp4"")
v210 = prepareOneAV("source_dir + "20211025_105535.mp4.avi"", "source_dir + "20211025_105535.mp4"")
v211 = prepareOneAV("source_dir + "20211025_105552.mp4.avi"", "source_dir + "20211025_105552.mp4"")
v212 = prepareOneAV("source_dir + "20211025_105610.mp4.avi"", "source_dir + "20211025_105610.mp4"")
v213 = prepareOneAV("source_dir + "20211025_121149.mp4.avi"", "source_dir + "20211025_121149.mp4"")
v214 = prepareOneAV("source_dir + "20211025_121229.mp4.avi"", "source_dir + "20211025_121229.mp4"")
v215 = prepareOneAV("source_dir + "20211025_121756.mp4.avi"", "source_dir + "20211025_121756.mp4"")
v216 = prepareOneAV("source_dir + "20211025_121815.mp4.avi"", "source_dir + "20211025_121815.mp4"")
v217 = prepareOneAV("source_dir + "20211025_122146.mp4.avi"", "source_dir + "20211025_122146.mp4"")
v218 = prepareOneAV("source_dir + "20211025_122224.mp4.avi"", "source_dir + "20211025_122224.mp4"")
v219 = prepareOneAV("source_dir + "20211025_122843.mp4.avi"", "source_dir + "20211025_122843.mp4"")
v220 = prepareOneAV("source_dir + "20211025_122909.mp4.avi"", "source_dir + "20211025_122909.mp4"")
v221 = prepareOneAV("source_dir + "20211025_123538.mp4.avi"", "source_dir + "20211025_123538.mp4"")
v222 = prepareOneAV("source_dir + "20211025_123827.mp4.avi"", "source_dir + "20211025_123827.mp4"")
v223 = prepareOneAV("source_dir + "20211025_124137.mp4.avi"", "source_dir + "20211025_124137.mp4"")
v224 = prepareOneAV("source_dir + "20211025_124323.mp4.avi"", "source_dir + "20211025_124323.mp4"")
v225 = prepareOneAV("source_dir + "20211025_131559.mp4.avi"", "source_dir + "20211025_131559.mp4"")
v226 = prepareOneAV("source_dir + "20211025_131634.mp4.avi"", "source_dir + "20211025_131634.mp4"")
v227 = prepareOneAV("source_dir + "20211025_132124.mp4.avi"", "source_dir + "20211025_132124.mp4"")
v228 = prepareOneAV("source_dir + "20211025_132225.mp4.avi"", "source_dir + "20211025_132225.mp4"")
v229 = prepareOneAV("source_dir + "VID_20211025_132308.mp4.avi"", "source_dir + "VID_20211025_132308.mp4"")
v230 = prepareOneAV("source_dir + "20211025_132522.mp4.avi"", "source_dir + "20211025_132522.mp4"")
v231 = prepareOneAV("source_dir + "20211025_132541.mp4.avi"", "source_dir + "20211025_132541.mp4"")
v232 = prepareOneAV("source_dir + "VID_20211025_132742.mp4.avi"", "source_dir + "VID_20211025_132742.mp4"")
v233 = prepareOneAV("source_dir + "VID_20211025_132928.mp4.avi"", "source_dir + "VID_20211025_132928.mp4"")
v234 = prepareOneAV("source_dir + "VID_20211025_132953.mp4.avi"", "source_dir + "VID_20211025_132953.mp4"")
v235 = prepareOneAV("source_dir + "VID_20211025_133031.mp4.avi"", "source_dir + "VID_20211025_133031.mp4"")
v236 = prepareOneAV("source_dir + "VID_20211025_133108.mp4.avi"", "source_dir + "VID_20211025_133108.mp4"")
v237 = prepareOneAV("source_dir + "20211026_121711.mp4.avi"", "source_dir + "20211026_121711.mp4"")
v238 = prepareOneAV("source_dir + "video-50.mp4.avi"", "source_dir + "video-50.mp4"")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128 + v129 + v130 + v131 + v132 + v133 + v134 + v135 + v136 + v137 + v138 + v139 + v140 + v141 + v142 + v143 + v144 + v145 + v146 + v147 + v148 + v149 + v150 + v151 + v152 + v153 + v154 + v155 + v156 + v157 + v158 + v159 + v160 + v161 + v162 + v163 + v164 + v165 + v166 + v167 + v168 + v169 + v170 + v171 + v172 + v173 + v174 + v175 + v176 + v177 + v178 + v179 + v180 + v181 + v182 + v183 + v184 + v185 + v186 + v187 + v188 + v189 + v190 + v191 + v192 + v193 + v194 + v195 + v196 + v197 + v198 + v199 + v200 + v201 + v202 + v203 + v204 + v205 + v206 + v207 + v208 + v209 + v210 + v211 + v212 + v213 + v214 + v215 + v216 + v217 + v218 + v219 + v220 + v221 + v222 + v223 + v224 + v225 + v226 + v227 + v228 + v229 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238
ConvertToYV12()
