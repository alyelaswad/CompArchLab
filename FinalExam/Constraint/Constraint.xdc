set_property PACKAGE_PIN E3 [get_ports {fastclock}]					
set_property IOSTANDARD LVCMOS33 [get_ports {fastclock}]

set_property PACKAGE_PIN V10 [get_ports {switchclock}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switchclock}]

#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {manualclk}]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets manualclk_IBUF]



#set_property -dict { PACKAGE_PIN J15  IOSTANDARD LVCMOS33 } [get_ports manualclk]; #IO_L24N_T3_RS0_15 Sch=A[0]

#set_property PACKAGE_PIN N17 [get_ports manualclk]
#set_property IOSTANDARD LVCMOS33 [get_ports manualclk]

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