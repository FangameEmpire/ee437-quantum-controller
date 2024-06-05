v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -80 480 -60 {
lab=GND}
N 570 -80 570 -60 {
lab=agnd}
N 480 -160 480 -140 {
lab=agnd}
N 570 -160 570 -140 {
lab=avdd}
N 270 -380 270 -360 {
lab=agnd}
N 780 -80 780 -60 {
lab=agnd}
N 780 -160 780 -140 {
lab=clk_I}
N 870 -80 870 -60 {
lab=agnd}
N 870 -160 870 -140 {
lab=clk_Q}
N 510 -460 540 -460 {
lab=#net1}
N 1200 -380 1220 -380 {
lab=mixer_out_Qp}
N 1220 -380 1240 -380 {
lab=mixer_out_Qp}
N 1040 -340 1060 -340 {
lab=mixer_out_Qn}
N 1060 -340 1080 -340 {
lab=mixer_out_Qn}
N 940 -380 1140 -380 {
lab=#net2}
N 1060 -280 1060 -260 {
lab=agnd}
N 1220 -320 1220 -300 {
lab=agnd}
N 940 -340 980 -340 {
lab=#net3}
N 1240 -380 1320 -380 {
lab=mixer_out_Qp}
N 1200 -540 1220 -540 {
lab=mixer_out_Ip}
N 1220 -540 1240 -540 {
lab=mixer_out_Ip}
N 1040 -500 1060 -500 {
lab=mixer_out_In}
N 1060 -500 1080 -500 {
lab=mixer_out_In}
N 940 -540 1140 -540 {
lab=#net4}
N 1060 -440 1060 -420 {
lab=agnd}
N 1220 -480 1220 -460 {
lab=agnd}
N 940 -500 980 -500 {
lab=#net5}
N 1240 -540 1320 -540 {
lab=mixer_out_Ip}
N 690 -160 690 -140 {
lab=avdd}
N 370 -460 390 -460 {
lab=#net6}
N 490 -460 510 -460 {
lab=#net1}
N 270 -460 310 -460 {
lab=vin}
N 270 -460 270 -440 {
lab=vin}
N 250 -460 270 -460 {
lab=vin}
N 620 -600 620 -580 {
lab=agnd}
N 1320 -300 1320 -280 {
lab=agnd}
N 470 -460 470 -430 {
lab=#net1}
N 470 -460 490 -460 {
lab=#net1}
N 450 -460 470 -460 {
lab=#net1}
N 470 -370 470 -350 {
lab=agnd}
N 340 -700 340 -680 {
lab=avdd}
N 340 -700 480 -700 {
lab=avdd}
N 480 -700 480 -680 {
lab=avdd}
N 480 -580 480 -560 {
lab=lna_out}
N 340 -580 340 -560 {
lab=l_d1}
N 640 -500 660 -500 {
lab=clk_I}
N 640 -480 660 -480 {
lab=clk_Q}
N 540 -460 660 -460 {
lab=#net1}
N 640 -440 660 -440 {
lab=ibias_n_50u}
N 640 -420 660 -420 {
lab=avdd}
N 640 -400 660 -400 {
lab=agnd}
N 720 -560 720 -540 {
lab=l_d1}
N 760 -560 760 -540 {
lab=lna_out}
N 800 -560 800 -540 {
lab=l_s}
N 860 -480 880 -480 {
lab=#net4}
N 860 -460 880 -460 {
lab=#net5}
N 860 -420 880 -420 {
lab=#net2}
N 860 -400 880 -400 {
lab=#net3}
N 620 -680 620 -660 {
lab=l_s}
N 880 -540 880 -480 {
lab=#net4}
N 880 -540 940 -540 {
lab=#net4}
N 900 -500 900 -460 {
lab=#net5}
N 900 -500 940 -500 {
lab=#net5}
N 900 -420 900 -380 {
lab=#net2}
N 900 -380 940 -380 {
lab=#net2}
N 880 -400 880 -340 {
lab=#net3}
N 880 -340 940 -340 {
lab=#net3}
N 620 -600 620 -580 {
lab=agnd}
N 640 -500 660 -500 {
lab=clk_I}
N 640 -480 660 -480 {
lab=clk_Q}
N 640 -440 660 -440 {
lab=ibias_n_50u}
N 640 -420 660 -420 {
lab=avdd}
N 640 -400 660 -400 {
lab=agnd}
N 720 -560 720 -540 {
lab=l_d1}
N 760 -560 760 -540 {
lab=lna_out}
N 800 -560 800 -540 {
lab=l_s}
N 860 -480 880 -480 {
lab=#net4}
N 860 -460 880 -460 {
lab=#net5}
N 860 -420 880 -420 {
lab=#net2}
N 860 -400 880 -400 {
lab=#net3}
N 620 -680 620 -660 {
lab=l_s}
N 880 -540 880 -480 {
lab=#net4}
N 880 -400 880 -340 {
lab=#net3}
N 690 -80 690 -60 {
lab=ibias_n_50u}
N 880 -460 900 -460 {
lab=#net5}
N 880 -420 900 -420 {
lab=#net2}
C {devices/vsource.sym} 480 -110 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 570 -110 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} 480 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 570 -60 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 570 -160 0 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 480 -160 0 0 {name=p3 sig_type=std_logic lab=agnd}
C {devices/vsource.sym} 270 -410 0 0 {name=V3 value="SIN(900m 100u 6G 0 0 0) AC 1" savecurrent=false}
C {devices/lab_pin.sym} 270 -360 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/code_shown.sym} 20 40 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /foss/designs/EE437/LNA/3nH_ind.spice
.include /foss/designs/EE437/LNA/LNA_Mixer.pex.spice

.option savecurrents

.control
save all

op
write TB_LNA_Mixer.raw

* AC ANALYSIS *
set appendwrite
ac dec 1000 5e9 7e9
remzerovec
*let vgate_lna = v(x1.vgate)
let gain_lna = db(mag(v(lna_out) / v(vin)))
*let gain_gate = db(mag(v(lna_out) / v(vgate_lna)))
*let gain_total = db(mag(v(mixer_out_I) / v(vin)))
write TB_LNA_Mixer.raw

* TRANSIENT FOR TIME DOMAIN *
*set appendwrite
*tran 50p 100n
*let mixer_out_I = v(mixer_out_Ip) - v(mixer_out_In)
*let mixer_out_Q = v(mixer_out_Qp) - v(mixer_out_Qn)
*write TB_LNA_Mixer.raw

* TRANSIENT FOR FFT *
* (Set input freq to 77.819824e6) *
*set appendwrite
*tran 50p 5u
*let lin-tstart 0 
*let lin-tstop 5u
*let lin-tstep 10p
*linearize V(mixer_out_I)
*fft V(mixer_out_I)
*let mixer_out_I_fft = mag(V(mixer_out_I))
*write TB_LNA_Mixer.raw

* S-PARAMETER / NF ANALYSIS *
*set appendwrite
*sp dec 1000 5e9 7e9 1
*let S11 = db(mag(v(s_1_1)))
*write TB_LNA_Mixer.raw

* NOISE ANALYSIS *
*set appendwrite
*noise v(mixer_out_I) V3 dec 1000 1 10e9
*setplot noise1
*set sqrnoise
*write TB_LNA_Mixer.raw

* DISTORTION ANALYSIS WIP *
*set appendwrite
*disto dec 1000 1 10e9
*write TB_LNA_Mixer.raw

.endc
" }
C {devices/lab_pin.sym} 250 -460 0 0 {name=p11 sig_type=std_logic lab=vin}
C {sky130_fd_pr/corner.sym} 10 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} 1320 -380 2 0 {name=p17 sig_type=std_logic lab=mixer_out_Qp}
C {devices/lab_pin.sym} 1080 -340 2 0 {name=p18 sig_type=std_logic lab=mixer_out_Qn}
C {devices/vsource.sym} 780 -110 0 0 {name=V5 value="PULSE(0 1.8 0 100f 100f 87.5p 175p)" savecurrent=false}
C {devices/lab_pin.sym} 780 -60 0 0 {name=p19 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 780 -160 0 0 {name=p20 sig_type=std_logic lab=clk_I}
C {devices/vsource.sym} 870 -110 0 0 {name=V6 value="PULSE(0 1.8 43.75p 100f 100f 87.5p 175p)" savecurrent=false}
C {devices/lab_pin.sym} 870 -60 0 0 {name=p21 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 870 -160 0 0 {name=p22 sig_type=std_logic lab=clk_Q}
C {devices/res.sym} 1170 -380 1 0 {name=R1
value=3k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1220 -350 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1010 -340 1 0 {name=R2
value=3k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1060 -310 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1060 -260 0 0 {name=p24 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1220 -300 0 0 {name=p25 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1320 -540 2 0 {name=p29 sig_type=std_logic lab=mixer_out_Ip}
C {devices/lab_pin.sym} 1080 -500 2 0 {name=p30 sig_type=std_logic lab=mixer_out_In}
C {devices/res.sym} 1170 -540 1 0 {name=R3
value=3k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1220 -510 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1010 -500 1 0 {name=R4
value=3k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1060 -470 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1060 -420 0 0 {name=p32 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 1220 -460 0 0 {name=p33 sig_type=std_logic lab=agnd}
C {devices/isource.sym} 690 -110 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 690 -160 0 0 {name=p34 sig_type=std_logic lab=avdd}
C {devices/ind.sym} 420 -460 1 0 {name=L3
m=1
value=15.2n
footprint=1206
device=inductor}
C {sky130_fd_pr/cap_mim_m3_1.sym} 340 -460 1 0 {name=C6 model=cap_mim_m3_1 W=12 L=12 MF=1 spiceprefix=X}
C {devices/ind.sym} 620 -630 0 0 {name=L2
m=1
value=6n
footprint=1206
device=inductor}
C {devices/vsource.sym} 1320 -330 0 0 {name=V4 value="DC 0 portnum 1 z0 50" savecurrent=false}
C {devices/lab_pin.sym} 1320 -280 0 0 {name=p10 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/cap_mim_m3_1.sym} 470 -400 0 0 {name=C5 model=cap_mim_m3_1 W=5 L=4 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 470 -350 0 0 {name=p27 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 340 -700 0 0 {name=p40 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 340 -560 2 0 {name=p43 sig_type=std_logic lab=l_d1}
C {devices/lab_pin.sym} 480 -560 2 0 {name=p44 sig_type=std_logic lab=lna_out}
C {/foss/designs/EE437/LNA/LNA_Mixer.sym} 800 -440 0 0 {name=x1}
C {devices/lab_pin.sym} 640 -440 0 0 {name=p12 sig_type=std_logic lab=ibias_n_50u}
C {/foss/designs/EE437/LNA/3nH_ind.sym} 420 -710 2 0 {name=x2}
C {/foss/designs/EE437/LNA/3nH_ind.sym} 560 -710 2 0 {name=x3}
C {devices/lab_pin.sym} 620 -580 0 0 {name=p23 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 640 -500 0 0 {name=p26 sig_type=std_logic lab=clk_I}
C {devices/lab_pin.sym} 640 -480 0 0 {name=p28 sig_type=std_logic lab=clk_Q}
C {devices/lab_pin.sym} 640 -400 0 0 {name=p31 sig_type=std_logic lab=agnd}
C {devices/lab_pin.sym} 640 -420 0 0 {name=p35 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 760 -560 1 0 {name=p39 sig_type=std_logic lab=lna_out}
C {devices/lab_pin.sym} 720 -560 1 0 {name=p41 sig_type=std_logic lab=l_d1}
C {devices/lab_pin.sym} 620 -680 0 0 {name=p42 sig_type=std_logic lab=l_s}
C {devices/lab_pin.sym} 800 -560 1 0 {name=p45 sig_type=std_logic lab=l_s}
C {devices/lab_pin.sym} 690 -60 0 0 {name=p36 sig_type=std_logic lab=ibias_n_50u}
