v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 -160 -280 -120 {
lab=agnd}
N -280 -60 -280 -20 {
lab=GND}
N -180 -60 -180 -20 {
lab=agnd}
N -180 -160 -180 -120 {
lab=avdd}
N -80 -60 -80 -20 {
lab=iin}
N -80 -160 -80 -120 {
lab=avdd}
N -250 160 -200 160 {
lab=voutn}
N -250 120 -200 120 {
lab=voutp}
N -140 170 -140 190 {
lab=agnd}
N -80 170 -80 190 {
lab=agnd}
N -140 90 -140 110 {
lab=voutp}
N -80 90 -80 110 {
lab=voutn}
N -140 190 -80 190 {
lab=agnd}
N -500 -40 -500 -20 {
lab=agnd}
N -400 -40 -400 -20 {
lab=agnd}
N -500 -20 -400 -20 {
lab=agnd}
N -400 -120 -400 -100 {
lab=vinn}
N -500 -120 -500 -100 {
lab=vinp}
N -340 40 -340 60 {
lab=iin}
C {devices/code_shown.sym} 30 -30 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W

.option savecurrents

.control
save all
op

* Print newline
echo

* Print stats for each MOSFET
foreach nmos x1.xm1 x1.xm2 x1.xm3 x1.xm4
 * Save stats
 save @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[gm]
 let vth   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vth]
 let vgs   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vgs]
 let vds   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vds]
 let vdsat = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vdsat]
 let gm    = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[gm]
 let gds   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[gds]


 * Print stats
 echo Stats for $nmos:
 print vth
 print vgs
 print vds
 print vdsat
 print gm
 print gds

 * Print newline
 echo
end

foreach pmos x1.xm5 x1.xm6 x1.xm7 x1.xm8
 * Save stats
 save @m.\{$pmos\}.msky130_fd_pr__nfet_01v8[gm]
 let vth   = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vth]
 let vgs   = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vgs]
 let vds   = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vds]
 let vdsat = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vdsat]
 let gm    = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[gm]
 let gds   = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[gds]

 * Print stats
 echo Stats for $pmos:
 print vth
 print vgs
 print vds
 print vdsat
 print gm
 print gds

 * Print newline
 echo
end

* Print region of operation
echo Regions of Operation:
foreach nmos x1.xm1 x1.xm2 x1.xm3 x1.xm4
 * Save stats
 let vds = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vds]
 let vgs = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vgs]
 let vth = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8[vth]

 * Check and print regions
 if (vgs <= vth)
  echo $nmos: N Cutoff
  print vgs
  print vth
 end
 if (vgs > vth) & (vds <= (vgs - vth))
  echo $nmos: N Triode
  print vgs
  print vth
  print vds
 end
 if (vgs > vth) & (vds > (vgs - vth))
  echo $nmos: N Saturation
 end
end

foreach pmos x1.xm5 x1.xm6 x1.xm7 x1.xm8
 * Save stats
 let vds = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vds]
 let vgs = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vgs]
 let vth = @m.\{$pmos\}.msky130_fd_pr__pfet_01v8[vth]

 * Check and print regions
 if (abs(vgs) <= abs(vth))
  echo $pmos: P Cutoff
  print vgs
  print vth
 end
 if (abs(vgs) > abs(vth)) & (abs(vds) <= (abs(vgs) - abs(vth)))
  echo $pmos: P Triode
  print vgs
  print vth
  print vds
 end
 if (abs(vgs) > abs(vth)) & (abs(vds) > (abs(vgs) - abs(vth)))
  echo $pmos: P Saturation
 end
end

* Print newline
echo

* Sweep frequency
write TB_Final_Cascode.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

* Calculate gain
let vout_diff = v(voutp)- v(voutn)
let vin_diff = v(vinp)- v(vinn)
let gain = db(mag(vout_diff/vin_diff))
let ratio = (vout_diff/vin_diff)

write TB_Final_Cascode.raw

.endc
" }
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Cascode.sym} -320 140 0 0 {name=x1}
C {devices/vsource.sym} -280 -90 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -180 -90 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -280 -20 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -280 -160 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -180 -160 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -180 -20 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/isource.sym} -80 -90 0 0 {name=Isrc_iin value=50u}
C {devices/lab_wire.sym} -80 -20 0 1 {name=p3 sig_type=std_logic lab=iin
}
C {devices/lab_wire.sym} -80 -160 0 0 {name=p4 sig_type=std_logic lab=avdd}
C {devices/launcher.sym} 220 -90 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 20 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_wire.sym} -200 120 0 0 {name=p1 sig_type=std_logic lab=voutp}
C {devices/lab_wire.sym} -200 160 0 0 {name=p6 sig_type=std_logic lab=voutn}
C {devices/capa.sym} -80 140 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -140 140 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 90 0 0 {name=p18 sig_type=std_logic lab=voutn}
C {devices/lab_wire.sym} -140 90 0 0 {name=p19 sig_type=std_logic lab=voutp}
C {devices/lab_wire.sym} -90 190 0 0 {name=p20 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -500 -120 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -400 -120 0 0 {name=p5 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} -500 -70 0 0 {name=V1 value="0.05 AC 0.5 0" savecurrent=false}
C {devices/vsource.sym} -400 -70 0 0 {name=V2 value="0.05 AC 0.5 180" savecurrent=false}
C {devices/lab_wire.sym} -430 -20 0 0 {name=p10 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -400 120 0 0 {name=p11 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -400 160 0 0 {name=p12 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -360 50 0 0 {name=p13 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -360 230 0 1 {name=p14 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -340 40 0 0 {name=p15 sig_type=std_logic lab=iin
}
