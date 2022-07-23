import("d:\Users\ilx\wrk\video\2022_07_15-Praha-Ruzine\common.avs")

LSMASHVideoSource(destination_dir + "VID_20220715_172816.mp4")
last = width == 1920 ? last : spline64Resize(1920, 1080)
convertToRGB32(interlaced=false, matrix="PC.709")
