v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -940 -350 -510 -30 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7 8 9 10"
node="gain_00
gain_01
gain_02
gain_03
gain_04
gain_05
gain_06"
sweep=frequency


logx=1

logy=0
y2=100

unitx=1
y1=00
x1=0
x2=11}
B 2 -940 -690 -510 -370 {flags=graph


divy = 5
subdivy=8


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7 8 9 10"
node="ratio_00
ratio_01
ratio_02
ratio_03
ratio_04
ratio_05
ratio_06"
sweep=frequency


logx=1

logy=1


unitx=1
y1=-3
x1=0
x2=11
y2=3}
N -460 -60 -460 -30 {
lab=GND}
N -460 -150 -460 -120 {
lab=agnd}
N -370 -150 -370 -120 {
lab=avdd}
N -370 -60 -370 -30 {
lab=agnd}
N -190 -60 -190 -30 {
lab=agnd}
N -190 -150 -190 -120 {
lab=stim}
N -280 -150 -280 -120 {
lab=avdd}
N -280 -60 -280 -30 {
lab=ibias}
N -1040 -360 -1040 -330 {
lab=bias_1v2}
N -1040 -270 -1040 -240 {
lab=agnd}
N -940 20 -940 40 {
lab=avdd}
N -940 100 -940 140 {
lab=amp_out_00}
N -940 170 -940 220 {
lab=agnd}
N -1040 -200 -1040 -180 {
lab=amp_out_00}
N -1040 -120 -1040 -100 {
lab=agnd}
N -740 20 -740 40 {
lab=avdd}
N -740 170 -740 220 {
lab=agnd}
N -740 100 -740 140 {
lab=amp_out_01}
N -780 40 -780 70 {
lab=avdd}
N -780 40 -740 40 {
lab=avdd}
N -740 170 -730 170 {
lab=agnd}
N -740 70 -730 70 {
lab=agnd}
N -730 70 -730 170 {
lab=agnd}
N -1140 -200 -1140 -180 {
lab=amp_out_01}
N -1140 -120 -1140 -100 {
lab=agnd}
N -560 170 -560 220 {
lab=agnd}
N -560 100 -560 140 {
lab=amp_out_02}
N -560 20 -560 70 {
lab=avdd}
N -380 20 -380 40 {
lab=avdd}
N -380 100 -380 140 {
lab=amp_out_03}
N -380 170 -380 220 {
lab=agnd}
N -1240 -200 -1240 -180 {
lab=amp_out_02}
N -1240 -120 -1240 -100 {
lab=agnd}
N -1340 -200 -1340 -180 {
lab=amp_out_03}
N -1340 -120 -1340 -100 {
lab=agnd}
N -1200 450 -240 450 {
lab=agnd}
N -1020 440 -1020 450 {
lab=agnd}
N -700 440 -700 450 {
lab=agnd}
N -380 440 -380 450 {
lab=agnd}
N -1340 440 -1340 450 {
lab=agnd}
N -1340 450 -1200 450 {
lab=agnd}
N -1440 -200 -1440 -180 {
lab=amp_out_04}
N -1440 -120 -1440 -100 {
lab=agnd}
N -940 500 -940 520 {
lab=avdd}
N -940 580 -940 620 {
lab=amp_out_05}
N -940 740 -940 760 {
lab=agnd}
N -940 710 -940 740 {
lab=agnd}
N -940 650 -930 650 {
lab=agnd}
N -930 650 -930 710 {
lab=agnd}
N -940 710 -930 710 {
lab=agnd}
N -1200 -360 -1200 -330 {
lab=bias_0v6}
N -1200 -270 -1200 -240 {
lab=agnd}
C {devices/vsource.sym} -460 -90 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -370 -90 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -190 -90 0 0 {name=Vsrc_stim value="1.2 AC 1" savecurrent=false}
C {devices/gnd.sym} -460 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -460 -150 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -370 -30 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -370 -150 0 0 {name=p3 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -190 -30 0 0 {name=Vsrc_stim1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -190 -150 0 0 {name=Vsrc_stim2 sig_type=std_logic lab=stim}
C {devices/code_shown.sym} 0 -410 0 0 {name=NGSPICE
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
foreach nmos xm1 xm2 xm3 xm5 x1.xm1 x3.xm1 x5.xm1 x7.xm1 xm7 xm8
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

foreach pmos xm4
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

foreach nmos xm6
 * Save stats
 save @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[gm]
 let vth   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vth]
 let vgs   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vgs]
 let vds   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vds]
 let vdsat = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vdsat]
 let gm    = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gds   = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[gds]


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

* Print region of operation
echo Regions of Operation:
foreach nmos xm1 xm2 xm3 xm5 x1.xm1 x3.xm1 x5.xm1 x7.xm1 xm7 xm8
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

foreach pmos xm4
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

* Print region of operation
foreach nmos xm6
 * Save stats
 let vds = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vds]
 let vgs = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vgs]
 let vth = @m.\{$nmos\}.msky130_fd_pr__nfet_01v8_lvt[vth]

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

* Print newline
echo

* Sweep frequency
write TB_Topologies.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

* Calculate gain
let ratio_00 = v(amp_out_00)/v(stim)
let ratio_01 = v(amp_out_01)/v(stim)
let ratio_02 = v(amp_out_02)/v(stim)
let ratio_03 = v(amp_out_03)/v(stim)
let ratio_04 = v(amp_out_04)/v(stim)
let ratio_05 = v(amp_out_05)/v(stim)

let gain_00 = db(mag(ratio_00))
let gain_01 = db(mag(ratio_01))
let gain_02 = db(mag(ratio_02))
let gain_03 = db(mag(ratio_03))
let gain_04 = db(mag(ratio_04))
let gain_05 = db(mag(ratio_05))

write TB_Topologies.raw

.endc
" }
C {devices/launcher.sym} -410 -240 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -220 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -415 -305 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/isource.sym} -280 -90 0 0 {name=Isrc_ibias value=100u}
C {devices/lab_wire.sym} -280 -150 0 0 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -280 -30 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {devices/vsource.sym} -1040 -300 0 0 {name=Vsrc_bias_1v2 value=1.2 savecurrent=false}
C {devices/lab_wire.sym} -1040 -240 0 0 {name=p38 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1040 -360 0 0 {name=p39 sig_type=std_logic lab=bias_1v2}
C {sky130_fd_pr/nfet_01v8.sym} -960 170 0 0 {name=M1
L=2
W=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -940 70 0 0 {name=R1
L=10
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -940 120 0 1 {name=Vsrc_stim4 sig_type=std_logic lab=amp_out_00}
C {devices/lab_wire.sym} -940 20 0 1 {name=p5 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -980 170 0 0 {name=Vsrc_stim3 sig_type=std_logic lab=stim}
C {devices/capa.sym} -1040 -150 0 0 {name=C_Load
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -940 220 0 1 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -960 70 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1040 -200 0 1 {name=Vsrc_stim5 sig_type=std_logic lab=amp_out_00}
C {devices/lab_wire.sym} -1040 -100 0 1 {name=p4 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/nfet_01v8.sym} -760 170 0 0 {name=M2
L=4
W=16
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -760 70 0 0 {name=M3
L=0.3
W=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -740 20 0 1 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -740 220 0 1 {name=p11 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -780 170 0 0 {name=Vsrc_stim6 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -740 120 0 1 {name=Vsrc_stim7 sig_type=std_logic lab=amp_out_01}
C {devices/capa.sym} -1140 -150 0 0 {name=C_Load1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -1140 -200 0 1 {name=Vsrc_stim8 sig_type=std_logic lab=amp_out_01}
C {devices/lab_wire.sym} -1140 -100 0 1 {name=p12 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/pfet_01v8.sym} -580 70 0 0 {name=M4
L=2
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -580 170 0 0 {name=M5
L=1
W=3
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -560 20 0 1 {name=p13 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -560 220 0 1 {name=p14 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -600 170 0 0 {name=Vsrc_stim9 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -560 120 0 1 {name=Vsrc_stim10 sig_type=std_logic lab=amp_out_02}
C {devices/lab_wire.sym} -600 70 0 0 {name=p15 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/res_high_po_0p35.sym} -380 70 0 0 {name=R2
L=2
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -380 120 0 1 {name=Vsrc_stim11 sig_type=std_logic lab=amp_out_03}
C {devices/lab_wire.sym} -380 20 0 1 {name=p16 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -420 170 0 0 {name=Vsrc_stim12 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -380 220 0 1 {name=p17 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -400 70 0 0 {name=p18 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -400 170 0 0 {name=M6
L=0.3
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/capa.sym} -1240 -150 0 0 {name=C_Load2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -1240 -200 0 1 {name=Vsrc_stim13 sig_type=std_logic lab=amp_out_02}
C {devices/lab_wire.sym} -1240 -100 0 1 {name=p19 sig_type=std_logic lab=agnd}
C {devices/capa.sym} -1340 -150 0 0 {name=C_Load3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -1340 -200 0 1 {name=Vsrc_stim14 sig_type=std_logic lab=amp_out_03}
C {devices/lab_wire.sym} -1340 -100 0 1 {name=p20 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -1180 360 0 0 {name=x1}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -1240 380 0 0 {name=x2}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -860 360 0 0 {name=x3}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -920 380 0 0 {name=x4}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -540 360 0 0 {name=x5}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -600 380 0 0 {name=x6}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -220 360 0 0 {name=x7}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -280 380 0 0 {name=x8}
C {devices/lab_wire.sym} -240 450 0 1 {name=p21 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1200 270 0 1 {name=p22 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -880 270 0 1 {name=p23 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -560 270 0 1 {name=p24 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -240 270 0 1 {name=p25 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -360 260 0 0 {name=p26 sig_type=std_logic lab=bias_1v2}
C {devices/lab_wire.sym} -680 260 0 0 {name=p27 sig_type=std_logic lab=bias_1v2}
C {devices/lab_wire.sym} -1000 260 0 0 {name=p28 sig_type=std_logic lab=bias_1v2}
C {devices/lab_wire.sym} -1320 260 0 0 {name=p29 sig_type=std_logic lab=bias_1v2}
C {devices/lab_wire.sym} -1380 360 0 0 {name=Vsrc_stim16 sig_type=std_logic lab=stim}
C {devices/capa.sym} -1440 -150 0 0 {name=C_Load4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -1440 -200 0 1 {name=Vsrc_stim17 sig_type=std_logic lab=amp_out_04}
C {devices/lab_wire.sym} -1440 -100 0 1 {name=p30 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -100 360 0 1 {name=Vsrc_stim15 sig_type=std_logic lab=amp_out_04}
C {sky130_fd_pr/nfet_01v8.sym} -960 650 0 0 {name=M7
L=0.3
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} -940 550 0 0 {name=R3
L=10
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -940 600 0 1 {name=Vsrc_stim18 sig_type=std_logic lab=amp_out_05}
C {devices/lab_wire.sym} -940 500 0 1 {name=p31 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -980 710 0 0 {name=Vsrc_stim19 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -940 760 0 1 {name=p32 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -960 550 0 0 {name=p33 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/nfet_01v8.sym} -960 710 0 0 {name=M8
L=2
W=4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -1200 -300 0 0 {name=Vsrc_bias_0v6 value=0.6 savecurrent=false}
C {devices/lab_wire.sym} -1200 -240 0 0 {name=p35 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1200 -360 0 0 {name=p36 sig_type=std_logic lab=bias_0v6}
C {devices/lab_wire.sym} -980 650 0 0 {name=p34 sig_type=std_logic lab=bias_0v6}
