* NGSPICE file created from Hard_Cascode.ext - technology: sky130A

.subckt pfet$2 a_810_0# a_300_0# a b a_1320_0# a_640_0# a_1660_0# a_980_0# a_130_0#
+ a_1150_0# a_470_0# w_n184_n363# a_0_0# a_1490_0#
X0 a_1150_0# a a_980_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X1 a_130_0# a a_0_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=12 ps=80.6 w=40 l=0.35
X2 a_300_0# b a_130_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X3 a_980_0# b a_810_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X4 a_640_0# b a_470_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X5 a_1320_0# b a_1150_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X6 a_470_0# a a_300_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X7 a_1660_0# b a_1490_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=12 pd=80.6 as=10 ps=40.5 w=40 l=0.35
X8 a_810_0# a a_640_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
X9 a_1490_0# a a_1320_0# w_n184_n363# sky130_fd_pr__pfet_01v8_lvt ad=10 pd=40.5 as=10 ps=40.5 w=40 l=0.35
.ends

.subckt nfet$1 a_90_0# a_480_0# a_1130_0# a b a_1260_0# a_610_0# a_n123_n302# a_220_0#
+ a_740_0# a_350_0# a_0_0# a_1000_0# a_870_0#
X0 a_740_0# b a_610_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X1 a_90_0# a a_0_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4.8 ps=32.6 w=16 l=0.15
X2 a_870_0# a a_740_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X3 a_1000_0# b a_870_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X4 a_350_0# a a_220_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X5 a_480_0# b a_350_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X6 a_610_0# a a_480_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X7 a_1130_0# a a_1000_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
X8 a_1260_0# b a_1130_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4.8 pd=32.6 as=4 ps=16.5 w=16 l=0.15
X9 a_220_0# b a_90_0# a_n123_n302# sky130_fd_pr__nfet_01v8_lvt ad=4 pd=16.5 as=4 ps=16.5 w=16 l=0.15
.ends

.subckt nfet a_90_0# a_480_0# a_1130_0# a b a_1260_0# a_610_0# a_n123_n302# a_220_0#
+ a_740_0# a_350_0# a_0_0# a_1000_0# a_870_0#
X0 a_90_0# a a_0_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2.4 ps=16.6 w=8 l=0.15
X1 a_740_0# b a_610_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X2 a_870_0# a a_740_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X3 a_1000_0# b a_870_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X4 a_350_0# a a_220_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X5 a_480_0# b a_350_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X6 a_610_0# a a_480_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X7 a_1130_0# a a_1000_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
X8 a_1260_0# b a_1130_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2.4 pd=16.6 as=2 ps=8.5 w=8 l=0.15
X9 a_220_0# b a_90_0# a_n123_n302# sky130_fd_pr__nfet_01v8 ad=2 pd=8.5 as=2 ps=8.5 w=8 l=0.15
.ends

.subckt pfet$1 a_90_0# a_480_0# a_1130_0# a b a_1260_0# a_610_0# a_220_0# a_740_0#
+ w_n184_n363# a_350_0# a_0_0# a_1000_0# a_870_0#
X0 a_90_0# a a_0_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=6 ps=40.6 w=20 l=0.15
X1 a_740_0# b a_610_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X2 a_870_0# a a_740_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X3 a_1000_0# b a_870_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X4 a_350_0# a a_220_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X5 a_480_0# b a_350_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X6 a_610_0# a a_480_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X7 a_1130_0# a a_1000_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
X8 a_1260_0# b a_1130_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=6 pd=40.6 as=5 ps=20.5 w=20 l=0.15
X9 a_220_0# b a_90_0# w_n184_n363# sky130_fd_pr__pfet_01v8 ad=5 pd=20.5 as=5 ps=20.5 w=20 l=0.15
.ends

.subckt Hard_Cascode vb1 vout vinp vinn vb2 agnd avdd itail
Xpfet$2_0 vout m1_1788_15147# vb2 vb2 m1_1788_15147# m1_1788_15147# m1_1788_15147#
+ m1_1788_15147# vout vout vout avdd m1_1788_15147# vout pfet$2
Xpfet$2_1 pfet$1_1/b m1_n620_15147# vb2 vb2 m1_n620_15147# m1_n620_15147# m1_n620_15147#
+ m1_n620_15147# pfet$1_1/b pfet$1_1/b pfet$1_1/b avdd m1_n620_15147# pfet$1_1/b pfet$2
Xnfet$1_0 m1_n148_1927# pfet$1_1/b m1_n148_1927# vb1 vb1 pfet$1_1/b m1_n148_1927#
+ agnd pfet$1_1/b pfet$1_1/b m1_n148_1927# pfet$1_1/b pfet$1_1/b m1_n148_1927# nfet$1
Xnfet$1_1 m1_1788_1927# vout m1_1788_1927# vb1 vb1 vout m1_1788_1927# agnd vout vout
+ m1_1788_1927# vout vout m1_1788_1927# nfet$1
Xnfet_0 itail m1_n148_1927# itail vinp vinp m1_n148_1927# itail agnd m1_n148_1927#
+ m1_n148_1927# itail m1_n148_1927# m1_n148_1927# itail nfet
Xnfet_1 itail m1_1788_1927# itail vinn vinn m1_1788_1927# itail agnd m1_1788_1927#
+ m1_1788_1927# itail m1_1788_1927# m1_1788_1927# itail nfet
Xpfet$1_0 m1_1788_15147# avdd m1_1788_15147# pfet$1_1/b pfet$1_1/b avdd m1_1788_15147#
+ avdd avdd avdd m1_1788_15147# avdd avdd m1_1788_15147# pfet$1
Xpfet$1_1 m1_n620_15147# avdd m1_n620_15147# pfet$1_1/b pfet$1_1/b avdd m1_n620_15147#
+ avdd avdd avdd m1_n620_15147# avdd avdd m1_n620_15147# pfet$1
.ends

