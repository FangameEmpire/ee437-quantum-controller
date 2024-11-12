v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 240 -240 0 0 {name=p2 lab=Clk}
C {devices/opin.sym} 20 -180 0 0 {name=p3 lab=VoutQ}
C {devices/ipin.sym} 240 -20 0 0 {name=p5 lab=LNA_D}
C {devices/ipin.sym} 240 -80 0 0 {name=p6 lab=Vin}
C {devices/ipin.sym} 240 -140 0 0 {name=p7 lab=LNA_S}
C {devices/opin.sym} 20 -220 0 0 {name=p8 lab=VoutI}
C {devices/noconn.sym} 20 -220 0 0 {name=l1}
C {devices/noconn.sym} 20 -180 0 0 {name=l8}
C {devices/ipin.sym} -20 -120 0 0 {name=p9 lab=AMP_En}
C {devices/noconn.sym} -20 -120 0 1 {name=l9}
C {devices/ipin.sym} -20 -140 0 0 {name=p10 lab=LNA_En}
C {devices/noconn.sym} -20 -140 0 1 {name=l10
lab=LNA_En}
C {devices/noconn.sym} -20 -20 0 1 {name=l11}
C {devices/iopin.sym} 400 -240 0 1 {name=p1 lab=avdd}
C {devices/iopin.sym} 400 -180 0 1 {name=p4 lab=agnd}
C {devices/iopin.sym} -20 -20 0 1 {name=p11 lab=ibias_n_50u}
C {/foss/designs/EE437/Project/ee437-quantum-controller/Inductor/3nH_ind.sym} 160 -110 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 240 -50 0 0 {name=C1 model=cap_mim_m3_1 W=15 L=16.5 MF=1 spiceprefix=X}
C {/foss/designs/EE437/Project/ee437-quantum-controller/Inductor/3nH_ind.sym} 160 110 0 0 {name=x2}
C {devices/lab_wire.sym} 240 80 0 0 {name=p14 sig_type=std_logic lab=agnd}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 -210 0 0 {name=C2 model=cap_mim_m3_1 W=15 L=16.5 MF=1 spiceprefix=X}
