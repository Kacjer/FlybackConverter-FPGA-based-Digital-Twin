set_property SRC_FILE_INFO {cfile:C:/Users/justu/Downloads/32bit_PID.xpr/callPWM/callPWM.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc rfile:../../../callPWM.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_15 Sch=uclk
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000}  [get_ports { CLK100MHZ }];
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { SPSW[0] }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { SPSW[1] }]; #IO_L21P_T3_DQS_15 Sch=sw[1]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { SPSW[2] }]; #IO_L21N_T3_DQS_A18_15 Sch=sw[2]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M5    IOSTANDARD SSTL135 } [get_ports { clearEncoder }]; #IO_L6N_T0_VREF_34 Sch=sw[3]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { out }]; #IO_L23N_T3_FWE_B_15 Sch=led0_r
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L14N_T2_SRCC_15 Sch=led0_g
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L16P_T2_A28_15 Sch=led1_g
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L16N_T2_A27_15 Sch=led[2]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L17P_T2_A26_15 Sch=led[3]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[4]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L18P_T2_A24_15 Sch=led[5]
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { B }]; #IO_L14P_T2_SRCC_14      Sch=ck_io[5]
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { A }]; #IO_L14N_T2_SRCC_14      Sch=ck_io[6]
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { TxD }]; #IO_L16N_T2_A15_D31_14   Sch=ck_io[7]
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { PWMOut1 }]; #IO_L22N_T3_A16_15   Sch=ck_io11_mosi
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { PWMOut }]; #IO_L23P_T3_FOE_B_15 Sch=ck_io12_miso
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { DIR  }]; #IO_L14P_T2_SRCC_15  Sch=ck_io13_sck
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { vauxp0 }]; #IO_L1P_T0_AD0P_15 Sch=ck_an_p[0]
set_property src_info {type:XDC file:1 line:129 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { vauxn0 }]; #IO_L1N_T0_AD0N_15 Sch=ck_an_n[0]
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { vauxp1 }]; #IO_L3P_T0_DQS_AD1P_15 Sch=ck_an_p[1]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { vauxn1 }]; #IO_L3N_T0_DQS_AD1N_15 Sch=ck_an_n[1]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { vauxp9 }]; #IO_L5P_T0_AD9P_15 Sch=ck_an_p[2]
set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { vauxn9 }]; #IO_L5N_T0_AD9N_15 Sch=ck_an_n[2]
set_property src_info {type:XDC file:1 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { vauxp2 }]; #IO_L7P_T1_AD2P_15 Sch=ck_an_p[3]
set_property src_info {type:XDC file:1 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { vauxn2 }]; #IO_L7N_T1_AD2N_15 Sch=ck_an_n[3]
set_property src_info {type:XDC file:1 line:136 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { vauxp10 }]; #IO_L8P_T1_AD10P_15 Sch=ck_an_p[4]
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { vauxn10 }]; #IO_L8N_T1_AD10N_15 Sch=ck_an_n[4]
set_property src_info {type:XDC file:1 line:138 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { vauxp11 }]; #IO_L10P_T1_AD11P_15 Sch=ck_an_p[5]
set_property src_info {type:XDC file:1 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { vauxn11 }]; #IO_L10N_T1_AD11N_15 Sch=ck_an_n[5]
set_property src_info {type:XDC file:1 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J10   } [get_ports { vp_in }]; #IO_L1P_T0_AD4P_35 Sch=v_p
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K9    } [get_ports { vn_in }]; #IO_L1N_T0_AD4N_35 Sch=v_n
set_property src_info {type:XDC file:1 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { vauxp8 }]; #IO_L2P_T0_AD8P_15 Sch=ad_p[8]
set_property src_info {type:XDC file:1 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { vauxn8 }]; #IO_L2N_T0_AD8N_15 Sch=ad_n[8]
set_property src_info {type:XDC file:1 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { vauxp3 }]; #IO_L9P_T1_DQS_AD3P_15 Sch=ad_p[3]
set_property src_info {type:XDC file:1 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { vauxn3 }]; #IO_L9N_T1_DQS_AD3N_15 Sch=ad_n[3]
