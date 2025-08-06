view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 200ps sim:/lab01_1/x 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 200ps sim:/lab01_1/y 
WaveCollapseAll -1
wave clipboard restore
