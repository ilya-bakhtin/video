import("c:\Users\ilx\wrk\video\2022_12_24-Praha\540\common.avs", utf8 = true)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221223_153323.mp4.avi").AssumeFPS(30,1)
v2 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\PXL_20221224_145719922.TS.mp4.avi").AssumeFPS(30,1)
v3 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_153351.mp4.avi").AssumeFPS(30,1)
v4 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_153412.mp4.avi").AssumeFPS(30,1)
v5 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_153744.mp4.avi").AssumeFPS(30,1)
v6 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_153858.mp4.avi").AssumeFPS(30,1)
v7 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_153946.mp4.avi").AssumeFPS(30,1)
v8 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154006.mp4.avi").AssumeFPS(30,1)
v9 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154039.mp4.avi").AssumeFPS(30,1)
v10 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154129.mp4.avi").AssumeFPS(30,1)
v11 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154142.mp4.avi").AssumeFPS(30,1)
v12 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154204.mp4.avi").AssumeFPS(30,1)
v13 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154225.mp4.avi").AssumeFPS(30,1)
v14 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154540.mp4.avi").AssumeFPS(30,1)
v15 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_154928.mp4.avi").AssumeFPS(30,1)
v16 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_155450.mp4.avi").AssumeFPS(30,1)
v17 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_155558.mp4.avi").AssumeFPS(30,1)
v18 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160240.mp4.avi").AssumeFPS(30,1)
v19 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160303.mp4.avi").AssumeFPS(30,1)
v20 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160325.mp4.avi").AssumeFPS(30,1)
v21 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160353.mp4.avi").AssumeFPS(30,1)
v22 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160617.mp4.avi").AssumeFPS(30,1)
v23 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_160656.mp4.avi").AssumeFPS(30,1)
v24 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_161031.mp4.avi").AssumeFPS(30,1)
v25 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_161306.mp4.avi").AssumeFPS(30,1)
v26 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_161357.mp4.avi").AssumeFPS(30,1)
v27 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_161429.mp4.avi").AssumeFPS(30,1)
v28 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_161443.mp4.avi").AssumeFPS(30,1)
v29 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_162235.mp4.avi").AssumeFPS(30,1)
v30 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_162346.mp4.avi").AssumeFPS(30,1)
v31 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_162638.mp4.avi").AssumeFPS(30,1)
v32 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_162738.mp4.avi").AssumeFPS(30,1)
v33 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_163001.mp4.avi").AssumeFPS(30,1)
v34 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_163625.mp4.avi").AssumeFPS(30,1)
v35 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_164545.mp4.avi").AssumeFPS(30,1)
v36 = LWLibavVideoSource("M:\Media\video\2022_12_24-Praha\20221224_165943.mp4.avi").AssumeFPS(30,1)
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36
ConvertToYV12()
