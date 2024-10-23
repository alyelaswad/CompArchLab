set_property PACKAGE_PIN E3 [get_ports {clk}]					
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=A[1]




set_property -dict { PACKAGE_PIN H17  IOSTANDARD LVCMOS33 } [get_ports { ledState[0] }]; #IO_L24N_T3_RS0_15 Sch=A[0]
set_property -dict { PACKAGE_PIN K15  IOSTANDARD LVCMOS33 } [get_ports { ledState[1] }]; #IO_L24N_T3_RS0_15 Sch=A[0]
set_property -dict { PACKAGE_PIN J13  IOSTANDARD LVCMOS33 } [get_ports { ledState[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=A[2]
set_property -dict { PACKAGE_PIN N14  IOSTANDARD LVCMOS33 } [get_ports { ledState[3] }]; #IO_L13N_T2_MRCC_14 Sch=A[3]

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports en]; #IO_L24N_T3_RS0_15 Sch=A[0]





set_property PACKAGE_PIN T10 [get_ports {ssd_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[6]}]

set_property PACKAGE_PIN R10 [get_ports {ssd_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[5]}]

set_property PACKAGE_PIN K16 [get_ports {ssd_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[4]}]

set_property PACKAGE_PIN K13 [get_ports {ssd_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[3]}]

set_property PACKAGE_PIN P15 [get_ports {ssd_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[2]}]

set_property PACKAGE_PIN T11 [get_ports {ssd_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[1]}]

set_property PACKAGE_PIN L18 [get_ports {ssd_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ssd_out[0]}]


set_property PACKAGE_PIN P14 [get_ports {Anode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[0]}]

set_property PACKAGE_PIN T14 [get_ports {Anode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[1]}]

set_property PACKAGE_PIN K2 [get_ports {Anode[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[2]}]

set_property PACKAGE_PIN U13 [get_ports {Anode[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode[3]}]