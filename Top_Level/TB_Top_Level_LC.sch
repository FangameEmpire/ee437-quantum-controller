v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -450 360 -20 680 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7"
node="\\"re(gain_sch); gain_sch ph(gain_sch) re()\\"
\\"re(gain_mod); gain_mod ph(gain_mod) re()\\"
\\"re(gain_gds); gain_gds ph(gain_gds) re()\\"
\\"re(gain_simp); gain_gds ph(gain_simp) re()\\""
sweep=frequency


logx=1

logy=0
y2=100

unitx=1
y1=00
x1=0
x2=11}
B 2 -450 20 -20 340 {flags=graph


divy = 5
subdivy=8


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7"
node="ratio_sch
ratio_mod
ratio_gds
ratio_simp"
sweep=frequency


logx=1

logy=1


unitx=1
y1=-2
x1=0
x2=11
y2=4}
B 2 -910 360 -480 680 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7"
node="\\"re(gain_sch); gain_sch ph(gain_sch) re()\\"
\\"re(gain_mod); gain_mod ph(gain_mod) re()\\"
\\"re(gain_gds); gain_gds ph(gain_gds) re()\\"
\\"re(gain_simp); gain_gds ph(gain_simp) re()\\""
sweep=frequency


logx=1

logy=0
y2=100

unitx=1
y1=-100
x1=0
x2=11}
B 2 -910 20 -480 340 {flags=graph


divy = 5
subdivy=4


divx=4
subdivx=8

 unity=1
dataset=-1
color="4 5 6 7"
node="ratio_sch
ratio_mod
ratio_gds
ratio_simp"
sweep=frequency


logx=1

logy=0


unitx=1
y1=-2
x1=0
x2=11
y2=2}
N -360 -500 -360 -460 {
lab=agnd}
N -360 -400 -360 -360 {
lab=GND}
N -260 -400 -260 -360 {
lab=agnd}
N -260 -500 -260 -460 {
lab=avdd}
N -160 -60 -160 -40 {
lab=avdd}
N -120 -60 -120 -20 {
lab=agnd}
N 220 -240 260 -240 {
lab=stim}
N -160 -400 -160 -360 {
lab=agnd}
N -160 -500 -160 -460 {
lab=stim}
N 220 -240 220 -220 {
lab=stim}
N 220 -160 220 -140 {
lab=agnd}
N 80 -240 80 -220 {
lab=Ind_1_P}
N 80 -160 80 -140 {
lab=Ind_1_M}
C {/foss/designs/EE437/Project/ee437-quantum-controller/Top_Level/Top_LC.sym} -220 -140 0 0 {name=x1}
C {devices/code_shown.sym} 500 -270 0 0 {name=NGSPICE
only_toplevel=true
value="
*.include /foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Cascode_cc.pex.spice

* this option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1

.option savecurrents

.control
save all
op

* Print newline
echo

* Sweep frequency
write TB_Final_Cascode_Mixed.raw
set appendwrite
ac dec 100 1 1e11
remzerovec

* Calculate gain
let gain_sch = db(mag(v(HPF_1_Out)/v(stim)))
let ratio_sch = (v(HPF_1_Out)/v(stim))

let gain_gds = db(mag(v(HPF_0_Out)/v(stim)))
let ratio_gds = (v(HPF_0_Out)/v(stim))

write TB_Final_Cascode_Mixed.raw
set appendwrite

.endc
" }
C {devices/vsource.sym} -360 -430 0 0 {name=Vsrc_agnd value=0 savecurrent=false}
C {devices/vsource.sym} -260 -430 0 0 {name=Vsrc_avdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -360 -360 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -360 -500 0 0 {name=p7 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -260 -500 0 0 {name=p8 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -260 -360 0 0 {name=p9 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -160 -40 0 0 {name=p1 sig_type=std_logic lab=avdd}
C {devices/lab_wire.sym} -120 -20 0 0 {name=p2 sig_type=std_logic lab=agnd}
C {devices/noconn.sym} -200 -60 0 0 {name=l5}
C {devices/noconn.sym} -240 -60 0 0 {name=l2}
C {devices/noconn.sym} -280 -60 0 0 {name=l3}
C {devices/noconn.sym} -320 -60 0 0 {name=l4}
C {devices/noconn.sym} -360 -60 0 0 {name=l6}
C {devices/lab_wire.sym} -80 -180 0 1 {name=p3 sig_type=std_logic lab=Ind_0_P
}
C {devices/lab_wire.sym} -80 -160 0 1 {name=p4 sig_type=std_logic lab=Ind_0_M}
C {devices/lab_wire.sym} -80 -140 0 1 {name=p5 sig_type=std_logic lab=HPF_0_Out}
C {devices/lab_wire.sym} 80 -240 0 1 {name=p10 sig_type=std_logic lab=Ind_1_P
}
C {devices/lab_wire.sym} 80 -140 0 1 {name=p11 sig_type=std_logic lab=Ind_1_M}
C {devices/lab_wire.sym} 320 -240 0 1 {name=p12 sig_type=std_logic lab=HPF_1_Out}
C {devices/lab_wire.sym} 220 -140 0 0 {name=p14 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/cap_mim_m3_1.sym} 290 -240 3 0 {name=C1 model=cap_mim_m3_1 W=15 L=16.5 MF=1 spiceprefix=X}
C {devices/launcher.sym} 700 -390 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sky130_fd_pr/corner.sym} 500 -490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -160 -430 0 0 {name=V1 value="0.005 AC 0.5 0" savecurrent=false}
C {devices/lab_wire.sym} -160 -360 0 0 {name=p15 sig_type=std_logic lab=agnd}
C {devices/lab_wire.sym} -160 -500 0 0 {name=p16 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} 220 -240 0 0 {name=p6 sig_type=std_logic lab=stim}
C {devices/lab_wire.sym} -80 -120 0 1 {name=p13 sig_type=std_logic lab=stim}
C {devices/ind.sym} 80 -190 0 0 {name=L8
m=1
value=3n
footprint=1206
device=inductor}
C {devices/ind.sym} 220 -190 0 0 {name=L7
m=1
value=3n
footprint=1206
device=inductor}
