SET dir=%1
SET dir_ds=%dir:\=\\%
"cmd.exe" /c ""D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -loglevel level+error -i "..\%2.mp4-1.avs" -strict -1 -f yuv4mpegpipe - | "D:\Program Files\MeGUI\tools\x265\vs2019\x265.exe" --crf 18 --preset=fast --sar 1:1 -o "%1\result\%2.265" --y4m -"
rem "D:\Program Files\MeGUI\tools\x264\x264.exe" --crf 18 --keyint 600 --sar 1:1 --output "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.264" "d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\%1.mp4-1.avs"
"D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -i "..\4k_crf_18\%2.mp4.avs" -y -acodec ac3 -ab 384k "%1\result\%2.ac3"
"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%1\result\%2.265#trackID=1:fps=60.0:par=1:1:name=" -add "%1\result\%2.ac3#trackID=1:name=" -tmp "%dir_ds%" -new "%1\result\4k_crf_18\%2.mp4"
"cmd.exe" /c ""D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -loglevel level+error -i "%2.mp4.avs" -strict -1 -f yuv4mpegpipe - | "D:\Program Files\MeGUI\tools\x265\vs2019\x265.exe" --crf 21 --preset=fast --sar 1:1 -o "%1\result\%2.540.265" --y4m -"
rem "D:\Program Files\MeGUI\tools\x264\x264.exe" --crf 21.0 --keyint 600 --sar 1:1 --output "m:\Media\video\2022_07_05-Quedlinburg\result\540\%1.mp4.264" "d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\540\%1.mp4.avs"
"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "%1\result\%2.540.265#trackID=1:fps=60.0:par=1:1:name=" -add "%1\result\%2.ac3#trackID=1:name=" -tmp "%dir_ds%" -new "%1\result\540\%2.mp4"
