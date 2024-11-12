crashbackups stop
drc off
gds read /foss/designs/EE437/Project/ee437-quantum-controller/Top_Level/Top_LC.gds
load Top_LC
select top cell
extract path /foss/designs/EE437/Project/ee437-quantum-controller/Top_Level
extract no capacitance
extract no coupling
extract no resistance
extract no length
extract all
ext2spice lvs
ext2spice -p /foss/designs/EE437/Project/ee437-quantum-controller/Top_Level -o /foss/designs/EE437/Project/ee437-quantum-controller/Top_Level/Top_LC.ext.spc
quit -noprompt
