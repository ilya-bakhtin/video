SET dir=%1
SET dir_ds=%dir:\=\\%
SET dir_f=%dir:m:\=e:\%
SET dir_f=%dir_f:video\=video\tmp\%
SET dir_f_ds=%dir_f:\=\\%

rem "cmd.exe" /c ""D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -loglevel level+error -i "%2.avs" -strict -1 -f yuv4mpegpipe - | "D:\Program Files\MeGUI\tools\x265\vs2019\x265.exe" --crf 12 --preset=slow --sar 1:1 -o "%1\%2.h265" --y4m -"
"cmd.exe" /c ""C:\Users\ilx\wrk\ffmpeg\ffmpeg.exe" -loglevel level+error -i "%2.avs" -strict -1 -f yuv4mpegpipe - | "C:\users\ilx\wrk\x265\x265.exe" --crf 27 --preset=slow --sar 1:1 -o "%1\result\%2.h265" --y4m -"
rem "D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -hwaccel qsv -i "%2.avs" -c:v hevc_qsv -preset veryslow -global_quality 23 -y "%1\%2.h265"
rem "C:\Users\ilx\wrk\ffmpeg\ffmpeg.exe" -hwaccel dxva2 -i "%2.avs" -c:v hevc_amf -quality 0 -level 6 -rc 0 -qp_i 28 -qp_p 28 -y "%1\result\%2.h265"

rem "D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -i "%2.avs" -y -acodec ac3 -ab 384k "%1\%2.ac3"
"C:\Users\ilx\wrk\ffmpeg\ffmpeg.exe" -i "%2.avs" -y -acodec ac3 -ab 384k "%1\result\%2.ac3"

mkdir "%dir_f%"
rem "D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%1\%2.h265#trackID=1:fps=60.0:par=1:1:name=" -add "%1\%2.ac3#trackID=1:name=" -tmp "%dir_f_ds%" -new "%1\%2.mp4"
"C:\Program Files\GPAC\mp4box.exe" -add "%1\result\%2.h265#trackID=1:fps=60.0:par=1:1:name=" -add "%1\result\%2.ac3#trackID=1:name=" -tmp "%dir_f_ds%" -new "%1\result\%2.mp4"
rmdir /S /Q "%dir_f%"

del "%1\result\%2.h265"
del "%1\result\%2.ac3"
