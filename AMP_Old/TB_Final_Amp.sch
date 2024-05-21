v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -840 -680 -410 -360 {flags=graph


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
x1=2.3026984e-08
x2=11}
B 2 -840 -1020 -410 -700 {flags=graph


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
x1=2.3026984e-08
x2=11
y2=3}
T {Goals: A = 50 dB for 100 MHz to 500 MHz
Note: Use RF FETs, check klayout for sizing
} 40 -890 0 0 0.4 0.4 {}
N -360 -390 -360 -360 {
lab=GND}
N -360 -480 -360 -450 {
lab=agnd}
N -270 -480 -270 -450 {
lab=avdd}
N -270 -390 -270 -360 {
lab=agnd}
N -90 -390 -90 -360 {
lab=agnd}
N -90 -480 -90 -450 {
lab=stim}
N -180 -480 -180 -450 {
lab=avdd}
N -180 -390 -180 -360 {
lab=ibias}
N -80 -160 -80 -140 {
lab=agnd}
N -140 -220 -80 -220 {
lab=amp_out_00}
N -80 60 -80 80 {
lab=agnd}
N -140 0 -80 0 {
lab=amp_out_01}
N -360 -220 -320 -220 {
lab=#net1}
N -80 280 -80 300 {
lab=agnd}
N -140 220 -80 220 {
lab=amp_out_02}
N -360 0 -320 0 {
lab=#net2}
N -580 -220 -560 -220 {
lab=#net3}
N -520 0 -500 0 {
lab=#net4}
N -360 220 -320 220 {
lab=#net5}
N -80 500 -80 520 {
lab=agnd}
N -140 440 -80 440 {
lab=amp_out_03}
N -360 440 -320 440 {
lab=#net6}
N 0 -480 0 -450 {
lab=vcm}
N 0 -390 0 -360 {
lab=agnd}
N -840 -160 -840 -140 {
lab=agnd}
N -900 -220 -840 -220 {
lab=amp_out_04}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -260 -220 0 0 {name=x1}
C {devices/vsource.sym} -360 -420 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -270 -420 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/vsource.sym} -90 -420 0 0 {name=Vsrc_stim value="0.01 AC 1" savecurrent=false}
C {devices/gnd.sym} -360 -360 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -360 -480 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -270 -360 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -270 -480 0 0 {name=p3 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -90 -360 0 0 {name=Vsrc_stim1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -90 -480 0 0 {name=Vsrc_stim2 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -80 -220 0 0 {name=Vsrc_stim4 sig_type=std_logic lab=amp_out_00}
C {devices/lab_wire.sym} -280 -130 0 1 {name=p4 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -280 -310 0 1 {name=p5 sig_type=std_logic lab=avdd}
C {devices/code_shown.sym} 70 -740 0 0 {name=NGSPICE
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
* xm1 xm2 xm3 xm4
foreach amp x1 x3 x5 x2
 foreach mos xm1
  * Save stats
  save @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gm]
  let vth   = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[vth]
  let vdsat = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[vdsat]
  let gm    = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gm]
  let gds   = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gds]

  * Print stats
  echo Stats for $amp $mos:
  print vth
  print vdsat
  print gm
  print gds

  * Print newline
  echo

 end
end

foreach amp x13
 foreach mos xm1 xm2
  * Save stats
  save @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gm]
  let vth   = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[vth]
  let vdsat = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[vdsat]
  let gm    = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gm]
  let gds   = @m.\{$amp\}.\{$mos\}.msky130_fd_pr__nfet_01v8[gds]

  * Print stats
  echo Stats for $amp $mos:
  print vth
  print vdsat
  print gm
  print gds

  * Print newline
  echo

 end
end

* Print region of operation
echo Regions of Operation:
foreach amp x1 x3 x5 x2
 foreach nmos xm1
  * Save stats
  let vds = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vds]
  let vgs = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vgs]
  let vth = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vth]

  * Check and print regions
  if (vgs <= vth)
   echo $amp $nmos: N Cutoff
   print vgs
   print vth
  end
  if (vgs > vth) & (vds <= (vgs - vth))
   echo $amp $nmos: N Triode
   print vgs
   print vth
   print vds
  end
  if (vgs > vth) & (vds > (vgs - vth))
   echo $amp $nmos: N Saturation
  end
 end
end

foreach amp x13
 foreach nmos xm1 xm2
  * Save stats
  let vds = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vds]
  let vgs = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vgs]
  let vth = @m.\{$amp\}.\{$nmos\}.msky130_fd_pr__nfet_01v8[vth]

  * Check and print regions
  if (vgs <= vth)
   echo $amp $nmos: N Cutoff
   print vgs
   print vth
  end
  if (vgs > vth) & (vds <= (vgs - vth))
   echo $amp $nmos: N Triode
   print vgs
   print vth
   print vds
  end
  if (vgs > vth) & (vds > (vgs - vth))
   echo $amp $nmos: N Saturation
  end
 end
end

* Print newline
echo

* Sweep frequency
write TB_Final_Amp.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

* Calculate gain
let ratio_00 = v(amp_out_00)/v(stim)
let ratio_01 = v(amp_out_01)/v(stim)
let ratio_02 = v(amp_out_02)/v(stim)
let ratio_03 = v(amp_out_03)/v(stim)
let ratio_04 = v(amp_out_04)/v(stim)
*let ratio_05 = v(amp_out_05)/v(stim)
*let ratio_06 = v(amp_out_06)/v(stim)

let gain_00 = db(mag(ratio_00))
let gain_01 = db(mag(ratio_01))
let gain_02 = db(mag(ratio_02))
let gain_03 = db(mag(ratio_03))
let gain_04 = db(mag(ratio_04))
*let gain_05 = db(mag(ratio_05))
*let gain_06 = db(mag(ratio_06))

write TB_Final_Amp.raw

.endc
" }
C {devices/launcher.sym} -310 -570 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -120 -780 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -315 -635 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/isource.sym} -180 -420 0 0 {name=Isrc_ibias value=100u}
C {devices/lab_wire.sym} -180 -480 0 0 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -180 -360 0 0 {name=p7 sig_type=std_logic lab=ibias}
C {devices/capa.sym} -80 -190 0 0 {name=C_Load
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 -140 0 1 {name=p9 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -260 0 0 0 {name=x3}
C {devices/lab_wire.sym} -80 0 0 0 {name=Vsrc_stim5 sig_type=std_logic lab=amp_out_01}
C {devices/lab_wire.sym} -280 90 0 1 {name=p10 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -280 -90 0 1 {name=p11 sig_type=std_logic lab=avdd}
C {devices/capa.sym} -80 30 0 0 {name=C_Load1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 80 0 1 {name=p12 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/LPF.sym} -580 -260 0 0 {name=x4}
C {devices/lab_wire.sym} -720 -220 0 0 {name=Vsrc_stim6 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -400 -140 0 1 {name=p13 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -260 220 0 0 {name=x5}
C {devices/lab_wire.sym} -80 220 0 0 {name=Vsrc_stim7 sig_type=std_logic lab=amp_out_02}
C {devices/lab_wire.sym} -280 310 0 1 {name=p14 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -280 130 0 1 {name=p15 sig_type=std_logic lab=avdd}
C {devices/capa.sym} -80 250 0 0 {name=C_Load2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 300 0 1 {name=p16 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/LPF.sym} -740 -40 0 0 {name=x6}
C {devices/lab_wire.sym} -720 0 0 0 {name=Vsrc_stim8 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -560 80 0 1 {name=p17 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -580 -200 0 0 {name=x7}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -360 20 0 0 {name=x8}
C {devices/lab_wire.sym} -460 80 0 1 {name=p18 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -680 -140 0 1 {name=p19 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -360 240 0 0 {name=x11}
C {devices/lab_wire.sym} -460 300 0 1 {name=p28 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -500 220 0 0 {name=Vsrc_stim12 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -80 440 0 0 {name=Vsrc_stim15 sig_type=std_logic lab=amp_out_03}
C {devices/lab_wire.sym} -280 530 0 1 {name=p33 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -280 350 0 1 {name=p34 sig_type=std_logic lab=avdd}
C {devices/capa.sym} -80 470 0 0 {name=C_Load6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -80 520 0 1 {name=p35 sig_type=std_logic lab=agnd}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/CPL_CM.sym} -360 460 0 0 {name=x14}
C {devices/lab_wire.sym} -460 520 0 1 {name=p36 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -500 440 0 0 {name=Vsrc_stim16 sig_type=std_logic lab=stim}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp_Diode.sym} -300 460 0 0 {name=x13}
C {devices/vsource.sym} 0 -420 0 0 {name=Vsrc_vcm value=1.2 savecurrent=false}
C {devices/lab_wire.sym} 0 -360 0 0 {name=p38 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 0 -480 0 0 {name=p39 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -660 -320 0 0 {name=p21 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -440 -100 0 0 {name=p20 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -440 120 0 0 {name=p29 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} -440 340 0 0 {name=p37 sig_type=std_logic lab=vcm}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Final_Amp.sym} -1020 -220 0 0 {name=x2}
C {devices/lab_wire.sym} -840 -220 0 0 {name=Vsrc_stim3 sig_type=std_logic lab=amp_out_04}
C {devices/lab_wire.sym} -1040 -130 0 1 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1040 -310 0 1 {name=p22 sig_type=std_logic lab=avdd}
C {devices/capa.sym} -840 -190 0 0 {name=C_Load3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -840 -140 0 1 {name=p23 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -1080 -220 0 0 {name=Vsrc_stim9 sig_type=std_logic lab=stim}
