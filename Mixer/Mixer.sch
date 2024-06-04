v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -270 260 -270 {
lab=vin}
N 240 -270 240 -110 {
lab=vin}
N 240 -110 260 -110 {
lab=vin}
N 320 -270 500 -270 {
lab=#net1}
N 540 -270 540 -240 {
lab=agnd}
N 700 -270 700 -240 {
lab=agnd}
N 320 -110 760 -110 {
lab=#net2}
N 760 -270 760 -110 {
lab=#net2}
N 740 -270 760 -270 {
lab=#net2}
N 540 -240 540 -220 {
lab=agnd}
N 540 -220 700 -220 {
lab=agnd}
N 700 -240 700 -220 {
lab=agnd}
N 620 -220 620 -200 {
lab=agnd}
N 290 -330 290 -310 {
lab=clk}
N 290 -70 290 -50 {
lab=clk_bar}
N 540 -320 540 -300 {
lab=vout2}
N 700 -320 700 -300 {
lab=vout1}
N 540 -340 540 -320 {
lab=vout2}
N 700 -340 700 -320 {
lab=vout1}
N 540 -320 560 -320 {
lab=vout2}
N 660 -370 680 -370 {
lab=agnd}
N 500 -370 520 -370 {
lab=agnd}
N 540 -420 540 -400 {
lab=avdd}
N 540 -420 700 -420 {
lab=avdd}
N 700 -420 700 -400 {
lab=avdd}
N 620 -440 620 -420 {
lab=avdd}
N 220 -190 240 -190 {
lab=vin}
N 700 -320 720 -320 {
lab=vout1}
N 200 -190 220 -190 {
lab=vin}
N 200 40 200 60 {
lab=vbias}
N 140 -190 200 -190 {
lab=vin}
N 200 -190 200 -120 {
lab=vin}
N 220 10 230 10 {
lab=agnd}
N 180 -500 180 -460 {
lab=clk_bar}
N 180 -480 200 -480 {
lab=clk_bar}
N 120 -530 140 -530 {
lab=clk_in}
N 120 -530 120 -430 {
lab=clk_in}
N 120 -430 140 -430 {
lab=clk_in}
N 180 -430 180 -400 {
lab=agnd}
N 180 -560 180 -530 {
lab=avdd}
N 180 -580 180 -560 {
lab=avdd}
N 180 -400 180 -380 {
lab=agnd}
N 100 -480 120 -480 {
lab=clk_in}
N 340 -500 340 -460 {
lab=clk}
N 340 -480 360 -480 {
lab=clk}
N 280 -530 300 -530 {
lab=clk_bar}
N 280 -530 280 -430 {
lab=clk_bar}
N 280 -430 300 -430 {
lab=clk_bar}
N 340 -430 340 -400 {
lab=agnd}
N 340 -560 340 -530 {
lab=avdd}
N 340 -580 340 -560 {
lab=avdd}
N 340 -400 340 -380 {
lab=agnd}
N 260 -480 280 -480 {
lab=clk_bar}
N 200 -480 260 -480 {
lab=clk_bar}
N 260 -270 290 -270 {
lab=vin}
N 260 -110 290 -110 {
lab=vin}
N 220 -70 230 -70 {
lab=agnd}
N 200 -40 200 -20 {
lab=#net3}
N 200 -120 200 -100 {
lab=vin}
N 120 -190 140 -190 {
lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 290 -290 1 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 290 -90 1 1 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -270 0 1 {name=M3
L=1
W=6
nf=12
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
C {sky130_fd_pr/nfet_01v8.sym} 520 -270 0 0 {name=M4
L=1
W=6
nf=12
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 540 -370 0 0 {name=R1
L=0.7
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 700 -370 0 0 {name=R2
L=0.7
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/ipin.sym} 120 -190 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 100 -480 0 0 {name=p2 lab=clk_in}
C {devices/iopin.sym} 620 -440 0 0 {name=p4 lab=avdd}
C {devices/iopin.sym} 620 -200 0 0 {name=p5 lab=agnd}
C {devices/opin.sym} 560 -320 0 0 {name=p6 lab=vout2}
C {devices/opin.sym} 720 -320 0 0 {name=p7 lab=vout1}
C {devices/lab_pin.sym} 500 -370 0 0 {name=p8 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 660 -370 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/ipin.sym} 200 60 0 0 {name=p12 lab=vbias}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 200 10 2 0 {name=R3
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 230 10 0 1 {name=p10 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/pfet_01v8.sym} 160 -530 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 -430 0 0 {name=M5
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
C {devices/lab_pin.sym} 180 -580 2 0 {name=p13 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -380 2 0 {name=p14 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 290 -330 0 0 {name=p3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 290 -50 0 0 {name=p15 sig_type=std_logic lab=clk_bar}
C {sky130_fd_pr/pfet_01v8.sym} 320 -530 0 0 {name=M7
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 320 -430 0 0 {name=M8
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
C {devices/lab_pin.sym} 340 -580 2 0 {name=p18 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 340 -380 2 0 {name=p19 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 270 -480 1 0 {name=p16 sig_type=std_logic lab=clk_bar}
C {devices/lab_pin.sym} 360 -480 2 0 {name=p11 sig_type=std_logic lab=clk}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 200 -70 2 0 {name=R4
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 230 -70 0 1 {name=p17 sig_type=std_logic lab=agnd}
