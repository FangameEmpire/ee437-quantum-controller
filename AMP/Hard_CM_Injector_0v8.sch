v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 50 -440 50 {
lab=agnd}
N -450 -50 -440 -50 {
lab=agnd}
N -440 -20 -440 20 {
lab=vcm_d}
N -440 -0 -340 -0 {
lab=vcm_d}
N -280 0 -260 0 {
lab=vcm}
N -400 0 -400 50 {
lab=vcm_d}
N -400 -50 -310 -50 {
lab=avdd}
N -310 -50 -310 -40 {
lab=avdd}
N -450 -50 -450 50 {
lab=agnd}
N -440 80 -440 120 {
lab=tail}
N -440 100 -390 100 {
lab=tail}
N -310 -0 -310 180 {
lab=agnd}
N -440 180 -310 180 {
lab=agnd}
N -440 150 -440 180 {
lab=agnd}
N -440 -120 -440 -80 {
lab=avdd}
N -440 -100 -400 -100 {
lab=avdd}
N -400 -100 -400 -50 {
lab=avdd}
C {devices/iopin.sym} -440 -120 0 0 {name=p1 lab=avdd}
C {devices/opin.sym} -260 0 0 0 {name=p3 lab=vcm}
C {devices/iopin.sym} -310 180 0 0 {name=p4 lab=agnd}
C {devices/ipin.sym} -480 150 0 0 {name=p7 lab=iin}
C {sky130_fd_pr/nfet_01v8.sym} -460 150 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -420 -50 0 1 {name=M2
L=0.15
W=2.5
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
C {sky130_fd_pr/nfet_01v8.sym} -420 50 0 1 {name=M3
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -310 -20 3 1 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -390 100 0 1 {name=p2 sig_type=std_logic lab=tail
}
C {devices/lab_wire.sym} -390 0 0 1 {name=p5 sig_type=std_logic lab=vcm_d
}
C {devices/lab_wire.sym} -450 0 0 0 {name=p6 sig_type=std_logic lab=agnd
}
