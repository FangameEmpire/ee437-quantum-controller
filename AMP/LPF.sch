v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -180 100 -160 {
lab=#net1}
N 100 -40 100 -20 {
lab=agnd}
N 20 -130 80 -130 {
lab=agnd}
N 20 -130 20 -40 {
lab=agnd}
N 20 -40 100 -40 {
lab=agnd}
N 100 -100 240 -100 {
lab=vout}
C {sky130_fd_pr/cap_mim_m3_1.sym} 100 -70 0 0 {name=C1 model=cap_mim_m3_1 W=6.2 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 100 -130 0 0 {name=R1
L=0.7
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 100 -180 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 240 -100 0 0 {name=p2 lab=vout}
C {devices/iopin.sym} 100 -20 0 0 {name=p3 lab=agnd}
