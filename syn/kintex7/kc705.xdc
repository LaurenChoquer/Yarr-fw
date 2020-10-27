## Clock

# PadFunction: IO_L12P_T1_MRCC_33
set_property IOSTANDARD DIFF_SSTL15 [get_ports clk200_p]

set_property PACKAGE_PIN L25 [get_ports clk_160_p_o]
set_property IOSTANDARD LVCMOS25 [get_ports clk_160_p_o]
set_property DIFF_TERM TRUE [get_ports clk_160_p_o]

# PadFunction: IO_L12N_T1_MRCC_33
set_property IOSTANDARD DIFF_SSTL15 [get_ports clk200_n]
set_property PACKAGE_PIN AD12 [get_ports clk200_p]
set_property PACKAGE_PIN AD11 [get_ports clk200_n]

# Bank: 115 - MGTREFCLK1N_115

# Bank: 115 - MGTREFCLK1P_115

set_property IOSTANDARD LVCMOS25 [get_ports sys_rst_n_i]
set_property PACKAGE_PIN G25 [get_ports sys_rst_n_i]

set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells {pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN M5 [get_ports {pci_exp_rxn[0]}]
set_property PACKAGE_PIN M6 [get_ports {pci_exp_rxp[0]}]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells {pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN P5 [get_ports {pci_exp_rxn[1]}]
set_property PACKAGE_PIN P6 [get_ports {pci_exp_rxp[1]}]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells {pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN R3 [get_ports {pci_exp_rxn[2]}]
set_property PACKAGE_PIN R4 [get_ports {pci_exp_rxp[2]}]
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells {pcie_0/U0/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN T5 [get_ports {pci_exp_rxn[3]}]
set_property PACKAGE_PIN T6 [get_ports {pci_exp_rxp[3]}]

## GPIO PUSHBUTTON SW

# Bank: 18 - IO_0_18
# set_property PACKAGE_PIN G12 [get_ports PUSH_SW_C]
# set_property IOSTANDARD LVCMOS25 [get_ports PUSH_SW_C]

# Bank: 34 - IO_L12N_T1_MRCC_34
# set_property PACKAGE_PIN AG5 [get_ports PUSH_SW_E]
# set_property IOSTANDARD LVCMOS15 [get_ports PUSH_SW_E]

# Bank: 33 - IO_L1P_T0_33
# set_property PACKAGE_PIN AA12 [get_ports PUSH_SW_N]
# set_property IOSTANDARD LVCMOS15 [get_ports PUSH_SW_N]

# Bank: 33 - IO_L1N_T0_33
# set_property PACKAGE_PIN AB12 [get_ports PUSH_SW_S]
# set_property IOSTANDARD LVCMOS15 [get_ports PUSH_SW_S]

# Bank: 34 - IO_0_VRN_34
# set_property PACKAGE_PIN AC6 [get_ports PUSH_SW_W]
# set_property IOSTANDARD LVCMOS15 [get_ports PUSH_SW_W]

# Bank: 34 - IO_25_VRP_34
# set_property PACKAGE_PIN AB7 [get_ports CPU_RESET]
# set_property IOSTANDARD LVCMOS15 [get_ports CPU_RESET]

## GPIO DIP_SW

# Bank: 13 - IO_L4N_T0_13

# Bank: 13 - IO_L4P_T0_13

# Bank: 13 - IO_L3N_T0_DQS_13

# Bank: 13 - IO_L3P_T0_DQS_13
# set_property PACKAGE_PIN Y28 [get_ports {usr_sw_i[3]}]
# set_property IOSTANDARD LVCMOS25 [get_ports {usr_sw_i[3]}]

## GPIO LEDs

# GPIO Pins for LEDs:
# Note : Pins use two different voltage standards
set_property DRIVE 12 [get_ports {usr_led_o*}]
set_property SLEW SLOW [get_ports {usr_led_o*}]

set_property PACKAGE_PIN    AB8         [get_ports {usr_led_o[0]}]
set_property IOSTANDARD     LVCMOS15    [get_ports {usr_led_o[0]}]

set_property PACKAGE_PIN    AA8         [get_ports {usr_led_o[1]}]
set_property IOSTANDARD     LVCMOS15    [get_ports {usr_led_o[1]}]

set_property PACKAGE_PIN    AC9         [get_ports {usr_led_o[2]}]
set_property IOSTANDARD     LVCMOS15    [get_ports {usr_led_o[2]}]

set_property PACKAGE_PIN    AB9         [get_ports {usr_led_o[3]}]
set_property IOSTANDARD     LVCMOS15    [get_ports {usr_led_o[3]}]

set_property PACKAGE_PIN    AE26        [get_ports {usr_led_o[4]}]
set_property IOSTANDARD     LVCMOS25    [get_ports {usr_led_o[4]}]

set_property PACKAGE_PIN    G19         [get_ports {usr_led_o[5]}]
set_property IOSTANDARD     LVCMOS25    [get_ports {usr_led_o[5]}]

set_property PACKAGE_PIN    E18         [get_ports {usr_led_o[6]}]
set_property IOSTANDARD     LVCMOS25    [get_ports {usr_led_o[6]}]

set_property PACKAGE_PIN    F16         [get_ports {usr_led_o[7]}]
set_property IOSTANDARD     LVCMOS25    [get_ports {usr_led_o[7]}]

## GPIO USER SMA

# Bank: 12 - IO_L1P_T0_12
#set_property PACKAGE_PIN Y24 [get_ports SMA_N]
#set_property IOSTANDARD LVCMOS25 [get_ports SMA_N]

# Bank: 12 - IO_L1N_T0_12
#set_property PACKAGE_PIN Y23 [get_ports SMA_P]
#set_property IOSTANDARD LVCMOS25 [get_ports SMA_P]


