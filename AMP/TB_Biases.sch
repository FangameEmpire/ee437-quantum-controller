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
N -950 270 -940 270 {
lab=agnd}
N -940 200 -940 240 {
lab=vcm_d}
N -940 220 -840 220 {
lab=vcm_d}
N -900 220 -900 270 {
lab=vcm_d}
N -780 220 -720 220 {
lab=vcm}
N -340 -600 -340 -580 {
lab=agnd}
N -160 -600 -160 -580 {
lab=agnd}
N -160 -680 -160 -660 {
lab=vinn}
N -340 -680 -340 -660 {
lab=vinp}
N -160 -760 -160 -740 {
lab=vinn_cm}
N -340 -760 -340 -740 {
lab=vinp_cm}
N -340 -580 -160 -580 {
lab=agnd}
N -1040 350 -980 350 {
lab=iin}
N -940 350 -940 400 {
lab=agnd}
N -940 400 -810 400 {
lab=agnd}
N -810 220 -810 400 {
lab=agnd}
N -940 300 -940 320 {
lab=tail}
N -940 300 -890 300 {
lab=tail}
N -900 170 -900 200 {
lab=vcm_d}
N -940 200 -900 200 {
lab=vcm_d}
N -940 100 -940 170 {
lab=avdd}
N -950 220 -950 270 {
lab=agnd}
N -810 130 -810 180 {
lab=avdd}
N -940 130 -810 130 {
lab=avdd}
N -540 40 -540 90 {
lab=avdd}
N -500 90 -500 120 {
lab=Vb2}
N -540 120 -500 120 {
lab=Vb2}
N -540 120 -540 200 {
lab=Vb2}
N -540 230 -540 260 {
lab=agnd}
N -500 200 -500 230 {
lab=Vb2}
N -540 200 -500 200 {
lab=Vb2}
N -540 260 -540 280 {
lab=agnd}
N -540 160 -480 160 {
lab=Vb2}
C {devices/code_shown.sym} 20 -370 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W

.option savecurrents

.control
save all
op

* Print newline
echo

set nmos_list = ( xm1 xm2 xm7 xm9 xm5 xm4  )
set pmos_list = (  )
set nmos_lvt_list = ( xm6 xm10 )
set pmos_lvt_list = ( xm8 xm3 )

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

* Allow biases to settle
*tran 0.002n 30n
*plot vinn vinp vinn_cm vinp_cm vcm Vb1

save all
write TB_Biases.raw
set appendwrite

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
nf=4 
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
nf=4
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
C {sky130_fd_pr/corner.sym} 10 -520 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_wire.sym} -620 -220 0 0 {name=p12 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -640 -70 0 0 {name=M5
L=0.5
W=8.5
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} -960 350 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} -920 270 0 1 {name=M9
L=0.15
W=0.5
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
C {devices/lab_wire.sym} -940 400 0 1 {name=p22 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -940 100 0 0 {name=p17 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -1040 350 0 0 {name=p19 sig_type=std_logic lab=iin
}
C {devices/lab_wire.sym} -720 220 0 1 {name=p21 sig_type=std_logic lab=vcm
}
C {devices/lab_wire.sym} -340 -660 0 0 {name=p11 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -160 -660 0 0 {name=p16 sig_type=std_logic lab=vinn}
C {devices/lab_wire.sym} -340 -580 0 0 {name=p23 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} -340 -710 0 0 {name=V3 value=1.2 savecurrent=false}
C {devices/lab_wire.sym} -340 -760 0 0 {name=p24 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -160 -760 0 0 {name=p25 sig_type=std_logic lab=vinn_cm}
C {devices/vsource.sym} -160 -710 0 0 {name=V4 value=1.2 savecurrent=false}
C {devices/vsource.sym} -340 -630 0 0 {name=V1 value="sin 0.0 0.05 300e6 0 0 0" savecurrent=false}
C {devices/vsource.sym} -160 -630 0 0 {name=V2 value="sin(0 0.05 300e6 0 0 180)" savecurrent=false}
C {devices/lab_wire.sym} -890 220 0 1 {name=p27 sig_type=std_logic lab=vcm_d
}
C {devices/lab_wire.sym} -950 220 0 0 {name=p20 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -890 300 0 1 {name=p26 sig_type=std_logic lab=tail
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -920 170 0 1 {name=M8
L=0.35
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -810 200 3 1 {name=M10
L=2
W=0.5
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} -520 90 0 1 {name=M3
L=0.35
W=1
nf=1
mult=32
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} -540 40 0 0 {name=p28 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -520 230 0 1 {name=M4
L=0.8
W=0.5
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
C {devices/lab_wire.sym} -540 280 0 1 {name=p29 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -480 160 0 1 {name=p30 sig_type=std_logic lab=Vb2
}
