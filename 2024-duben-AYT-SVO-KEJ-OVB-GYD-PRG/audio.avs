LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_132043.mp4")
v1 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_132043.mp4").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143040.mp4")
v2 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143040.mp4").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143315.mp4")
v3 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143315.mp4").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143901.mp4")
v4 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_143901.mp4").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_144332.mp4")
v5 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_144332.mp4").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_153117.mp4")
v6 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_153117.mp4").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161344.mp4")
v7 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161344.mp4").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161403.mp4")
v8 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161403.mp4").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161507.mp4")
v9 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_161507.mp4").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_201025.mp4")
v10 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240403_201025.mp4").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240404_050626.mp4")
v11 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240404_050626.mp4").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114607.mp4")
v12 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114607.mp4").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114649.mp4")
v13 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114649.mp4").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114751.mp4")
v14 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114751.mp4").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114938.mp4")
v15 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_114938.mp4").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_115242.mp4")
v16 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_115242.mp4").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_124757.mp4")
v17 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_124757.mp4").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_133711.mp4")
v18 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_133711.mp4").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145352.mp4")
v19 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145352.mp4").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145508.mp4")
v20 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145508.mp4").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145534.mp4")
v21 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145534.mp4").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145643.mp4")
v22 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145643.mp4").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145710.mp4")
v23 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145710.mp4").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145846.mp4")
v24 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145846.mp4").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145949.mp4")
v25 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_145949.mp4").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_160418.mp4")
v26 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_160418.mp4").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_160739.mp4")
v27 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_160739.mp4").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a28 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_161129.mp4")
v28 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_161129.mp4").AssumeFPS(30,1)
new_rate = Float(a28.AudioLength)/v28.FrameCount*v28.FrameRateNumerator/v28.FrameRateDenominator
a28 = a28.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v28 = AudioDub(v28, a28)

a29 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_162939.mp4")
v29 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_162939.mp4").AssumeFPS(30,1)
new_rate = Float(a29.AudioLength)/v29.FrameCount*v29.FrameRateNumerator/v29.FrameRateDenominator
a29 = a29.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v29 = AudioDub(v29, a29)

a30 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_163926.mp4")
v30 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_163926.mp4").AssumeFPS(30,1)
new_rate = Float(a30.AudioLength)/v30.FrameCount*v30.FrameRateNumerator/v30.FrameRateDenominator
a30 = a30.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v30 = AudioDub(v30, a30)

a31 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164417.mp4")
v31 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164417.mp4").AssumeFPS(30,1)
new_rate = Float(a31.AudioLength)/v31.FrameCount*v31.FrameRateNumerator/v31.FrameRateDenominator
a31 = a31.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v31 = AudioDub(v31, a31)

a32 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164429.mp4")
v32 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164429.mp4").AssumeFPS(30,1)
new_rate = Float(a32.AudioLength)/v32.FrameCount*v32.FrameRateNumerator/v32.FrameRateDenominator
a32 = a32.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v32 = AudioDub(v32, a32)

a33 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164443.mp4")
v33 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164443.mp4").AssumeFPS(30,1)
new_rate = Float(a33.AudioLength)/v33.FrameCount*v33.FrameRateNumerator/v33.FrameRateDenominator
a33 = a33.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v33 = AudioDub(v33, a33)

a34 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164456.mp4")
v34 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164456.mp4").AssumeFPS(30,1)
new_rate = Float(a34.AudioLength)/v34.FrameCount*v34.FrameRateNumerator/v34.FrameRateDenominator
a34 = a34.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v34 = AudioDub(v34, a34)

a35 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164547.mp4")
v35 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_164547.mp4").AssumeFPS(30,1)
new_rate = Float(a35.AudioLength)/v35.FrameCount*v35.FrameRateNumerator/v35.FrameRateDenominator
a35 = a35.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v35 = AudioDub(v35, a35)

a36 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_202752.mp4")
v36 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240411_202752.mp4").AssumeFPS(30,1)
new_rate = Float(a36.AudioLength)/v36.FrameCount*v36.FrameRateNumerator/v36.FrameRateDenominator
a36 = a36.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v36 = AudioDub(v36, a36)

a37 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_113908.mp4")
v37 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_113908.mp4").AssumeFPS(30,1)
new_rate = Float(a37.AudioLength)/v37.FrameCount*v37.FrameRateNumerator/v37.FrameRateDenominator
a37 = a37.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v37 = AudioDub(v37, a37)

a38 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124819.mp4")
v38 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124819.mp4").AssumeFPS(30,1)
new_rate = Float(a38.AudioLength)/v38.FrameCount*v38.FrameRateNumerator/v38.FrameRateDenominator
a38 = a38.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v38 = AudioDub(v38, a38)

a39 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124845.mp4")
v39 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124845.mp4").AssumeFPS(30,1)
new_rate = Float(a39.AudioLength)/v39.FrameCount*v39.FrameRateNumerator/v39.FrameRateDenominator
a39 = a39.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v39 = AudioDub(v39, a39)

a40 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124918.mp4")
v40 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_124918.mp4").AssumeFPS(30,1)
new_rate = Float(a40.AudioLength)/v40.FrameCount*v40.FrameRateNumerator/v40.FrameRateDenominator
a40 = a40.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v40 = AudioDub(v40, a40)

a41 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_135829.mp4")
v41 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_135829.mp4").AssumeFPS(30,1)
new_rate = Float(a41.AudioLength)/v41.FrameCount*v41.FrameRateNumerator/v41.FrameRateDenominator
a41 = a41.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v41 = AudioDub(v41, a41)

a42 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_135853.mp4")
v42 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_135853.mp4").AssumeFPS(30,1)
new_rate = Float(a42.AudioLength)/v42.FrameCount*v42.FrameRateNumerator/v42.FrameRateDenominator
a42 = a42.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v42 = AudioDub(v42, a42)

a43 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_175610.mp4")
v43 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240412_175610.mp4").AssumeFPS(30,1)
new_rate = Float(a43.AudioLength)/v43.FrameCount*v43.FrameRateNumerator/v43.FrameRateDenominator
a43 = a43.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v43 = AudioDub(v43, a43)

a44 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_002838.mp4")
v44 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_002838.mp4").AssumeFPS(30,1)
new_rate = Float(a44.AudioLength)/v44.FrameCount*v44.FrameRateNumerator/v44.FrameRateDenominator
a44 = a44.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v44 = AudioDub(v44, a44)

a45 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_053825.mp4")
v45 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_053825.mp4").AssumeFPS(30,1)
new_rate = Float(a45.AudioLength)/v45.FrameCount*v45.FrameRateNumerator/v45.FrameRateDenominator
a45 = a45.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v45 = AudioDub(v45, a45)

a46 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060538.mp4")
v46 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060538.mp4").AssumeFPS(30,1)
new_rate = Float(a46.AudioLength)/v46.FrameCount*v46.FrameRateNumerator/v46.FrameRateDenominator
a46 = a46.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v46 = AudioDub(v46, a46)

a47 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060649.mp4")
v47 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060649.mp4").AssumeFPS(30,1)
new_rate = Float(a47.AudioLength)/v47.FrameCount*v47.FrameRateNumerator/v47.FrameRateDenominator
a47 = a47.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v47 = AudioDub(v47, a47)

a48 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060719.mp4")
v48 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_060719.mp4").AssumeFPS(30,1)
new_rate = Float(a48.AudioLength)/v48.FrameCount*v48.FrameRateNumerator/v48.FrameRateDenominator
a48 = a48.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v48 = AudioDub(v48, a48)

a49 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_061312.mp4")
v49 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_061312.mp4").AssumeFPS(30,1)
new_rate = Float(a49.AudioLength)/v49.FrameCount*v49.FrameRateNumerator/v49.FrameRateDenominator
a49 = a49.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v49 = AudioDub(v49, a49)

a50 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_063257.mp4")
v50 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_063257.mp4").AssumeFPS(30,1)
new_rate = Float(a50.AudioLength)/v50.FrameCount*v50.FrameRateNumerator/v50.FrameRateDenominator
a50 = a50.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v50 = AudioDub(v50, a50)

a51 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064733.mp4")
v51 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064733.mp4").AssumeFPS(30,1)
new_rate = Float(a51.AudioLength)/v51.FrameCount*v51.FrameRateNumerator/v51.FrameRateDenominator
a51 = a51.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v51 = AudioDub(v51, a51)

a52 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064821.mp4")
v52 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064821.mp4").AssumeFPS(30,1)
new_rate = Float(a52.AudioLength)/v52.FrameCount*v52.FrameRateNumerator/v52.FrameRateDenominator
a52 = a52.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v52 = AudioDub(v52, a52)

a53 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064853.mp4")
v53 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064853.mp4").AssumeFPS(30,1)
new_rate = Float(a53.AudioLength)/v53.FrameCount*v53.FrameRateNumerator/v53.FrameRateDenominator
a53 = a53.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v53 = AudioDub(v53, a53)

a54 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064924.mp4")
v54 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_064924.mp4").AssumeFPS(30,1)
new_rate = Float(a54.AudioLength)/v54.FrameCount*v54.FrameRateNumerator/v54.FrameRateDenominator
a54 = a54.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v54 = AudioDub(v54, a54)

a55 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072310.mp4")
v55 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072310.mp4").AssumeFPS(30,1)
new_rate = Float(a55.AudioLength)/v55.FrameCount*v55.FrameRateNumerator/v55.FrameRateDenominator
a55 = a55.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v55 = AudioDub(v55, a55)

a56 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072341.mp4")
v56 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072341.mp4").AssumeFPS(30,1)
new_rate = Float(a56.AudioLength)/v56.FrameCount*v56.FrameRateNumerator/v56.FrameRateDenominator
a56 = a56.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v56 = AudioDub(v56, a56)

a57 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072735.mp4")
v57 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_072735.mp4").AssumeFPS(30,1)
new_rate = Float(a57.AudioLength)/v57.FrameCount*v57.FrameRateNumerator/v57.FrameRateDenominator
a57 = a57.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v57 = AudioDub(v57, a57)

a58 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073034.mp4")
v58 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073034.mp4").AssumeFPS(30,1)
new_rate = Float(a58.AudioLength)/v58.FrameCount*v58.FrameRateNumerator/v58.FrameRateDenominator
a58 = a58.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v58 = AudioDub(v58, a58)

a59 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073309.mp4")
v59 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073309.mp4").AssumeFPS(30,1)
new_rate = Float(a59.AudioLength)/v59.FrameCount*v59.FrameRateNumerator/v59.FrameRateDenominator
a59 = a59.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v59 = AudioDub(v59, a59)

a60 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073408.mp4")
v60 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_073408.mp4").AssumeFPS(30,1)
new_rate = Float(a60.AudioLength)/v60.FrameCount*v60.FrameRateNumerator/v60.FrameRateDenominator
a60 = a60.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v60 = AudioDub(v60, a60)

a61 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_074316.mp4")
v61 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_074316.mp4").AssumeFPS(30,1)
new_rate = Float(a61.AudioLength)/v61.FrameCount*v61.FrameRateNumerator/v61.FrameRateDenominator
a61 = a61.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v61 = AudioDub(v61, a61)

a62 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_081615.mp4")
v62 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_081615.mp4").AssumeFPS(30,1)
new_rate = Float(a62.AudioLength)/v62.FrameCount*v62.FrameRateNumerator/v62.FrameRateDenominator
a62 = a62.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v62 = AudioDub(v62, a62)

a63 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_100555.mp4")
v63 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_100555.mp4").AssumeFPS(30,1)
new_rate = Float(a63.AudioLength)/v63.FrameCount*v63.FrameRateNumerator/v63.FrameRateDenominator
a63 = a63.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v63 = AudioDub(v63, a63)

a64 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_101714.mp4")
v64 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_101714.mp4").AssumeFPS(30,1)
new_rate = Float(a64.AudioLength)/v64.FrameCount*v64.FrameRateNumerator/v64.FrameRateDenominator
a64 = a64.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v64 = AudioDub(v64, a64)

a65 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_101752.mp4")
v65 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_101752.mp4").AssumeFPS(30,1)
new_rate = Float(a65.AudioLength)/v65.FrameCount*v65.FrameRateNumerator/v65.FrameRateDenominator
a65 = a65.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v65 = AudioDub(v65, a65)

a66 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_113113.mp4")
v66 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_113113.mp4").AssumeFPS(30,1)
new_rate = Float(a66.AudioLength)/v66.FrameCount*v66.FrameRateNumerator/v66.FrameRateDenominator
a66 = a66.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v66 = AudioDub(v66, a66)

a67 = LSMASHAudioSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_113726.mp4")
v67 = LSMASHVideoSource("m:\Media\video\2024-duben-AYT-SVO-KEJ-OVB-GYD-PRG\20240413_113726.mp4").AssumeFPS(30,1)
new_rate = Float(a67.AudioLength)/v67.FrameCount*v67.FrameRateNumerator/v67.FrameRateDenominator
a67 = a67.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v67 = AudioDub(v67, a67)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67
return last
