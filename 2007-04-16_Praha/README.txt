 1. Copy all video files to the same folder other this one. Yet it may be a subfolder of this. It's refered below as SRC.
 2. Prepare template-analyze.avs and template-analyze.vdscrit
 3. Copy these templates to SRC but with names template.avs and template.vdscrit
 4. prepare_avs *.<ext> SRC
 5. SRC\render.bat
 6. Prepare template.files (optional). It may be used as a template for the header part of the final video.avs
 7. Copy template.files to SRC (do not rename)
 8. Prepare template-stab.avs and template-stab.vdscrit
 9. Copy these templates to SRC but with names template.avs and template.vdscrit
10. prepare_avs *.<ext> SRC
11. SRC\render.bat
12. Add prefetch as a last line of video.avs
13. Either load video.avs into MeGUI or use 2021_10_20-Belgie/x264_cmd.txt as a reference
