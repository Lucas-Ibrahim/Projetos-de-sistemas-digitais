view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 000 -endvalue 111 -type Range -direction Up -period 100ps -step 1 -repeat 1 -range 2 0 -starttime 0ps -endtime 800ps sim:/lab6/SW 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
