import("d:\Users\ilx\wrk\video\2022_07_15-Praha-Ruzine\common.avs")

SetFilterMTMode("Deshaker", MT_SERIALIZED)

LoadVirtualdubPlugin("D:\Program Files\VirtualDub\plugins64\Deshaker_64.vdf", "Deshaker", preroll=30)

function prepareOneAV(string name, bool "autolevels", float "sat")
{
    autolevels = Default(autolevels, false)
    sat = Default(sat, 1.0)

    v = LSMASHVideoSource(destination_dir + "result\" + name)
    a = LSMASHAudioSource(destination_dir + "result\" + name)

    v = AudioDub(v, a)

    return v
}

v1 = prepareOneAV("VID_20220715_172730.mp4")
v2 = prepareOneAV("VID_20220715_172816.mp4")
v3 = prepareOneAV("VID_20220715_172907.mp4")
v4 = prepareOneAV("VID_20220715_172918.mp4")
v5 = prepareOneAV("VID_20220715_173352.mp4")
v6 = prepareOneAV("VID_20220715_173445.mp4")
v7 = prepareOneAV("VID_20220715_173542.mp4")
last = v1 + v2 + v3 + v4 + v5 + v6 + v7
ConvertToYV12()
