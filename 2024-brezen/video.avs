#import("c:\Users\ilx\wrk\video\2024-brezen\common.avs", utf8 = true)
import("\\192.168.1.19\c\Users\ilx\wrk\video\2024-brezen\common.avs", utf8 = true)

SetFilterMTMode("Deshaker", MT_SERIALIZED)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name + ".mp4")
    v = autolevels ? v.autolevels : v
/*
    vo = LSMASHVideoSource(destination_dir + name)
    fps60 = vo.frameRate > 40

    a = blankClip

    if ((fps60 && v.frameCount == vo.frameCount) || (v.frameCount == vo.FrameCount*2 - 1))
    {
        a = LSMASHAudioSource(destination_dir + name, skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
        new_rate = Float(a.AudioLength)/v.FrameCount*v.FrameRateNumerator/v.FrameRateDenominator
        a = a.AssumeSampleRate(Round(new_rate*100.)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }
    else
    {
        a = LSMASHAudioSource(destination_dir + "result\" + name + ".mp4", skip_priming=false).audioTrim(256./48000., 0) # 256 samples ac3 pad
    }
*/
    a = BestAudioSource(destination_dir + name, exactsamples=true)
    v_duration = float(v.FrameCount)*float(v.FrameRateDenominator)/float(v.FrameRateNumerator)
    if (float(a.audioLength)/a.audioRate < v_duration)
    {
        a_ex = a + blankClip(a, length = int(v.FrameCount * 24 / v.FrameRate) + 1)
        if (float(a_ex.audioLength)/a_ex.audioRate > v_duration)
        {
            a = a_ex.audioTrim(0, length = v_duration)
        }
    }
    else
    {
        new_rate = Float(a.AudioLength)/v_duration
        a = a.AssumeSampleRate(Round(new_rate*100)).ResampleAudio(4800000).AssumeSampleRate(48000)
    }
   
    v = AudioDub(v, a)
    v = v.trim(0, 0) #  # audio tail fix

    return v
}

v1 = prepareOneAV("20240310_153344.mp4")
v2 = prepareOneAV("20240310_153816.mp4")
v3 = prepareOneAV("20240310_153837.mp4")
v4 = prepareOneAV("20240310_154539.mp4")
v5 = prepareOneAV("20240310_154930.mp4")
v6 = prepareOneAV("20240310_155121.mp4")
v7 = prepareOneAV("20240310_155333.mp4")
v8 = prepareOneAV("20240310_155509.mp4")
v9 = prepareOneAV("20240310_155601.mp4")
v10 = prepareOneAV("20240310_165700.mp4")
v11 = prepareOneAV("20240310_165758.mp4")
v12 = prepareOneAV("20240315_154917.mp4")
v13 = prepareOneAV("20240315_155016.mp4")
v14 = prepareOneAV("20240315_155115.mp4")
v15 = prepareOneAV("20240328_095613.mp4")
v16 = prepareOneAV("20240328_095636.mp4")
v17 = prepareOneAV("20240328_095713.mp4")
v18 = prepareOneAV("20240328_113412.mp4")
v19 = prepareOneAV("20240328_113523.mp4")
v19 = v19.trim(35, 0)
v20 = prepareOneAV("20240328_113650.mp4")
v20 = v20.trim(35, 0)
v21 = prepareOneAV("20240328_113819.mp4")
v22 = prepareOneAV("20240328_114246.mp4")
v23 = prepareOneAV("20240328_120838.mp4")
v23 = v23.trim(35, 0)
v24 = prepareOneAV("20240328_120934.mp4")
v25 = prepareOneAV("20240328_121122.mp4")
v26 = prepareOneAV("20240328_122945.mp4")
v27 = prepareOneAV("20240328_125751.mp4")
v28 = prepareOneAV("20240328_125828.mp4")
v29 = prepareOneAV("20240328_125930.mp4")
v30 = prepareOneAV("20240328_130100.mp4")
v31 = prepareOneAV("20240328_130547.mp4")
v32 = prepareOneAV("20240328_143445.mp4")
v33 = prepareOneAV("20240330_065716.mp4")
v34 = prepareOneAV("20240331_124659.mp4")
v35 = prepareOneAV("20240331_125550.mp4")
v36 = prepareOneAV("20240331_125624.mp4")
v37 = prepareOneAV("20240331_135951.mp4")
v38 = prepareOneAV("20240331_142133.mp4")
v39 = prepareOneAV("20240331_142632.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39
ConvertToYV12()
