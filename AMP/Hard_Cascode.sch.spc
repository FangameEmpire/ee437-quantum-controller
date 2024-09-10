** sch_path: /foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Cascode.sch
.subckt Hard_Cascode avdd vinp vout agnd vinn Vb2 Vb1 itail
*.PININFO avdd:B vinp:I vout:O agnd:B vinn:I Vb2:B Vb1:B itail:B
XM1 int_n1 vinp itail agnd sky130_fd_pr__nfet_01v8 L=0.15 W=1.00 nf=1 m=8
XM2 int_n2 vinn itail agnd sky130_fd_pr__nfet_01v8 L=0.15 W=1.00 nf=1 m=8
XM7 int_p1 Vb3 avdd avdd sky130_fd_pr__pfet_01v8 L=0.15 W=1.00 nf=1 m=20
XM8 int_p2 Vb3 avdd avdd sky130_fd_pr__pfet_01v8 L=0.15 W=1.00 nf=1 m=20
XM3 Vb3 Vb1 int_n1 agnd sky130_fd_pr__nfet_01v8_lvt L=0.15 W=1.00 nf=1 m=16
XM4 vout Vb1 int_n2 agnd sky130_fd_pr__nfet_01v8_lvt L=0.15 W=1.00 nf=1 m=16
XM5 Vb3 Vb2 int_p1 avdd sky130_fd_pr__pfet_01v8_lvt L=0.35 W=1.00 nf=1 m=40
XM6 vout Vb2 int_p2 avdd sky130_fd_pr__pfet_01v8_lvt L=0.35 W=1.00 nf=1 m=40
**** begin user architecture code
type=primative
**** end user architecture code
.ends
.end
