import("d:\Users\ilx\wrk\video\2022_07_06-Luneburg\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string log, string video)
{
    v = LSMASHVideoSource(video)
    fps60 = v.frameRate > 40
    v = v.assumeFPS(fps60 ? 60 : 30, 1)

    v = v.width == 3840 ? v : v.spline64Resize(3840, 2160)
    v = \
        v.trim(0, 214) +\
        v.animate(215, 216, "spline64Resize", 3840, 2160, 16*8, 9*8, 3840-16*16, 2160-9*16, 3840, 2160, 0, 0, 3840, 2160).trim(215, 216) +\
        v.trim(217, 223) +\
        v.animate(224, 225, "spline64Resize", 3840, 2160, 16*10, 9*10, 3840-16*20, 2160-9*20, 3840, 2160, 0, 0, 3840, 2160).trim(224, 225) +\
        v.trim(226, 356) +\
        v.animate(357, 375, "spline64Resize", 3840, 2160, 16*50, 9*50, 3840-16*110, 2160-9*110, 3840, 2160, 0, 0, 3840, 2160).trim(357, 375) +\
        v.trim(376, 0)

    v = v.convertToRGB32(interlaced=false, matrix="PC.709")
    v = v + v.loop(30, 0, 0).trim(0, 29)

#    log = video.replaceStr(".avi", ".log")
#    log = video + ".log"
    config = "19|2|64|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|1|1|1|2|8|30|300|4|" + log + "|0|1|50|50|25|25|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                   ^                                               ^                                                                                   ^
#                 block                                          borders                                                                             rolling                                                  

    v = v.Deshaker(config).trim(30, 0)
    
    v = v.convertToYV24(interlaced=false, matrix="PC.709")

    v = fps60 ? v : v.FrameRateConverter(Output="Flow", Preset="Slow", NewNum=60, NewDen=1, blksize=16)
    v = v.convertToYV12()

    return v
}

last = prepareOneAV(source_dir + "20220707_142032.mp4" + ".log", destination_dir + "20220707_142032.mp4")
prefetch(2)
