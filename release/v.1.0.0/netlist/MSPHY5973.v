`timescale 1ns/10ps

`begin_keywords "1364-2005"

module MSPHY5973 (
    input IOVDD,
    input IOVSS,
    input IOVDD_MIPI,
    input IOVSS_MIPI,
    input VDD,
    input VSS,
    input BANDGAP,
    input RX_CLK_P,
    input RX_CLK_N,
    input RX_D0_P,
    input RX_D0_N,
    input RX_D1_P,
    input RX_D1_N,
    input RX_D2_P,
    input RX_D2_N,
    input RX_D3_P,
    input RX_D3_N,
    input TX_ANALOG,
    output TX_CLK_P,
    output TX_CLK_N,
    output TX_D0_P,
    output TX_D0_N,
    output TX_D1_P,
    output TX_D1_N,
    output TX_D2_P,
    output TX_D2_N,
    output TX_D3_P,
    output TX_D3_N,
    input CLKIN_N,
    input CLKIN_P,
    input CLK_SYS,
    input RST_N,
    input RENVOI_MODE0,
    input RENVOI_MODE1,
    input EN0,
    input EN1,
    input EN2,
    input EN3
);
    wire pol_est_POLN_RX;
    wire pol_est_VB;
    wire pol_est_PBIAS;
    wire pol_est_PS;
    wire pol_est_POLN;
    wire pol_nord_POLN_RX;
    wire pol_nord_VB;
    wire pol_nord_PBIAS;
    wire pol_nord_PS;
    wire pol_nord_POLN;
    wire pol_ouest_POLN_RX;
    wire pol_ouest_VB;
    wire pol_ouest_PBIAS;
    wire pol_ouest_PS;
    wire pol_ouest_POLN;
    wire pol_sud_POLN_RX;
    wire pol_sud_VB;
    wire pol_sud_PBIAS;
    wire pol_sud_PS;
    wire pol_sud_POLN;
    wire vbg;
    wire padres_tx_analog_pad_nc;
    wire padres_clkin_n_pad_nc;
    wire padres_clkin_p_pad_nc;
    wire clk_sys;
    wire rst_n;
    wire [3:0] enable;
    wire [1:0] renvoi_mode;
    wire [3:0] rx_lp_p;
    wire [3:0] rx_lp_n;
    wire cml_ck_p;
    wire rx_clk_lp_p;
    wire cml_d0_p;
    wire cml_d1_p;
    wire cml_d2_p;
    wire cml_d3_p;
    wire cml_ck_n;
    wire rx_clk_lp_n;
    wire cml_d0_n;
    wire cml_d1_n;
    wire cml_d2_n;
    wire cml_d3_n;
    wire cml_MOT0_P;
    wire cml_MOT0_N;
    wire cml_MOT1_P;
    wire cml_MOT1_N;
    wire cml_MOT2_P;
    wire cml_MOT2_N;
    wire cml_MOT3_P;
    wire cml_MOT3_N;
    wire cml_MOT4_P;
    wire cml_MOT4_N;
    wire cml_MOT5_P;
    wire cml_MOT5_N;
    wire cml_MOT6_P;
    wire cml_MOT6_N;
    wire cml_MOT7_P;
    wire cml_MOT7_N;
    wire cml_MOT8_P;
    wire cml_MOT8_N;
    wire cml_MOT9_P;
    wire cml_MOT9_N;
    wire cml_MOT10_P;
    wire cml_MOT10_N;
    wire cml_MOT11_P;
    wire cml_MOT11_N;
    wire cml_MOT12_P;
    wire cml_MOT12_N;
    wire cml_MOT13_P;
    wire cml_MOT13_N;
    wire cml_MOT14_P;
    wire cml_MOT14_N;
    wire cml_MOT15_P;
    wire cml_MOT15_N;
    wire cml_MOT16_P;
    wire cml_MOT16_N;
    wire cml_MOT17_P;
    wire cml_MOT17_N;
    wire cml_MOT18_P;
    wire cml_MOT18_N;
    wire cml_MOT19_P;
    wire cml_MOT19_N;
    wire cml_MOT20_P;
    wire cml_MOT20_N;
    wire cml_MOT21_P;
    wire cml_MOT21_N;
    wire cml_MOT22_P;
    wire cml_MOT22_N;
    wire cml_MOT23_P;
    wire cml_MOT23_N;
    wire cml_MOT24_P;
    wire cml_MOT24_N;
    wire cml_MOT25_P;
    wire cml_MOT25_N;
    wire cml_MOT26_P;
    wire cml_MOT26_N;
    wire cml_MOT27_P;
    wire cml_MOT27_N;
    wire cml_MOT28_P;
    wire cml_MOT28_N;
    wire cml_MOT29_P;
    wire cml_MOT29_N;
    wire cml_MOT30_P;
    wire cml_MOT30_N;
    wire cml_MOT31_P;
    wire cml_MOT31_N;
    wire cml_CLK_W_P;
    wire cml_CLK_W_N;
    wire [31:0] mots;
    wire clk_w;
    wire rx_clk;
    wire [11:0] statut_phy;
    wire fifo_tx_wr;
    wire fifo_tx_fin;
    wire fifo_tx_full;
    wire tx_init;
    wire [31:0] fifo_tx_wdata;
    wire [3:0] fifo_tx_wlanes;
    wire [3:0] tx_request_hs;
    wire [3:0] tx_ready_hs;
    wire tx_clk_request;
    wire tx_clk_ready;
    wire [3:0] tx_hs_oe;
    wire tx_clk_hs_oe;
    wire cml_tx_ck_p;
    wire cml_tx_ckl_p;
    wire cml_tx_L0_MOT0_P;
    wire cml_tx_L0_MOT1_P;
    wire cml_tx_L0_MOT2_P;
    wire cml_tx_L0_MOT3_P;
    wire cml_tx_L0_MOT4_P;
    wire cml_tx_L0_MOT5_P;
    wire cml_tx_L0_MOT6_P;
    wire cml_tx_L0_MOT7_P;
    wire cml_tx_L0_CLK_W_P;
    wire cml_tx_L0_DOUT_P;
    wire cml_tx_L1_MOT0_P;
    wire cml_tx_L1_MOT1_P;
    wire cml_tx_L1_MOT2_P;
    wire cml_tx_L1_MOT3_P;
    wire cml_tx_L1_MOT4_P;
    wire cml_tx_L1_MOT5_P;
    wire cml_tx_L1_MOT6_P;
    wire cml_tx_L1_MOT7_P;
    wire cml_tx_L1_CLK_W_P;
    wire cml_tx_L1_DOUT_P;
    wire cml_tx_L2_MOT0_P;
    wire cml_tx_L2_MOT1_P;
    wire cml_tx_L2_MOT2_P;
    wire cml_tx_L2_MOT3_P;
    wire cml_tx_L2_MOT4_P;
    wire cml_tx_L2_MOT5_P;
    wire cml_tx_L2_MOT6_P;
    wire cml_tx_L2_MOT7_P;
    wire cml_tx_L2_CLK_W_P;
    wire cml_tx_L2_DOUT_P;
    wire cml_tx_L3_MOT0_P;
    wire cml_tx_L3_MOT1_P;
    wire cml_tx_L3_MOT2_P;
    wire cml_tx_L3_MOT3_P;
    wire cml_tx_L3_MOT4_P;
    wire cml_tx_L3_MOT5_P;
    wire cml_tx_L3_MOT6_P;
    wire cml_tx_L3_MOT7_P;
    wire cml_tx_L3_CLK_W_P;
    wire cml_tx_L3_DOUT_P;
    wire in_hs_clk_p;
    wire in_hs_d0_p;
    wire in_hs_d1_p;
    wire in_hs_d2_p;
    wire in_hs_d3_p;
    wire tx_clk_lp_p;
    wire [3:0] tx_lp_p;
    wire cml_tx_ck_n;
    wire cml_tx_ckl_n;
    wire cml_tx_L0_MOT0_N;
    wire cml_tx_L0_MOT1_N;
    wire cml_tx_L0_MOT2_N;
    wire cml_tx_L0_MOT3_N;
    wire cml_tx_L0_MOT4_N;
    wire cml_tx_L0_MOT5_N;
    wire cml_tx_L0_MOT6_N;
    wire cml_tx_L0_MOT7_N;
    wire cml_tx_L0_CLK_W_N;
    wire cml_tx_L0_DOUT_N;
    wire cml_tx_L1_MOT0_N;
    wire cml_tx_L1_MOT1_N;
    wire cml_tx_L1_MOT2_N;
    wire cml_tx_L1_MOT3_N;
    wire cml_tx_L1_MOT4_N;
    wire cml_tx_L1_MOT5_N;
    wire cml_tx_L1_MOT6_N;
    wire cml_tx_L1_MOT7_N;
    wire cml_tx_L1_CLK_W_N;
    wire cml_tx_L1_DOUT_N;
    wire cml_tx_L2_MOT0_N;
    wire cml_tx_L2_MOT1_N;
    wire cml_tx_L2_MOT2_N;
    wire cml_tx_L2_MOT3_N;
    wire cml_tx_L2_MOT4_N;
    wire cml_tx_L2_MOT5_N;
    wire cml_tx_L2_MOT6_N;
    wire cml_tx_L2_MOT7_N;
    wire cml_tx_L2_CLK_W_N;
    wire cml_tx_L2_DOUT_N;
    wire cml_tx_L3_MOT0_N;
    wire cml_tx_L3_MOT1_N;
    wire cml_tx_L3_MOT2_N;
    wire cml_tx_L3_MOT3_N;
    wire cml_tx_L3_MOT4_N;
    wire cml_tx_L3_MOT5_N;
    wire cml_tx_L3_MOT6_N;
    wire cml_tx_L3_MOT7_N;
    wire cml_tx_L3_CLK_W_N;
    wire cml_tx_L3_DOUT_N;
    wire in_hs_clk_n;
    wire in_hs_d0_n;
    wire in_hs_d1_n;
    wire in_hs_d2_n;
    wire in_hs_d3_n;
    wire tx_clk_lp_n;
    wire [3:0] tx_lp_n;
    wire clk_sm_tx;
    wire rst_tx;
    wire zero_cnt_gel;
    wire zero_tx_pix_valid;
    wire zero_tx_req_valid;
    wire zero_tx_pix_data;
    wire zero_tx_pix_nb;
    wire zero_tx_req_dt;
    wire zero_tx_req_vc;
    wire zero_tx_req_width;

    MIPI_Corner corner_sw (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS));
    MIPI_Corner corner_ne (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS));
    MIPI_CornerBreaker corner_nw (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .IOVDD_MIPI(IOVDD_MIPI), .IOVSS_MIPI(IOVSS_MIPI));
    MIPI_CornerBreaker corner_se (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .IOVDD_MIPI(IOVDD_MIPI), .IOVSS_MIPI(IOVSS_MIPI));
    MIPI_IOPadIOVdd iovdd_mipi_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN));
    MIPI_IOPadIOVss iovss_mipi_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN));
    MIPI_IOPadBandgap bandgap_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(BANDGAP), .VBG(vbg));
    MIPI_IOPadRX rx_clk_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_CLK_P), .P2C(rx_clk_lp_p), .OUT(cml_ck_p));
    MIPI_IOPadRX rx_clk_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_CLK_N), .P2C(rx_clk_lp_n), .OUT(cml_ck_n));
    MIPI_IOPadRX rx_d0_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D0_P), .P2C(rx_lp_p[0]), .OUT(cml_d0_p));
    MIPI_IOPadRX rx_d0_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D0_N), .P2C(rx_lp_n[0]), .OUT(cml_d0_n));
    MIPI_IOPadRX rx_d1_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D1_P), .P2C(rx_lp_p[1]), .OUT(cml_d1_p));
    MIPI_IOPadRX rx_d1_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D1_N), .P2C(rx_lp_n[1]), .OUT(cml_d1_n));
    MIPI_IOPadRX rx_d2_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D2_P), .P2C(rx_lp_p[2]), .OUT(cml_d2_p));
    MIPI_IOPadRX rx_d2_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D2_N), .P2C(rx_lp_n[2]), .OUT(cml_d2_n));
    MIPI_IOPadRX rx_d3_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D3_P), .P2C(rx_lp_p[3]), .OUT(cml_d3_p));
    MIPI_IOPadRX rx_d3_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_est_POLN_RX), .VB(pol_est_VB), .PBIAS(pol_est_PBIAS), .PS(pol_est_PS), .POLN(pol_est_POLN), .PAD(RX_D3_N), .P2C(rx_lp_n[3]), .OUT(cml_d3_n));
    MIPI_IOPadVdd vdd_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN));
    MIPI_IOPadVss vss_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN));
    MIPI_IOPadAnalog tx_analog_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_ANALOG), .PADRES(padres_tx_analog_pad_nc));
    MIPI_IOPadTX tx_clk_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_CLK_P), .IN_HS(in_hs_clk_p), .LP_IN(tx_clk_lp_p));
    MIPI_IOPadTX tx_clk_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_CLK_N), .IN_HS(in_hs_clk_n), .LP_IN(tx_clk_lp_n));
    MIPI_IOPadTX tx_d0_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D0_P), .IN_HS(in_hs_d0_p), .LP_IN(tx_lp_p[0]));
    MIPI_IOPadTX tx_d0_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D0_N), .IN_HS(in_hs_d0_n), .LP_IN(tx_lp_n[0]));
    MIPI_IOPadTX tx_d1_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D1_P), .IN_HS(in_hs_d1_p), .LP_IN(tx_lp_p[1]));
    MIPI_IOPadTX tx_d1_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D1_N), .IN_HS(in_hs_d1_n), .LP_IN(tx_lp_n[1]));
    MIPI_IOPadTX tx_d2_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D2_P), .IN_HS(in_hs_d2_p), .LP_IN(tx_lp_p[2]));
    MIPI_IOPadTX tx_d2_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D2_N), .IN_HS(in_hs_d2_n), .LP_IN(tx_lp_n[2]));
    MIPI_IOPadTX tx_d3_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D3_P), .IN_HS(in_hs_d3_p), .LP_IN(tx_lp_p[3]));
    MIPI_IOPadTX tx_d3_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(TX_D3_N), .IN_HS(in_hs_d3_n), .LP_IN(tx_lp_n[3]));
    MIPI_IOPadAnalog clkin_n_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(CLKIN_N), .PADRES(padres_clkin_n_pad_nc));
    MIPI_IOPadAnalog clkin_p_pad (.IOVDD(IOVDD_MIPI), .IOVSS(IOVSS_MIPI), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_nord_POLN_RX), .VB(pol_nord_VB), .PBIAS(pol_nord_PBIAS), .PS(pol_nord_PS), .POLN(pol_nord_POLN), .PAD(CLKIN_P), .PADRES(padres_clkin_p_pad_nc));
    MIPI_IOPadIOVdd iovdd_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN));
    MIPI_IOPadIOVss iovss_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN));
    MIPI_IOPadVdd vdd_s_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN));
    MIPI_IOPadVss vss_s_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN));
    MIPI_IOPadIn clk_sys_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN), .PAD(CLK_SYS), .P2C(clk_sys));
    MIPI_IOPadIn rst_n_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN), .PAD(RST_N), .P2C(rst_n));
    MIPI_IOPadIn renvoi_mode0_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN), .PAD(RENVOI_MODE0), .P2C(renvoi_mode[0]));
    MIPI_IOPadIn renvoi_mode1_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_ouest_POLN_RX), .VB(pol_ouest_VB), .PBIAS(pol_ouest_PBIAS), .PS(pol_ouest_PS), .POLN(pol_ouest_POLN), .PAD(RENVOI_MODE1), .P2C(renvoi_mode[1]));
    MIPI_IOPadIn en0_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN), .PAD(EN0), .P2C(enable[0]));
    MIPI_IOPadIn en1_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN), .PAD(EN1), .P2C(enable[1]));
    MIPI_IOPadIn en2_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN), .PAD(EN2), .P2C(enable[2]));
    MIPI_IOPadIn en3_pad (.IOVDD(IOVDD), .IOVSS(IOVSS), .VDD(VDD), .VSS(VSS), .POLN_RX(pol_sud_POLN_RX), .VB(pol_sud_VB), .PBIAS(pol_sud_PBIAS), .PS(pol_sud_PS), .POLN(pol_sud_POLN), .PAD(EN3), .P2C(enable[3]));
    csi2_top csi2_top (.VPWR(VDD), .VGND(VSS), .clk(clk_sys), .clk_w(clk_w), .cnt_gel(zero_cnt_gel), .fifo_tx_fin(fifo_tx_fin), .fifo_tx_full(fifo_tx_full), .fifo_tx_wr(fifo_tx_wr), .rst_n(rst_n), .tx_init(tx_init), .tx_pix_valid(zero_tx_pix_valid), .tx_req_valid(zero_tx_req_valid), .enable(enable), .fifo_tx_wdata(fifo_tx_wdata), .fifo_tx_wlanes(fifo_tx_wlanes), .hspr({statut_phy[11], statut_phy[8], statut_phy[5], statut_phy[2]}), .mots(mots), .renvoi_mode(renvoi_mode), .statut_phy(statut_phy), .tx_pix_data({zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data, zero_tx_pix_data}), .tx_pix_nb({zero_tx_pix_nb, zero_tx_pix_nb, zero_tx_pix_nb, zero_tx_pix_nb}), .tx_req_dt({zero_tx_req_dt, zero_tx_req_dt, zero_tx_req_dt, zero_tx_req_dt, zero_tx_req_dt, zero_tx_req_dt}), .tx_req_vc({zero_tx_req_vc, zero_tx_req_vc}), .tx_req_width({zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width, zero_tx_req_width}));
    dphy_rx dphy_rx (.VPWR(VDD), .VGND(VSS), .clk_lp_n(rx_clk_lp_n), .clk_lp_p(rx_clk_lp_p), .hspr({statut_phy[11], statut_phy[8], statut_phy[5], statut_phy[2]}), .hsreq({statut_phy[10], statut_phy[7], statut_phy[4], statut_phy[1]}), .lp_n(rx_lp_n), .lp_p(rx_lp_p), .rx_clk(rx_clk), .stop({statut_phy[9], statut_phy[6], statut_phy[3], statut_phy[0]}));
    dphy_tx dphy_tx (.VPWR(VDD), .VGND(VSS), .clk(clk_sm_tx), .clk_hs_oe(tx_clk_hs_oe), .clk_lp_n(tx_clk_lp_n), .clk_lp_p(tx_clk_lp_p), .clk_ready(tx_clk_ready), .clk_request(tx_clk_request), .hs_oe(tx_hs_oe), .lp_n(tx_lp_n), .lp_p(tx_lp_p), .rst(rst_tx), .tx_ready_hs(tx_ready_hs), .tx_request_hs(tx_request_hs));
    sr16_rx4 sr16_rx4 (.VDD(VDD), .VSS(VSS), .CK_N(cml_ck_n), .CK_P(cml_ck_p), .D0_N(cml_d0_n), .D0_P(cml_d0_p), .D1_N(cml_d1_n), .D1_P(cml_d1_p), .D2_N(cml_d2_n), .D2_P(cml_d2_p), .D3_N(cml_d3_n), .D3_P(cml_d3_p), .POLN(pol_est_POLN), .MOT0_N(cml_MOT0_N), .MOT0_P(cml_MOT0_P), .MOT1_N(cml_MOT1_N), .MOT1_P(cml_MOT1_P), .MOT2_N(cml_MOT2_N), .MOT2_P(cml_MOT2_P), .MOT3_N(cml_MOT3_N), .MOT3_P(cml_MOT3_P), .MOT4_N(cml_MOT4_N), .MOT4_P(cml_MOT4_P), .MOT5_N(cml_MOT5_N), .MOT5_P(cml_MOT5_P), .MOT6_N(cml_MOT6_N), .MOT6_P(cml_MOT6_P), .MOT7_N(cml_MOT7_N), .MOT7_P(cml_MOT7_P), .MOT8_N(cml_MOT8_N), .MOT8_P(cml_MOT8_P), .MOT9_N(cml_MOT9_N), .MOT9_P(cml_MOT9_P), .MOT10_N(cml_MOT10_N), .MOT10_P(cml_MOT10_P), .MOT11_N(cml_MOT11_N), .MOT11_P(cml_MOT11_P), .MOT12_N(cml_MOT12_N), .MOT12_P(cml_MOT12_P), .MOT13_N(cml_MOT13_N), .MOT13_P(cml_MOT13_P), .MOT14_N(cml_MOT14_N), .MOT14_P(cml_MOT14_P), .MOT15_N(cml_MOT15_N), .MOT15_P(cml_MOT15_P), .MOT16_N(cml_MOT16_N), .MOT16_P(cml_MOT16_P), .MOT17_N(cml_MOT17_N), .MOT17_P(cml_MOT17_P), .MOT18_N(cml_MOT18_N), .MOT18_P(cml_MOT18_P), .MOT19_N(cml_MOT19_N), .MOT19_P(cml_MOT19_P), .MOT20_N(cml_MOT20_N), .MOT20_P(cml_MOT20_P), .MOT21_N(cml_MOT21_N), .MOT21_P(cml_MOT21_P), .MOT22_N(cml_MOT22_N), .MOT22_P(cml_MOT22_P), .MOT23_N(cml_MOT23_N), .MOT23_P(cml_MOT23_P), .MOT24_N(cml_MOT24_N), .MOT24_P(cml_MOT24_P), .MOT25_N(cml_MOT25_N), .MOT25_P(cml_MOT25_P), .MOT26_N(cml_MOT26_N), .MOT26_P(cml_MOT26_P), .MOT27_N(cml_MOT27_N), .MOT27_P(cml_MOT27_P), .MOT28_N(cml_MOT28_N), .MOT28_P(cml_MOT28_P), .MOT29_N(cml_MOT29_N), .MOT29_P(cml_MOT29_P), .MOT30_N(cml_MOT30_N), .MOT30_P(cml_MOT30_P), .MOT31_N(cml_MOT31_N), .MOT31_P(cml_MOT31_P), .CLK_W_N(cml_CLK_W_N), .CLK_W_P(cml_CLK_W_P));
    cml2cmos cml2cmos (.VDD(VDD), .VSS(VSS), .MOT0_P(cml_MOT0_P), .MOT0_N(cml_MOT0_N), .MOT1_P(cml_MOT1_P), .MOT1_N(cml_MOT1_N), .MOT2_P(cml_MOT2_P), .MOT2_N(cml_MOT2_N), .MOT3_P(cml_MOT3_P), .MOT3_N(cml_MOT3_N), .MOT4_P(cml_MOT4_P), .MOT4_N(cml_MOT4_N), .MOT5_P(cml_MOT5_P), .MOT5_N(cml_MOT5_N), .MOT6_P(cml_MOT6_P), .MOT6_N(cml_MOT6_N), .MOT7_P(cml_MOT7_P), .MOT7_N(cml_MOT7_N), .MOT8_P(cml_MOT8_P), .MOT8_N(cml_MOT8_N), .MOT9_P(cml_MOT9_P), .MOT9_N(cml_MOT9_N), .MOT10_P(cml_MOT10_P), .MOT10_N(cml_MOT10_N), .MOT11_P(cml_MOT11_P), .MOT11_N(cml_MOT11_N), .MOT12_P(cml_MOT12_P), .MOT12_N(cml_MOT12_N), .MOT13_P(cml_MOT13_P), .MOT13_N(cml_MOT13_N), .MOT14_P(cml_MOT14_P), .MOT14_N(cml_MOT14_N), .MOT15_P(cml_MOT15_P), .MOT15_N(cml_MOT15_N), .MOT16_P(cml_MOT16_P), .MOT16_N(cml_MOT16_N), .MOT17_P(cml_MOT17_P), .MOT17_N(cml_MOT17_N), .MOT18_P(cml_MOT18_P), .MOT18_N(cml_MOT18_N), .MOT19_P(cml_MOT19_P), .MOT19_N(cml_MOT19_N), .MOT20_P(cml_MOT20_P), .MOT20_N(cml_MOT20_N), .MOT21_P(cml_MOT21_P), .MOT21_N(cml_MOT21_N), .MOT22_P(cml_MOT22_P), .MOT22_N(cml_MOT22_N), .MOT23_P(cml_MOT23_P), .MOT23_N(cml_MOT23_N), .MOT24_P(cml_MOT24_P), .MOT24_N(cml_MOT24_N), .MOT25_P(cml_MOT25_P), .MOT25_N(cml_MOT25_N), .MOT26_P(cml_MOT26_P), .MOT26_N(cml_MOT26_N), .MOT27_P(cml_MOT27_P), .MOT27_N(cml_MOT27_N), .MOT28_P(cml_MOT28_P), .MOT28_N(cml_MOT28_N), .MOT29_P(cml_MOT29_P), .MOT29_N(cml_MOT29_N), .MOT30_P(cml_MOT30_P), .MOT30_N(cml_MOT30_N), .MOT31_P(cml_MOT31_P), .MOT31_N(cml_MOT31_N), .CLK_W_P(cml_CLK_W_P), .CLK_W_N(cml_CLK_W_N), .RXCK_P(cml_ck_p), .RXCK_N(cml_ck_n), .mots(mots), .clk_w(clk_w), .rx_clk(rx_clk));
    pll pll (.VDD(VDD), .VSS(VSS), .CLKIN_P(CLKIN_P), .CLKIN_N(CLKIN_N), .CK_P(cml_tx_ck_p), .CK_N(cml_tx_ck_n), .CKL_P(cml_tx_ckl_p), .CKL_N(cml_tx_ckl_n), .clk_sm(clk_sm_tx));
    tx_front tx_front (.VDD(VDD), .VSS(VSS), .fifo_tx_wr(fifo_tx_wr), .fifo_tx_wdata(fifo_tx_wdata), .fifo_tx_wlanes(fifo_tx_wlanes), .fifo_tx_fin(fifo_tx_fin), .fifo_tx_full(fifo_tx_full), .tx_init(tx_init), .tx_request_hs(tx_request_hs), .clk_request(tx_clk_request), .tx_ready_hs(tx_ready_hs), .clk_ready(tx_clk_ready), .L0_MOT0_P(cml_tx_L0_MOT0_P), .L0_MOT0_N(cml_tx_L0_MOT0_N), .L0_MOT1_P(cml_tx_L0_MOT1_P), .L0_MOT1_N(cml_tx_L0_MOT1_N), .L0_MOT2_P(cml_tx_L0_MOT2_P), .L0_MOT2_N(cml_tx_L0_MOT2_N), .L0_MOT3_P(cml_tx_L0_MOT3_P), .L0_MOT3_N(cml_tx_L0_MOT3_N), .L0_MOT4_P(cml_tx_L0_MOT4_P), .L0_MOT4_N(cml_tx_L0_MOT4_N), .L0_MOT5_P(cml_tx_L0_MOT5_P), .L0_MOT5_N(cml_tx_L0_MOT5_N), .L0_MOT6_P(cml_tx_L0_MOT6_P), .L0_MOT6_N(cml_tx_L0_MOT6_N), .L0_MOT7_P(cml_tx_L0_MOT7_P), .L0_MOT7_N(cml_tx_L0_MOT7_N), .L1_MOT0_P(cml_tx_L1_MOT0_P), .L1_MOT0_N(cml_tx_L1_MOT0_N), .L1_MOT1_P(cml_tx_L1_MOT1_P), .L1_MOT1_N(cml_tx_L1_MOT1_N), .L1_MOT2_P(cml_tx_L1_MOT2_P), .L1_MOT2_N(cml_tx_L1_MOT2_N), .L1_MOT3_P(cml_tx_L1_MOT3_P), .L1_MOT3_N(cml_tx_L1_MOT3_N), .L1_MOT4_P(cml_tx_L1_MOT4_P), .L1_MOT4_N(cml_tx_L1_MOT4_N), .L1_MOT5_P(cml_tx_L1_MOT5_P), .L1_MOT5_N(cml_tx_L1_MOT5_N), .L1_MOT6_P(cml_tx_L1_MOT6_P), .L1_MOT6_N(cml_tx_L1_MOT6_N), .L1_MOT7_P(cml_tx_L1_MOT7_P), .L1_MOT7_N(cml_tx_L1_MOT7_N), .L2_MOT0_P(cml_tx_L2_MOT0_P), .L2_MOT0_N(cml_tx_L2_MOT0_N), .L2_MOT1_P(cml_tx_L2_MOT1_P), .L2_MOT1_N(cml_tx_L2_MOT1_N), .L2_MOT2_P(cml_tx_L2_MOT2_P), .L2_MOT2_N(cml_tx_L2_MOT2_N), .L2_MOT3_P(cml_tx_L2_MOT3_P), .L2_MOT3_N(cml_tx_L2_MOT3_N), .L2_MOT4_P(cml_tx_L2_MOT4_P), .L2_MOT4_N(cml_tx_L2_MOT4_N), .L2_MOT5_P(cml_tx_L2_MOT5_P), .L2_MOT5_N(cml_tx_L2_MOT5_N), .L2_MOT6_P(cml_tx_L2_MOT6_P), .L2_MOT6_N(cml_tx_L2_MOT6_N), .L2_MOT7_P(cml_tx_L2_MOT7_P), .L2_MOT7_N(cml_tx_L2_MOT7_N), .L3_MOT0_P(cml_tx_L3_MOT0_P), .L3_MOT0_N(cml_tx_L3_MOT0_N), .L3_MOT1_P(cml_tx_L3_MOT1_P), .L3_MOT1_N(cml_tx_L3_MOT1_N), .L3_MOT2_P(cml_tx_L3_MOT2_P), .L3_MOT2_N(cml_tx_L3_MOT2_N), .L3_MOT3_P(cml_tx_L3_MOT3_P), .L3_MOT3_N(cml_tx_L3_MOT3_N), .L3_MOT4_P(cml_tx_L3_MOT4_P), .L3_MOT4_N(cml_tx_L3_MOT4_N), .L3_MOT5_P(cml_tx_L3_MOT5_P), .L3_MOT5_N(cml_tx_L3_MOT5_N), .L3_MOT6_P(cml_tx_L3_MOT6_P), .L3_MOT6_N(cml_tx_L3_MOT6_N), .L3_MOT7_P(cml_tx_L3_MOT7_P), .L3_MOT7_N(cml_tx_L3_MOT7_N), .L0_CLK_W_P(cml_tx_L0_CLK_W_P), .L0_CLK_W_N(cml_tx_L0_CLK_W_N), .L1_CLK_W_P(cml_tx_L1_CLK_W_P), .L1_CLK_W_N(cml_tx_L1_CLK_W_N), .L2_CLK_W_P(cml_tx_L2_CLK_W_P), .L2_CLK_W_N(cml_tx_L2_CLK_W_N), .L3_CLK_W_P(cml_tx_L3_CLK_W_P), .L3_CLK_W_N(cml_tx_L3_CLK_W_N));
    hs_tx_pd hs_tx_pd (.VDD(VDD), .VSS(VSS), .D0_P(cml_tx_L0_DOUT_P), .D0_N(cml_tx_L0_DOUT_N), .D1_P(cml_tx_L1_DOUT_P), .D1_N(cml_tx_L1_DOUT_N), .D2_P(cml_tx_L2_DOUT_P), .D2_N(cml_tx_L2_DOUT_N), .D3_P(cml_tx_L3_DOUT_P), .D3_N(cml_tx_L3_DOUT_N), .CKL_P(cml_tx_ckl_p), .CKL_N(cml_tx_ckl_n), .hs_oe(tx_hs_oe), .clk_hs_oe(tx_clk_hs_oe), .IN_HS_TX_CLK_P(in_hs_clk_p), .IN_HS_TX_CLK_N(in_hs_clk_n), .IN_HS_TX_D0_P(in_hs_d0_p), .IN_HS_TX_D0_N(in_hs_d0_n), .IN_HS_TX_D1_P(in_hs_d1_p), .IN_HS_TX_D1_N(in_hs_d1_n), .IN_HS_TX_D2_P(in_hs_d2_p), .IN_HS_TX_D2_N(in_hs_d2_n), .IN_HS_TX_D3_P(in_hs_d3_p), .IN_HS_TX_D3_N(in_hs_d3_n));
    sr16_tx sr16_tx0 (.VDD(VDD), .VSS(VSS), .CK_N(cml_tx_ck_n), .CK_P(cml_tx_ck_p), .CLK_W_N(cml_tx_L0_CLK_W_N), .CLK_W_P(cml_tx_L0_CLK_W_P), .MOT0_N(cml_tx_L0_MOT0_N), .MOT0_P(cml_tx_L0_MOT0_P), .MOT1_N(cml_tx_L0_MOT1_N), .MOT1_P(cml_tx_L0_MOT1_P), .MOT2_N(cml_tx_L0_MOT2_N), .MOT2_P(cml_tx_L0_MOT2_P), .MOT3_N(cml_tx_L0_MOT3_N), .MOT3_P(cml_tx_L0_MOT3_P), .MOT4_N(cml_tx_L0_MOT4_N), .MOT4_P(cml_tx_L0_MOT4_P), .MOT5_N(cml_tx_L0_MOT5_N), .MOT5_P(cml_tx_L0_MOT5_P), .MOT6_N(cml_tx_L0_MOT6_N), .MOT6_P(cml_tx_L0_MOT6_P), .MOT7_N(cml_tx_L0_MOT7_N), .MOT7_P(cml_tx_L0_MOT7_P), .DOUT_N(cml_tx_L0_DOUT_N), .DOUT_P(cml_tx_L0_DOUT_P), .POLN(pol_nord_POLN));
    sr16_tx sr16_tx1 (.VDD(VDD), .VSS(VSS), .CK_N(cml_tx_ck_n), .CK_P(cml_tx_ck_p), .CLK_W_N(cml_tx_L1_CLK_W_N), .CLK_W_P(cml_tx_L1_CLK_W_P), .MOT0_N(cml_tx_L1_MOT0_N), .MOT0_P(cml_tx_L1_MOT0_P), .MOT1_N(cml_tx_L1_MOT1_N), .MOT1_P(cml_tx_L1_MOT1_P), .MOT2_N(cml_tx_L1_MOT2_N), .MOT2_P(cml_tx_L1_MOT2_P), .MOT3_N(cml_tx_L1_MOT3_N), .MOT3_P(cml_tx_L1_MOT3_P), .MOT4_N(cml_tx_L1_MOT4_N), .MOT4_P(cml_tx_L1_MOT4_P), .MOT5_N(cml_tx_L1_MOT5_N), .MOT5_P(cml_tx_L1_MOT5_P), .MOT6_N(cml_tx_L1_MOT6_N), .MOT6_P(cml_tx_L1_MOT6_P), .MOT7_N(cml_tx_L1_MOT7_N), .MOT7_P(cml_tx_L1_MOT7_P), .DOUT_N(cml_tx_L1_DOUT_N), .DOUT_P(cml_tx_L1_DOUT_P), .POLN(pol_nord_POLN));
    sr16_tx sr16_tx2 (.VDD(VDD), .VSS(VSS), .CK_N(cml_tx_ck_n), .CK_P(cml_tx_ck_p), .CLK_W_N(cml_tx_L2_CLK_W_N), .CLK_W_P(cml_tx_L2_CLK_W_P), .MOT0_N(cml_tx_L2_MOT0_N), .MOT0_P(cml_tx_L2_MOT0_P), .MOT1_N(cml_tx_L2_MOT1_N), .MOT1_P(cml_tx_L2_MOT1_P), .MOT2_N(cml_tx_L2_MOT2_N), .MOT2_P(cml_tx_L2_MOT2_P), .MOT3_N(cml_tx_L2_MOT3_N), .MOT3_P(cml_tx_L2_MOT3_P), .MOT4_N(cml_tx_L2_MOT4_N), .MOT4_P(cml_tx_L2_MOT4_P), .MOT5_N(cml_tx_L2_MOT5_N), .MOT5_P(cml_tx_L2_MOT5_P), .MOT6_N(cml_tx_L2_MOT6_N), .MOT6_P(cml_tx_L2_MOT6_P), .MOT7_N(cml_tx_L2_MOT7_N), .MOT7_P(cml_tx_L2_MOT7_P), .DOUT_N(cml_tx_L2_DOUT_N), .DOUT_P(cml_tx_L2_DOUT_P), .POLN(pol_nord_POLN));
    sr16_tx sr16_tx3 (.VDD(VDD), .VSS(VSS), .CK_N(cml_tx_ck_n), .CK_P(cml_tx_ck_p), .CLK_W_N(cml_tx_L3_CLK_W_N), .CLK_W_P(cml_tx_L3_CLK_W_P), .MOT0_N(cml_tx_L3_MOT0_N), .MOT0_P(cml_tx_L3_MOT0_P), .MOT1_N(cml_tx_L3_MOT1_N), .MOT1_P(cml_tx_L3_MOT1_P), .MOT2_N(cml_tx_L3_MOT2_N), .MOT2_P(cml_tx_L3_MOT2_P), .MOT3_N(cml_tx_L3_MOT3_N), .MOT3_P(cml_tx_L3_MOT3_P), .MOT4_N(cml_tx_L3_MOT4_N), .MOT4_P(cml_tx_L3_MOT4_P), .MOT5_N(cml_tx_L3_MOT5_N), .MOT5_P(cml_tx_L3_MOT5_P), .MOT6_N(cml_tx_L3_MOT6_N), .MOT6_P(cml_tx_L3_MOT6_P), .MOT7_N(cml_tx_L3_MOT7_N), .MOT7_P(cml_tx_L3_MOT7_P), .DOUT_N(cml_tx_L3_DOUT_N), .DOUT_P(cml_tx_L3_DOUT_P), .POLN(pol_nord_POLN));
    sg13g2_inv_1 inv_rst_tx (.A(rst_n), .Y(rst_tx));
    sg13g2_tielo tie_cnt_gel (.L_LO(zero_cnt_gel));
    sg13g2_tielo tie_tx_pix_valid (.L_LO(zero_tx_pix_valid));
    sg13g2_tielo tie_tx_req_valid (.L_LO(zero_tx_req_valid));
    sg13g2_tielo tie_tx_pix_data (.L_LO(zero_tx_pix_data));
    sg13g2_tielo tie_tx_pix_nb (.L_LO(zero_tx_pix_nb));
    sg13g2_tielo tie_tx_req_dt (.L_LO(zero_tx_req_dt));
    sg13g2_tielo tie_tx_req_vc (.L_LO(zero_tx_req_vc));
    sg13g2_tielo tie_tx_req_width (.L_LO(zero_tx_req_width));

endmodule
`end_keywords
