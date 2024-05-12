v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -180 80 -160 {
lab=avdd}
N 80 -40 80 -20 {
lab=#net1}
N 80 -100 160 -100 {
lab=vout}
C {sky130_fd_pr/cap_mim_m3_1.sym} 80 -70 0 0 {name=C5 model=cap_mim_m3_1 W=21 L=22 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} 80 -130 0 0 {name=R5
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 80 -20 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 160 -100 0 0 {name=p2 lab=vout}
C {devices/iopin.sym} 60 -130 0 1 {name=p3 lab=agnd}
C {devices/iopin.sym} 80 -180 0 0 {name=p4 lab=avdd}
