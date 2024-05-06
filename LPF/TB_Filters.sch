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
color="4 5"
node="gain_00
gain_01"
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
color="4 5"
node="ratio_00
ratio_01"
y2=2}
N -640 150 -640 180 {
lab=GND}
N -640 60 -640 90 {
lab=agnd}
N -550 60 -550 90 {
lab=avdd}
N -550 150 -550 180 {
lab=agnd}
N -460 150 -460 180 {
lab=agnd}
N -460 60 -460 90 {
lab=stim}
N -220 -180 -220 -160 {
lab=stim}
N -220 -40 -220 -20 {
lab=agnd}
N -300 -130 -240 -130 {
lab=agnd}
N -300 -130 -300 -40 {
lab=agnd}
N -300 -40 -220 -40 {
lab=agnd}
N -220 -100 -80 -100 {
lab=out_01}
N -220 -380 -220 -360 {
lab=stim}
N -220 -240 -220 -220 {
lab=agnd}
N -220 -300 -80 -300 {
lab=out_00}
C {devices/vsource.sym} -640 120 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -550 120 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -640 180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -640 60 0 0 {name=p1 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -550 180 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -550 60 0 0 {name=p3 sig_type=std_logic lab=avdd}
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

let gain_00 = db(ratio_00)
let gain_01 = db(ratio_01)
let gain_00_2 = 20 * log10(ratio_00)
let gain_01_2 = 20 * log10(ratio_01)

write TB_Filters.raw

.endc
" }
C {devices/vsource.sym} -460 120 0 0 {name=Vsrc_stim value="1.8 AC 1" savecurrent=false}
C {devices/lab_wire.sym} -460 180 0 0 {name=p4 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -460 60 0 0 {name=p10 sig_type=std_logic lab=stim}
C {sky130_fd_pr/cap_mim_m3_1.sym} -220 -70 0 0 {name=C2 model=cap_mim_m3_1 W=6.2 L=6 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -220 -130 0 0 {name=R2
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
