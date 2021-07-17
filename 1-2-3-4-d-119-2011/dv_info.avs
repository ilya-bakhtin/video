file = "f:\media\video\Cassette-2010_12_19-2011_05_21\2010_12_19-2011_05_21.avi"
#file = "f:\media\video\Cassette-2010_12_19-2011_05_21\2010_12_25.avi"
directshowsource(file)
dvinfo(file, "tc_time + chr(32) + rec_time + chr(32) + current_frame")