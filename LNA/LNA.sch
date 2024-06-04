v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -670 330 -670 {
lab=l_d1}
N 330 -670 390 -670 {
lab=l_d1}
N 390 -690 390 -670 {
lab=l_d1}
N 330 -670 330 -650 {
lab=l_d1}
N 270 -770 390 -770 {
lab=avdd}
N 390 -770 390 -750 {
lab=avdd}
N 440 -790 440 -770 {
lab=avdd}
N 230 -520 290 -520 {
lab=vin}
N 330 -520 350 -520 {
lab=agnd}
N 330 -650 330 -630 {
lab=l_d1}
N 330 -570 330 -550 {
lab=#net1}
N 330 -600 350 -600 {
lab=agnd}
N 270 -600 290 -600 {
lab=avdd}
N 230 -600 270 -600 {
lab=avdd}
N 230 -770 230 -600 {
lab=avdd}
N 230 -770 270 -770 {
lab=avdd}
N 590 -570 590 -550 {
lab=#net2}
N 590 -490 590 -470 {
lab=agnd}
N 530 -670 590 -670 {
lab=vout}
N 590 -670 650 -670 {
lab=vout}
N 650 -690 650 -670 {
lab=vout}
N 530 -770 650 -770 {
lab=avdd}
N 650 -770 650 -750 {
lab=avdd}
N 490 -770 530 -770 {
lab=avdd}
N 590 -670 590 -630 {
lab=vout}
N 490 -600 550 -600 {
lab=avdd}
N 420 -650 420 -520 {
lab=l_d1}
N 590 -600 610 -600 {
lab=agnd}
N 590 -520 610 -520 {
lab=agnd}
N 390 -770 490 -770 {
lab=avdd}
N 590 -650 650 -650 {
lab=vout}
N 330 -650 420 -650 {
lab=l_d1}
N 480 -520 550 -520 {
lab=#net3}
N 330 -490 330 -470 {
lab=l_s}
N 490 -770 490 -600 {
lab=avdd}
N 210 -520 230 -520 {
lab=vin}
N 270 -430 280 -430 {
lab=agnd}
N 270 -350 280 -350 {
lab=agnd}
N 270 -270 280 -270 {
lab=agnd}
N 270 -190 280 -190 {
lab=agnd}
N 270 -110 280 -110 {
lab=agnd}
N 250 -400 250 -380 {
lab=#net4}
N 250 -320 250 -300 {
lab=#net5}
N 250 -240 250 -220 {
lab=#net6}
N 250 -160 250 -140 {
lab=#net7}
N 250 -480 250 -460 {
lab=vin}
N 250 -80 250 -60 {
lab=vbias}
N 250 -520 250 -480 {
lab=vin}
N 540 -430 550 -430 {
lab=agnd}
N 540 -350 550 -350 {
lab=agnd}
N 540 -270 550 -270 {
lab=agnd}
N 540 -190 550 -190 {
lab=agnd}
N 540 -110 550 -110 {
lab=agnd}
N 520 -400 520 -380 {
lab=#net8}
N 520 -320 520 -300 {
lab=#net9}
N 520 -240 520 -220 {
lab=#net10}
N 520 -160 520 -140 {
lab=#net11}
N 520 -80 520 -60 {
lab=vbias}
N 520 -520 520 -460 {
lab=#net3}
N 480 -560 480 -520 {
lab=#net3}
N 270 -690 270 -670 {
lab=l_d1}
N 530 -690 530 -670 {
lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 310 -520 0 0 {name=M1
L=0.15
W=8.7
nf=10 
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 390 -720 0 0 {name=C1 model=cap_mim_m3_1 W=10.5 L=10.5 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 310 -600 0 0 {name=M2
L=0.15
W=8.7
nf=10
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
C {sky130_fd_pr/nfet_01v8.sym} 570 -520 0 0 {name=M3
L=0.15
W=8.7
nf=10
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
C {sky130_fd_pr/nfet_01v8.sym} 570 -600 0 0 {name=M4
L=0.15
W=8.7
nf=10 
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 650 -720 0 0 {name=C4 model=cap_mim_m3_1 W=10.5 L=10.5 MF=1 spiceprefix=X}
C {devices/iopin.sym} 440 -790 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 590 -470 0 0 {name=p2 lab=agnd}
C {devices/lab_pin.sym} 350 -520 2 0 {name=p4 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 350 -600 2 0 {name=p5 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 610 -600 2 0 {name=p6 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 610 -520 2 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/opin.sym} 650 -650 0 0 {name=p9 lab=vout}
C {sky130_fd_pr/cap_mim_m3_1.sym} 450 -520 1 0 {name=C5 model=cap_mim_m3_1 W=3.5 L=5.1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 520 -60 2 1 {name=p11 sig_type=std_logic lab=vbias}
C {devices/ipin.sym} 250 -60 0 0 {name=p12 lab=vbias}
C {devices/iopin.sym} 210 -520 0 1 {name=p13 lab=vin}
C {devices/iopin.sym} 330 -470 0 1 {name=p8 lab=l_s}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -430 2 0 {name=R3
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -350 2 0 {name=R4
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -270 2 0 {name=R5
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -190 2 0 {name=R6
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 250 -110 2 0 {name=R7
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 280 -430 2 0 {name=p16 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 280 -350 2 0 {name=p17 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 280 -270 2 0 {name=p18 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 280 -190 2 0 {name=p19 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 280 -110 2 0 {name=p20 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -430 2 0 {name=R1
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -350 2 0 {name=R2
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -270 2 0 {name=R8
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -190 2 0 {name=R9
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 520 -110 2 0 {name=R10
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 550 -430 2 0 {name=p10 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 550 -350 2 0 {name=p21 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 550 -270 2 0 {name=p22 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 550 -190 2 0 {name=p23 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 550 -110 2 0 {name=p24 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/cap_mim_m3_1.sym} 450 -560 1 0 {name=C2 model=cap_mim_m3_1 W=25 L=5 MF=1 spiceprefix=X}
C {devices/iopin.sym} 270 -690 0 0 {name=p3 lab=l_d1}
