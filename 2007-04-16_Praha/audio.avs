LoadPlugin("D:\Program Files\MeGUI\tools\lsmash\LSMASHSource.dll")
a1 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4056.AVI")
v1 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4056.AVI").AssumeFPS(30,1)
new_rate = Float(a1.AudioLength)/v1.FrameCount*v1.FrameRateNumerator/v1.FrameRateDenominator
a1 = a1.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v1 = AudioDub(v1, a1)

a2 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4057.AVI")
v2 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4057.AVI").AssumeFPS(30,1)
new_rate = Float(a2.AudioLength)/v2.FrameCount*v2.FrameRateNumerator/v2.FrameRateDenominator
a2 = a2.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v2 = AudioDub(v2, a2)

a3 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4061.AVI")
v3 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4061.AVI").AssumeFPS(30,1)
new_rate = Float(a3.AudioLength)/v3.FrameCount*v3.FrameRateNumerator/v3.FrameRateDenominator
a3 = a3.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v3 = AudioDub(v3, a3)

a4 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4067.AVI")
v4 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4067.AVI").AssumeFPS(30,1)
new_rate = Float(a4.AudioLength)/v4.FrameCount*v4.FrameRateNumerator/v4.FrameRateDenominator
a4 = a4.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v4 = AudioDub(v4, a4)

a5 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4068.AVI")
v5 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4068.AVI").AssumeFPS(30,1)
new_rate = Float(a5.AudioLength)/v5.FrameCount*v5.FrameRateNumerator/v5.FrameRateDenominator
a5 = a5.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v5 = AudioDub(v5, a5)

a6 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4069.AVI")
v6 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4069.AVI").AssumeFPS(30,1)
new_rate = Float(a6.AudioLength)/v6.FrameCount*v6.FrameRateNumerator/v6.FrameRateDenominator
a6 = a6.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v6 = AudioDub(v6, a6)

a7 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4081.AVI")
v7 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4081.AVI").AssumeFPS(30,1)
new_rate = Float(a7.AudioLength)/v7.FrameCount*v7.FrameRateNumerator/v7.FrameRateDenominator
a7 = a7.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v7 = AudioDub(v7, a7)

a8 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4084.AVI")
v8 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4084.AVI").AssumeFPS(30,1)
new_rate = Float(a8.AudioLength)/v8.FrameCount*v8.FrameRateNumerator/v8.FrameRateDenominator
a8 = a8.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v8 = AudioDub(v8, a8)

a9 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4085.AVI")
v9 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4085.AVI").AssumeFPS(30,1)
new_rate = Float(a9.AudioLength)/v9.FrameCount*v9.FrameRateNumerator/v9.FrameRateDenominator
a9 = a9.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v9 = AudioDub(v9, a9)

a10 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4086.AVI")
v10 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4086.AVI").AssumeFPS(30,1)
new_rate = Float(a10.AudioLength)/v10.FrameCount*v10.FrameRateNumerator/v10.FrameRateDenominator
a10 = a10.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v10 = AudioDub(v10, a10)

a11 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4089.AVI")
v11 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4089.AVI").AssumeFPS(30,1)
new_rate = Float(a11.AudioLength)/v11.FrameCount*v11.FrameRateNumerator/v11.FrameRateDenominator
a11 = a11.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v11 = AudioDub(v11, a11)

a12 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4090.AVI")
v12 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4090.AVI").AssumeFPS(30,1)
new_rate = Float(a12.AudioLength)/v12.FrameCount*v12.FrameRateNumerator/v12.FrameRateDenominator
a12 = a12.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v12 = AudioDub(v12, a12)

a13 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4091.AVI")
v13 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4091.AVI").AssumeFPS(30,1)
new_rate = Float(a13.AudioLength)/v13.FrameCount*v13.FrameRateNumerator/v13.FrameRateDenominator
a13 = a13.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v13 = AudioDub(v13, a13)

a14 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4092.AVI")
v14 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4092.AVI").AssumeFPS(30,1)
new_rate = Float(a14.AudioLength)/v14.FrameCount*v14.FrameRateNumerator/v14.FrameRateDenominator
a14 = a14.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v14 = AudioDub(v14, a14)

a15 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4093.AVI")
v15 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4093.AVI").AssumeFPS(30,1)
new_rate = Float(a15.AudioLength)/v15.FrameCount*v15.FrameRateNumerator/v15.FrameRateDenominator
a15 = a15.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v15 = AudioDub(v15, a15)

a16 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4094.AVI")
v16 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4094.AVI").AssumeFPS(30,1)
new_rate = Float(a16.AudioLength)/v16.FrameCount*v16.FrameRateNumerator/v16.FrameRateDenominator
a16 = a16.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v16 = AudioDub(v16, a16)

a17 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4095.AVI")
v17 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4095.AVI").AssumeFPS(30,1)
new_rate = Float(a17.AudioLength)/v17.FrameCount*v17.FrameRateNumerator/v17.FrameRateDenominator
a17 = a17.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v17 = AudioDub(v17, a17)

a18 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4098.AVI")
v18 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4098.AVI").AssumeFPS(30,1)
new_rate = Float(a18.AudioLength)/v18.FrameCount*v18.FrameRateNumerator/v18.FrameRateDenominator
a18 = a18.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v18 = AudioDub(v18, a18)

a19 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4099.AVI")
v19 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4099.AVI").AssumeFPS(30,1)
new_rate = Float(a19.AudioLength)/v19.FrameCount*v19.FrameRateNumerator/v19.FrameRateDenominator
a19 = a19.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v19 = AudioDub(v19, a19)

a20 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4100.AVI")
v20 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4100.AVI").AssumeFPS(30,1)
new_rate = Float(a20.AudioLength)/v20.FrameCount*v20.FrameRateNumerator/v20.FrameRateDenominator
a20 = a20.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v20 = AudioDub(v20, a20)

a21 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4101.AVI")
v21 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4101.AVI").AssumeFPS(30,1)
new_rate = Float(a21.AudioLength)/v21.FrameCount*v21.FrameRateNumerator/v21.FrameRateDenominator
a21 = a21.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v21 = AudioDub(v21, a21)

a22 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4102.AVI")
v22 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4102.AVI").AssumeFPS(30,1)
new_rate = Float(a22.AudioLength)/v22.FrameCount*v22.FrameRateNumerator/v22.FrameRateDenominator
a22 = a22.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v22 = AudioDub(v22, a22)

a23 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4109.AVI")
v23 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4109.AVI").AssumeFPS(30,1)
new_rate = Float(a23.AudioLength)/v23.FrameCount*v23.FrameRateNumerator/v23.FrameRateDenominator
a23 = a23.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v23 = AudioDub(v23, a23)

a24 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4110.AVI")
v24 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4110.AVI").AssumeFPS(30,1)
new_rate = Float(a24.AudioLength)/v24.FrameCount*v24.FrameRateNumerator/v24.FrameRateDenominator
a24 = a24.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v24 = AudioDub(v24, a24)

a25 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4111.AVI")
v25 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4111.AVI").AssumeFPS(30,1)
new_rate = Float(a25.AudioLength)/v25.FrameCount*v25.FrameRateNumerator/v25.FrameRateDenominator
a25 = a25.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v25 = AudioDub(v25, a25)

a26 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4112.AVI")
v26 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4112.AVI").AssumeFPS(30,1)
new_rate = Float(a26.AudioLength)/v26.FrameCount*v26.FrameRateNumerator/v26.FrameRateDenominator
a26 = a26.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v26 = AudioDub(v26, a26)

a27 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4113.AVI")
v27 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4113.AVI").AssumeFPS(30,1)
new_rate = Float(a27.AudioLength)/v27.FrameCount*v27.FrameRateNumerator/v27.FrameRateDenominator
a27 = a27.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v27 = AudioDub(v27, a27)

a28 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4114.AVI")
v28 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4114.AVI").AssumeFPS(30,1)
new_rate = Float(a28.AudioLength)/v28.FrameCount*v28.FrameRateNumerator/v28.FrameRateDenominator
a28 = a28.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v28 = AudioDub(v28, a28)

a29 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4119.AVI")
v29 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4119.AVI").AssumeFPS(30,1)
new_rate = Float(a29.AudioLength)/v29.FrameCount*v29.FrameRateNumerator/v29.FrameRateDenominator
a29 = a29.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v29 = AudioDub(v29, a29)

a30 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4121.AVI")
v30 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4121.AVI").AssumeFPS(30,1)
new_rate = Float(a30.AudioLength)/v30.FrameCount*v30.FrameRateNumerator/v30.FrameRateDenominator
a30 = a30.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v30 = AudioDub(v30, a30)

a31 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4122.AVI")
v31 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4122.AVI").AssumeFPS(30,1)
new_rate = Float(a31.AudioLength)/v31.FrameCount*v31.FrameRateNumerator/v31.FrameRateDenominator
a31 = a31.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v31 = AudioDub(v31, a31)

a32 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4123.AVI")
v32 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4123.AVI").AssumeFPS(30,1)
new_rate = Float(a32.AudioLength)/v32.FrameCount*v32.FrameRateNumerator/v32.FrameRateDenominator
a32 = a32.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v32 = AudioDub(v32, a32)

a33 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4124.AVI")
v33 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4124.AVI").AssumeFPS(30,1)
new_rate = Float(a33.AudioLength)/v33.FrameCount*v33.FrameRateNumerator/v33.FrameRateDenominator
a33 = a33.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v33 = AudioDub(v33, a33)

a34 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4125.AVI")
v34 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4125.AVI").AssumeFPS(30,1)
new_rate = Float(a34.AudioLength)/v34.FrameCount*v34.FrameRateNumerator/v34.FrameRateDenominator
a34 = a34.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v34 = AudioDub(v34, a34)

a35 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4126.AVI")
v35 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4126.AVI").AssumeFPS(30,1)
new_rate = Float(a35.AudioLength)/v35.FrameCount*v35.FrameRateNumerator/v35.FrameRateDenominator
a35 = a35.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v35 = AudioDub(v35, a35)

a36 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4127.AVI")
v36 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4127.AVI").AssumeFPS(30,1)
new_rate = Float(a36.AudioLength)/v36.FrameCount*v36.FrameRateNumerator/v36.FrameRateDenominator
a36 = a36.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v36 = AudioDub(v36, a36)

a37 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4128.AVI")
v37 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4128.AVI").AssumeFPS(30,1)
new_rate = Float(a37.AudioLength)/v37.FrameCount*v37.FrameRateNumerator/v37.FrameRateDenominator
a37 = a37.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v37 = AudioDub(v37, a37)

a38 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4129.AVI")
v38 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4129.AVI").AssumeFPS(30,1)
new_rate = Float(a38.AudioLength)/v38.FrameCount*v38.FrameRateNumerator/v38.FrameRateDenominator
a38 = a38.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v38 = AudioDub(v38, a38)

a39 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4130.AVI")
v39 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4130.AVI").AssumeFPS(30,1)
new_rate = Float(a39.AudioLength)/v39.FrameCount*v39.FrameRateNumerator/v39.FrameRateDenominator
a39 = a39.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v39 = AudioDub(v39, a39)

a40 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4131.AVI")
v40 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4131.AVI").AssumeFPS(30,1)
new_rate = Float(a40.AudioLength)/v40.FrameCount*v40.FrameRateNumerator/v40.FrameRateDenominator
a40 = a40.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v40 = AudioDub(v40, a40)

a41 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4132.AVI")
v41 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4132.AVI").AssumeFPS(30,1)
new_rate = Float(a41.AudioLength)/v41.FrameCount*v41.FrameRateNumerator/v41.FrameRateDenominator
a41 = a41.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v41 = AudioDub(v41, a41)

a42 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4133.AVI")
v42 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4133.AVI").AssumeFPS(30,1)
new_rate = Float(a42.AudioLength)/v42.FrameCount*v42.FrameRateNumerator/v42.FrameRateDenominator
a42 = a42.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v42 = AudioDub(v42, a42)

a43 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4139.AVI")
v43 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4139.AVI").AssumeFPS(30,1)
new_rate = Float(a43.AudioLength)/v43.FrameCount*v43.FrameRateNumerator/v43.FrameRateDenominator
a43 = a43.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v43 = AudioDub(v43, a43)

a44 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4144.AVI")
v44 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4144.AVI").AssumeFPS(30,1)
new_rate = Float(a44.AudioLength)/v44.FrameCount*v44.FrameRateNumerator/v44.FrameRateDenominator
a44 = a44.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v44 = AudioDub(v44, a44)

a45 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4145.AVI")
v45 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4145.AVI").AssumeFPS(30,1)
new_rate = Float(a45.AudioLength)/v45.FrameCount*v45.FrameRateNumerator/v45.FrameRateDenominator
a45 = a45.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v45 = AudioDub(v45, a45)

a46 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4146.AVI")
v46 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4146.AVI").AssumeFPS(30,1)
new_rate = Float(a46.AudioLength)/v46.FrameCount*v46.FrameRateNumerator/v46.FrameRateDenominator
a46 = a46.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v46 = AudioDub(v46, a46)

a47 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4147.AVI")
v47 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4147.AVI").AssumeFPS(30,1)
new_rate = Float(a47.AudioLength)/v47.FrameCount*v47.FrameRateNumerator/v47.FrameRateDenominator
a47 = a47.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v47 = AudioDub(v47, a47)

a48 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4148.AVI")
v48 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4148.AVI").AssumeFPS(30,1)
new_rate = Float(a48.AudioLength)/v48.FrameCount*v48.FrameRateNumerator/v48.FrameRateDenominator
a48 = a48.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v48 = AudioDub(v48, a48)

a49 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4149.AVI")
v49 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4149.AVI").AssumeFPS(30,1)
new_rate = Float(a49.AudioLength)/v49.FrameCount*v49.FrameRateNumerator/v49.FrameRateDenominator
a49 = a49.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v49 = AudioDub(v49, a49)

a50 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4150.AVI")
v50 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4150.AVI").AssumeFPS(30,1)
new_rate = Float(a50.AudioLength)/v50.FrameCount*v50.FrameRateNumerator/v50.FrameRateDenominator
a50 = a50.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v50 = AudioDub(v50, a50)

a51 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4151.AVI")
v51 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4151.AVI").AssumeFPS(30,1)
new_rate = Float(a51.AudioLength)/v51.FrameCount*v51.FrameRateNumerator/v51.FrameRateDenominator
a51 = a51.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v51 = AudioDub(v51, a51)

a52 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4152.AVI")
v52 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4152.AVI").AssumeFPS(30,1)
new_rate = Float(a52.AudioLength)/v52.FrameCount*v52.FrameRateNumerator/v52.FrameRateDenominator
a52 = a52.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v52 = AudioDub(v52, a52)

a53 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4154.AVI")
v53 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4154.AVI").AssumeFPS(30,1)
new_rate = Float(a53.AudioLength)/v53.FrameCount*v53.FrameRateNumerator/v53.FrameRateDenominator
a53 = a53.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v53 = AudioDub(v53, a53)

a54 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4160.AVI")
v54 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4160.AVI").AssumeFPS(30,1)
new_rate = Float(a54.AudioLength)/v54.FrameCount*v54.FrameRateNumerator/v54.FrameRateDenominator
a54 = a54.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v54 = AudioDub(v54, a54)

a55 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4161.AVI")
v55 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4161.AVI").AssumeFPS(30,1)
new_rate = Float(a55.AudioLength)/v55.FrameCount*v55.FrameRateNumerator/v55.FrameRateDenominator
a55 = a55.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v55 = AudioDub(v55, a55)

a56 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4162.AVI")
v56 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4162.AVI").AssumeFPS(30,1)
new_rate = Float(a56.AudioLength)/v56.FrameCount*v56.FrameRateNumerator/v56.FrameRateDenominator
a56 = a56.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v56 = AudioDub(v56, a56)

a57 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4163.AVI")
v57 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4163.AVI").AssumeFPS(30,1)
new_rate = Float(a57.AudioLength)/v57.FrameCount*v57.FrameRateNumerator/v57.FrameRateDenominator
a57 = a57.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v57 = AudioDub(v57, a57)

a58 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4165.AVI")
v58 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4165.AVI").AssumeFPS(30,1)
new_rate = Float(a58.AudioLength)/v58.FrameCount*v58.FrameRateNumerator/v58.FrameRateDenominator
a58 = a58.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v58 = AudioDub(v58, a58)

a59 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4166.AVI")
v59 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4166.AVI").AssumeFPS(30,1)
new_rate = Float(a59.AudioLength)/v59.FrameCount*v59.FrameRateNumerator/v59.FrameRateDenominator
a59 = a59.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v59 = AudioDub(v59, a59)

a60 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4172.AVI")
v60 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4172.AVI").AssumeFPS(30,1)
new_rate = Float(a60.AudioLength)/v60.FrameCount*v60.FrameRateNumerator/v60.FrameRateDenominator
a60 = a60.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v60 = AudioDub(v60, a60)

a61 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4173.AVI")
v61 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4173.AVI").AssumeFPS(30,1)
new_rate = Float(a61.AudioLength)/v61.FrameCount*v61.FrameRateNumerator/v61.FrameRateDenominator
a61 = a61.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v61 = AudioDub(v61, a61)

a62 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4174.AVI")
v62 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4174.AVI").AssumeFPS(30,1)
new_rate = Float(a62.AudioLength)/v62.FrameCount*v62.FrameRateNumerator/v62.FrameRateDenominator
a62 = a62.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v62 = AudioDub(v62, a62)

a63 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4175.AVI")
v63 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4175.AVI").AssumeFPS(30,1)
new_rate = Float(a63.AudioLength)/v63.FrameCount*v63.FrameRateNumerator/v63.FrameRateDenominator
a63 = a63.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v63 = AudioDub(v63, a63)

a64 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4180.AVI")
v64 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4180.AVI").AssumeFPS(30,1)
new_rate = Float(a64.AudioLength)/v64.FrameCount*v64.FrameRateNumerator/v64.FrameRateDenominator
a64 = a64.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v64 = AudioDub(v64, a64)

a65 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4181.AVI")
v65 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4181.AVI").AssumeFPS(30,1)
new_rate = Float(a65.AudioLength)/v65.FrameCount*v65.FrameRateNumerator/v65.FrameRateDenominator
a65 = a65.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v65 = AudioDub(v65, a65)

a66 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4190.AVI")
v66 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4190.AVI").AssumeFPS(30,1)
new_rate = Float(a66.AudioLength)/v66.FrameCount*v66.FrameRateNumerator/v66.FrameRateDenominator
a66 = a66.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v66 = AudioDub(v66, a66)

a67 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4191.AVI")
v67 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4191.AVI").AssumeFPS(30,1)
new_rate = Float(a67.AudioLength)/v67.FrameCount*v67.FrameRateNumerator/v67.FrameRateDenominator
a67 = a67.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v67 = AudioDub(v67, a67)

a68 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4192.AVI")
v68 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4192.AVI").AssumeFPS(30,1)
new_rate = Float(a68.AudioLength)/v68.FrameCount*v68.FrameRateNumerator/v68.FrameRateDenominator
a68 = a68.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v68 = AudioDub(v68, a68)

a69 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4201.AVI")
v69 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4201.AVI").AssumeFPS(30,1)
new_rate = Float(a69.AudioLength)/v69.FrameCount*v69.FrameRateNumerator/v69.FrameRateDenominator
a69 = a69.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v69 = AudioDub(v69, a69)

a70 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4202.AVI")
v70 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4202.AVI").AssumeFPS(30,1)
new_rate = Float(a70.AudioLength)/v70.FrameCount*v70.FrameRateNumerator/v70.FrameRateDenominator
a70 = a70.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v70 = AudioDub(v70, a70)

a71 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4203.AVI")
v71 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4203.AVI").AssumeFPS(30,1)
new_rate = Float(a71.AudioLength)/v71.FrameCount*v71.FrameRateNumerator/v71.FrameRateDenominator
a71 = a71.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v71 = AudioDub(v71, a71)

a72 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4204.AVI")
v72 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4204.AVI").AssumeFPS(30,1)
new_rate = Float(a72.AudioLength)/v72.FrameCount*v72.FrameRateNumerator/v72.FrameRateDenominator
a72 = a72.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v72 = AudioDub(v72, a72)

a73 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4205.AVI")
v73 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4205.AVI").AssumeFPS(30,1)
new_rate = Float(a73.AudioLength)/v73.FrameCount*v73.FrameRateNumerator/v73.FrameRateDenominator
a73 = a73.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v73 = AudioDub(v73, a73)

a74 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4206.AVI")
v74 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4206.AVI").AssumeFPS(30,1)
new_rate = Float(a74.AudioLength)/v74.FrameCount*v74.FrameRateNumerator/v74.FrameRateDenominator
a74 = a74.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v74 = AudioDub(v74, a74)

a75 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4207.AVI")
v75 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4207.AVI").AssumeFPS(30,1)
new_rate = Float(a75.AudioLength)/v75.FrameCount*v75.FrameRateNumerator/v75.FrameRateDenominator
a75 = a75.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v75 = AudioDub(v75, a75)

a76 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4208.AVI")
v76 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4208.AVI").AssumeFPS(30,1)
new_rate = Float(a76.AudioLength)/v76.FrameCount*v76.FrameRateNumerator/v76.FrameRateDenominator
a76 = a76.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v76 = AudioDub(v76, a76)

a77 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4209.AVI")
v77 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4209.AVI").AssumeFPS(30,1)
new_rate = Float(a77.AudioLength)/v77.FrameCount*v77.FrameRateNumerator/v77.FrameRateDenominator
a77 = a77.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v77 = AudioDub(v77, a77)

a78 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4210.AVI")
v78 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4210.AVI").AssumeFPS(30,1)
new_rate = Float(a78.AudioLength)/v78.FrameCount*v78.FrameRateNumerator/v78.FrameRateDenominator
a78 = a78.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v78 = AudioDub(v78, a78)

a79 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4211.AVI")
v79 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4211.AVI").AssumeFPS(30,1)
new_rate = Float(a79.AudioLength)/v79.FrameCount*v79.FrameRateNumerator/v79.FrameRateDenominator
a79 = a79.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v79 = AudioDub(v79, a79)

a80 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4213.AVI")
v80 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4213.AVI").AssumeFPS(30,1)
new_rate = Float(a80.AudioLength)/v80.FrameCount*v80.FrameRateNumerator/v80.FrameRateDenominator
a80 = a80.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v80 = AudioDub(v80, a80)

a81 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4214.AVI")
v81 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4214.AVI").AssumeFPS(30,1)
new_rate = Float(a81.AudioLength)/v81.FrameCount*v81.FrameRateNumerator/v81.FrameRateDenominator
a81 = a81.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v81 = AudioDub(v81, a81)

a82 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4215.AVI")
v82 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4215.AVI").AssumeFPS(30,1)
new_rate = Float(a82.AudioLength)/v82.FrameCount*v82.FrameRateNumerator/v82.FrameRateDenominator
a82 = a82.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v82 = AudioDub(v82, a82)

a83 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4216.AVI")
v83 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4216.AVI").AssumeFPS(30,1)
new_rate = Float(a83.AudioLength)/v83.FrameCount*v83.FrameRateNumerator/v83.FrameRateDenominator
a83 = a83.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v83 = AudioDub(v83, a83)

a84 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4217.AVI")
v84 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4217.AVI").AssumeFPS(30,1)
new_rate = Float(a84.AudioLength)/v84.FrameCount*v84.FrameRateNumerator/v84.FrameRateDenominator
a84 = a84.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v84 = AudioDub(v84, a84)

a85 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4218.AVI")
v85 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4218.AVI").AssumeFPS(30,1)
new_rate = Float(a85.AudioLength)/v85.FrameCount*v85.FrameRateNumerator/v85.FrameRateDenominator
a85 = a85.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v85 = AudioDub(v85, a85)

a86 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4219.AVI")
v86 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4219.AVI").AssumeFPS(30,1)
new_rate = Float(a86.AudioLength)/v86.FrameCount*v86.FrameRateNumerator/v86.FrameRateDenominator
a86 = a86.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v86 = AudioDub(v86, a86)

a87 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4220.AVI")
v87 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4220.AVI").AssumeFPS(30,1)
new_rate = Float(a87.AudioLength)/v87.FrameCount*v87.FrameRateNumerator/v87.FrameRateDenominator
a87 = a87.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v87 = AudioDub(v87, a87)

a88 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4221.AVI")
v88 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4221.AVI").AssumeFPS(30,1)
new_rate = Float(a88.AudioLength)/v88.FrameCount*v88.FrameRateNumerator/v88.FrameRateDenominator
a88 = a88.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v88 = AudioDub(v88, a88)

a89 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4222.AVI")
v89 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4222.AVI").AssumeFPS(30,1)
new_rate = Float(a89.AudioLength)/v89.FrameCount*v89.FrameRateNumerator/v89.FrameRateDenominator
a89 = a89.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v89 = AudioDub(v89, a89)

a90 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4223.AVI")
v90 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4223.AVI").AssumeFPS(30,1)
new_rate = Float(a90.AudioLength)/v90.FrameCount*v90.FrameRateNumerator/v90.FrameRateDenominator
a90 = a90.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v90 = AudioDub(v90, a90)

a91 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4224.AVI")
v91 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4224.AVI").AssumeFPS(30,1)
new_rate = Float(a91.AudioLength)/v91.FrameCount*v91.FrameRateNumerator/v91.FrameRateDenominator
a91 = a91.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v91 = AudioDub(v91, a91)

a92 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4225.AVI")
v92 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4225.AVI").AssumeFPS(30,1)
new_rate = Float(a92.AudioLength)/v92.FrameCount*v92.FrameRateNumerator/v92.FrameRateDenominator
a92 = a92.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v92 = AudioDub(v92, a92)

a93 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4226.AVI")
v93 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4226.AVI").AssumeFPS(30,1)
new_rate = Float(a93.AudioLength)/v93.FrameCount*v93.FrameRateNumerator/v93.FrameRateDenominator
a93 = a93.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v93 = AudioDub(v93, a93)

a94 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4227.AVI")
v94 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4227.AVI").AssumeFPS(30,1)
new_rate = Float(a94.AudioLength)/v94.FrameCount*v94.FrameRateNumerator/v94.FrameRateDenominator
a94 = a94.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v94 = AudioDub(v94, a94)

a95 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4228.AVI")
v95 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4228.AVI").AssumeFPS(30,1)
new_rate = Float(a95.AudioLength)/v95.FrameCount*v95.FrameRateNumerator/v95.FrameRateDenominator
a95 = a95.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v95 = AudioDub(v95, a95)

a96 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4233.AVI")
v96 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4233.AVI").AssumeFPS(30,1)
new_rate = Float(a96.AudioLength)/v96.FrameCount*v96.FrameRateNumerator/v96.FrameRateDenominator
a96 = a96.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v96 = AudioDub(v96, a96)

a97 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4237.AVI")
v97 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4237.AVI").AssumeFPS(30,1)
new_rate = Float(a97.AudioLength)/v97.FrameCount*v97.FrameRateNumerator/v97.FrameRateDenominator
a97 = a97.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v97 = AudioDub(v97, a97)

a98 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4238.AVI")
v98 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4238.AVI").AssumeFPS(30,1)
new_rate = Float(a98.AudioLength)/v98.FrameCount*v98.FrameRateNumerator/v98.FrameRateDenominator
a98 = a98.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v98 = AudioDub(v98, a98)

a99 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4241.AVI")
v99 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4241.AVI").AssumeFPS(30,1)
new_rate = Float(a99.AudioLength)/v99.FrameCount*v99.FrameRateNumerator/v99.FrameRateDenominator
a99 = a99.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v99 = AudioDub(v99, a99)

a100 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4242.AVI")
v100 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4242.AVI").AssumeFPS(30,1)
new_rate = Float(a100.AudioLength)/v100.FrameCount*v100.FrameRateNumerator/v100.FrameRateDenominator
a100 = a100.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v100 = AudioDub(v100, a100)

a101 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4243.AVI")
v101 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4243.AVI").AssumeFPS(30,1)
new_rate = Float(a101.AudioLength)/v101.FrameCount*v101.FrameRateNumerator/v101.FrameRateDenominator
a101 = a101.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v101 = AudioDub(v101, a101)

a102 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4244.AVI")
v102 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4244.AVI").AssumeFPS(30,1)
new_rate = Float(a102.AudioLength)/v102.FrameCount*v102.FrameRateNumerator/v102.FrameRateDenominator
a102 = a102.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v102 = AudioDub(v102, a102)

a103 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4245.AVI")
v103 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4245.AVI").AssumeFPS(30,1)
new_rate = Float(a103.AudioLength)/v103.FrameCount*v103.FrameRateNumerator/v103.FrameRateDenominator
a103 = a103.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v103 = AudioDub(v103, a103)

a104 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4246.AVI")
v104 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4246.AVI").AssumeFPS(30,1)
new_rate = Float(a104.AudioLength)/v104.FrameCount*v104.FrameRateNumerator/v104.FrameRateDenominator
a104 = a104.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v104 = AudioDub(v104, a104)

a105 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4247.AVI")
v105 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4247.AVI").AssumeFPS(30,1)
new_rate = Float(a105.AudioLength)/v105.FrameCount*v105.FrameRateNumerator/v105.FrameRateDenominator
a105 = a105.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v105 = AudioDub(v105, a105)

a106 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4248.AVI")
v106 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4248.AVI").AssumeFPS(30,1)
new_rate = Float(a106.AudioLength)/v106.FrameCount*v106.FrameRateNumerator/v106.FrameRateDenominator
a106 = a106.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v106 = AudioDub(v106, a106)

a107 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4254.AVI")
v107 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4254.AVI").AssumeFPS(30,1)
new_rate = Float(a107.AudioLength)/v107.FrameCount*v107.FrameRateNumerator/v107.FrameRateDenominator
a107 = a107.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v107 = AudioDub(v107, a107)

a108 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4258.AVI")
v108 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4258.AVI").AssumeFPS(30,1)
new_rate = Float(a108.AudioLength)/v108.FrameCount*v108.FrameRateNumerator/v108.FrameRateDenominator
a108 = a108.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v108 = AudioDub(v108, a108)

a109 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4259.AVI")
v109 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4259.AVI").AssumeFPS(30,1)
new_rate = Float(a109.AudioLength)/v109.FrameCount*v109.FrameRateNumerator/v109.FrameRateDenominator
a109 = a109.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v109 = AudioDub(v109, a109)

a110 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4260.AVI")
v110 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4260.AVI").AssumeFPS(30,1)
new_rate = Float(a110.AudioLength)/v110.FrameCount*v110.FrameRateNumerator/v110.FrameRateDenominator
a110 = a110.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v110 = AudioDub(v110, a110)

a111 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4261.AVI")
v111 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4261.AVI").AssumeFPS(30,1)
new_rate = Float(a111.AudioLength)/v111.FrameCount*v111.FrameRateNumerator/v111.FrameRateDenominator
a111 = a111.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v111 = AudioDub(v111, a111)

a112 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4262.AVI")
v112 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4262.AVI").AssumeFPS(30,1)
new_rate = Float(a112.AudioLength)/v112.FrameCount*v112.FrameRateNumerator/v112.FrameRateDenominator
a112 = a112.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v112 = AudioDub(v112, a112)

a113 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4268.AVI")
v113 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4268.AVI").AssumeFPS(30,1)
new_rate = Float(a113.AudioLength)/v113.FrameCount*v113.FrameRateNumerator/v113.FrameRateDenominator
a113 = a113.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v113 = AudioDub(v113, a113)

a114 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4269.AVI")
v114 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4269.AVI").AssumeFPS(30,1)
new_rate = Float(a114.AudioLength)/v114.FrameCount*v114.FrameRateNumerator/v114.FrameRateDenominator
a114 = a114.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v114 = AudioDub(v114, a114)

a115 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4270.AVI")
v115 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4270.AVI").AssumeFPS(30,1)
new_rate = Float(a115.AudioLength)/v115.FrameCount*v115.FrameRateNumerator/v115.FrameRateDenominator
a115 = a115.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v115 = AudioDub(v115, a115)

a116 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4271.AVI")
v116 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4271.AVI").AssumeFPS(30,1)
new_rate = Float(a116.AudioLength)/v116.FrameCount*v116.FrameRateNumerator/v116.FrameRateDenominator
a116 = a116.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v116 = AudioDub(v116, a116)

a117 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4272.AVI")
v117 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4272.AVI").AssumeFPS(30,1)
new_rate = Float(a117.AudioLength)/v117.FrameCount*v117.FrameRateNumerator/v117.FrameRateDenominator
a117 = a117.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v117 = AudioDub(v117, a117)

a118 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4273.AVI")
v118 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4273.AVI").AssumeFPS(30,1)
new_rate = Float(a118.AudioLength)/v118.FrameCount*v118.FrameRateNumerator/v118.FrameRateDenominator
a118 = a118.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v118 = AudioDub(v118, a118)

a119 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4286.AVI")
v119 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4286.AVI").AssumeFPS(30,1)
new_rate = Float(a119.AudioLength)/v119.FrameCount*v119.FrameRateNumerator/v119.FrameRateDenominator
a119 = a119.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v119 = AudioDub(v119, a119)

a120 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4287.AVI")
v120 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4287.AVI").AssumeFPS(30,1)
new_rate = Float(a120.AudioLength)/v120.FrameCount*v120.FrameRateNumerator/v120.FrameRateDenominator
a120 = a120.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v120 = AudioDub(v120, a120)

a121 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4288.AVI")
v121 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4288.AVI").AssumeFPS(30,1)
new_rate = Float(a121.AudioLength)/v121.FrameCount*v121.FrameRateNumerator/v121.FrameRateDenominator
a121 = a121.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v121 = AudioDub(v121, a121)

a122 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4289.AVI")
v122 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4289.AVI").AssumeFPS(30,1)
new_rate = Float(a122.AudioLength)/v122.FrameCount*v122.FrameRateNumerator/v122.FrameRateDenominator
a122 = a122.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v122 = AudioDub(v122, a122)

a123 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4290.AVI")
v123 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4290.AVI").AssumeFPS(30,1)
new_rate = Float(a123.AudioLength)/v123.FrameCount*v123.FrameRateNumerator/v123.FrameRateDenominator
a123 = a123.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v123 = AudioDub(v123, a123)

a124 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4295.AVI")
v124 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4295.AVI").AssumeFPS(30,1)
new_rate = Float(a124.AudioLength)/v124.FrameCount*v124.FrameRateNumerator/v124.FrameRateDenominator
a124 = a124.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v124 = AudioDub(v124, a124)

a125 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4296.AVI")
v125 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4296.AVI").AssumeFPS(30,1)
new_rate = Float(a125.AudioLength)/v125.FrameCount*v125.FrameRateNumerator/v125.FrameRateDenominator
a125 = a125.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v125 = AudioDub(v125, a125)

a126 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4297.AVI")
v126 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4297.AVI").AssumeFPS(30,1)
new_rate = Float(a126.AudioLength)/v126.FrameCount*v126.FrameRateNumerator/v126.FrameRateDenominator
a126 = a126.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v126 = AudioDub(v126, a126)

a127 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4298.AVI")
v127 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4298.AVI").AssumeFPS(30,1)
new_rate = Float(a127.AudioLength)/v127.FrameCount*v127.FrameRateNumerator/v127.FrameRateDenominator
a127 = a127.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v127 = AudioDub(v127, a127)

a128 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4308.AVI")
v128 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4308.AVI").AssumeFPS(30,1)
new_rate = Float(a128.AudioLength)/v128.FrameCount*v128.FrameRateNumerator/v128.FrameRateDenominator
a128 = a128.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v128 = AudioDub(v128, a128)

a129 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4313.AVI")
v129 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4313.AVI").AssumeFPS(30,1)
new_rate = Float(a129.AudioLength)/v129.FrameCount*v129.FrameRateNumerator/v129.FrameRateDenominator
a129 = a129.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v129 = AudioDub(v129, a129)

a130 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4314.AVI")
v130 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4314.AVI").AssumeFPS(30,1)
new_rate = Float(a130.AudioLength)/v130.FrameCount*v130.FrameRateNumerator/v130.FrameRateDenominator
a130 = a130.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v130 = AudioDub(v130, a130)

a131 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4315.AVI")
v131 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4315.AVI").AssumeFPS(30,1)
new_rate = Float(a131.AudioLength)/v131.FrameCount*v131.FrameRateNumerator/v131.FrameRateDenominator
a131 = a131.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v131 = AudioDub(v131, a131)

a132 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4316.AVI")
v132 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4316.AVI").AssumeFPS(30,1)
new_rate = Float(a132.AudioLength)/v132.FrameCount*v132.FrameRateNumerator/v132.FrameRateDenominator
a132 = a132.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v132 = AudioDub(v132, a132)

a133 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4317.AVI")
v133 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4317.AVI").AssumeFPS(30,1)
new_rate = Float(a133.AudioLength)/v133.FrameCount*v133.FrameRateNumerator/v133.FrameRateDenominator
a133 = a133.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v133 = AudioDub(v133, a133)

a134 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4318.AVI")
v134 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4318.AVI").AssumeFPS(30,1)
new_rate = Float(a134.AudioLength)/v134.FrameCount*v134.FrameRateNumerator/v134.FrameRateDenominator
a134 = a134.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v134 = AudioDub(v134, a134)

a135 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4334.AVI")
v135 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4334.AVI").AssumeFPS(30,1)
new_rate = Float(a135.AudioLength)/v135.FrameCount*v135.FrameRateNumerator/v135.FrameRateDenominator
a135 = a135.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v135 = AudioDub(v135, a135)

a136 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4341.AVI")
v136 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4341.AVI").AssumeFPS(30,1)
new_rate = Float(a136.AudioLength)/v136.FrameCount*v136.FrameRateNumerator/v136.FrameRateDenominator
a136 = a136.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v136 = AudioDub(v136, a136)

a137 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4342.AVI")
v137 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4342.AVI").AssumeFPS(30,1)
new_rate = Float(a137.AudioLength)/v137.FrameCount*v137.FrameRateNumerator/v137.FrameRateDenominator
a137 = a137.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v137 = AudioDub(v137, a137)

a138 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4353.AVI")
v138 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4353.AVI").AssumeFPS(30,1)
new_rate = Float(a138.AudioLength)/v138.FrameCount*v138.FrameRateNumerator/v138.FrameRateDenominator
a138 = a138.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v138 = AudioDub(v138, a138)

a139 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4356.AVI")
v139 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4356.AVI").AssumeFPS(30,1)
new_rate = Float(a139.AudioLength)/v139.FrameCount*v139.FrameRateNumerator/v139.FrameRateDenominator
a139 = a139.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v139 = AudioDub(v139, a139)

a140 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4360.AVI")
v140 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4360.AVI").AssumeFPS(30,1)
new_rate = Float(a140.AudioLength)/v140.FrameCount*v140.FrameRateNumerator/v140.FrameRateDenominator
a140 = a140.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v140 = AudioDub(v140, a140)

a141 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4361.AVI")
v141 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4361.AVI").AssumeFPS(30,1)
new_rate = Float(a141.AudioLength)/v141.FrameCount*v141.FrameRateNumerator/v141.FrameRateDenominator
a141 = a141.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v141 = AudioDub(v141, a141)

a142 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4362.AVI")
v142 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4362.AVI").AssumeFPS(30,1)
new_rate = Float(a142.AudioLength)/v142.FrameCount*v142.FrameRateNumerator/v142.FrameRateDenominator
a142 = a142.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v142 = AudioDub(v142, a142)

a143 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4363.AVI")
v143 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4363.AVI").AssumeFPS(30,1)
new_rate = Float(a143.AudioLength)/v143.FrameCount*v143.FrameRateNumerator/v143.FrameRateDenominator
a143 = a143.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v143 = AudioDub(v143, a143)

a144 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4364.AVI")
v144 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4364.AVI").AssumeFPS(30,1)
new_rate = Float(a144.AudioLength)/v144.FrameCount*v144.FrameRateNumerator/v144.FrameRateDenominator
a144 = a144.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v144 = AudioDub(v144, a144)

a145 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4381.AVI")
v145 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4381.AVI").AssumeFPS(30,1)
new_rate = Float(a145.AudioLength)/v145.FrameCount*v145.FrameRateNumerator/v145.FrameRateDenominator
a145 = a145.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v145 = AudioDub(v145, a145)

a146 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4382.AVI")
v146 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4382.AVI").AssumeFPS(30,1)
new_rate = Float(a146.AudioLength)/v146.FrameCount*v146.FrameRateNumerator/v146.FrameRateDenominator
a146 = a146.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v146 = AudioDub(v146, a146)

a147 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4389.AVI")
v147 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4389.AVI").AssumeFPS(30,1)
new_rate = Float(a147.AudioLength)/v147.FrameCount*v147.FrameRateNumerator/v147.FrameRateDenominator
a147 = a147.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v147 = AudioDub(v147, a147)

a148 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4413.AVI")
v148 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4413.AVI").AssumeFPS(30,1)
new_rate = Float(a148.AudioLength)/v148.FrameCount*v148.FrameRateNumerator/v148.FrameRateDenominator
a148 = a148.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v148 = AudioDub(v148, a148)

a149 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4414.AVI")
v149 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4414.AVI").AssumeFPS(30,1)
new_rate = Float(a149.AudioLength)/v149.FrameCount*v149.FrameRateNumerator/v149.FrameRateDenominator
a149 = a149.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v149 = AudioDub(v149, a149)

a150 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4415.AVI")
v150 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4415.AVI").AssumeFPS(30,1)
new_rate = Float(a150.AudioLength)/v150.FrameCount*v150.FrameRateNumerator/v150.FrameRateDenominator
a150 = a150.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v150 = AudioDub(v150, a150)

a151 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4416.AVI")
v151 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4416.AVI").AssumeFPS(30,1)
new_rate = Float(a151.AudioLength)/v151.FrameCount*v151.FrameRateNumerator/v151.FrameRateDenominator
a151 = a151.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v151 = AudioDub(v151, a151)

a152 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4417.AVI")
v152 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4417.AVI").AssumeFPS(30,1)
new_rate = Float(a152.AudioLength)/v152.FrameCount*v152.FrameRateNumerator/v152.FrameRateDenominator
a152 = a152.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v152 = AudioDub(v152, a152)

a153 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4421.AVI")
v153 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4421.AVI").AssumeFPS(30,1)
new_rate = Float(a153.AudioLength)/v153.FrameCount*v153.FrameRateNumerator/v153.FrameRateDenominator
a153 = a153.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v153 = AudioDub(v153, a153)

a154 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4423.AVI")
v154 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4423.AVI").AssumeFPS(30,1)
new_rate = Float(a154.AudioLength)/v154.FrameCount*v154.FrameRateNumerator/v154.FrameRateDenominator
a154 = a154.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v154 = AudioDub(v154, a154)

a155 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4424.AVI")
v155 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4424.AVI").AssumeFPS(30,1)
new_rate = Float(a155.AudioLength)/v155.FrameCount*v155.FrameRateNumerator/v155.FrameRateDenominator
a155 = a155.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v155 = AudioDub(v155, a155)

a156 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4425.AVI")
v156 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4425.AVI").AssumeFPS(30,1)
new_rate = Float(a156.AudioLength)/v156.FrameCount*v156.FrameRateNumerator/v156.FrameRateDenominator
a156 = a156.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v156 = AudioDub(v156, a156)

a157 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4429.AVI")
v157 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4429.AVI").AssumeFPS(30,1)
new_rate = Float(a157.AudioLength)/v157.FrameCount*v157.FrameRateNumerator/v157.FrameRateDenominator
a157 = a157.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v157 = AudioDub(v157, a157)

a158 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4430.AVI")
v158 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4430.AVI").AssumeFPS(30,1)
new_rate = Float(a158.AudioLength)/v158.FrameCount*v158.FrameRateNumerator/v158.FrameRateDenominator
a158 = a158.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v158 = AudioDub(v158, a158)

a159 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4431.AVI")
v159 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4431.AVI").AssumeFPS(30,1)
new_rate = Float(a159.AudioLength)/v159.FrameCount*v159.FrameRateNumerator/v159.FrameRateDenominator
a159 = a159.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v159 = AudioDub(v159, a159)

a160 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4434.AVI")
v160 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4434.AVI").AssumeFPS(30,1)
new_rate = Float(a160.AudioLength)/v160.FrameCount*v160.FrameRateNumerator/v160.FrameRateDenominator
a160 = a160.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v160 = AudioDub(v160, a160)

a161 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4435.AVI")
v161 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4435.AVI").AssumeFPS(30,1)
new_rate = Float(a161.AudioLength)/v161.FrameCount*v161.FrameRateNumerator/v161.FrameRateDenominator
a161 = a161.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v161 = AudioDub(v161, a161)

a162 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4436.AVI")
v162 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4436.AVI").AssumeFPS(30,1)
new_rate = Float(a162.AudioLength)/v162.FrameCount*v162.FrameRateNumerator/v162.FrameRateDenominator
a162 = a162.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v162 = AudioDub(v162, a162)

a163 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4437.AVI")
v163 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4437.AVI").AssumeFPS(30,1)
new_rate = Float(a163.AudioLength)/v163.FrameCount*v163.FrameRateNumerator/v163.FrameRateDenominator
a163 = a163.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v163 = AudioDub(v163, a163)

a164 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4438.AVI")
v164 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4438.AVI").AssumeFPS(30,1)
new_rate = Float(a164.AudioLength)/v164.FrameCount*v164.FrameRateNumerator/v164.FrameRateDenominator
a164 = a164.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v164 = AudioDub(v164, a164)

a165 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4439.AVI")
v165 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4439.AVI").AssumeFPS(30,1)
new_rate = Float(a165.AudioLength)/v165.FrameCount*v165.FrameRateNumerator/v165.FrameRateDenominator
a165 = a165.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v165 = AudioDub(v165, a165)

a166 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4445.AVI")
v166 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4445.AVI").AssumeFPS(30,1)
new_rate = Float(a166.AudioLength)/v166.FrameCount*v166.FrameRateNumerator/v166.FrameRateDenominator
a166 = a166.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v166 = AudioDub(v166, a166)

a167 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4446.AVI")
v167 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4446.AVI").AssumeFPS(30,1)
new_rate = Float(a167.AudioLength)/v167.FrameCount*v167.FrameRateNumerator/v167.FrameRateDenominator
a167 = a167.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v167 = AudioDub(v167, a167)

a168 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4447.AVI")
v168 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4447.AVI").AssumeFPS(30,1)
new_rate = Float(a168.AudioLength)/v168.FrameCount*v168.FrameRateNumerator/v168.FrameRateDenominator
a168 = a168.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v168 = AudioDub(v168, a168)

a169 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4448.AVI")
v169 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4448.AVI").AssumeFPS(30,1)
new_rate = Float(a169.AudioLength)/v169.FrameCount*v169.FrameRateNumerator/v169.FrameRateDenominator
a169 = a169.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v169 = AudioDub(v169, a169)

a170 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4449.AVI")
v170 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4449.AVI").AssumeFPS(30,1)
new_rate = Float(a170.AudioLength)/v170.FrameCount*v170.FrameRateNumerator/v170.FrameRateDenominator
a170 = a170.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v170 = AudioDub(v170, a170)

a171 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4450.AVI")
v171 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4450.AVI").AssumeFPS(30,1)
new_rate = Float(a171.AudioLength)/v171.FrameCount*v171.FrameRateNumerator/v171.FrameRateDenominator
a171 = a171.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v171 = AudioDub(v171, a171)

a172 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4451.AVI")
v172 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4451.AVI").AssumeFPS(30,1)
new_rate = Float(a172.AudioLength)/v172.FrameCount*v172.FrameRateNumerator/v172.FrameRateDenominator
a172 = a172.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v172 = AudioDub(v172, a172)

a173 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4452.AVI")
v173 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4452.AVI").AssumeFPS(30,1)
new_rate = Float(a173.AudioLength)/v173.FrameCount*v173.FrameRateNumerator/v173.FrameRateDenominator
a173 = a173.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v173 = AudioDub(v173, a173)

a174 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4453.AVI")
v174 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4453.AVI").AssumeFPS(30,1)
new_rate = Float(a174.AudioLength)/v174.FrameCount*v174.FrameRateNumerator/v174.FrameRateDenominator
a174 = a174.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v174 = AudioDub(v174, a174)

a175 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4454.AVI")
v175 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4454.AVI").AssumeFPS(30,1)
new_rate = Float(a175.AudioLength)/v175.FrameCount*v175.FrameRateNumerator/v175.FrameRateDenominator
a175 = a175.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v175 = AudioDub(v175, a175)

a176 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4455.AVI")
v176 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4455.AVI").AssumeFPS(30,1)
new_rate = Float(a176.AudioLength)/v176.FrameCount*v176.FrameRateNumerator/v176.FrameRateDenominator
a176 = a176.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v176 = AudioDub(v176, a176)

a177 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4456.AVI")
v177 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4456.AVI").AssumeFPS(30,1)
new_rate = Float(a177.AudioLength)/v177.FrameCount*v177.FrameRateNumerator/v177.FrameRateDenominator
a177 = a177.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v177 = AudioDub(v177, a177)

a178 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4457.AVI")
v178 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4457.AVI").AssumeFPS(30,1)
new_rate = Float(a178.AudioLength)/v178.FrameCount*v178.FrameRateNumerator/v178.FrameRateDenominator
a178 = a178.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v178 = AudioDub(v178, a178)

a179 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4458.AVI")
v179 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4458.AVI").AssumeFPS(30,1)
new_rate = Float(a179.AudioLength)/v179.FrameCount*v179.FrameRateNumerator/v179.FrameRateDenominator
a179 = a179.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v179 = AudioDub(v179, a179)

a180 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4459.AVI")
v180 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4459.AVI").AssumeFPS(30,1)
new_rate = Float(a180.AudioLength)/v180.FrameCount*v180.FrameRateNumerator/v180.FrameRateDenominator
a180 = a180.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v180 = AudioDub(v180, a180)

a181 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4460.AVI")
v181 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4460.AVI").AssumeFPS(30,1)
new_rate = Float(a181.AudioLength)/v181.FrameCount*v181.FrameRateNumerator/v181.FrameRateDenominator
a181 = a181.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v181 = AudioDub(v181, a181)

a182 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4467.AVI")
v182 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4467.AVI").AssumeFPS(30,1)
new_rate = Float(a182.AudioLength)/v182.FrameCount*v182.FrameRateNumerator/v182.FrameRateDenominator
a182 = a182.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v182 = AudioDub(v182, a182)

a183 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4468.AVI")
v183 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4468.AVI").AssumeFPS(30,1)
new_rate = Float(a183.AudioLength)/v183.FrameCount*v183.FrameRateNumerator/v183.FrameRateDenominator
a183 = a183.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v183 = AudioDub(v183, a183)

a184 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4469.AVI")
v184 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4469.AVI").AssumeFPS(30,1)
new_rate = Float(a184.AudioLength)/v184.FrameCount*v184.FrameRateNumerator/v184.FrameRateDenominator
a184 = a184.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v184 = AudioDub(v184, a184)

a185 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4470.AVI")
v185 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4470.AVI").AssumeFPS(30,1)
new_rate = Float(a185.AudioLength)/v185.FrameCount*v185.FrameRateNumerator/v185.FrameRateDenominator
a185 = a185.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v185 = AudioDub(v185, a185)

a186 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4471.AVI")
v186 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4471.AVI").AssumeFPS(30,1)
new_rate = Float(a186.AudioLength)/v186.FrameCount*v186.FrameRateNumerator/v186.FrameRateDenominator
a186 = a186.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v186 = AudioDub(v186, a186)

a187 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4472.AVI")
v187 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4472.AVI").AssumeFPS(30,1)
new_rate = Float(a187.AudioLength)/v187.FrameCount*v187.FrameRateNumerator/v187.FrameRateDenominator
a187 = a187.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v187 = AudioDub(v187, a187)

a188 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4473.AVI")
v188 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4473.AVI").AssumeFPS(30,1)
new_rate = Float(a188.AudioLength)/v188.FrameCount*v188.FrameRateNumerator/v188.FrameRateDenominator
a188 = a188.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v188 = AudioDub(v188, a188)

a189 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4480.AVI")
v189 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4480.AVI").AssumeFPS(30,1)
new_rate = Float(a189.AudioLength)/v189.FrameCount*v189.FrameRateNumerator/v189.FrameRateDenominator
a189 = a189.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v189 = AudioDub(v189, a189)

a190 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4481.AVI")
v190 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4481.AVI").AssumeFPS(30,1)
new_rate = Float(a190.AudioLength)/v190.FrameCount*v190.FrameRateNumerator/v190.FrameRateDenominator
a190 = a190.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v190 = AudioDub(v190, a190)

a191 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4489.AVI")
v191 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4489.AVI").AssumeFPS(30,1)
new_rate = Float(a191.AudioLength)/v191.FrameCount*v191.FrameRateNumerator/v191.FrameRateDenominator
a191 = a191.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v191 = AudioDub(v191, a191)

a192 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4490.AVI")
v192 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4490.AVI").AssumeFPS(30,1)
new_rate = Float(a192.AudioLength)/v192.FrameCount*v192.FrameRateNumerator/v192.FrameRateDenominator
a192 = a192.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v192 = AudioDub(v192, a192)

a193 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4491.AVI")
v193 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4491.AVI").AssumeFPS(30,1)
new_rate = Float(a193.AudioLength)/v193.FrameCount*v193.FrameRateNumerator/v193.FrameRateDenominator
a193 = a193.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v193 = AudioDub(v193, a193)

a194 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4492.AVI")
v194 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4492.AVI").AssumeFPS(30,1)
new_rate = Float(a194.AudioLength)/v194.FrameCount*v194.FrameRateNumerator/v194.FrameRateDenominator
a194 = a194.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v194 = AudioDub(v194, a194)

a195 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4496.AVI")
v195 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4496.AVI").AssumeFPS(30,1)
new_rate = Float(a195.AudioLength)/v195.FrameCount*v195.FrameRateNumerator/v195.FrameRateDenominator
a195 = a195.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v195 = AudioDub(v195, a195)

a196 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4497.AVI")
v196 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4497.AVI").AssumeFPS(30,1)
new_rate = Float(a196.AudioLength)/v196.FrameCount*v196.FrameRateNumerator/v196.FrameRateDenominator
a196 = a196.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v196 = AudioDub(v196, a196)

a197 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4505.AVI")
v197 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4505.AVI").AssumeFPS(30,1)
new_rate = Float(a197.AudioLength)/v197.FrameCount*v197.FrameRateNumerator/v197.FrameRateDenominator
a197 = a197.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v197 = AudioDub(v197, a197)

a198 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4506.AVI")
v198 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4506.AVI").AssumeFPS(30,1)
new_rate = Float(a198.AudioLength)/v198.FrameCount*v198.FrameRateNumerator/v198.FrameRateDenominator
a198 = a198.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v198 = AudioDub(v198, a198)

a199 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4507.AVI")
v199 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4507.AVI").AssumeFPS(30,1)
new_rate = Float(a199.AudioLength)/v199.FrameCount*v199.FrameRateNumerator/v199.FrameRateDenominator
a199 = a199.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v199 = AudioDub(v199, a199)

a200 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4508.AVI")
v200 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4508.AVI").AssumeFPS(30,1)
new_rate = Float(a200.AudioLength)/v200.FrameCount*v200.FrameRateNumerator/v200.FrameRateDenominator
a200 = a200.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v200 = AudioDub(v200, a200)

a201 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4509.AVI")
v201 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4509.AVI").AssumeFPS(30,1)
new_rate = Float(a201.AudioLength)/v201.FrameCount*v201.FrameRateNumerator/v201.FrameRateDenominator
a201 = a201.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v201 = AudioDub(v201, a201)

a202 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4510.AVI")
v202 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4510.AVI").AssumeFPS(30,1)
new_rate = Float(a202.AudioLength)/v202.FrameCount*v202.FrameRateNumerator/v202.FrameRateDenominator
a202 = a202.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v202 = AudioDub(v202, a202)

a203 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4511.AVI")
v203 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4511.AVI").AssumeFPS(30,1)
new_rate = Float(a203.AudioLength)/v203.FrameCount*v203.FrameRateNumerator/v203.FrameRateDenominator
a203 = a203.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v203 = AudioDub(v203, a203)

a204 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4512.AVI")
v204 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4512.AVI").AssumeFPS(30,1)
new_rate = Float(a204.AudioLength)/v204.FrameCount*v204.FrameRateNumerator/v204.FrameRateDenominator
a204 = a204.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v204 = AudioDub(v204, a204)

a205 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4513.AVI")
v205 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4513.AVI").AssumeFPS(30,1)
new_rate = Float(a205.AudioLength)/v205.FrameCount*v205.FrameRateNumerator/v205.FrameRateDenominator
a205 = a205.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v205 = AudioDub(v205, a205)

a206 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4514.AVI")
v206 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4514.AVI").AssumeFPS(30,1)
new_rate = Float(a206.AudioLength)/v206.FrameCount*v206.FrameRateNumerator/v206.FrameRateDenominator
a206 = a206.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v206 = AudioDub(v206, a206)

a207 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4517.AVI")
v207 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4517.AVI").AssumeFPS(30,1)
new_rate = Float(a207.AudioLength)/v207.FrameCount*v207.FrameRateNumerator/v207.FrameRateDenominator
a207 = a207.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v207 = AudioDub(v207, a207)

a208 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4518.AVI")
v208 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4518.AVI").AssumeFPS(30,1)
new_rate = Float(a208.AudioLength)/v208.FrameCount*v208.FrameRateNumerator/v208.FrameRateDenominator
a208 = a208.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v208 = AudioDub(v208, a208)

a209 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4519.AVI")
v209 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4519.AVI").AssumeFPS(30,1)
new_rate = Float(a209.AudioLength)/v209.FrameCount*v209.FrameRateNumerator/v209.FrameRateDenominator
a209 = a209.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v209 = AudioDub(v209, a209)

a210 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4520.AVI")
v210 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4520.AVI").AssumeFPS(30,1)
new_rate = Float(a210.AudioLength)/v210.FrameCount*v210.FrameRateNumerator/v210.FrameRateDenominator
a210 = a210.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v210 = AudioDub(v210, a210)

a211 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4521.AVI")
v211 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4521.AVI").AssumeFPS(30,1)
new_rate = Float(a211.AudioLength)/v211.FrameCount*v211.FrameRateNumerator/v211.FrameRateDenominator
a211 = a211.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v211 = AudioDub(v211, a211)

a212 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4522.AVI")
v212 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4522.AVI").AssumeFPS(30,1)
new_rate = Float(a212.AudioLength)/v212.FrameCount*v212.FrameRateNumerator/v212.FrameRateDenominator
a212 = a212.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v212 = AudioDub(v212, a212)

a213 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4523.AVI")
v213 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4523.AVI").AssumeFPS(30,1)
new_rate = Float(a213.AudioLength)/v213.FrameCount*v213.FrameRateNumerator/v213.FrameRateDenominator
a213 = a213.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v213 = AudioDub(v213, a213)

a214 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4524.AVI")
v214 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4524.AVI").AssumeFPS(30,1)
new_rate = Float(a214.AudioLength)/v214.FrameCount*v214.FrameRateNumerator/v214.FrameRateDenominator
a214 = a214.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v214 = AudioDub(v214, a214)

a215 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4525.AVI")
v215 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4525.AVI").AssumeFPS(30,1)
new_rate = Float(a215.AudioLength)/v215.FrameCount*v215.FrameRateNumerator/v215.FrameRateDenominator
a215 = a215.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v215 = AudioDub(v215, a215)

a216 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4526.AVI")
v216 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4526.AVI").AssumeFPS(30,1)
new_rate = Float(a216.AudioLength)/v216.FrameCount*v216.FrameRateNumerator/v216.FrameRateDenominator
a216 = a216.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v216 = AudioDub(v216, a216)

a217 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4529.AVI")
v217 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4529.AVI").AssumeFPS(30,1)
new_rate = Float(a217.AudioLength)/v217.FrameCount*v217.FrameRateNumerator/v217.FrameRateDenominator
a217 = a217.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v217 = AudioDub(v217, a217)

a218 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4530.AVI")
v218 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4530.AVI").AssumeFPS(30,1)
new_rate = Float(a218.AudioLength)/v218.FrameCount*v218.FrameRateNumerator/v218.FrameRateDenominator
a218 = a218.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v218 = AudioDub(v218, a218)

a219 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4531.AVI")
v219 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4531.AVI").AssumeFPS(30,1)
new_rate = Float(a219.AudioLength)/v219.FrameCount*v219.FrameRateNumerator/v219.FrameRateDenominator
a219 = a219.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v219 = AudioDub(v219, a219)

a220 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4539.AVI")
v220 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4539.AVI").AssumeFPS(30,1)
new_rate = Float(a220.AudioLength)/v220.FrameCount*v220.FrameRateNumerator/v220.FrameRateDenominator
a220 = a220.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v220 = AudioDub(v220, a220)

a221 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4540.AVI")
v221 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4540.AVI").AssumeFPS(30,1)
new_rate = Float(a221.AudioLength)/v221.FrameCount*v221.FrameRateNumerator/v221.FrameRateDenominator
a221 = a221.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v221 = AudioDub(v221, a221)

a222 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4541.AVI")
v222 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4541.AVI").AssumeFPS(30,1)
new_rate = Float(a222.AudioLength)/v222.FrameCount*v222.FrameRateNumerator/v222.FrameRateDenominator
a222 = a222.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v222 = AudioDub(v222, a222)

a223 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4542.AVI")
v223 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4542.AVI").AssumeFPS(30,1)
new_rate = Float(a223.AudioLength)/v223.FrameCount*v223.FrameRateNumerator/v223.FrameRateDenominator
a223 = a223.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v223 = AudioDub(v223, a223)

a224 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4543.AVI")
v224 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4543.AVI").AssumeFPS(30,1)
new_rate = Float(a224.AudioLength)/v224.FrameCount*v224.FrameRateNumerator/v224.FrameRateDenominator
a224 = a224.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v224 = AudioDub(v224, a224)

a225 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4544.AVI")
v225 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4544.AVI").AssumeFPS(30,1)
new_rate = Float(a225.AudioLength)/v225.FrameCount*v225.FrameRateNumerator/v225.FrameRateDenominator
a225 = a225.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v225 = AudioDub(v225, a225)

a226 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4545.AVI")
v226 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4545.AVI").AssumeFPS(30,1)
new_rate = Float(a226.AudioLength)/v226.FrameCount*v226.FrameRateNumerator/v226.FrameRateDenominator
a226 = a226.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v226 = AudioDub(v226, a226)

a227 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4546.AVI")
v227 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4546.AVI").AssumeFPS(30,1)
new_rate = Float(a227.AudioLength)/v227.FrameCount*v227.FrameRateNumerator/v227.FrameRateDenominator
a227 = a227.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v227 = AudioDub(v227, a227)

a228 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4553.AVI")
v228 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4553.AVI").AssumeFPS(30,1)
new_rate = Float(a228.AudioLength)/v228.FrameCount*v228.FrameRateNumerator/v228.FrameRateDenominator
a228 = a228.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v228 = AudioDub(v228, a228)

a229 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4557.AVI")
v229 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4557.AVI").AssumeFPS(30,1)
new_rate = Float(a229.AudioLength)/v229.FrameCount*v229.FrameRateNumerator/v229.FrameRateDenominator
a229 = a229.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v229 = AudioDub(v229, a229)

a230 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4558.AVI")
v230 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4558.AVI").AssumeFPS(30,1)
new_rate = Float(a230.AudioLength)/v230.FrameCount*v230.FrameRateNumerator/v230.FrameRateDenominator
a230 = a230.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v230 = AudioDub(v230, a230)

a231 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4559.AVI")
v231 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4559.AVI").AssumeFPS(30,1)
new_rate = Float(a231.AudioLength)/v231.FrameCount*v231.FrameRateNumerator/v231.FrameRateDenominator
a231 = a231.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v231 = AudioDub(v231, a231)

a232 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4560.AVI")
v232 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4560.AVI").AssumeFPS(30,1)
new_rate = Float(a232.AudioLength)/v232.FrameCount*v232.FrameRateNumerator/v232.FrameRateDenominator
a232 = a232.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v232 = AudioDub(v232, a232)

a233 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4561.AVI")
v233 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4561.AVI").AssumeFPS(30,1)
new_rate = Float(a233.AudioLength)/v233.FrameCount*v233.FrameRateNumerator/v233.FrameRateDenominator
a233 = a233.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v233 = AudioDub(v233, a233)

a234 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4562.AVI")
v234 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4562.AVI").AssumeFPS(30,1)
new_rate = Float(a234.AudioLength)/v234.FrameCount*v234.FrameRateNumerator/v234.FrameRateDenominator
a234 = a234.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v234 = AudioDub(v234, a234)

a235 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4563.AVI")
v235 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4563.AVI").AssumeFPS(30,1)
new_rate = Float(a235.AudioLength)/v235.FrameCount*v235.FrameRateNumerator/v235.FrameRateDenominator
a235 = a235.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v235 = AudioDub(v235, a235)

a236 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4564.AVI")
v236 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4564.AVI").AssumeFPS(30,1)
new_rate = Float(a236.AudioLength)/v236.FrameCount*v236.FrameRateNumerator/v236.FrameRateDenominator
a236 = a236.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v236 = AudioDub(v236, a236)

a237 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4565.AVI")
v237 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4565.AVI").AssumeFPS(30,1)
new_rate = Float(a237.AudioLength)/v237.FrameCount*v237.FrameRateNumerator/v237.FrameRateDenominator
a237 = a237.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v237 = AudioDub(v237, a237)

a238 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4568.AVI")
v238 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4568.AVI").AssumeFPS(30,1)
new_rate = Float(a238.AudioLength)/v238.FrameCount*v238.FrameRateNumerator/v238.FrameRateDenominator
a238 = a238.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v238 = AudioDub(v238, a238)

a239 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4569.AVI")
v239 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4569.AVI").AssumeFPS(30,1)
new_rate = Float(a239.AudioLength)/v239.FrameCount*v239.FrameRateNumerator/v239.FrameRateDenominator
a239 = a239.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v239 = AudioDub(v239, a239)

a240 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4570.AVI")
v240 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4570.AVI").AssumeFPS(30,1)
new_rate = Float(a240.AudioLength)/v240.FrameCount*v240.FrameRateNumerator/v240.FrameRateDenominator
a240 = a240.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v240 = AudioDub(v240, a240)

a241 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4571.AVI")
v241 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4571.AVI").AssumeFPS(30,1)
new_rate = Float(a241.AudioLength)/v241.FrameCount*v241.FrameRateNumerator/v241.FrameRateDenominator
a241 = a241.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v241 = AudioDub(v241, a241)

a242 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4572.AVI")
v242 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4572.AVI").AssumeFPS(30,1)
new_rate = Float(a242.AudioLength)/v242.FrameCount*v242.FrameRateNumerator/v242.FrameRateDenominator
a242 = a242.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v242 = AudioDub(v242, a242)

a243 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4573.AVI")
v243 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4573.AVI").AssumeFPS(30,1)
new_rate = Float(a243.AudioLength)/v243.FrameCount*v243.FrameRateNumerator/v243.FrameRateDenominator
a243 = a243.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v243 = AudioDub(v243, a243)

a244 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4574.AVI")
v244 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4574.AVI").AssumeFPS(30,1)
new_rate = Float(a244.AudioLength)/v244.FrameCount*v244.FrameRateNumerator/v244.FrameRateDenominator
a244 = a244.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v244 = AudioDub(v244, a244)

a245 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4575.AVI")
v245 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4575.AVI").AssumeFPS(30,1)
new_rate = Float(a245.AudioLength)/v245.FrameCount*v245.FrameRateNumerator/v245.FrameRateDenominator
a245 = a245.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v245 = AudioDub(v245, a245)

a246 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4576.AVI")
v246 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4576.AVI").AssumeFPS(30,1)
new_rate = Float(a246.AudioLength)/v246.FrameCount*v246.FrameRateNumerator/v246.FrameRateDenominator
a246 = a246.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v246 = AudioDub(v246, a246)

a247 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4577.AVI")
v247 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4577.AVI").AssumeFPS(30,1)
new_rate = Float(a247.AudioLength)/v247.FrameCount*v247.FrameRateNumerator/v247.FrameRateDenominator
a247 = a247.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v247 = AudioDub(v247, a247)

a248 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4578.AVI")
v248 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4578.AVI").AssumeFPS(30,1)
new_rate = Float(a248.AudioLength)/v248.FrameCount*v248.FrameRateNumerator/v248.FrameRateDenominator
a248 = a248.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v248 = AudioDub(v248, a248)

a249 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4579.AVI")
v249 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4579.AVI").AssumeFPS(30,1)
new_rate = Float(a249.AudioLength)/v249.FrameCount*v249.FrameRateNumerator/v249.FrameRateDenominator
a249 = a249.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v249 = AudioDub(v249, a249)

a250 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4580.AVI")
v250 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4580.AVI").AssumeFPS(30,1)
new_rate = Float(a250.AudioLength)/v250.FrameCount*v250.FrameRateNumerator/v250.FrameRateDenominator
a250 = a250.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v250 = AudioDub(v250, a250)

a251 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4581.AVI")
v251 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4581.AVI").AssumeFPS(30,1)
new_rate = Float(a251.AudioLength)/v251.FrameCount*v251.FrameRateNumerator/v251.FrameRateDenominator
a251 = a251.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v251 = AudioDub(v251, a251)

a252 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4587.AVI")
v252 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4587.AVI").AssumeFPS(30,1)
new_rate = Float(a252.AudioLength)/v252.FrameCount*v252.FrameRateNumerator/v252.FrameRateDenominator
a252 = a252.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v252 = AudioDub(v252, a252)

a253 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4588.AVI")
v253 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4588.AVI").AssumeFPS(30,1)
new_rate = Float(a253.AudioLength)/v253.FrameCount*v253.FrameRateNumerator/v253.FrameRateDenominator
a253 = a253.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v253 = AudioDub(v253, a253)

a254 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4589.AVI")
v254 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4589.AVI").AssumeFPS(30,1)
new_rate = Float(a254.AudioLength)/v254.FrameCount*v254.FrameRateNumerator/v254.FrameRateDenominator
a254 = a254.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v254 = AudioDub(v254, a254)

a255 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4615.AVI")
v255 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4615.AVI").AssumeFPS(30,1)
new_rate = Float(a255.AudioLength)/v255.FrameCount*v255.FrameRateNumerator/v255.FrameRateDenominator
a255 = a255.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v255 = AudioDub(v255, a255)

a256 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4616.AVI")
v256 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4616.AVI").AssumeFPS(30,1)
new_rate = Float(a256.AudioLength)/v256.FrameCount*v256.FrameRateNumerator/v256.FrameRateDenominator
a256 = a256.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v256 = AudioDub(v256, a256)

a257 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4617.AVI")
v257 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4617.AVI").AssumeFPS(30,1)
new_rate = Float(a257.AudioLength)/v257.FrameCount*v257.FrameRateNumerator/v257.FrameRateDenominator
a257 = a257.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v257 = AudioDub(v257, a257)

a258 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4618.AVI")
v258 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4618.AVI").AssumeFPS(30,1)
new_rate = Float(a258.AudioLength)/v258.FrameCount*v258.FrameRateNumerator/v258.FrameRateDenominator
a258 = a258.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v258 = AudioDub(v258, a258)

a259 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4619.AVI")
v259 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4619.AVI").AssumeFPS(30,1)
new_rate = Float(a259.AudioLength)/v259.FrameCount*v259.FrameRateNumerator/v259.FrameRateDenominator
a259 = a259.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v259 = AudioDub(v259, a259)

a260 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4620.AVI")
v260 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4620.AVI").AssumeFPS(30,1)
new_rate = Float(a260.AudioLength)/v260.FrameCount*v260.FrameRateNumerator/v260.FrameRateDenominator
a260 = a260.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v260 = AudioDub(v260, a260)

a261 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4621.AVI")
v261 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4621.AVI").AssumeFPS(30,1)
new_rate = Float(a261.AudioLength)/v261.FrameCount*v261.FrameRateNumerator/v261.FrameRateDenominator
a261 = a261.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v261 = AudioDub(v261, a261)

a262 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4622.AVI")
v262 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4622.AVI").AssumeFPS(30,1)
new_rate = Float(a262.AudioLength)/v262.FrameCount*v262.FrameRateNumerator/v262.FrameRateDenominator
a262 = a262.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v262 = AudioDub(v262, a262)

a263 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4623.AVI")
v263 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4623.AVI").AssumeFPS(30,1)
new_rate = Float(a263.AudioLength)/v263.FrameCount*v263.FrameRateNumerator/v263.FrameRateDenominator
a263 = a263.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v263 = AudioDub(v263, a263)

a264 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4624.AVI")
v264 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4624.AVI").AssumeFPS(30,1)
new_rate = Float(a264.AudioLength)/v264.FrameCount*v264.FrameRateNumerator/v264.FrameRateDenominator
a264 = a264.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v264 = AudioDub(v264, a264)

a265 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4625.AVI")
v265 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4625.AVI").AssumeFPS(30,1)
new_rate = Float(a265.AudioLength)/v265.FrameCount*v265.FrameRateNumerator/v265.FrameRateDenominator
a265 = a265.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v265 = AudioDub(v265, a265)

a266 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4628.AVI")
v266 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4628.AVI").AssumeFPS(30,1)
new_rate = Float(a266.AudioLength)/v266.FrameCount*v266.FrameRateNumerator/v266.FrameRateDenominator
a266 = a266.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v266 = AudioDub(v266, a266)

a267 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4629.AVI")
v267 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4629.AVI").AssumeFPS(30,1)
new_rate = Float(a267.AudioLength)/v267.FrameCount*v267.FrameRateNumerator/v267.FrameRateDenominator
a267 = a267.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v267 = AudioDub(v267, a267)

a268 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4630.AVI")
v268 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4630.AVI").AssumeFPS(30,1)
new_rate = Float(a268.AudioLength)/v268.FrameCount*v268.FrameRateNumerator/v268.FrameRateDenominator
a268 = a268.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v268 = AudioDub(v268, a268)

a269 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4631.AVI")
v269 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4631.AVI").AssumeFPS(30,1)
new_rate = Float(a269.AudioLength)/v269.FrameCount*v269.FrameRateNumerator/v269.FrameRateDenominator
a269 = a269.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v269 = AudioDub(v269, a269)

a270 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4638.AVI")
v270 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4638.AVI").AssumeFPS(30,1)
new_rate = Float(a270.AudioLength)/v270.FrameCount*v270.FrameRateNumerator/v270.FrameRateDenominator
a270 = a270.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v270 = AudioDub(v270, a270)

a271 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4639.AVI")
v271 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4639.AVI").AssumeFPS(30,1)
new_rate = Float(a271.AudioLength)/v271.FrameCount*v271.FrameRateNumerator/v271.FrameRateDenominator
a271 = a271.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v271 = AudioDub(v271, a271)

a272 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4640.AVI")
v272 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4640.AVI").AssumeFPS(30,1)
new_rate = Float(a272.AudioLength)/v272.FrameCount*v272.FrameRateNumerator/v272.FrameRateDenominator
a272 = a272.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v272 = AudioDub(v272, a272)

a273 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4641.AVI")
v273 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4641.AVI").AssumeFPS(30,1)
new_rate = Float(a273.AudioLength)/v273.FrameCount*v273.FrameRateNumerator/v273.FrameRateDenominator
a273 = a273.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v273 = AudioDub(v273, a273)

a274 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4646.AVI")
v274 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4646.AVI").AssumeFPS(30,1)
new_rate = Float(a274.AudioLength)/v274.FrameCount*v274.FrameRateNumerator/v274.FrameRateDenominator
a274 = a274.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v274 = AudioDub(v274, a274)

a275 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4647.AVI")
v275 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4647.AVI").AssumeFPS(30,1)
new_rate = Float(a275.AudioLength)/v275.FrameCount*v275.FrameRateNumerator/v275.FrameRateDenominator
a275 = a275.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v275 = AudioDub(v275, a275)

a276 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4648.AVI")
v276 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4648.AVI").AssumeFPS(30,1)
new_rate = Float(a276.AudioLength)/v276.FrameCount*v276.FrameRateNumerator/v276.FrameRateDenominator
a276 = a276.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v276 = AudioDub(v276, a276)

a277 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4649.AVI")
v277 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4649.AVI").AssumeFPS(30,1)
new_rate = Float(a277.AudioLength)/v277.FrameCount*v277.FrameRateNumerator/v277.FrameRateDenominator
a277 = a277.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v277 = AudioDub(v277, a277)

a278 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4650.AVI")
v278 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4650.AVI").AssumeFPS(30,1)
new_rate = Float(a278.AudioLength)/v278.FrameCount*v278.FrameRateNumerator/v278.FrameRateDenominator
a278 = a278.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v278 = AudioDub(v278, a278)

a279 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4651.AVI")
v279 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4651.AVI").AssumeFPS(30,1)
new_rate = Float(a279.AudioLength)/v279.FrameCount*v279.FrameRateNumerator/v279.FrameRateDenominator
a279 = a279.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v279 = AudioDub(v279, a279)

a280 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4652.AVI")
v280 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4652.AVI").AssumeFPS(30,1)
new_rate = Float(a280.AudioLength)/v280.FrameCount*v280.FrameRateNumerator/v280.FrameRateDenominator
a280 = a280.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v280 = AudioDub(v280, a280)

a281 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4653.AVI")
v281 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4653.AVI").AssumeFPS(30,1)
new_rate = Float(a281.AudioLength)/v281.FrameCount*v281.FrameRateNumerator/v281.FrameRateDenominator
a281 = a281.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v281 = AudioDub(v281, a281)

a282 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4654.AVI")
v282 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4654.AVI").AssumeFPS(30,1)
new_rate = Float(a282.AudioLength)/v282.FrameCount*v282.FrameRateNumerator/v282.FrameRateDenominator
a282 = a282.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v282 = AudioDub(v282, a282)

a283 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4655.AVI")
v283 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4655.AVI").AssumeFPS(30,1)
new_rate = Float(a283.AudioLength)/v283.FrameCount*v283.FrameRateNumerator/v283.FrameRateDenominator
a283 = a283.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v283 = AudioDub(v283, a283)

a284 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4656.AVI")
v284 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4656.AVI").AssumeFPS(30,1)
new_rate = Float(a284.AudioLength)/v284.FrameCount*v284.FrameRateNumerator/v284.FrameRateDenominator
a284 = a284.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v284 = AudioDub(v284, a284)

a285 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4657.AVI")
v285 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4657.AVI").AssumeFPS(30,1)
new_rate = Float(a285.AudioLength)/v285.FrameCount*v285.FrameRateNumerator/v285.FrameRateDenominator
a285 = a285.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v285 = AudioDub(v285, a285)

a286 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4658.AVI")
v286 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4658.AVI").AssumeFPS(30,1)
new_rate = Float(a286.AudioLength)/v286.FrameCount*v286.FrameRateNumerator/v286.FrameRateDenominator
a286 = a286.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v286 = AudioDub(v286, a286)

a287 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4659.AVI")
v287 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4659.AVI").AssumeFPS(30,1)
new_rate = Float(a287.AudioLength)/v287.FrameCount*v287.FrameRateNumerator/v287.FrameRateDenominator
a287 = a287.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v287 = AudioDub(v287, a287)

a288 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4660.AVI")
v288 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4660.AVI").AssumeFPS(30,1)
new_rate = Float(a288.AudioLength)/v288.FrameCount*v288.FrameRateNumerator/v288.FrameRateDenominator
a288 = a288.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v288 = AudioDub(v288, a288)

a289 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4661.AVI")
v289 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4661.AVI").AssumeFPS(30,1)
new_rate = Float(a289.AudioLength)/v289.FrameCount*v289.FrameRateNumerator/v289.FrameRateDenominator
a289 = a289.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v289 = AudioDub(v289, a289)

a290 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4662.AVI")
v290 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4662.AVI").AssumeFPS(30,1)
new_rate = Float(a290.AudioLength)/v290.FrameCount*v290.FrameRateNumerator/v290.FrameRateDenominator
a290 = a290.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v290 = AudioDub(v290, a290)

a291 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4663.AVI")
v291 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4663.AVI").AssumeFPS(30,1)
new_rate = Float(a291.AudioLength)/v291.FrameCount*v291.FrameRateNumerator/v291.FrameRateDenominator
a291 = a291.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v291 = AudioDub(v291, a291)

a292 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4664.AVI")
v292 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4664.AVI").AssumeFPS(30,1)
new_rate = Float(a292.AudioLength)/v292.FrameCount*v292.FrameRateNumerator/v292.FrameRateDenominator
a292 = a292.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v292 = AudioDub(v292, a292)

a293 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4665.AVI")
v293 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4665.AVI").AssumeFPS(30,1)
new_rate = Float(a293.AudioLength)/v293.FrameCount*v293.FrameRateNumerator/v293.FrameRateDenominator
a293 = a293.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v293 = AudioDub(v293, a293)

a294 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4666.AVI")
v294 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4666.AVI").AssumeFPS(30,1)
new_rate = Float(a294.AudioLength)/v294.FrameCount*v294.FrameRateNumerator/v294.FrameRateDenominator
a294 = a294.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v294 = AudioDub(v294, a294)

a295 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4671.AVI")
v295 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4671.AVI").AssumeFPS(30,1)
new_rate = Float(a295.AudioLength)/v295.FrameCount*v295.FrameRateNumerator/v295.FrameRateDenominator
a295 = a295.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v295 = AudioDub(v295, a295)

a296 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4672.AVI")
v296 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4672.AVI").AssumeFPS(30,1)
new_rate = Float(a296.AudioLength)/v296.FrameCount*v296.FrameRateNumerator/v296.FrameRateDenominator
a296 = a296.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v296 = AudioDub(v296, a296)

a297 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4673.AVI")
v297 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4673.AVI").AssumeFPS(30,1)
new_rate = Float(a297.AudioLength)/v297.FrameCount*v297.FrameRateNumerator/v297.FrameRateDenominator
a297 = a297.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v297 = AudioDub(v297, a297)

a298 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4674.AVI")
v298 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4674.AVI").AssumeFPS(30,1)
new_rate = Float(a298.AudioLength)/v298.FrameCount*v298.FrameRateNumerator/v298.FrameRateDenominator
a298 = a298.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v298 = AudioDub(v298, a298)

a299 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4675.AVI")
v299 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4675.AVI").AssumeFPS(30,1)
new_rate = Float(a299.AudioLength)/v299.FrameCount*v299.FrameRateNumerator/v299.FrameRateDenominator
a299 = a299.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v299 = AudioDub(v299, a299)

a300 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4681.AVI")
v300 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4681.AVI").AssumeFPS(30,1)
new_rate = Float(a300.AudioLength)/v300.FrameCount*v300.FrameRateNumerator/v300.FrameRateDenominator
a300 = a300.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v300 = AudioDub(v300, a300)

a301 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4682.AVI")
v301 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4682.AVI").AssumeFPS(30,1)
new_rate = Float(a301.AudioLength)/v301.FrameCount*v301.FrameRateNumerator/v301.FrameRateDenominator
a301 = a301.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v301 = AudioDub(v301, a301)

a302 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4683.AVI")
v302 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4683.AVI").AssumeFPS(30,1)
new_rate = Float(a302.AudioLength)/v302.FrameCount*v302.FrameRateNumerator/v302.FrameRateDenominator
a302 = a302.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v302 = AudioDub(v302, a302)

a303 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4684.AVI")
v303 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4684.AVI").AssumeFPS(30,1)
new_rate = Float(a303.AudioLength)/v303.FrameCount*v303.FrameRateNumerator/v303.FrameRateDenominator
a303 = a303.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v303 = AudioDub(v303, a303)

a304 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4685.AVI")
v304 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4685.AVI").AssumeFPS(30,1)
new_rate = Float(a304.AudioLength)/v304.FrameCount*v304.FrameRateNumerator/v304.FrameRateDenominator
a304 = a304.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v304 = AudioDub(v304, a304)

a305 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4686.AVI")
v305 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4686.AVI").AssumeFPS(30,1)
new_rate = Float(a305.AudioLength)/v305.FrameCount*v305.FrameRateNumerator/v305.FrameRateDenominator
a305 = a305.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v305 = AudioDub(v305, a305)

a306 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4687.AVI")
v306 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4687.AVI").AssumeFPS(30,1)
new_rate = Float(a306.AudioLength)/v306.FrameCount*v306.FrameRateNumerator/v306.FrameRateDenominator
a306 = a306.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v306 = AudioDub(v306, a306)

a307 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4688.AVI")
v307 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4688.AVI").AssumeFPS(30,1)
new_rate = Float(a307.AudioLength)/v307.FrameCount*v307.FrameRateNumerator/v307.FrameRateDenominator
a307 = a307.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v307 = AudioDub(v307, a307)

a308 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4689.AVI")
v308 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4689.AVI").AssumeFPS(30,1)
new_rate = Float(a308.AudioLength)/v308.FrameCount*v308.FrameRateNumerator/v308.FrameRateDenominator
a308 = a308.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v308 = AudioDub(v308, a308)

a309 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4690.AVI")
v309 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4690.AVI").AssumeFPS(30,1)
new_rate = Float(a309.AudioLength)/v309.FrameCount*v309.FrameRateNumerator/v309.FrameRateDenominator
a309 = a309.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v309 = AudioDub(v309, a309)

a310 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4691.AVI")
v310 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4691.AVI").AssumeFPS(30,1)
new_rate = Float(a310.AudioLength)/v310.FrameCount*v310.FrameRateNumerator/v310.FrameRateDenominator
a310 = a310.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v310 = AudioDub(v310, a310)

a311 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4692.AVI")
v311 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4692.AVI").AssumeFPS(30,1)
new_rate = Float(a311.AudioLength)/v311.FrameCount*v311.FrameRateNumerator/v311.FrameRateDenominator
a311 = a311.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v311 = AudioDub(v311, a311)

a312 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4693.AVI")
v312 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4693.AVI").AssumeFPS(30,1)
new_rate = Float(a312.AudioLength)/v312.FrameCount*v312.FrameRateNumerator/v312.FrameRateDenominator
a312 = a312.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v312 = AudioDub(v312, a312)

a313 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4701.AVI")
v313 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4701.AVI").AssumeFPS(30,1)
new_rate = Float(a313.AudioLength)/v313.FrameCount*v313.FrameRateNumerator/v313.FrameRateDenominator
a313 = a313.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v313 = AudioDub(v313, a313)

a314 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4702.AVI")
v314 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4702.AVI").AssumeFPS(30,1)
new_rate = Float(a314.AudioLength)/v314.FrameCount*v314.FrameRateNumerator/v314.FrameRateDenominator
a314 = a314.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v314 = AudioDub(v314, a314)

a315 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4703.AVI")
v315 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4703.AVI").AssumeFPS(30,1)
new_rate = Float(a315.AudioLength)/v315.FrameCount*v315.FrameRateNumerator/v315.FrameRateDenominator
a315 = a315.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v315 = AudioDub(v315, a315)

a316 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4704.AVI")
v316 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4704.AVI").AssumeFPS(30,1)
new_rate = Float(a316.AudioLength)/v316.FrameCount*v316.FrameRateNumerator/v316.FrameRateDenominator
a316 = a316.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v316 = AudioDub(v316, a316)

a317 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4705.AVI")
v317 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4705.AVI").AssumeFPS(30,1)
new_rate = Float(a317.AudioLength)/v317.FrameCount*v317.FrameRateNumerator/v317.FrameRateDenominator
a317 = a317.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v317 = AudioDub(v317, a317)

a318 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4706.AVI")
v318 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4706.AVI").AssumeFPS(30,1)
new_rate = Float(a318.AudioLength)/v318.FrameCount*v318.FrameRateNumerator/v318.FrameRateDenominator
a318 = a318.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v318 = AudioDub(v318, a318)

a319 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4707.AVI")
v319 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4707.AVI").AssumeFPS(30,1)
new_rate = Float(a319.AudioLength)/v319.FrameCount*v319.FrameRateNumerator/v319.FrameRateDenominator
a319 = a319.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v319 = AudioDub(v319, a319)

a320 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4708.AVI")
v320 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4708.AVI").AssumeFPS(30,1)
new_rate = Float(a320.AudioLength)/v320.FrameCount*v320.FrameRateNumerator/v320.FrameRateDenominator
a320 = a320.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v320 = AudioDub(v320, a320)

a321 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4709.AVI")
v321 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4709.AVI").AssumeFPS(30,1)
new_rate = Float(a321.AudioLength)/v321.FrameCount*v321.FrameRateNumerator/v321.FrameRateDenominator
a321 = a321.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v321 = AudioDub(v321, a321)

a322 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4710.AVI")
v322 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4710.AVI").AssumeFPS(30,1)
new_rate = Float(a322.AudioLength)/v322.FrameCount*v322.FrameRateNumerator/v322.FrameRateDenominator
a322 = a322.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v322 = AudioDub(v322, a322)

a323 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4717.AVI")
v323 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4717.AVI").AssumeFPS(30,1)
new_rate = Float(a323.AudioLength)/v323.FrameCount*v323.FrameRateNumerator/v323.FrameRateDenominator
a323 = a323.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v323 = AudioDub(v323, a323)

a324 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4718.AVI")
v324 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4718.AVI").AssumeFPS(30,1)
new_rate = Float(a324.AudioLength)/v324.FrameCount*v324.FrameRateNumerator/v324.FrameRateDenominator
a324 = a324.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v324 = AudioDub(v324, a324)

a325 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4727.AVI")
v325 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4727.AVI").AssumeFPS(30,1)
new_rate = Float(a325.AudioLength)/v325.FrameCount*v325.FrameRateNumerator/v325.FrameRateDenominator
a325 = a325.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v325 = AudioDub(v325, a325)

a326 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4728.AVI")
v326 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4728.AVI").AssumeFPS(30,1)
new_rate = Float(a326.AudioLength)/v326.FrameCount*v326.FrameRateNumerator/v326.FrameRateDenominator
a326 = a326.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v326 = AudioDub(v326, a326)

a327 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4729.AVI")
v327 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4729.AVI").AssumeFPS(30,1)
new_rate = Float(a327.AudioLength)/v327.FrameCount*v327.FrameRateNumerator/v327.FrameRateDenominator
a327 = a327.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v327 = AudioDub(v327, a327)

a328 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4730.AVI")
v328 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4730.AVI").AssumeFPS(30,1)
new_rate = Float(a328.AudioLength)/v328.FrameCount*v328.FrameRateNumerator/v328.FrameRateDenominator
a328 = a328.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v328 = AudioDub(v328, a328)

a329 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4731.AVI")
v329 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4731.AVI").AssumeFPS(30,1)
new_rate = Float(a329.AudioLength)/v329.FrameCount*v329.FrameRateNumerator/v329.FrameRateDenominator
a329 = a329.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v329 = AudioDub(v329, a329)

a330 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4732.AVI")
v330 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4732.AVI").AssumeFPS(30,1)
new_rate = Float(a330.AudioLength)/v330.FrameCount*v330.FrameRateNumerator/v330.FrameRateDenominator
a330 = a330.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v330 = AudioDub(v330, a330)

a331 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4733.AVI")
v331 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4733.AVI").AssumeFPS(30,1)
new_rate = Float(a331.AudioLength)/v331.FrameCount*v331.FrameRateNumerator/v331.FrameRateDenominator
a331 = a331.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v331 = AudioDub(v331, a331)

a332 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4734.AVI")
v332 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4734.AVI").AssumeFPS(30,1)
new_rate = Float(a332.AudioLength)/v332.FrameCount*v332.FrameRateNumerator/v332.FrameRateDenominator
a332 = a332.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v332 = AudioDub(v332, a332)

a333 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4735.AVI")
v333 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4735.AVI").AssumeFPS(30,1)
new_rate = Float(a333.AudioLength)/v333.FrameCount*v333.FrameRateNumerator/v333.FrameRateDenominator
a333 = a333.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v333 = AudioDub(v333, a333)

a334 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4736.AVI")
v334 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4736.AVI").AssumeFPS(30,1)
new_rate = Float(a334.AudioLength)/v334.FrameCount*v334.FrameRateNumerator/v334.FrameRateDenominator
a334 = a334.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v334 = AudioDub(v334, a334)

a335 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4737.AVI")
v335 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4737.AVI").AssumeFPS(30,1)
new_rate = Float(a335.AudioLength)/v335.FrameCount*v335.FrameRateNumerator/v335.FrameRateDenominator
a335 = a335.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v335 = AudioDub(v335, a335)

a336 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4759.AVI")
v336 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4759.AVI").AssumeFPS(30,1)
new_rate = Float(a336.AudioLength)/v336.FrameCount*v336.FrameRateNumerator/v336.FrameRateDenominator
a336 = a336.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v336 = AudioDub(v336, a336)

a337 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4760.AVI")
v337 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4760.AVI").AssumeFPS(30,1)
new_rate = Float(a337.AudioLength)/v337.FrameCount*v337.FrameRateNumerator/v337.FrameRateDenominator
a337 = a337.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v337 = AudioDub(v337, a337)

a338 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4761.AVI")
v338 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4761.AVI").AssumeFPS(30,1)
new_rate = Float(a338.AudioLength)/v338.FrameCount*v338.FrameRateNumerator/v338.FrameRateDenominator
a338 = a338.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v338 = AudioDub(v338, a338)

a339 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4767.AVI")
v339 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4767.AVI").AssumeFPS(30,1)
new_rate = Float(a339.AudioLength)/v339.FrameCount*v339.FrameRateNumerator/v339.FrameRateDenominator
a339 = a339.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v339 = AudioDub(v339, a339)

a340 = LSMASHAudioSource("F:\Media\Video\2007-04-16_Praha\MVI_4780.AVI")
v340 = LSMASHVideoSource("F:\Media\Video\2007-04-16_Praha\MVI_4780.AVI").AssumeFPS(30,1)
new_rate = Float(a340.AudioLength)/v340.FrameCount*v340.FrameRateNumerator/v340.FrameRateDenominator
a340 = a340.AssumeSampleRate(Round(new_rate)).ResampleAudio(48000)
v340 = AudioDub(v340, a340)

last = v1 + v2 + v3 + v4 + v5 + v6 + v7 + v8 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + v22 + v23 + v24 + v25 + v26 + v27 + v28 + v29 + v30 + v31 + v32 + v33 + v34 + v35 + v36 + v37 + v38 + v39 + v40 + v41 + v42 + v43 + v44 + v45 + v46 + v47 + v48 + v49 + v50 + v51 + v52 + v53 + v54 + v55 + v56 + v57 + v58 + v59 + v60 + v61 + v62 + v63 + v64 + v65 + v66 + v67 + v68 + v69 + v70 + v71 + v72 + v73 + v74 + v75 + v76 + v77 + v78 + v79 + v80 + v81 + v82 + v83 + v84 + v85 + v86 + v87 + v88 + v89 + v90 + v91 + v92 + v93 + v94 + v95 + v96 + v97 + v98 + v99 + v100 + v101 + v102 + v103 + v104 + v105 + v106 + v107 + v108 + v109 + v110 + v111 + v112 + v113 + v114 + v115 + v116 + v117 + v118 + v119 + v120 + v121 + v122 + v123 + v124 + v125 + v126 + v127 + v128 + v129 + v130 + v131 + v132 + v133 + v134 + v135 + v136 + v137 + v138 + v139 + v140 + v141 + v142 + v143 + v144 + v145 + v146 + v147 + v148 + v149 + v150 + v151 + v152 + v153 + v154 + v155 + v156 + v157 + v158 + v159 + v160 + v161 + v162 + v163 + v164 + v165 + v166 + v167 + v168 + v169 + v170 + v171 + v172 + v173 + v174 + v175 + v176 + v177 + v178 + v179 + v180 + v181 + v182 + v183 + v184 + v185 + v186 + v187 + v188 + v189 + v190 + v191 + v192 + v193 + v194 + v195 + v196 + v197 + v198 + v199 + v200 + v201 + v202 + v203 + v204 + v205 + v206 + v207 + v208 + v209 + v210 + v211 + v212 + v213 + v214 + v215 + v216 + v217 + v218 + v219 + v220 + v221 + v222 + v223 + v224 + v225 + v226 + v227 + v228 + v229 + v230 + v231 + v232 + v233 + v234 + v235 + v236 + v237 + v238 + v239 + v240 + v241 + v242 + v243 + v244 + v245 + v246 + v247 + v248 + v249 + v250 + v251 + v252 + v253 + v254 + v255 + v256 + v257 + v258 + v259 + v260 + v261 + v262 + v263 + v264 + v265 + v266 + v267 + v268 + v269 + v270 + v271 + v272 + v273 + v274 + v275 + v276 + v277 + v278 + v279 + v280 + v281 + v282 + v283 + v284 + v285 + v286 + v287 + v288 + v289 + v290 + v291 + v292 + v293 + v294 + v295 + v296 + v297 + v298 + v299 + v300 + v301 + v302 + v303 + v304 + v305 + v306 + v307 + v308 + v309 + v310 + v311 + v312 + v313 + v314 + v315 + v316 + v317 + v318 + v319 + v320 + v321 + v322 + v323 + v324 + v325 + v326 + v327 + v328 + v329 + v330 + v331 + v332 + v333 + v334 + v335 + v336 + v337 + v338 + v339 + v340
return last
