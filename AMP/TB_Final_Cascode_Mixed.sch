v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -970 360 -540 680 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6"
node="\\"re(gain_sch); gain_sch ph(gain_sch) re()\\"
\\"re(gain_mod); gain_mod ph(gain_mod) re()\\"
\\"re(gain_gds); gain_gds ph(gain_gds) re()\\""
sweep=frequency


logx=1

logy=0
y2=100

unitx=1
y1=00
x1=0
x2=11}
B 2 -970 20 -540 340 {flags=graph


divy = 5
subdivy=8


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6"
node="ratio_sch
ratio_mod
ratio_gds"
sweep=frequency


logx=1

logy=1


unitx=1
y1=-3
x1=0
x2=11
y2=3}
N -320 -160 -320 -120 {
lab=agnd}
N -320 -60 -320 -20 {
lab=GND}
N -220 -60 -220 -20 {
lab=agnd}
N -220 -160 -220 -120 {
lab=avdd}
N -140 220 -140 240 {
lab=agnd}
N -540 -40 -540 -20 {
lab=agnd}
N -440 -40 -440 -20 {
lab=agnd}
N -540 -20 -440 -20 {
lab=agnd}
N -440 -120 -440 -100 {
lab=#net1}
N -540 -120 -540 -100 {
lab=#net2}
N -360 40 -360 60 {
lab=#net3}
N -220 140 -140 140 {
lab=vout_sch}
N -140 460 -140 480 {
lab=agnd}
N -220 380 -140 380 {
lab=vout_mod}
N -140 700 -140 720 {
lab=agnd}
N -220 620 -140 620 {
lab=vout_gds}
N -140 140 -140 160 {
lab=vout_sch}
N -140 620 -140 640 {
lab=vout_gds}
N -140 380 -140 400 {
lab=vout_mod}
N -360 40 -320 40 {
lab=#net3}
N -260 40 -220 40 {
lab=avdd}
N -360 280 -360 300 {
lab=#net4}
N -360 280 -320 280 {
lab=#net4}
N -260 280 -220 280 {
lab=avdd}
N -360 520 -360 540 {
lab=#net5}
N -360 520 -320 520 {
lab=#net5}
N -260 520 -220 520 {
lab=avdd}
C {devices/code_shown.sym} 30 -30 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Cascode_cc.pex.spice

* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1

.option savecurrents

.control
save all
op

* Print newline
echo

set nmos_list = ( x1.xm1 x1.xm2 x1.xm9 x1.xm10 )
set pmos_list = ( x1.xm7 x1.xm8 )
set nmos_lvt_list = ( x1.xm3 x1.xm4 )
set pmos_lvt_list = ( x1.xm5 x1.xm6 )

* Print stats for each MOSFET
foreach nmos $nmos_list
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

foreach pmos $pmos_list
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

foreach nmos_lvt $nmos_lvt_list
 * Save stats
 save @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[gm]
 let vth   = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vth]
 let vgs   = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vgs]
 let vds   = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vds]
 let vdsat = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vdsat]
 let gm    = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gds   = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[gds]


 * Print stats
 echo Stats for $nmos_lvt:
 print vth
 print vgs
 print vds
 print vdsat
 print gm
 print gds

 * Print newline
 echo
end

foreach pmos_lvt $pmos_lvt_list
 * Save stats
 save @m.\{$pmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[gm]
 let vth   = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vth]
 let vgs   = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vgs]
 let vds   = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vds]
 let vdsat = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vdsat]
 let gm    = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gds   = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[gds]


 * Print stats
 echo Stats for $pmos_lvt:
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
echo

echo NMOS:
foreach nmos $nmos_list
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
echo

echo PMOS: 
foreach pmos $pmos_list
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
echo

echo NMOS_lvt:
foreach nmos_lvt $nmos_lvt_list
 * Save stats
 let vds = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vds]
 let vgs = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vgs]
 let vth = @m.\{$nmos_lvt\}.msky130_fd_pr__nfet_01v8_lvt[vth]

 * Check and print regions
 if (vgs <= vth)
  echo $nmos_lvt: N Cutoff
  print vgs
  print vth
 end
 if (vgs > vth) & (vds <= (vgs - vth))
  echo $nmos_lvt: N Triode
  print vgs
  print vth
  print vds
 end
 if (vgs > vth) & (vds > (vgs - vth))
  echo $nmos_lvt: N Saturation
 end
end
echo

echo PMOS_lvt:
foreach pmos_lvt $pmos_lvt_list
 * Save stats
 let vds = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vds]
 let vgs = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vgs]
 let vth = @m.\{$pmos_lvt\}.msky130_fd_pr__pfet_01v8_lvt[vth]

 * Check and print regions
 if (abs(vgs) <= abs(vth))
  echo $pmos_lvt: P Cutoff
  print vgs
  print vth
 end
 if (abs(vgs) > abs(vth)) & (abs(vds) <= (abs(vgs) - abs(vth)))
  echo $pmos_lvt: P Triode
  print vgs
  print vth
  print vds
 end
 if (abs(vgs) > abs(vth)) & (abs(vds) > (abs(vgs) - abs(vth)))
  echo $pmos_lvt: P Saturation
 end
end
echo

* Sweep frequency
write TB_Final_Cascode_Mixed.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

* Calculate gain
let vin_diff = v(vinp) - v(vinn)

let vout_sch = v(vout_sch)
let gain_sch = db(mag(vout_sch/vin_diff))
let ratio_sch = (vout_sch/vin_diff)

let vout_mod = v(vout_mod)
let gain_mod = db(mag(vout_mod/vin_diff))
let ratio_mod = (vout_mod/vin_diff)

let vout_gds = v(vout_gds)
let gain_gds = db(mag(vout_gds/vin_diff))
let ratio_gds = (vout_gds/vin_diff)

write TB_Final_Cascode_Mixed.raw
set appendwrite

.endc
" }
C {devices/vsource.sym} -320 -90 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -220 -90 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -320 -20 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -320 -160 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -220 -160 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -220 -20 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/isource.sym} -290 40 1 0 {name=Isrc_sch value=50u}
C {devices/launcher.sym} 220 -90 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 20 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_wire.sym} -140 140 0 0 {name=p1 sig_type=std_logic lab=vout_sch}
C {devices/lab_wire.sym} -140 240 0 0 {name=p20 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -540 -180 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -440 -180 0 0 {name=p5 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} -540 -70 0 0 {name=V1 value="0.005 AC 0.5 0" savecurrent=false}
C {devices/vsource.sym} -440 -70 0 0 {name=V2 value="0.005 AC 0.5 180" savecurrent=false}
C {devices/lab_wire.sym} -470 -20 0 0 {name=p10 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -460 120 0 0 {name=p11 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -460 160 0 0 {name=p12 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -400 40 0 0 {name=p13 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -400 240 0 1 {name=p14 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Cascode_Mixed.sym} -320 140 0 0 {name=x1}
C {devices/vsource.sym} -540 -150 0 0 {name=V3 value=1 savecurrent=false}
C {devices/vsource.sym} -440 -150 0 0 {name=V4 value=1 savecurrent=false}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Final_Amp.sym} -320 620 0 0 {name=x3}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Modules_Amp.sym} -320 380 0 0 {name=x2}
C {devices/lab_wire.sym} -460 360 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -460 400 0 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -460 600 0 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -460 640 0 0 {name=p18 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -400 280 0 0 {name=p19 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -400 480 0 1 {name=p21 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -400 520 0 0 {name=p23 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -400 720 0 1 {name=p24 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -140 380 0 0 {name=p26 sig_type=std_logic lab=vout_mod}
C {devices/lab_wire.sym} -140 480 0 0 {name=p27 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -140 620 0 0 {name=p28 sig_type=std_logic lab=vout_gds}
C {devices/lab_wire.sym} -140 720 0 0 {name=p29 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 190 0 0 {name=C1 model=cap_mim_m3_1 W=11 L=9.05 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 430 0 0 {name=C2 model=cap_mim_m3_1 W=11 L=9.05 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 670 0 0 {name=C3 model=cap_mim_m3_1 W=11 L=9.05 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -220 40 0 1 {name=p3 sig_type=std_logic lab=avdd}
C {devices/isource.sym} -290 280 1 0 {name=Isrc_mod value=50u}
C {devices/lab_wire.sym} -220 280 0 1 {name=p4 sig_type=std_logic lab=avdd}
C {devices/isource.sym} -290 520 1 0 {name=Isrc_gds value=50u}
C {devices/lab_wire.sym} -220 520 0 1 {name=p15 sig_type=std_logic lab=avdd}
