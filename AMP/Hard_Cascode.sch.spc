** sch_path: /foss/designs/EE437/Project/ee437-quantum-controller/AMP/Hard_Cascode.sch
.subckt Hard_Cascode Vb2 Vb1 avdd vout vinn vinp ibias_n_50u agnd
*.PININFO avdd:B vinp:I vout:O agnd:B vinn:I Vb2:B Vb1:B itail:B
XM1 int_n1 vinp itail agnd sky130_fd_pr__nfet_01v8 L=0.15 W=8.00 nf=10 m=1
XM2 int_n2 vinn itail agnd sky130_fd_pr__nfet_01v8 L=0.15 W=8.00 nf=10 m=1
XM7 int_p1 Vb3 avdd avdd sky130_fd_pr__pfet_01v8 L=0.15 W=20.00 nf=10 m=1
XM8 int_p2 Vb3 avdd avdd sky130_fd_pr__pfet_01v8 L=0.15 W=20.00 nf=10 m=1
XM3 Vb3 Vb1 int_n1 agnd sky130_fd_pr__nfet_01v8_lvt L=0.15 W=16.00 nf=10 m=1
XM4 vout Vb1 int_n2 agnd sky130_fd_pr__nfet_01v8_lvt L=0.15 W=16.00 nf=10 m=1
XM5 Vb3 Vb2 int_p1 avdd sky130_fd_pr__pfet_01v8_lvt L=0.35 W=40.00 nf=10 m=1
XM6 vout Vb2 int_p2 avdd sky130_fd_pr__pfet_01v8_lvt L=0.35 W=40.00 nf=10 m=1
.ends
.end
