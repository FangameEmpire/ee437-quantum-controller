v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -940 -660 -380 -660 {}
L 4 -940 -660 -940 -280 {}
L 4 -940 -280 -380 -280 {}
L 4 -380 -660 -380 -280 {}
L 4 -380 -660 -20 -660 {}
L 4 -20 -660 -20 -460 {}
L 4 -380 -460 -20 -460 {}
L 4 -20 -460 -20 -280 {}
L 4 -380 -280 -20 -280 {}
L 4 -940 -280 -940 -20 {}
L 4 -940 -20 -480 -20 {}
L 4 -480 -280 -480 -20 {}
L 4 -480 -20 -20 -20 {}
L 4 -20 -280 -20 -20 {}
T {Common Mode Injection} -920 -320 0 0 0.3 0.3 {}
T {Tail Current Mirror} -360 -500 0 0 0.3 0.3 {}
T {Input Decoupling} -360 -320 0 0 0.3 0.3 {}
T {Bias Generation} -920 -60 0 0 0.3 0.3 {}
T {Output Buffer} -460 -60 0 0 0.3 0.3 {}
N -200 -570 -160 -570 {
lab=ibias_n_50u}
N -240 -620 -240 -600 {
lab=ibias_n_50u}
N -240 -620 -180 -620 {
lab=ibias_n_50u}
N -180 -620 -180 -570 {
lab=ibias_n_50u}
N -240 -640 -240 -620 {
lab=ibias_n_50u}
N -240 -570 -240 -520 {
lab=agnd}
N -240 -520 -120 -520 {
lab=agnd}
N -120 -570 -120 -520 {
lab=agnd}
N -120 -520 -120 -500 {
lab=agnd}
N -120 -640 -120 -600 {
lab=itail}
N -740 -540 -740 -500 {
lab=vcm_d}
N -700 -520 -700 -470 {
lab=vcm_d}
N -840 -390 -780 -390 {
lab=ibias_n_50u}
N -740 -390 -740 -340 {
lab=agnd}
N -740 -440 -740 -420 {
lab=tail}
N -740 -440 -690 -440 {
lab=tail}
N -700 -570 -700 -540 {
lab=vcm_d}
N -740 -540 -700 -540 {
lab=vcm_d}
N -740 -640 -740 -570 {
lab=avdd}
N -520 -580 -460 -580 {
lab=vinp_cm}
N -640 -580 -580 -580 {
lab=vcm_d}
N -550 -640 -550 -620 {
lab=avdd}
N -640 -420 -580 -420 {
lab=vcm_d}
N -520 -420 -460 -420 {
lab=vinn_cm}
N -550 -480 -550 -460 {
lab=avdd}
N -740 -520 -700 -520 {
lab=vcm_d}
N -760 -470 -740 -470 {
lab=agnd}
N -760 -520 -760 -470 {
lab=agnd}
N -550 -340 -500 -340 {
lab=agnd}
N -550 -420 -550 -340 {
lab=agnd}
N -550 -580 -550 -500 {
lab=agnd}
N -550 -500 -500 -500 {
lab=agnd}
N -280 -440 -280 -420 {
lab=vinp}
N -100 -440 -100 -420 {
lab=vinn}
N -280 -360 -280 -340 {
lab=vinp_cm}
N -100 -360 -100 -340 {
lab=vinn_cm}
N -800 -240 -800 -210 {
lab=avdd}
N -800 -240 -760 -240 {
lab=avdd}
N -760 -260 -760 -240 {
lab=avdd}
N -760 -180 -760 -140 {
lab=Vb2}
N -760 -110 -750 -110 {
lab=agnd}
N -750 -210 -750 -110 {
lab=agnd}
N -760 -210 -750 -210 {
lab=agnd}
N -840 -110 -800 -110 {
lab=ibias_n_50u}
N -760 -160 -700 -160 {
lab=Vb2}
N -580 -260 -580 -210 {
lab=avdd}
N -540 -210 -540 -180 {
lab=Vb1}
N -580 -180 -540 -180 {
lab=Vb1}
N -580 -110 -580 -80 {
lab=agnd}
N -540 -140 -540 -110 {
lab=Vb1}
N -580 -140 -540 -140 {
lab=Vb1}
N -580 -80 -580 -60 {
lab=agnd}
N -580 -160 -520 -160 {
lab=Vb1}
N -760 -110 -760 -60 {
lab=agnd}
N -580 -180 -580 -140 {
lab=Vb1}
N -240 -260 -240 -240 {
lab=avdd}
N -240 -110 -240 -60 {
lab=agnd}
N -240 -180 -240 -140 {
lab=vout}
N -280 -240 -280 -210 {
lab=avdd}
N -280 -240 -240 -240 {
lab=avdd}
N -240 -110 -230 -110 {
lab=agnd}
N -240 -210 -230 -210 {
lab=agnd}
N -230 -210 -230 -110 {
lab=agnd}
N -320 -110 -280 -110 {
lab=vout_int}
N -240 -160 -200 -160 {
lab=vout}
N 320 -420 380 -420 {
lab=vout_int}
C {devices/iopin.sym} -740 -640 0 0 {name=p1 lab=avdd}
C {devices/ipin.sym} -280 -440 0 0 {name=p2 lab=vinp}
C {devices/opin.sym} -200 -160 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} -120 -500 0 0 {name=p4 lab=agnd}
C {devices/ipin.sym} -100 -440 0 1 {name=p5 lab=vinn}
C {devices/ipin.sym} -240 -640 0 0 {name=p7 lab=ibias_n_50u}
C {devices/lab_wire.sym} 180 -340 0 0 {name=p9 sig_type=std_logic lab=Vb1}
C {devices/lab_wire.sym} 220 -360 0 0 {name=p10 sig_type=std_logic lab=Vb2}
C {devices/lab_wire.sym} -120 -640 0 1 {name=p18 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} 140 -320 0 1 {name=p20 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} 80 -440 0 0 {name=p32 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} 80 -400 0 0 {name=p33 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} 140 -520 0 1 {name=p41 sig_type=std_logic lab=avdd
}
C {sky130_fd_pr/nfet_01v8.sym} -220 -570 0 1 {name=M9
L=0.15
W=1.00
nf=1 
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -140 -570 0 0 {name=M10
L=0.15
W=1.00
nf=1 
mult=32
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 180 -500 0 1 {name=p19 sig_type=std_logic lab=itail
}
C {sky130_fd_pr/nfet_01v8.sym} -760 -390 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} -720 -470 0 1 {name=M12
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
C {devices/lab_wire.sym} -740 -340 0 1 {name=p22 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -840 -390 0 0 {name=p13 sig_type=std_logic lab=ibias_n_50u
}
C {devices/lab_wire.sym} -700 -520 0 1 {name=p25 sig_type=std_logic lab=vcm_d
}
C {devices/lab_wire.sym} -760 -520 0 0 {name=p40 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -690 -440 0 1 {name=p43 sig_type=std_logic lab=tail
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -720 -570 0 1 {name=M13
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -550 -440 3 1 {name=M14
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -550 -600 3 1 {name=M15
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
C {devices/lab_wire.sym} -550 -640 0 0 {name=p44 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -640 -580 0 1 {name=p45 sig_type=std_logic lab=vcm_d
}
C {devices/lab_wire.sym} -500 -500 0 1 {name=p46 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -640 -420 0 1 {name=p48 sig_type=std_logic lab=vcm_d
}
C {devices/lab_wire.sym} -550 -480 0 0 {name=p49 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -500 -340 0 1 {name=p50 sig_type=std_logic lab=agnd
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -280 -390 2 0 {name=C3 model=cap_mim_m3_1 W=100 L=100 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -100 -390 2 0 {name=C1 model=cap_mim_m3_1 W=100 L=100 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} -280 -340 0 0 {name=p51 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -100 -340 0 1 {name=p52 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -460 -580 0 1 {name=p24 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -460 -420 0 1 {name=p38 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -760 -260 0 0 {name=p34 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -780 -110 0 0 {name=M16
L=0.5
W=12
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
C {devices/lab_wire.sym} -760 -60 0 1 {name=p35 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -700 -160 0 1 {name=p36 sig_type=std_logic lab=Vb2
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -780 -210 0 0 {name=M17
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
C {devices/lab_wire.sym} -840 -110 0 0 {name=p37 sig_type=std_logic lab=ibias_n_50u
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -560 -210 0 1 {name=M19
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
C {devices/lab_wire.sym} -580 -260 0 0 {name=p14 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -560 -110 0 1 {name=M18
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
C {devices/lab_wire.sym} -580 -60 0 1 {name=p15 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -520 -160 0 1 {name=p23 sig_type=std_logic lab=Vb1
}
C {sky130_fd_pr/nfet_01v8.sym} -260 -110 0 0 {name=M20
L=0.15
W=1
nf=1 
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -260 -210 0 0 {name=M21
L=0.15
W=1
nf=1 
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -240 -260 0 1 {name=p6 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -240 -60 0 1 {name=p16 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -320 -110 0 0 {name=p17 sig_type=std_logic lab=vout_int}
C {devices/lab_wire.sym} 380 -420 0 0 {name=p11 sig_type=std_logic lab=vout_int}
C {/foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Cascode.sym} 220 -420 0 0 {name=x1}
