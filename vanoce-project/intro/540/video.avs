import("c:\Users\ilx\wrk\video\vanoce-project\intro\540\common.avs", utf8 = true)

LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
v1 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194049.mp4.avi").AssumeFPS(30,1)
v2 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194158.mp4.avi").AssumeFPS(30,1)
v3 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194244.mp4.avi").AssumeFPS(30,1)
v4 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194348.mp4.avi").AssumeFPS(30,1)
v5 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194423.mp4.avi").AssumeFPS(30,1)
v6 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194453.mp4.avi").AssumeFPS(30,1)
v7 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194530.mp4.avi").AssumeFPS(30,1)
v8 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194617.mp4.avi").AssumeFPS(30,1)
v9 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194713.mp4.avi").AssumeFPS(30,1)
v10 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194750.mp4.avi").AssumeFPS(30,1)
v11 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194830.mp4.avi").AssumeFPS(30,1)
v12 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_194859.mp4.avi").AssumeFPS(30,1)
v13 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_195005.mp4.avi").AssumeFPS(30,1)
v14 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_195037.mp4.avi").AssumeFPS(30,1)
v15 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_195104.mp4.avi").AssumeFPS(30,1)
v16 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215149.mp4.avi").AssumeFPS(30,1)
v17 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215219.mp4.avi").AssumeFPS(30,1)
v18 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215241.mp4.avi").AssumeFPS(30,1)
v19 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215328.mp4.avi").AssumeFPS(30,1)
v20 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215444.mp4.avi").AssumeFPS(30,1)
v21 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215522.mp4.avi").AssumeFPS(30,1)
v22 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215605.mp4.avi").AssumeFPS(30,1)
v23 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215648.mp4.avi").AssumeFPS(30,1)
v24 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221228_215750.mp4.avi").AssumeFPS(30,1)
v25 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203419.mp4.avi").AssumeFPS(30,1)
v26 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203547.mp4.avi").AssumeFPS(30,1)
v27 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203657.mp4.avi").AssumeFPS(30,1)
v28 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203729.mp4.avi").AssumeFPS(30,1)
v29 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203812.mp4.avi").AssumeFPS(30,1)
v30 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203858.mp4.avi").AssumeFPS(30,1)
v31 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_203932.mp4.avi").AssumeFPS(30,1)
v32 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_210253.mp4.avi").AssumeFPS(30,1)
v33 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_210337.mp4.avi").AssumeFPS(30,1)
v34 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_210406.mp4.avi").AssumeFPS(30,1)
v35 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221230_210453.mp4.avi").AssumeFPS(30,1)
v36 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221231_001402.mp4.avi").AssumeFPS(30,1)
v37 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221231_001515.mp4.avi").AssumeFPS(30,1)
v38 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221231_001534.mp4.avi").AssumeFPS(30,1)
v39 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221231_001659.mp4.avi").AssumeFPS(30,1)
v40 = LWLibavVideoSource("M:\Media\video\vanoce-project\intro\\20221231_001754.mp4.avi").AssumeFPS(30,1)
last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40
ConvertToYV12()
