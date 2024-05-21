v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -920 -70 -880 -70 {
lab=iin}
N -960 -120 -960 -100 {
lab=iin}
N -960 -120 -900 -120 {
lab=iin}
N -900 -120 -900 -70 {
lab=iin}
N -960 -140 -960 -120 {
lab=iin}
N -960 -70 -960 -20 {
lab=agnd}
N -960 -20 -840 -20 {
lab=agnd}
N -840 -70 -840 -20 {
lab=agnd}
N -840 -20 -840 0 {
lab=agnd}
N -840 -140 -840 -100 {
lab=itail}
N -280 -540 -280 -500 {
lab=agnd}
N -280 -440 -280 -400 {
lab=GND}
N -180 -440 -180 -400 {
lab=agnd}
N -180 -540 -180 -500 {
lab=avdd}
N -80 -440 -80 -400 {
lab=iin}
N -80 -540 -80 -500 {
lab=avdd}
N -840 -200 -840 -180 {
lab=itail}
N -840 -280 -840 -260 {
lab=avdd}
N 660 -160 660 -130 {
lab=agnd}
N 620 -160 660 -160 {
lab=agnd}
N 620 -160 620 -100 {
lab=agnd}
N 620 -100 660 -100 {
lab=agnd}
N -660 -200 -660 -170 {
lab=avdd}
N -660 -200 -620 -200 {
lab=avdd}
N -620 -220 -620 -200 {
lab=avdd}
N -620 -140 -620 -100 {
lab=Vb1}
N -620 -70 -620 0 {
lab=agnd}
N -620 -70 -610 -70 {
lab=agnd}
N -610 -170 -610 -70 {
lab=agnd}
N -620 -170 -610 -170 {
lab=agnd}
N -700 -70 -660 -70 {
lab=iin}
N -620 -120 -560 -120 {
lab=Vb1}
N -460 -200 -460 -170 {
lab=agnd}
N -500 -200 -460 -200 {
lab=agnd}
N -500 -200 -500 -140 {
lab=agnd}
N -500 -140 -460 -140 {
lab=agnd}
C {devices/code_shown.sym} 20 -360 0 0 {name=NGSPICE
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
foreach nmos xm1 xm2 xm4 xm5
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

foreach nmos_lvt xm6
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

foreach pmos xm3
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
foreach nmos xm1 xm2 xm4 xm5
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

* Print region of operation
foreach nmos_lvt xm6
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

foreach pmos xm3
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

write TB_Biases.raw

.endc
" }
C {devices/lab_wire.sym} -840 -140 0 1 {name=p18 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} -960 -140 0 1 {name=p1 sig_type=std_logic lab=iin
}
C {devices/lab_wire.sym} -840 0 0 1 {name=p2 sig_type=std_logic lab=agnd
}
C {devices/vsource.sym} -280 -470 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -180 -470 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -280 -400 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -280 -540 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -180 -540 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -180 -400 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/isource.sym} -80 -470 0 0 {name=Isrc_iin value=50u}
C {devices/lab_wire.sym} -80 -400 0 1 {name=p3 sig_type=std_logic lab=iin
}
C {devices/lab_wire.sym} -80 -540 0 0 {name=p4 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -840 -180 0 1 {name=p5 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} -860 -230 0 0 {name=p6 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -840 -280 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -940 -70 0 1 {name=M1
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} -860 -70 0 0 {name=M2
L=0.5
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
C {sky130_fd_pr/res_high_po_0p35.sym} -840 -230 0 0 {name=R1
L=3
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/launcher.sym} 200 -420 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 0 -520 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/pfet_01v8.sym} 640 -130 0 0 {name=M3
L=0.15
W=1
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
C {devices/lab_wire.sym} 620 -160 0 1 {name=p11 sig_type=std_logic lab=agnd
}
C {sky130_fd_pr/nfet_01v8.sym} -480 -170 0 0 {name=M4
L=0.15
W=8
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
C {devices/lab_wire.sym} -620 -220 0 0 {name=p12 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -640 -70 0 0 {name=M5
L=0.5
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
C {devices/lab_wire.sym} -620 0 0 1 {name=p13 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -560 -120 0 1 {name=p14 sig_type=std_logic lab=Vb1
}
C {devices/lab_wire.sym} -700 -70 0 0 {name=p15 sig_type=std_logic lab=iin
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -640 -170 0 0 {name=M6
L=0.15
W=8
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
C {devices/lab_wire.sym} -500 -200 0 1 {name=p16 sig_type=std_logic lab=agnd
}
