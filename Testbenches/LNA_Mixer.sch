v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -340 240 -320 {
lab=avdd}
N 240 -200 240 -180 {
lab=agnd}
N 180 -260 200 -260 {
lab=vin}
N 260 -210 260 -180 {
lab=l_s}
N 260 -340 260 -310 {
lab=ibias_n_50u}
N 280 -320 280 -300 {
lab=l_d1}
N 580 -160 600 -160 {
lab=#net1}
N 690 -220 690 -200 {
lab=avdd}
N 690 -80 690 -60 {
lab=agnd}
N 770 -160 790 -160 {
lab=voutQp}
N 770 -120 790 -120 {
lab=voutQn}
N 580 -120 600 -120 {
lab=ibias_n_50u}
N 580 -360 600 -360 {
lab=#net1}
N 580 -340 600 -340 {
lab=clk_I}
N 690 -420 690 -400 {
lab=avdd}
N 690 -280 690 -260 {
lab=agnd}
N 770 -360 790 -360 {
lab=voutIp}
N 770 -320 790 -320 {
lab=voutIn}
N 580 -320 600 -320 {
lab=ibias_n_50u}
N 580 -140 600 -140 {
lab=clk_Q}
N 440 -260 460 -260 {
lab=#net1}
N 460 -360 460 -260 {
lab=#net1}
N 460 -360 580 -360 {
lab=#net1}
N 460 -260 460 -160 {
lab=#net1}
N 460 -160 580 -160 {
lab=#net1}
N 340 -260 380 -260 {
lab=lna_out}
N 320 -140 320 -100 {
lab=ibias_n_50u}
N 360 -70 400 -70 {
lab=ibias_n_50u}
N 320 -120 380 -120 {
lab=ibias_n_50u}
N 380 -120 380 -70 {
lab=ibias_n_50u}
N 320 -40 320 -20 {
lab=agnd}
N 320 -70 320 -40 {
lab=agnd}
C {devices/lab_pin.sym} 690 -220 0 0 {name=p15 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 690 -60 0 0 {name=p16 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 580 -120 0 0 {name=p23 sig_type=std_logic lab=ibias_n_50u}
C {devices/lab_pin.sym} 690 -420 0 0 {name=p26 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 690 -260 0 0 {name=p28 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 580 -320 0 0 {name=p31 sig_type=std_logic lab=ibias_n_50u}
C {devices/iopin.sym} 360 -260 3 1 {name=p1 lab=lna_out}
C {devices/iopin.sym} 240 -340 0 1 {name=p3 lab=avdd}
C {devices/iopin.sym} 260 -180 0 0 {name=p5 lab=l_s}
C {devices/ipin.sym} 580 -340 0 0 {name=p6 lab=clk_I}
C {devices/ipin.sym} 580 -140 0 0 {name=p7 lab=clk_Q}
C {devices/opin.sym} 790 -360 0 0 {name=p8 lab=voutIp}
C {devices/opin.sym} 790 -320 0 0 {name=p9 lab=voutIn}
C {devices/opin.sym} 790 -160 0 0 {name=p10 lab=voutQp}
C {devices/opin.sym} 790 -120 0 0 {name=p11 lab=voutQn}
C {devices/ipin.sym} 180 -260 0 0 {name=p12 lab=vin}
C {devices/iopin.sym} 280 -320 0 0 {name=p13 lab=l_d1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 -260 1 0 {name=C1 model=cap_mim_m3_1 W=4.7 L=31 MF=1 spiceprefix=X}
C {devices/iopin.sym} 240 -180 0 1 {name=p14 lab=agnd}
C {devices/ipin.sym} 320 -140 0 1 {name=p4 lab=ibias_n_50u}
C {sky130_fd_pr/nfet_01v8.sym} 340 -70 0 1 {name=M2
L=0.15
W=1.33
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
C {devices/lab_pin.sym} 320 -20 0 0 {name=p36 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 260 -340 0 1 {name=p2 sig_type=std_logic lab=ibias_n_50u}
C {/foss/designs/EE437/Project/ee437-quantum-controller/LNA/LNA.sym} -20 -150 0 0 {name=x1}
C {/foss/designs/EE437/Project/ee437-quantum-controller/Mixer/Mixer.sym} 560 -260 0 0 {name=x2}
C {/foss/designs/EE437/Project/ee437-quantum-controller/Mixer/Mixer.sym} 560 -60 0 0 {name=x3}
