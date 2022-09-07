SET dir=%1
SET dir_ds=%dir:\=\\%
SET dir_f=%dir:m:\=f:\%
SET dir_f_ds=%dir_f:\=\\%

"D:\Program Files\MeGUI\tools\x264\x264.exe" --profile high444 --level 41 --output-csp i444 --qp 0 --keyint 30 --sar 1:1 --output "%dir%\%2.264" "%2.avs"
"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%dir%\%2.264#trackID=1:fps=50.0:par=1:1:name=" -tmp "%dir_f_ds%" -new "%1\%2.qtgmc.mp4"

rem "D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -i "%2.avs" -y -acodec ac3 -ab 384k "%1\%2.ac3"
rem "D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%1\%2.264#trackID=1:fps=50.0:par=1:1:name=" -add "%1\%2.ac3#trackID=1:name=" -tmp "%dir_ds%" -new "%1\%2.qtgmc.mp4"
