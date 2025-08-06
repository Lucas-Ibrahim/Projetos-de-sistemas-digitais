onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/\lab-02\/x1}
add wave -noupdate {/\lab-02\/x2}
add wave -noupdate {/\lab-02\/f}
add wave -noupdate {/\lab-02\/g}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {232 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 400ps {sim:/\lab-02\/x1} 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 400ps {sim:/\lab-02\/x2} 
WaveCollapseAll -1
wave clipboard restore
