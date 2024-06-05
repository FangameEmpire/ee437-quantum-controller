v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -580 260 -560 {
lab=avdd}
N 260 -40 260 -20 {
lab=itail}
N 80 -230 160 -230 {
lab=agnd}
N 360 -230 440 -230 {
lab=agnd}
N 160 -60 160 -40 {
lab=itail}
N 360 -60 360 -40 {
lab=itail}
N 360 -560 360 -510 {
lab=avdd}
N 160 -560 160 -510 {
lab=avdd}
N 80 -370 160 -370 {
lab=avdd}
N 360 -370 440 -370 {
lab=avdd}
N 360 -200 360 -120 {
lab=int_n2}
N 160 -200 160 -120 {
lab=int_n1}
N 360 -340 360 -260 {
lab=vout}
N 160 -340 160 -260 {
lab=Vb3}
N 160 -480 160 -400 {
lab=int_p1}
N 360 -480 360 -400 {
lab=int_p2}
N 160 -560 360 -560 {
lab=avdd}
N 200 -510 320 -510 {
lab=Vb3}
N 200 -370 320 -370 {
lab=Vb2}
N 200 -230 320 -230 {
lab=Vb1}
N 160 -90 360 -90 {
lab=agnd}
N 160 -40 360 -40 {
lab=itail}
N 80 -90 120 -90 {
lab=vinp}
N 400 -90 440 -90 {
lab=vinn}
N 220 -510 220 -300 {
lab=Vb3}
N 160 -300 220 -300 {
lab=Vb3}
N 240 -390 240 -370 {
lab=Vb2}
N 240 -250 240 -230 {
lab=Vb1}
C {devices/iopin.sym} 260 -580 0 0 {name=p1 lab=avdd}
C {devices/lab_wire.sym} 260 -90 0 0 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 80 -230 0 0 {name=p21 sig_type=std_logic lab=agnd
}
C {devices/lab_wire.sym} 260 -510 0 0 {name=p27 sig_type=std_logic lab=Vb3}
C {devices/lab_wire.sym} 160 -440 0 1 {name=p28 sig_type=std_logic lab=int_p1
}
C {devices/lab_wire.sym} 360 -440 0 0 {name=p29 sig_type=std_logic lab=int_p2
}
C {devices/lab_wire.sym} 160 -160 0 1 {name=p30 sig_type=std_logic lab=int_n1
}
C {devices/lab_wire.sym} 360 -160 0 0 {name=p31 sig_type=std_logic lab=int_n2
}
C {devices/lab_wire.sym} 440 -370 0 1 {name=p41 sig_type=std_logic lab=avdd
}
C {devices/lab_wire.sym} 80 -370 0 0 {name=p42 sig_type=std_logic lab=avdd
}
C {sky130_fd_pr/nfet_01v8.sym} 140 -90 0 0 {name=M1
L=0.15
W=1.00
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -90 0 1 {name=M2
L=0.15
W=1.00
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -510 0 1 {name=M7
L=0.15
W=1.00
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 340 -510 0 0 {name=M8
L=0.15
W=1.00
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 -230 0 1 {name=M3
L=0.15
W=1.00
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 340 -230 0 0 {name=M4
L=0.15
W=1.00
nf=1
mult=16
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 180 -370 0 1 {name=M5
L=0.35
W=1.00
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 340 -370 0 0 {name=M6
L=0.35
W=1.00
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 80 -90 0 0 {name=p2 lab=vinp}
C {devices/opin.sym} 360 -300 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} 440 -230 0 0 {name=p4 lab=agnd}
C {devices/ipin.sym} 440 -90 0 1 {name=p5 lab=vinn}
C {devices/iopin.sym} 240 -390 0 0 {name=p6 lab=Vb2}
C {devices/iopin.sym} 240 -250 0 0 {name=p11 lab=Vb1}
C {devices/iopin.sym} 260 -20 0 0 {name=p7 lab=itail}
