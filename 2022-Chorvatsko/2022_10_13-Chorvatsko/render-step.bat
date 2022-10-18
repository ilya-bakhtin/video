SET dir=%1
SET dir_ds=%dir:\=\\%
SET dir_f=%dir:m:\=f:\%
SET dir_f_ds=%dir_f:\=\\%

rem "cmd.exe" /c ""D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -loglevel level+error -i "%2-1.avs" -strict -1 -f yuv4mpegpipe - | "D:\Program Files\MeGUI\tools\x265\vs2019\x265.exe" --crf 12 --preset=slow --sar 1:1 -o "%1\%2.h265" --y4m -"

"D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -hwaccel qsv -i "%2-1.avs" -c:v hevc_qsv -preset veryslow -global_quality 6 -y "%1\result\%2.h265"
"D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -i "%2-1.avs" -y -acodec ac3 -ab 384k "%1\result\%2.ac3"

"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%1\result\%2.h265#trackID=1:fps=60.0:par=1:1:name=" -add "%1\result\%2.ac3#trackID=1:name=" -tmp "%dir_f_ds%" -new "%1\result\%2.mp4"

del "%1\result\%2.h265"
del "%1\result\%2.ac3"
