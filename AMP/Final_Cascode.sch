v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -860 -290 -820 -290 {
lab=iin}
N -900 -340 -900 -320 {
lab=iin}
N -900 -340 -840 -340 {
lab=iin}
N -840 -340 -840 -290 {
lab=iin}
N -900 -360 -900 -340 {
lab=iin}
N -900 -290 -900 -240 {
lab=agnd}
N -900 -240 -780 -240 {
lab=agnd}
N -780 -290 -780 -240 {
lab=agnd}
N -780 -240 -780 -220 {
lab=agnd}
N -80 0 80 0 {
lab=itail}
N -80 -50 80 -50 {
lab=agnd}
N -40 -350 40 -350 {
lab=Vb3}
N 80 -400 80 -380 {
lab=avdd}
N -80 -400 80 -400 {
lab=avdd}
N -80 -400 -80 -380 {
lab=avdd}
N 0 -420 0 -400 {
lab=avdd}
N -80 -320 -80 -280 {
lab=int_p1}
N -80 -120 -80 -80 {
lab=int_n1}
N 80 -120 80 -80 {
lab=int_n2}
N 80 -220 80 -180 {
lab=vop}
N 80 -320 80 -280 {
lab=int_p2}
N -80 -220 -80 -180 {
lab=von}
N -40 -250 40 -250 {
lab=Vb2}
N -40 -150 40 -150 {
lab=Vb1}
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
N -780 -360 -780 -320 {
lab=itail}
N 0 0 0 20 {
lab=itail}
N -160 -150 -80 -150 {
lab=agnd}
N -160 -250 -80 -250 {
lab=agnd}
N -160 -350 -80 -350 {
lab=agnd}
N 80 -350 160 -350 {
lab=agnd}
N 80 -250 160 -250 {
lab=agnd}
N 80 -150 160 -150 {
lab=agnd}
N 160 -350 160 -150 {
lab=agnd}
N -160 -350 -160 -150 {
lab=agnd}
N -80 -20 -80 0 {
lab=itail}
N 80 -20 80 0 {
lab=itail}
C {devices/iopin.sym} 0 -420 0 0 {name=p1 lab=avdd}
C {devices/ipin.sym} -120 -50 0 0 {name=p2 lab=vinp}
C {devices/opin.sym} 80 -200 0 0 {name=p3 lab=vop}
C {devices/iopin.sym} -780 -220 0 0 {name=p4 lab=agnd}
C {devices/ipin.sym} 120 -50 0 1 {name=p5 lab=vinn}
C {devices/opin.sym} -80 -200 0 1 {name=p6 lab=von}
C {devices/ipin.sym} -900 -360 0 0 {name=p7 lab=iin}
C {sky130_fd_pr/nfet_01v8.sym} -100 -50 0 0 {name=M1
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -60 -250 0 1 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -50 0 1 {name=M2
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -60 -150 0 1 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 -150 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 60 -250 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -60 -350 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 60 -350 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} -880 -290 0 1 {name=M9
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -800 -290 0 0 {name=M10
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 20 -50 0 0 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 20 -150 0 0 {name=p9 sig_type=std_logic lab=Vb1}
C {devices/lab_wire.sym} 20 -250 0 0 {name=p10 sig_type=std_logic lab=Vb2}
C {devices/lab_wire.sym} 20 -350 0 0 {name=p11 sig_type=std_logic lab=Vb3}
C {devices/vsource.sym} -380 -90 0 0 {name=Vsrc_Vb3_Ideal value=1.35 savecurrent=false}
C {devices/lab_wire.sym} -380 -160 0 0 {name=p12 sig_type=std_logic lab=Vb3_Ideal}
C {devices/lab_wire.sym} -380 -20 0 0 {name=p13 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} -500 -90 0 0 {name=Vsrc_Vb2_Ideal value=1.15 savecurrent=false}
C {devices/lab_wire.sym} -500 -160 0 0 {name=p14 sig_type=std_logic lab=Vb2_Ideal}
C {devices/lab_wire.sym} -500 -20 0 0 {name=p15 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} -620 -90 0 0 {name=Vsrc_Vb1_Ideal value=0.95 savecurrent=false}
C {devices/lab_wire.sym} -620 -160 0 0 {name=p16 sig_type=std_logic lab=Vb1_Ideal}
C {devices/lab_wire.sym} -620 -20 0 0 {name=p17 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -780 -360 0 1 {name=p18 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} 0 20 0 1 {name=p19 sig_type=std_logic lab=itail
}
C {devices/lab_wire.sym} 160 -250 0 1 {name=p20 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} -160 -250 0 0 {name=p21 sig_type=std_logic lab=agnd
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
C {devices/lab_wire.sym} -80 -300 0 1 {name=p28 sig_type=std_logic lab=int_p1
}
C {devices/lab_wire.sym} 80 -300 0 0 {name=p29 sig_type=std_logic lab=int_p2
}
C {devices/lab_wire.sym} -80 -100 0 1 {name=p30 sig_type=std_logic lab=int_n1
}
C {devices/lab_wire.sym} 80 -100 0 0 {name=p31 sig_type=std_logic lab=int_n2
}
