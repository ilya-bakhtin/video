import("d:\Users\ilx\wrk\video\2022_06_28-Chorvatsko\common.avs")

LSMASHVideoSource(destination_dir + "ruzyne_pristani.mp4")
last = width == 1920 ? last : spline64Resize(1920, 1080)
convertToRGB32(interlaced=false, matrix="PC.709")
