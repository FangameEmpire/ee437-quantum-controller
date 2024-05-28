v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -470 -340 -40 -20 {flags=graph


divy = 5
subdivy=4


divx=6
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
x1=0.0
x2=11}
B 2 -470 -680 -40 -360 {flags=graph



subdivy=1


divx=6
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
y2=3
divy=5
hilight_wave=-1}
N 40 -60 40 -30 {
lab=GND}
N 40 -150 40 -120 {
lab=agnd}
N 130 -150 130 -120 {
lab=avdd}
N 130 -60 130 -30 {
lab=agnd}
N 220 -150 220 -120 {
lab=avdd}
N 220 -60 220 -30 {
lab=ibias}
N 320 -60 320 -40 {
lab=agnd}
N 420 -60 420 -40 {
lab=agnd}
N 320 -40 420 -40 {
lab=agnd}
N 420 -140 420 -120 {
lab=vinn}
N 320 -140 320 -120 {
lab=vinp}
N -100 220 -100 240 {
lab=agnd}
N -40 220 -40 240 {
lab=agnd}
N -100 240 -40 240 {
lab=agnd}
N -460 500 -460 520 {
lab=agnd}
N -460 520 -340 520 {
lab=agnd}
N -340 500 -340 520 {
lab=agnd}
N -400 520 -400 540 {
lab=agnd}
N -460 400 -460 440 {
lab=ibias}
N -460 420 -400 420 {
lab=ibias}
N -400 420 -400 470 {
lab=ibias}
N -420 470 -380 470 {
lab=ibias}
N -340 470 -340 500 {
lab=agnd}
N -460 470 -460 500 {
lab=agnd}
N -440 310 -440 340 {
lab=itail}
N -240 310 -240 340 {
lab=itail}
N -520 280 -480 280 {
lab=vinp_cm}
N -200 280 -160 280 {
lab=vinn_cm}
N -440 160 -440 250 {
lab=voutn}
N -240 160 -240 250 {
lab=voutp}
N -460 200 -440 200 {
lab=voutn}
N -240 200 -220 200 {
lab=voutp}
N -440 60 -440 100 {
lab=avdd}
N -240 60 -240 100 {
lab=avdd}
N -340 40 -340 60 {
lab=avdd}
N -440 100 -440 130 {
lab=avdd}
N -240 100 -240 130 {
lab=avdd}
N -440 60 -240 60 {
lab=avdd}
N -400 130 -280 130 {
lab=voutn}
N -440 280 -240 280 {
lab=agnd}
N -440 340 -240 340 {
lab=itail}
N -340 400 -340 440 {
lab=itail}
N -340 340 -340 360 {
lab=itail}
N -340 130 -340 200 {
lab=voutn}
N -440 200 -340 200 {
lab=voutn}
C {devices/code_shown.sym} 20 30 0 0 {name=NGSPICE
only_toplevel=true
value=
"* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1

.option savecurrents

.control
save all
op

* Print newline
echo

* Store MOS lists
set nmos_list = ( xm1 xm2 xm3 xm4 )
set pmos_list = ( xm5 xm6 )
set nmos_lvt_list = (  )
set pmos_lvt_list = (  )

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
write TB_Topologies_Diff.raw
set appendwrite
ac dec 100 1e0 1e11
remzerovec

* Calculate gain
let vout_diff = v(voutp)
let vin_diff = v(vinp) - v(vinn)
let gain_00 = db(mag(vout_diff/vin_diff))
let ratio_00 = (vout_diff/vin_diff)

write TB_Topologies_Diff.raw

.endc
" }
C {devices/vsource.sym} 40 -90 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} 130 -90 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 40 -150 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 130 -30 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 130 -150 0 0 {name=p3 sig_type=std_logic lab=avdd}
C {devices/launcher.sym} 90 -240 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 280 -450 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 85 -305 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/isource.sym} 220 -90 0 0 {name=Isrc_ibias value=50u}
C {devices/lab_wire.sym} 220 -150 0 0 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} 220 -30 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {devices/lab_wire.sym} 320 -140 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} 420 -140 0 0 {name=p5 sig_type=std_logic lab=vinn}
C {devices/vsource.sym} 320 -90 0 0 {name=V1 value="0.05 AC 0.5 0" savecurrent=false}
C {devices/vsource.sym} 420 -90 0 0 {name=V2 value="0.05 AC 0.5 180" savecurrent=false}
C {devices/lab_wire.sym} 390 -40 0 0 {name=p10 sig_type=std_logic lab=agnd}
C {devices/gnd.sym} 40 -30 0 0 {name=l1 lab=GND}
C {devices/capa.sym} -40 190 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -100 190 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -50 240 0 0 {name=p20 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -40 160 0 0 {name=p18 sig_type=std_logic lab=voutn}
C {devices/lab_wire.sym} -100 160 0 0 {name=p19 sig_type=std_logic lab=voutp}
C {sky130_fd_pr/nfet_01v8.sym} -360 470 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -440 470 0 1 {name=M2
L=0.15
W=1
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -460 280 0 0 {name=M3
L=0.15
W=16
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -220 280 0 1 {name=M4
L=0.15
W=16
nf=1 
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -320 280 0 0 {name=p16 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -220 200 0 1 {name=p8 sig_type=std_logic lab=voutp}
C {devices/lab_wire.sym} -160 280 0 1 {name=p11 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -520 280 0 0 {name=p13 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -460 400 0 0 {name=p12 sig_type=std_logic lab=ibias}
C {sky130_fd_pr/pfet_01v8.sym} -420 130 0 1 {name=M5
L=0.15
W=64
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -260 130 0 0 {name=M6
L=0.15
W=64
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -400 540 0 0 {name=p15 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -340 40 0 0 {name=p17 sig_type=std_logic lab=avdd}
C {devices/vsource.sym} -720 170 0 0 {name=V3 value=1.6 savecurrent=false}
C {devices/vsource.sym} -660 170 0 0 {name=V4 value=1.6 savecurrent=false}
C {devices/lab_wire.sym} -720 140 0 0 {name=p21 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -660 140 0 1 {name=p22 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -720 200 0 0 {name=p23 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -660 200 0 1 {name=p24 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -460 200 0 0 {name=p27 sig_type=std_logic lab=voutn}
C {devices/lab_wire.sym} -340 360 0 0 {name=p9 sig_type=std_logic lab=itail}
C {devices/lab_wire.sym} -340 400 0 0 {name=p28 sig_type=std_logic lab=itail}
