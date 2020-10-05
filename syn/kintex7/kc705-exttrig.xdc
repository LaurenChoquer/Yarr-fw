###########################################################
# RD53A signals
###########################################################
#FMC_HPC_LA31_P (DPA0_p)
set_property PACKAGE_PIN G22 [get_ports {fe_data_p[0]}]
#FMC_HPC_LA32_P (DPA1_p)
set_property PACKAGE_PIN D21 [get_ports {fe_data_p[1]}]
#FMC_HPC_LA30_P (DPA2_p)
set_property PACKAGE_PIN D22 [get_ports {fe_data_p[2]}]
#FMC_HPC_LA28_P (DPA3_p)
set_property PACKAGE_PIN D16 [get_ports {fe_data_p[3]}]
#FMC_HPC_LA33_P (DPA4_p)
set_property PACKAGE_PIN H21 [get_ports {fe_cmd_p[0]}]

#FMC_HPC_LA21_P (DPB0_p)
set_property PACKAGE_PIN A20 [get_ports {fe_data_p[4]}]
#FMC_HPC_LA29_P (DPB1_p)
set_property PACKAGE_PIN C17 [get_ports {fe_data_p[5]}]
#FMC_HPC_LA25_P (DPB2_p)
set_property PACKAGE_PIN G17 [get_ports {fe_data_p[6]}]
#FMC_HPC_LA22_P (DPB3_p)
set_property PACKAGE_PIN C20 [get_ports {fe_data_p[7]}]
#FMC_HPC_LA24_P (DPB4_p)
set_property PACKAGE_PIN A16 [get_ports {fe_cmd_p[1]}]

#FMC_HPC_LA12_P (DPC0_p)
set_property PACKAGE_PIN C29 [get_ports {fe_data_p[8]}]
#FMC_HPC_LA15_P (DPC1_p)
set_property PACKAGE_PIN C24 [get_ports {fe_data_p[9]}]
#FMC_HPC_LA11_P (DPC2_p)
set_property PACKAGE_PIN G27 [get_ports {fe_data_p[10]}]
#FMC_HPC_LA07_P (DPC3_p)
set_property PACKAGE_PIN E28 [get_ports {fe_data_p[11]}]
#FMC_HPC_LA16_P (DPC4_p)
set_property PACKAGE_PIN B27 [get_ports {fe_cmd_p[2]}]

#FMC_HPC_LA02_P (DPD0_p)
set_property PACKAGE_PIN H24 [get_ports {fe_data_p[12]}]
#FMC_HPC_LA08_P (DPD1_p)
set_property PACKAGE_PIN E29 [get_ports {fe_data_p[13]}]
#FMC_HPC_LA03_P (DPD2_p)
set_property PACKAGE_PIN H26 [get_ports {fe_data_p[14]}]
#FMC_HPC_LA00_CC_P (DPD3_p)
set_property PACKAGE_PIN C25 [get_ports {fe_data_p[15]}]
#FMC_HPC_LA04_P (DPD4_p)
set_property PACKAGE_PIN G28 [get_ports {fe_cmd_p[3]}]

#FMC_LPC_LA31_P (DPA0_p)
set_property PACKAGE_PIN AD29 [get_ports {fe_data_p[16]}]
#FMC_LPC_LA32_P (DPA1_p)
set_property PACKAGE_PIN Y30  [get_ports {fe_data_p[17]}]
#FMC_LPC_LA30_P (DPA2_p)
set_property PACKAGE_PIN AB29 [get_ports {fe_data_p[18]}]
#FMC_LPC_LA28_P (DPA3_p)
set_property PACKAGE_PIN AE30 [get_ports {fe_data_p[19]}]
#FMC_LPC_LA33_P (DPA4_p)
set_property PACKAGE_PIN AC29 [get_ports {fe_cmd_p[4]}]

##FMC_LPC_LA21_P (DPB0_p)
#set_property PACKAGE_PIN AG27 [get_ports {fe_data_p[20]}]
##FMC_LPC_LA29_P (DPB1_p)
#set_property PACKAGE_PIN AE28 [get_ports {fe_data_p[21]}]
##FMC_LPC_LA25_P (DPB2_p)
#set_property PACKAGE_PIN AC26 [get_ports {fe_data_p[22]}]
##FMC_LPC_LA22_P (DPB3_p)
#set_property PACKAGE_PIN AJ27 [get_ports {fe_data_p[23]}]
##FMC_LPC_LA24_P (DPB4_p)
#set_property PACKAGE_PIN AG30 [get_ports {fe_cmd_p[5]}]
#
##FMC_LPC_LA12_P (DPC0_p)
#set_property PACKAGE_PIN AA20 [get_ports {fe_data_p[24]}]
##FMC_LPC_LA15_P (DPC1_p)
#set_property PACKAGE_PIN AC24 [get_ports {fe_data_p[25]}]
##FMC_LPC_LA11_P (DPC2_p)
#set_property PACKAGE_PIN AE25 [get_ports {fe_data_p[26]}]
##FMC_LPC_LA07_P (DPC3_p)
#set_property PACKAGE_PIN AG25 [get_ports {fe_data_p[27]}]
##FMC_LPC_LA16_P (DPC4_p)
#set_property PACKAGE_PIN AC22 [get_ports {fe_cmd_p[6]}]
#
##FMC_LPC_LA02_P (DPD0_p)
#set_property PACKAGE_PIN AF20 [get_ports {fe_data_p[28]}]
##FMC_LPC_LA08_P (DPD1_p)
#set_property PACKAGE_PIN AJ22 [get_ports {fe_data_p[29]}]
##FMC_LPC_LA03_P (DPD2_p)
#set_property PACKAGE_PIN AG20 [get_ports {fe_data_p[30]}]
##FMC_LPC_LA00_cc_P (DPD3_p)
#set_property PACKAGE_PIN AD23 [get_ports {fe_data_p[31]}]
##FMC_LPC_LA04_P (DPD4_p)
#set_property PACKAGE_PIN AH21 [get_ports {fe_cmd_p[7]}]

#Output standard for fe_data*
set_property IOSTANDARD LVDS_25 [get_ports fe_data_*]
set_property DIFF_TERM TRUE [get_ports fe_data_*]
set_property IBUF_LOW_PWR FALSE [get_ports fe_data_*]

#Output standard for fe_cmd*
set_property IOSTANDARD LVDS_25 [get_ports fe_cmd_*]
#set_property SLEW FAST [get_ports fe_cmd*]

###########################################################
# fe_clk_* is instantiated but not actuary used for RD53A
# connected to harmless ports...
###########################################################
#FMC_HPC_LA20_P
set_property PACKAGE_PIN E19 [get_ports {fe_clk_p[0]}]
#FMC_HPC_LA23_P
set_property PACKAGE_PIN B22 [get_ports {fe_clk_p[1]}]
#FMC_HPC_LA26_P
set_property PACKAGE_PIN B18 [get_ports {fe_clk_p[2]}]
#FMC_HPC_LA27_P
set_property PACKAGE_PIN C19 [get_ports {fe_clk_p[3]}]

##FMC_LPC_LA20_P
#set_property PACKAGE_PIN AF26 [get_ports {fe_clk_p[4]}]
##FMC_LPC_LA23_P
#set_property PACKAGE_PIN AH26 [get_ports {fe_clk_p[5]}]
##FMC_LPC_LA26_P
#set_property PACKAGE_PIN AK29 [get_ports {fe_clk_p[6]}]
##FMC_LPC_LA27_P
#set_property PACKAGE_PIN AJ28 [get_ports {fe_clk_p[7]}]

#Output standard for fe_clk*
set_property IOSTANDARD LVDS_25 [get_ports fe_clk_*]
#set_property SLEW FAST [get_ports fe_clk*]

###########################################################
# Other control signals
###########################################################
#FMC_HPC_LA05_p
set_property PACKAGE_PIN G29 [get_ports {latch_o}]
#FMC_HPC_LA05_n
set_property PACKAGE_PIN F30 [get_ports {sdi_i}]
#FMC_HPC_LA13_p
set_property PACKAGE_PIN A25 [get_ports {sda_o}]
#FMC_HPC_LA13_n
set_property PACKAGE_PIN A26 [get_ports {scl_o}]

##FMC_LPC_LA05_p
#set_property PACKAGE_PIN AG22 [get_ports {latch_o[1]}]
##FMC_LPC_LA05_n
#set_property PACKAGE_PIN AH22 [get_ports {sdi_i[1]}]
##FMC_LPC_LA13_p
#set_property PACKAGE_PIN AB24 [get_ports {sda_o[1]}]
##FMC_LPC_LA13_n
#set_property PACKAGE_PIN AC25 [get_ports {scl_o[1]}]

##FMC_HPC_LA17_cc_p
#set_property PACKAGE_PIN AB27 [get_ports {sda_io}]
##FMC_HPC_LA17_cc_n
#set_property PACKAGE_PIN AC27 [get_ports {scl_io}]

#Output standard for above signals
set_property IOSTANDARD LVCMOS25 [get_ports {scl_o*}]
set_property IOSTANDARD LVCMOS25 [get_ports {sda_o*}]
set_property IOSTANDARD LVCMOS25 [get_ports {latch_o*}]
set_property IOSTANDARD LVCMOS25 [get_ports {sdi_i*}]
#set_property IOSTANDARD LVCMOS25 [get_ports {sda_io}]
#set_property IOSTANDARD LVCMOS25 [get_ports {scl_io}]

##########################
# Fix below for KC705!!
##########################
##FMC_HPC_LA01_cc_p
##FMC_HPC_LA01_cc_n
#set_property PACKAGE_PIN AE23 [get_ports {ext_trig_i_p[0]}]
#set_property PACKAGE_PIN AF23 [get_ports {ext_trig_i_n[0]}]
##FMC_HPC_LA06_p
##FMC_HPC_LA06_n
#set_property PACKAGE_PIN AK20 [get_ports {ext_trig_i_p[1]}]
#set_property PACKAGE_PIN AK21 [get_ports {ext_trig_i_n[1]}]
##FMC_HPC_LA09_p
##FMC_HPC_LA09_n
#set_property PACKAGE_PIN AK23 [get_ports {ext_trig_i_p[2]}]
#set_property PACKAGE_PIN AK24 [get_ports {ext_trig_i_n[2]}]
##FMC_HPC_LA10_p
##FMC_HPC_LA10_n
#set_property PACKAGE_PIN AJ24 [get_ports {ext_trig_i_p[3]}]
#set_property PACKAGE_PIN AK25 [get_ports {ext_trig_i_n[3]}]
##FMC_HPC_LA14_p
##FMC_HPC_LA14_n
#set_property PACKAGE_PIN AD21 [get_ports {eudet_trig_p}]
#set_property PACKAGE_PIN AE21 [get_ports {eudet_trig_n}]
##FMC_HPC_LA18_p
##FMC_HPC_LA18_n
#set_property PACKAGE_PIN AD27 [get_ports {eudet_busy_p}]
#set_property PACKAGE_PIN AD28 [get_ports {eudet_busy_n}]
##FMC_HPC_LA19_p
##FMC_HPC_LA19_n
#set_property PACKAGE_PIN AJ26 [get_ports {eudet_clk_p}]
#set_property PACKAGE_PIN AK26 [get_ports {eudet_clk_n}]
#
#set_property IOSTANDARD LVDS_25 [get_ports ext_trig_*]
#set_property IOSTANDARD LVDS_25 [get_ports eudet_*]

#  Rising Edge Source Synchronous Outputs 
#
#  Source synchronous output interfaces can be constrained either by the max data skew
#  relative to the generated clock or by the destination device setup/hold requirements.
#
#  Max Skew Case:
#  The skew requirements for FPGA are known from system level analysis.
#
# forwarded                _____________        
# clock        ___________|             |_________
#                         |                        
#                 bre_skew|are_skew          
#                 <------>|<------>        
#           ______        |        ____________    
# data      ______XXXXXXXXXXXXXXXXX____________XXXXX
#
# Example of creating generated clock at clock output port
# create_generated_clock -name <gen_clock_name> -multiply_by 1 -source [get_pins <source_pin>] [get_ports <output_clock_port>]
# gen_clock_name is the name of forwarded clock here. It should be used below for defining "fwclk".	

set fwclk       	clk_160_s;	# forwarded clock name (generated using create_generated_clock at output clock port)
set fwclk_period 	6.25;	# forwarded clock period
set bre_skew 		-0.050;			# skew requirement before rising edge
set are_skew 		0.050;			# skew requirement after rising edge
set output_ports 	fe_cmd_*;	# list of output ports

# Output Delay Constraints
set_output_delay -clock $fwclk -max [expr $fwclk_period - $are_skew] [get_ports $output_ports];
set_output_delay -clock $fwclk -min $bre_skew                        [get_ports $output_ports];

# Report Timing Template
# report_timing -to [get_ports $output_ports] -max_paths 20 -nworst 1 -delay_type min_max -name src_sync_pos_out -file src_sync_pos_out.txt;



