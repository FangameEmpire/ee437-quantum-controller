** sch_path: /foss/designs/EE437/Project/ee437-quantum-controller/Top_Level/Top_LC.sch
.subckt Top_LC Clk VoutQ LNA_D Vin LNA_S VoutI AMP_En LNA_En avdd agnd ibias_n_50u
*.PININFO Clk:I VoutQ:O LNA_D:I Vin:I LNA_S:I VoutI:O AMP_En:I LNA_En:I avdd:B agnd:B ibias_n_50u:B
* noconn VoutI
* noconn VoutQ
* noconn AMP_En
* noconn LNA_En
* noconn ibias_n_50u
x1 Clk LNA_S 3nH_ind
XC1 Vin LNA_D sky130_fd_pr__cap_mim_m3_1 W=15 L=16.5 m=1
x2 LNA_D agnd 3nH_ind
XC2 avdd agnd sky130_fd_pr__cap_mim_m3_1 W=15 L=16.5 m=1
.ends
.end
