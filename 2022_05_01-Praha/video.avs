import("D:\Users\ilx\wrk\video\2022_05_01_Praha\stabilize.avs")
import("D:\Users\ilx\wrk\video\2022_05_01_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")

function prepareOneAV(string video, string audio)
{
    v = LWLibavVideoSource(video).AssumeFPS(30,1)
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

    v = findStr(video, "VID") != 0 ? v : v.colorYUV(off_v=3).tweak(sat=1.1, coring=false)

    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    a = LSMASHAudioSource(audio)
    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

#timeshift -100

v = LWLibavVideoSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha-50.avi")
v = v.spline64Resize(1920, 1080)
v = v.stabilize("M:\Media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha-50-1920.log")

a = LWLibavAudioSource("m:\media\video\2022_05_01_Praha\dv_avi\2022_05_01_Praha.avi", stream_index=1)
source = v.AudioDub(a)

function prepareDV(clip v, bool "sinc", bool "autolevels", float "ignore_low", float "ignore_high",\
                   float "gamma", int "radius", int "sharp")
{
#    sinc = Default(sinc, false)
    autolevels = Default(autolevels, true)
    ignore_low = Default(ignore_low, 0.0003)
    ignore_high = Default(ignore_high, 0.0003)
    gamma = Default(gamma, 1)
    sharp = Default(sharp, 300)

    a = v

    v = v.killAudio()

#    v = sinc ? v.sincResize(1920, 1080) :\
#               v.spline64Resize(1920, 1080)

    v = autolevels ? v.autolevels(minRng = 0, ignore_low = ignore_low, ignore_high = ignore_high, gamma=gamma, filterRadius=radius) : v
    v = v.tweak(sat=1.3)
#v=v.histogram("levels")

#v = v.spline64Resize(640, 360)
    v = v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    v = v.colorMatrix(mode="Rec.601->Rec.709", clamp=0)

#    v1 = v.UnsharpMask(strength=900, radius=1, threshold=1)
    v = v.UnsharpMask(strength=sharp, radius=1, threshold=1)
#v = v1.interleave(v)
#    v = v.grainFactory3

    new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
    a = a.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)

    v = AudioDub(v, a)

    return v
}

v1 = source.trim(0*2,  336*2 + 1).prepareDV
v2 = prepareOneAV(source_dir + "VID_20220501_153231.mp4.avi", source_dir + "VID_20220501_153231.mp4")
v3 = prepareOneAV(source_dir + "20220501_153305.mp4.avi", source_dir + "20220501_153305.mp4")
v4 = prepareOneAV(source_dir + "VID_20220501_153334.mp4.avi", source_dir + "VID_20220501_153334.mp4")
v5 = prepareOneAV(source_dir + "VID_20220501_153355.mp4.avi", source_dir + "VID_20220501_153355.mp4")
v6 = source.trim(337*2,  585*2 + 1).prepareDV
v7 = source.trim(586*2,  714*2 + 1).prepareDV
v8 = prepareOneAV(source_dir + "VID_20220501_153511.mp4.avi", source_dir + "VID_20220501_153511.mp4")
v9 = source.trim(715*2,  967*2 + 1).prepareDV
v10 = prepareOneAV(source_dir + "20220501_153558.mp4.avi", source_dir + "20220501_153558.mp4")
v11 = prepareOneAV(source_dir + "VID_20220501_153610.mp4.avi", source_dir + "VID_20220501_153610.mp4")
v12 = source.trim(968*2,  1328*2 + 1).prepareDV
v13 = prepareOneAV(source_dir + "VID_20220501_153700.mp4.avi", source_dir + "VID_20220501_153700.mp4")
v14 = prepareOneAV(source_dir + "VID_20220501_153731.mp4.avi", source_dir + "VID_20220501_153731.mp4")
v15 = source.trim(1329*2,  1750*2 + 1).prepareDV
v16 = prepareOneAV(source_dir + "20220501_153817.mp4.avi", source_dir + "20220501_153817.mp4")
v17 = prepareOneAV(source_dir + "VID_20220501_153841.mp4.avi", source_dir + "VID_20220501_153841.mp4")
v18 = prepareOneAV(source_dir + "20220501_153845.mp4.avi", source_dir + "20220501_153845.mp4")
v19 = prepareOneAV(source_dir + "VID_20220501_153900.mp4.avi", source_dir + "VID_20220501_153900.mp4")
v20 = prepareOneAV(source_dir + "VID_20220501_153952.mp4.avi", source_dir + "VID_20220501_153952.mp4")
v21 = source.trim(1751*2,  2090*2 + 1).prepareDV
v22 = source.trim(2091*2,  2204*2 + 1).prepareDV
v23 = prepareOneAV(source_dir + "VID_20220501_154049.mp4.avi", source_dir + "VID_20220501_154049.mp4")
v24 = prepareOneAV(source_dir + "20220501_154058.mp4.avi", source_dir + "20220501_154058.mp4")
v25 = prepareOneAV(source_dir + "VID_20220501_154127.mp4.avi", source_dir + "VID_20220501_154127.mp4")
v26 = prepareOneAV(source_dir + "VID_20220501_154154.mp4.avi", source_dir + "VID_20220501_154154.mp4")
v27 = prepareOneAV(source_dir + "20220501_154157.mp4.avi", source_dir + "20220501_154157.mp4")
v28 = source.trim(2205*2,  2486*2 + 1).prepareDV
v29 = prepareOneAV(source_dir + "VID_20220501_154246.mp4.avi", source_dir + "VID_20220501_154246.mp4")
v30 = source.trim(2487*2,  2900*2 + 1).prepareDV
v31 = source.trim(2901*2,  3249*2 + 1).prepareDV
v32 = source.trim(3250*2,  3674*2 + 1).prepareDV
v33 = source.trim(3675*2,  4025*2 + 1).prepareDV
v34 = prepareOneAV(source_dir + "VID_20220501_154908.mp4.avi", source_dir + "VID_20220501_154908.mp4")
v35 = prepareOneAV(source_dir + "VID_20220501_155616.mp4.avi", source_dir + "VID_20220501_155616.mp4")
v36 = prepareOneAV(source_dir + "VID_20220501_155833.mp4.avi", source_dir + "VID_20220501_155833.mp4")
v37 = source.trim(4026*2,  4266*2 + 1).prepareDV
v38 = prepareOneAV(source_dir + "VID_20220501_155907.mp4.avi", source_dir + "VID_20220501_155907.mp4")
v39 = prepareOneAV(source_dir + "20220501_155931.mp4.avi", source_dir + "20220501_155931.mp4")
v40 = prepareOneAV(source_dir + "VID_20220501_160002.mp4.avi", source_dir + "VID_20220501_160002.mp4")
v41 = source.trim(4267*2,  4721*2 + 1).prepareDV
v42 = source.trim(4722*2,  5191*2 + 1).prepareDV
v43 = prepareOneAV(source_dir + "VID_20220501_160448.mp4.avi", source_dir + "VID_20220501_160448.mp4")
v44 = prepareOneAV(source_dir + "20220501_160452.mp4.avi", source_dir + "20220501_160452.mp4")
v45 = prepareOneAV(source_dir + "VID_20220501_160525.mp4.avi", source_dir + "VID_20220501_160525.mp4")
v46 = source.trim(5192*2,  5499*2 + 1).prepareDV
v47 = source.trim(5500*2,  5736*2 + 1).prepareDV
v48 = source.trim(5737*2,  6044*2 + 1).prepareDV
v49 = prepareOneAV(source_dir + "VID_20220501_160703.mp4.avi", source_dir + "VID_20220501_160703.mp4")
v50 = prepareOneAV(source_dir + "VID_20220501_160741.mp4.avi", source_dir + "VID_20220501_160741.mp4")
v51 = prepareOneAV(source_dir + "VID_20220501_160810.mp4.avi", source_dir + "VID_20220501_160810.mp4")
v52 = prepareOneAV(source_dir + "VID_20220501_160840.mp4.avi", source_dir + "VID_20220501_160840.mp4")
v53 = prepareOneAV(source_dir + "20220501_160842.mp4.avi", source_dir + "20220501_160842.mp4")
v54 = prepareOneAV(source_dir + "VID_20220501_160904.mp4.avi", source_dir + "VID_20220501_160904.mp4")
v55 = source.trim(6045*2,  6575*2 + 1).prepareDV
v56 = source.trim(6576*2,  6869*2 + 1).prepareDV
v57 = prepareOneAV(source_dir + "VID_20220501_161146.mp4.avi", source_dir + "VID_20220501_161146.mp4")
v58 = source.trim(6870*2,  7373*2 + 1).prepareDV
v59 = prepareOneAV(source_dir + "VID_20220501_161220.mp4.avi", source_dir + "VID_20220501_161220.mp4")
v60 = prepareOneAV(source_dir + "VID_20220501_161254.mp4.avi", source_dir + "VID_20220501_161254.mp4")
v61 = prepareOneAV(source_dir + "20220501_161313.mp4.avi", source_dir + "20220501_161313.mp4")
v62 = source.trim(7374*2,  7617*2 + 1).prepareDV
v63 = source.trim(7618*2,  7935*2 + 1).prepareDV
v64 = source.trim(7936*2,  8238*2 + 1).prepareDV
v65 = prepareOneAV(source_dir + "VID_20220501_161619.mp4.avi", source_dir + "VID_20220501_161619.mp4")
v66 = prepareOneAV(source_dir + "VID_20220501_161649.mp4.avi", source_dir + "VID_20220501_161649.mp4")
v67 = source.trim(8239*2,  8433*2 + 1).prepareDV
v68 = prepareOneAV(source_dir + "VID_20220501_161721.mp4.avi", source_dir + "VID_20220501_161721.mp4")
v69 = source.trim(8434*2,  8780*2 + 1).prepareDV
v70 = prepareOneAV(source_dir + "VID_20220501_161812.mp4.avi", source_dir + "VID_20220501_161812.mp4")
v71 = prepareOneAV(source_dir + "20220501_161812.mp4.avi", source_dir + "20220501_161812.mp4")
v72 = source.trim(8781*2,  9282*2 + 1).prepareDV
v73 = prepareOneAV(source_dir + "20220501_162319.mp4.avi", source_dir + "20220501_162319.mp4")
v74 = prepareOneAV(source_dir + "20220501_162515.mp4.avi", source_dir + "20220501_162515.mp4")
v75 = source.trim(9283*2,  9782*2 + 1).prepareDV
v76 = prepareOneAV(source_dir + "VID_20220501_162610.mp4.avi", source_dir + "VID_20220501_162610.mp4")
v77 = prepareOneAV(source_dir + "VID_20220501_162635.mp4.avi", source_dir + "VID_20220501_162635.mp4")
v78 = source.trim(9783*2,  10181*2 + 1).prepareDV
v79 = source.trim(10182*2,  10471*2 + 1).prepareDV
v80 = prepareOneAV(source_dir + "VID_20220501_162750.mp4.avi", source_dir + "VID_20220501_162750.mp4")
v81 = source.trim(10472*2,  10969*2 + 1).prepareDV
v82 = prepareOneAV(source_dir + "VID_20220501_162833.mp4.avi", source_dir + "VID_20220501_162833.mp4")
v83 = prepareOneAV(source_dir + "20220501_162838.mp4.avi", source_dir + "20220501_162838.mp4")
v84 = prepareOneAV(source_dir + "20220501_162941.mp4.avi", source_dir + "20220501_162941.mp4")
v85 = prepareOneAV(source_dir + "20220501_163004.mp4.avi", source_dir + "20220501_163004.mp4")
v86 = prepareOneAV(source_dir + "VID_20220501_163023.mp4.avi", source_dir + "VID_20220501_163023.mp4")
v87 = source.trim(10970*2,  11459*2 + 1).prepareDV
v88 = prepareOneAV(source_dir + "VID_20220501_163103.mp4.avi", source_dir + "VID_20220501_163103.mp4")
v89 = source.trim(11460*2,  12113*2 + 1).prepareDV
v90 = source.trim(12114*2,  12591*2 + 1).prepareDV
v91 = prepareOneAV(source_dir + "20220501_163411.mp4.avi", source_dir + "20220501_163411.mp4")
v92 = prepareOneAV(source_dir + "VID_20220501_163425.mp4.avi", source_dir + "VID_20220501_163425.mp4")
v93 = prepareOneAV(source_dir + "VID_20220501_163503.mp4.avi", source_dir + "VID_20220501_163503.mp4")
v94 = prepareOneAV(source_dir + "20220501_163538.mp4.avi", source_dir + "20220501_163538.mp4")
v95 = prepareOneAV(source_dir + "VID_20220501_163636.mp4.avi", source_dir + "VID_20220501_163636.mp4")
v96 = source.trim(12592*2,  12942*2 + 1).prepareDV
v97 = prepareOneAV(source_dir + "20220501_163724.mp4.avi", source_dir + "20220501_163724.mp4")
v98 = prepareOneAV(source_dir + "20220501_163815.mp4.avi", source_dir + "20220501_163815.mp4")
v99 = prepareOneAV(source_dir + "VID_20220501_163821.mp4.avi", source_dir + "VID_20220501_163821.mp4")
v100 = prepareOneAV(source_dir + "VID_20220501_163855.mp4.avi", source_dir + "VID_20220501_163855.mp4")
v101 = source.trim(12943*2,  13244*2 + 1).prepareDV
v102 = prepareOneAV(source_dir + "20220501_163953.mp4.avi", source_dir + "20220501_163953.mp4")
v103 = prepareOneAV(source_dir + "VID_20220501_163954.mp4.avi", source_dir + "VID_20220501_163954.mp4")
v104 = source.trim(13245*2,  13511*2 + 1).prepareDV
v105 = source.trim(13512*2,  13842*2 + 1).prepareDV
v106 = source.trim(13843*2,  14010*2 + 1).prepareDV
v107 = prepareOneAV(source_dir + "VID_20220501_165704.mp4.avi", source_dir + "VID_20220501_165704.mp4")
v108 = prepareOneAV(source_dir + "20220501_165732.mp4.avi", source_dir + "20220501_165732.mp4")
v109 = prepareOneAV(source_dir + "VID_20220501_165736.mp4.avi", source_dir + "VID_20220501_165736.mp4")
v110 = prepareOneAV(source_dir + "20220501_165815.mp4.avi", source_dir + "20220501_165815.mp4")
v111 = prepareOneAV(source_dir + "20220501_165830.mp4.avi", source_dir + "20220501_165830.mp4")
v112 = prepareOneAV(source_dir + "VID_20220501_165913.mp4.avi", source_dir + "VID_20220501_165913.mp4")
v113 = prepareOneAV(source_dir + "VID_20220501_170013.mp4.avi", source_dir + "VID_20220501_170013.mp4")
v114 = prepareOneAV(source_dir + "VID_20220501_170407.mp4.avi", source_dir + "VID_20220501_170407.mp4")
v115 = source.trim(14011*2,  14385*2 + 1).prepareDV
v116 = source.trim(14386*2,  14494*2 + 1).prepareDV
v117 = prepareOneAV(source_dir + "20220501_171121.mp4.avi", source_dir + "20220501_171121.mp4")
v118 = source.trim(14495*2,  15123*2 + 1).prepareDV
v119 = source.trim(15124*2,  15975*2 + 1).prepareDV
v120 = prepareOneAV(source_dir + "VID_20220501_171611.mp4.avi", source_dir + "VID_20220501_171611.mp4")
v121 = prepareOneAV(source_dir + "VID_20220501_171644.mp4.avi", source_dir + "VID_20220501_171644.mp4")
v122 = prepareOneAV(source_dir + "VID_20220501_171707.mp4.avi", source_dir + "VID_20220501_171707.mp4")
v123 = prepareOneAV(source_dir + "VID_20220501_171924.mp4.avi", source_dir + "VID_20220501_171924.mp4")
v124 = prepareOneAV(source_dir + "VID_20220501_172000.mp4.avi", source_dir + "VID_20220501_172000.mp4")
v125 = prepareOneAV(source_dir + "VID_20220501_172053.mp4.avi", source_dir + "VID_20220501_172053.mp4")
v126 = prepareOneAV(source_dir + "VID_20220501_172119.mp4.avi", source_dir + "VID_20220501_172119.mp4")
v127 = source.trim(15976*2,  16311*2 + 1).prepareDV
v128 = source.trim(16312*2,  16676*2 + 1).prepareDV
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128
ConvertToYV12()
prefetch(4)