"D:\Program Files\MeGUI\tools\x264\x264.exe" --crf 18 --keyint 600 --sar 1:1 --output "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.264" "d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\%1.mp4-1.avs"
"D:\Program Files\MeGUI\tools\ffmpeg\ffmpeg.exe" -i "d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\4k_crf_18\%1.mp4.avs" -y -acodec ac3 -ab 384k "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.ac3"
"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.264#trackID=1:fps=60.0:par=1:1:name=" -add "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.ac3#trackID=1:name=" -tmp "m:\\Media\\video\\2022_07_05-Quedlinburg\\result\\" -new "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4"
"D:\Program Files\MeGUI\tools\x264\x264.exe" --crf 21.0 --keyint 600 --sar 1:1 --output "m:\Media\video\2022_07_05-Quedlinburg\result\540\%1.mp4.264" "d:\Users\ilx\wrk\video\2022_07_05-Quedlinburg\540\%1.mp4.avs"
"D:\Program Files\MeGUI\tools\mp4box\mp4box.exe" -add "m:\Media\video\2022_07_05-Quedlinburg\result\540\%1.mp4.264#trackID=1:fps=60.0:par=1:1:name=" -add "m:\Media\video\2022_07_05-Quedlinburg\result\4k_crf_18\%1.mp4.ac3#trackID=1:name=" -tmp "m:\\Media\\video\\2022_07_05-Quedlinburg\\result\\540\\" -new "m:\Media\video\2022_07_05-Quedlinburg\result\540\%1.mp4"
