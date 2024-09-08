* NGSPICE file created from Hard_Cascode.ext - technology: sky130A

.subckt pfet$1 a_60_n40# w_n61_n76# a_130_0# a_0_0#
X0 a_130_0# a_60_n40# a_0_0# w_n61_n76# sky130_fd_pr__pfet_01v8_lvt ad=0.3 pd=2.6 as=0.3 ps=2.6 w=1 l=0.35
.ends

.subckt nfet a_90_0# a_150_0# a_0_0# a_48_240#
X0 a_90_0# a_48_240# a_0_0# a_150_0# sky130_fd_pr__nfet_01v8 ad=0.3 pd=2.6 as=0.3 ps=2.6 w=1 l=0.15
.ends

.subckt pfet$2 a_90_0# w_n61_n76# a_0_0# a_48_240#
X0 a_90_0# a_48_240# a_0_0# w_n61_n76# sky130_fd_pr__pfet_01v8 ad=0.3 pd=2.6 as=0.3 ps=2.6 w=1 l=0.15
.ends

.subckt nfet$1 a_90_0# a_150_0# a_0_0# a_48_240#
X0 a_90_0# a_48_240# a_0_0# a_150_0# sky130_fd_pr__nfet_01v8_lvt ad=0.3 pd=2.6 as=0.3 ps=2.6 w=1 l=0.15
.ends

.subckt Hard_Cascode avdd agnd vinp itail vinn vout Vb2 Vb1
Xpfet$1_54 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_76 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_10 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_65 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_21 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_32 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_43 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_6 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_7 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_55 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_66 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_33 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_11 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_77 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_44 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_22 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_78 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_67 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_12 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_8 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_34 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_56 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_23 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_45 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_9 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_79 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_68 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_13 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_35 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_57 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_24 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_46 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_69 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_36 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_14 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_58 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_47 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_25 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_59 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_48 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_15 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_37 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_26 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_49 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_16 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_38 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_27 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_17 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_28 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_39 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_18 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_29 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_19 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xnfet_10 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_30 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_0 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet_11 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_1 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_31 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_20 avdd avdd m1_n906_1869# pgate2 pfet$2
Xnfet_12 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_32 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_21 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_10 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_2 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet_13 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_33 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_11 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_22 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_3 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet_14 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_23 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_4 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_34 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_12 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet_15 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$2_24 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_35 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_13 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_5 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_36 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_14 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_25 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_6 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_30 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xpfet$2_15 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_37 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_26 avdd avdd m1_n906_1869# pgate2 pfet$2
Xnfet$1_0 m1_n703_n2037# agnd vout Vb1 nfet$1
Xpfet$2_7 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_31 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_20 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_1 m1_n703_n2037# agnd vout Vb1 nfet$1
Xpfet$2_38 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_27 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_16 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_8 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_21 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_10 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_2 m1_n703_n2037# agnd vout Vb1 nfet$1
Xpfet$2_28 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_39 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_9 avdd avdd m1_n4158_715# pgate2 pfet$2
Xpfet$2_17 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_22 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_11 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_3 m1_n703_n2037# agnd vout Vb1 nfet$1
Xpfet$2_29 avdd avdd m1_n906_1869# pgate2 pfet$2
Xpfet$2_18 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_12 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_23 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_4 m1_n703_n2037# agnd vout Vb1 nfet$1
Xpfet$2_19 avdd avdd m1_n4158_715# pgate2 pfet$2
Xnfet$1_13 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_24 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_0 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_5 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_14 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_25 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_1 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_6 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_15 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_26 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_2 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_7 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_16 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_27 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_8 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet_3 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_17 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_28 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_4 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_9 m1_n703_n2037# agnd vout Vb1 nfet$1
Xnfet$1_18 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet$1_29 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_5 itail agnd m1_n703_n2037# vinn nfet
Xnfet$1_19 m1_n2315_n2295# agnd pgate2 Vb1 nfet$1
Xnfet_6 itail agnd m1_n703_n2037# vinn nfet
Xnfet_7 itail agnd m1_n703_n2037# vinn nfet
Xpfet$1_0 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xnfet_8 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$1_70 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_1 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xnfet_9 itail agnd m1_n2315_n2295# vinp nfet
Xpfet$1_60 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_71 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_61 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_50 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_72 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_2 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_3 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_51 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_62 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_73 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_40 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_52 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_63 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_74 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_30 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_41 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_4 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_5 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_53 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_64 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_20 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_31 Vb2 avdd pgate2 m1_n4158_715# pfet$1
Xpfet$1_42 Vb2 avdd vout m1_n906_1869# pfet$1
Xpfet$1_75 Vb2 avdd vout m1_n906_1869# pfet$1
.ends

