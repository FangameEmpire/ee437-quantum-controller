v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 110 -160 110 {
lab=ibias_n_50u}
N -240 60 -240 80 {
lab=ibias_n_50u}
N -240 60 -180 60 {
lab=ibias_n_50u}
N -180 60 -180 110 {
lab=ibias_n_50u}
N -240 40 -240 60 {
lab=ibias_n_50u}
N -240 110 -240 160 {
lab=agnd}
N -240 160 -120 160 {
lab=agnd}
N -120 110 -120 160 {
lab=agnd}
N -120 160 -120 180 {
lab=agnd}
N 0 -540 0 -520 {
lab=avdd}
N -380 -60 -380 -20 {
lab=agnd}
N -380 -160 -380 -120 {
lab=Vb3_Ideal}
N -500 -60 -500 -20 {
lab=agnd}
N -500 -160 -500 -120 {
lab=Vb2_Ideal}
N -620 -60 -620 -20 {
lab=agnd}
N -620 -160 -620 -120 {
lab=Vb1_Ideal}
N -120 40 -120 80 {
lab=itail}
N 0 0 0 20 {
lab=itail}
N -180 -190 -100 -190 {
lab=agnd}
N 100 -190 180 -190 {
lab=agnd}
N -100 -20 -100 0 {
lab=itail}
N 100 -20 100 0 {
lab=itail}
N 100 -520 100 -470 {
lab=avdd}
N -100 -520 -100 -470 {
lab=avdd}
N -180 -330 -100 -330 {
lab=avdd}
N 100 -330 180 -330 {
lab=avdd}
N 100 -160 100 -80 {
lab=int_n2}
N -100 -160 -100 -80 {
lab=int_n1}
N 100 -300 100 -220 {
lab=vop}
N -100 -300 -100 -220 {
lab=von}
N -100 -440 -100 -360 {
lab=int_p1}
N 100 -440 100 -360 {
lab=int_p2}
N -100 -520 100 -520 {
lab=avdd}
N -60 -470 60 -470 {
lab=Vb3}
N -60 -330 60 -330 {
lab=Vb2}
N -60 -190 60 -190 {
lab=Vb1}
N -100 -50 100 -50 {
lab=agnd}
N -100 0 100 -0 {
lab=itail}
N -180 -50 -140 -50 {
lab=vinp_cm}
N 140 -50 180 -50 {
lab=vinn_cm}
N 120 200 120 240 {
lab=agnd}
N 120 40 120 80 {
lab=itail_ideal}
C {devices/iopin.sym} 0 -540 0 0 {name=p1 lab=avdd}
C {devices/ipin.sym} -980 -60 0 0 {name=p2 lab=vinp}
C {devices/opin.sym} 100 -260 0 0 {name=p3 lab=vop}
C {devices/iopin.sym} -120 180 0 0 {name=p4 lab=agnd}
C {devices/ipin.sym} -820 -60 0 1 {name=p5 lab=vinn}
C {devices/opin.sym} -100 -260 0 1 {name=p6 lab=von}
C {devices/ipin.sym} -240 40 0 0 {name=p7 lab=ibias_n_50u}
C {devices/lab_wire.sym} 0 -50 0 0 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 0 -190 0 0 {name=p9 sig_type=std_logic lab=Vb1}
C {devices/lab_wire.sym} 0 -330 0 0 {name=p10 sig_type=std_logic lab=Vb2}
C {devices/lab_wire.sym} 0 -470 0 0 {name=p11 sig_type=std_logic lab=Vb3}
C {devices/vsource.sym} -380 -90 0 0 {name=Vsrc_Vb3_Ideal value=0.81 savecurrent=false}
C {devices/lab_wire.sym} -380 -160 0 0 {name=p12 sig_type=std_logic lab=Vb3_Ideal}
C {devices/lab_wire.sym} -380 -20 0 0 {name=p13 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} -500 -90 0 0 {name=Vsrc_Vb2_Ideal value=0.59 savecurrent=false}
C {devices/lab_wire.sym} -500 -160 0 0 {name=p14 sig_type=std_logic lab=Vb2_Ideal}
C {devices/lab_wire.sym} -500 -20 0 0 {name=p15 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} -620 -90 0 0 {name=Vsrc_Vb1_Ideal value=1.52 savecurrent=false}
C {devices/lab_wire.sym} -620 -160 0 0 {name=p16 sig_type=std_logic lab=Vb1_Ideal}
C {devices/lab_wire.sym} -620 -20 0 0 {name=p17 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -120 40 0 1 {name=p18 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} 180 -190 0 1 {name=p20 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -180 -190 0 0 {name=p21 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -380 -200 0 0 {name=p22 sig_type=std_logic lab=Vb3_Ideal}
C {devices/lab_wire.sym} -500 -200 0 0 {name=p23 sig_type=std_logic lab=Vb2_Ideal}
C {devices/lab_wire.sym} -620 -200 0 0 {name=p24 sig_type=std_logic lab=Vb1_Ideal}
C {devices/lab_wire.sym} -620 -260 0 0 {name=p25 sig_type=std_logic lab=Vb1}
C {devices/lab_wire.sym} -500 -260 0 0 {name=p26 sig_type=std_logic lab=Vb2}
C {devices/lab_wire.sym} -380 -260 0 0 {name=p27 sig_type=std_logic lab=Vb3}
C {devices/vsource.sym} -380 -230 0 0 {name=Vsrc_Vb3 value=0.0 savecurrent=false}
C {devices/vsource.sym} -500 -230 0 0 {name=Vsrc_Vb2 value=0.0 savecurrent=false}
C {devices/vsource.sym} -620 -230 0 0 {name=Vsrc_Vb1 value=0.0 savecurrent=false}
C {devices/lab_wire.sym} -100 -400 0 1 {name=p28 sig_type=std_logic lab=int_p1
}
C {devices/lab_wire.sym} 100 -400 0 0 {name=p29 sig_type=std_logic lab=int_p2
}
C {devices/lab_wire.sym} -100 -120 0 1 {name=p30 sig_type=std_logic lab=int_n1
}
C {devices/lab_wire.sym} 100 -120 0 0 {name=p31 sig_type=std_logic lab=int_n2
}
C {devices/vsource.sym} -980 -90 0 0 {name=Vsrc_vinp_cm_ideal1 value=1.35 savecurrent=false}
C {devices/vsource.sym} -820 -90 0 0 {name=Vsrc_vinp_cm_ideal value=1.35 savecurrent=false}
C {devices/lab_wire.sym} 180 -50 0 1 {name=p32 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -180 -50 0 0 {name=p33 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} -820 -120 0 1 {name=p34 sig_type=std_logic lab=vinn_cm_ideal}
C {devices/lab_wire.sym} -980 -120 0 0 {name=p35 sig_type=std_logic lab=vinp_cm_ideal}
C {devices/vsource.sym} -820 -230 0 0 {name=Vsrc_vinn_cm value=0.0 savecurrent=false}
C {devices/vsource.sym} -980 -230 0 0 {name=Vsrc_vinp_cm value=0.0 savecurrent=false}
C {devices/lab_wire.sym} -820 -200 0 1 {name=p36 sig_type=std_logic lab=vinn_cm_ideal}
C {devices/lab_wire.sym} -980 -200 0 0 {name=p37 sig_type=std_logic lab=vinp_cm_ideal}
C {devices/lab_wire.sym} -820 -260 0 1 {name=p38 sig_type=std_logic lab=vinn_cm}
C {devices/lab_wire.sym} -980 -260 0 0 {name=p39 sig_type=std_logic lab=vinp_cm}
C {devices/lab_wire.sym} 180 -330 0 1 {name=p41 sig_type=std_logic lab=avdd
}
C {devices/lab_wire.sym} -180 -330 0 0 {name=p42 sig_type=std_logic lab=avdd
}
C {sky130_fd_pr/nfet_01v8.sym} -120 -50 0 0 {name=M1
L=0.15
W=0.97
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
C {sky130_fd_pr/nfet_01v8.sym} 120 -50 0 1 {name=M2
L=0.15
W=0.97
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
C {sky130_fd_pr/pfet_01v8.sym} -80 -470 0 1 {name=M7
L=0.35
W=2.20
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -470 0 0 {name=M8
L=0.35
W=2.20
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -220 110 0 1 {name=M9
L=0.15
W=1.15
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
C {sky130_fd_pr/nfet_01v8.sym} -140 110 0 0 {name=M10
L=0.15
W=1.15
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} -80 -190 0 1 {name=M3
L=0.15
W=1.16
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 80 -190 0 0 {name=M4
L=0.15
W=1.16
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -80 -330 0 1 {name=M5
L=0.35
W=1.32
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 80 -330 0 0 {name=M6
L=0.35
W=1.32
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
C {devices/isource.sym} 120 110 0 0 {name=I0 value=400u}
C {devices/lab_wire.sym} 120 40 0 1 {name=p40 sig_type=std_logic lab=itail_ideal
}
C {devices/lab_wire.sym} 120 240 0 1 {name=p43 sig_type=std_logic lab=agnd
}
C {devices/vsource.sym} 120 170 0 0 {name=V1 value=0.3 savecurrent=false}
C {devices/lab_wire.sym} 0 20 0 1 {name=p19 sig_type=std_logic lab=itail
}
