SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

v = LSMASHVideoSource($$$clip$$$).\
    convertToRGB32(interlaced=false, chromaresample="sinc", matrix="PC.709")

#v = v.convertToRGB32(interlaced=false, matrix="PC.709")

v = v + v.loop(30, 0, 0).trim(0, 29)

source_dir = "d:\\Users\\ilx\\wrk\\Video\\2022-01-23_Vodomery\\"

config = "19|2|30|4|1|0|1|0|640|480|0|1|1000|1000|1000|1000|4|1|0|2|2|30|300|4|" + source_dir + $$$clip_name$$$ + ".log|0|0|0|0|0|0|0|0|0|0|0|0|0|1|15|15|5|15|1|1|30|30|0|0|1|0|1|1|1|10|1000|1|88|1|1|20|5000|100|20|1|0|ff00ff"
#                            Smoothness  h     v    r    z      ^                                                                                              ^ ^
#                            Edge compensation                  0 - none                                                                               use  prev next  ^     ^                    ^
#                                                                                                                                                      number    prev next, rolling            amount

v = v.Deshaker(config).trim(30, 0)
v = v.convertToYV24(interlaced=false, matrix="PC.709")

return v.Prefetch(6)
