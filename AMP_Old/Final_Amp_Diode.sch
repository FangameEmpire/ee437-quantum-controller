v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 30 60 60 {
lab=agnd}
N 60 -30 70 -30 {
lab=agnd}
N 70 -30 70 30 {
lab=agnd}
N 60 30 70 30 {
lab=agnd}
N 20 -60 20 -30 {
lab=avdd}
N 20 -60 60 -60 {
lab=avdd}
N 60 0 140 -0 {
lab=vout}
N 60 -80 60 -60 {
lab=avdd}
N 60 60 60 80 {
lab=agnd}
C {sky130_fd_pr/nfet_01v8.sym} 40 30 0 0 {name=M1
L=2
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
C {sky130_fd_pr/nfet_01v8.sym} 40 -30 0 0 {name=M2
L=2.5
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
C {devices/iopin.sym} 60 -80 0 0 {name=p3 lab=avdd}
C {devices/ipin.sym} 20 30 0 0 {name=p5 lab=vin}
C {devices/opin.sym} 140 0 0 0 {name=p6 lab=vout}
C {devices/iopin.sym} 60 80 0 0 {name=p4 lab=agnd}
