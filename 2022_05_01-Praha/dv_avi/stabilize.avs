SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function stabilize(clip c, string log)
{
    c = c.convertToRGB32(interlaced=false, matrix="PC.601")

    c = c + c.loop(30, 0, 0).trim(0, 29)

#    config = "19|2|30|4|1|0|1|0|640|480|0|1|100|100|100|100|4|1|0|2|2|30|300|4|" + log + "|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|0.0015|0.0015|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
    config = "19|2|30|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|4|1|0|2|8|30|300|4|" + log + "|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"

    c = c.Deshaker(config).trim(30, 0)
    c = c.convertToYV24(interlaced=false, matrix="PC.601")

    return c
}

