SetFilterMTMode("Deshaker", MT_SERIALIZED)

import("F:\Media\Video\2007-04-16_Praha\common.avs")

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

v = LWLibavVideoSource($$$clip$$$).\
    ConvertToYV24(interlaced=false, chromaresample = "sinc")

v = v.convertToRGB32(interlaced=false, matrix="PC.709")

v = v + v.loop(30, 0, 0).trim(0, 29)

source_dir = "f:\\Media\\Video\\2007-04-16_Praha\\"

config = "19|2|30|4|1|0|1|0|640|480|0|1|100|100|100|100|4|1|0|2|2|30|300|4|" + source_dir + $$$clip_name$$$ + ".log|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|0.0015|0.0015|1|1|30|30|0|0|0|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"

v = v.Deshaker(config).trim(30, 0)
v = v.convertToYV24(interlaced=false, matrix="PC.709")

return v.Prefetch(6)
