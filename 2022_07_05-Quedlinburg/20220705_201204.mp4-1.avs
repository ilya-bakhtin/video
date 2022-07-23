import("d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string log, string video)
{
    v = LSMASHVideoSource(video)
    fps60 = v.frameRate > 40
    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)

    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

#    log = video.replaceStr(".avi", ".log")
#    log = video + ".log"
    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                               ^                                                                                   ^
#                 block                                          borders                                                                             rolling                                                  

    v = v.Deshaker(config).trim(30, 0)
    
    v = v.convertToYV24(interlaced=false, matrix="PC.709")
    v = \
        v.animate(312, 314, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*30, 9*30, 3840-16*60, 2160-9*60).trim(0, 314) +\
        v.trim(315, 414) +\
        v.animate(415, 417, "spline64Resize", 3840, 2160, 0, 0, 3840, 2160, 3840, 2160, 16*20, 9*20, 3840-16*40, 2160-9*40).trim(415, 417) +\
        v.trim(418, 0)

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    return v
}

last = prepareOneAV(source_dir + "20220705_201204.mp4" + ".log", destination_dir + "20220705_201204.mp4")
prefetch(2)
