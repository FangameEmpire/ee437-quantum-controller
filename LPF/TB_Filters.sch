v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -920 -380 -490 -60 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7 8 9"
node="gain_00
gain_01
gain_02
gain_03
gain_04
gain_05"
sweep=frequency


logx=1

logy=0


unitx=1

x1=0


rainbow=0
y2=100
y1=-20
x2=11}
B 2 -920 -720 -490 -400 {flags=graph


divy = 5
subdivy=8


divx=4
subdivx=8

 unity=1
dataset=-1


sweep=frequency


logx=1

logy=1


unitx=1

x1=0


rainbow=0

y1=-8
x2=11
color="4 5 6 7 8 9"
node="ratio_00
ratio_01
ratio_02
ratio_03
ratio_04
ratio_05"
y2=2}
N -640 150 -640 180 {
lab=GND}
N -640 60 -640 90 {
lab=agnd}
N -440 150 -440 180 {
lab=agnd}
N -440 60 -440 90 {
lab=stim}
N -220 -180 -220 -160 {
lab=stim}
N -220 -40 -220 -20 {
lab=agnd}
N -220 -100 -80 -100 {
lab=out_01}
N -220 -380 -220 -360 {
lab=stim}
N -220 -240 -220 -220 {
lab=agnd}
N -220 -300 -80 -300 {
lab=out_00}
N 20 -180 20 -160 {
lab=stim}
N 20 -40 20 -20 {
lab=agnd}
N 20 -100 160 -100 {
lab=out_03}
N 20 -380 20 -360 {
lab=stim}
N 20 -240 20 -220 {
lab=agnd}
N 20 -300 160 -300 {
lab=out_02}
N -540 60 -540 90 {
lab=avdd}
N -540 150 -540 180 {
lab=agnd}
N 260 -380 260 -360 {
lab=avdd}
N 260 -240 260 -220 {
lab=stim}
N 260 -300 400 -300 {
lab=out_04}
N 260 -180 260 -160 {
lab=avdd}
N 260 -40 260 -20 {
lab=stim}
N 260 -100 400 -100 {
lab=out_05}
C {devices/vsource.sym} -640 120 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/gnd.sym} -640 180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -640 60 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/launcher.sym} -870 0 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} -890 80 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} -930 240 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.option savecurrents

.control
save all

op

write TB_Filters.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

let ratio_00 = v(out_00)/v(stim)
let ratio_01 = v(out_01)/v(stim)
let ratio_02 = v(out_02)/v(stim)
let ratio_03 = v(out_03)/v(stim)
let ratio_04 = v(out_04)/v(stim)
let ratio_05 = v(out_05)/v(stim)

let gain_00 = db(ratio_00)
let gain_01 = db(ratio_01)
let gain_02 = db(ratio_02)
let gain_03 = db(ratio_03)
let gain_04 = db(ratio_04)
let gain_05 = db(ratio_05)

write TB_Filters.raw

.endc
" }
C {devices/vsource.sym} -440 120 0 0 {name=Vsrc_stim value="1.8 AC 1" savecurrent=false}
C {devices/lab_wire.sym} -440 180 0 0 {name=p4 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -440 60 0 0 {name=p10 sig_type=std_logic lab=stim}
C {sky130_fd_pr/cap_mim_m3_1.sym} -220 -70 0 0 {name=C1 model=cap_mim_m3_1 W=6.2 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -220 -130 0 0 {name=R1
L=0.7
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -220 -180 0 0 {name=p5 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -220 -20 0 0 {name=p6 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -80 -100 0 0 {name=p7 sig_type=std_logic lab=out_01}
C {devices/res.sym} -220 -330 0 0 {name=R0
value=4000
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -220 -270 0 0 {name=C0
m=1
value=7.904e-14
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -220 -380 0 0 {name=p8 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -220 -220 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -80 -300 0 0 {name=p11 sig_type=std_logic lab=out_00}
C {sky130_fd_pr/cap_mim_m3_1.sym} 20 -70 0 0 {name=C3 model=cap_mim_m3_1 W=20 L=20.5 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 20 -180 0 0 {name=p12 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} 20 -20 0 0 {name=p13 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 160 -100 0 0 {name=p14 sig_type=std_logic lab=out_03}
C {devices/res.sym} 20 -330 0 0 {name=R2
value=380
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 20 -270 0 0 {name=C2
m=1
value=8.354e-13
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 20 -380 0 0 {name=p15 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} 20 -220 0 0 {name=p16 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 160 -300 0 0 {name=p17 sig_type=std_logic lab=out_02}
C {sky130_fd_pr/res_high_po_0p35.sym} 20 -130 0 0 {name=R3
L=0.5
model=res_high_po_0p35
spiceprefix=X
mult=3}
C {devices/vsource.sym} -540 120 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/lab_wire.sym} -540 180 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -540 60 0 0 {name=p3 sig_type=std_logic lab=avdd}
C {devices/res.sym} 260 -330 0 0 {name=R4
value=1692
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 260 -270 0 0 {name=C4
m=1
value=9.403e-13
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 260 -20 0 0 {name=p18 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} 400 -300 0 0 {name=p20 sig_type=std_logic lab=out_04}
C {sky130_fd_pr/cap_mim_m3_1.sym} 260 -70 0 0 {name=C5 model=cap_mim_m3_1 W=21 L=22 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 260 -220 0 0 {name=p21 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} 400 -100 0 0 {name=p23 sig_type=std_logic lab=out_05}
C {sky130_fd_pr/res_high_po_0p35.sym} 260 -130 0 0 {name=R5
L=1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 260 -180 0 0 {name=p19 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} 260 -380 0 0 {name=p22 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} 240 -130 0 0 {name=p24 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -240 -130 0 0 {name=p25 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} 0 -130 0 0 {name=p26 sig_type=std_logic lab=agnd}
