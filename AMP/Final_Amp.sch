v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 20 -120 40 {
lab=avdd}
N -120 100 -120 140 {
lab=vout}
N -120 120 -80 120 {
lab=vout}
N -120 170 -120 220 {
lab=agnd}
C {devices/iopin.sym} -120 20 0 0 {name=p3 lab=avdd}
C {devices/ipin.sym} -160 170 0 0 {name=p5 lab=vin}
C {devices/opin.sym} -80 120 0 0 {name=p6 lab=vout}
C {devices/iopin.sym} -120 220 0 0 {name=p4 lab=agnd}
C {sky130_fd_pr/nfet_01v8.sym} -140 170 0 0 {name=M1
L=0.3
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
C {sky130_fd_pr/res_high_po_0p35.sym} -120 70 0 0 {name=R1
L=2
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -140 70 0 0 {name=p2 sig_type=std_logic lab=agnd}
