####################################################################################
############################# DEFINE USER PARAMS ###################################
####################################################################################

set SOURCE_DIR "C:/Users/Brandon/Documents/Git_Repositories/ssl_debug"
# set FSS_HDL_DIR "C:/Users/Brandon/Documents/Git_Repositories/fss_logic"
# set IP_DIR "C:/Users/Brandon/Documents/Git_Repositories/ssl_debug/synthesis/ip"
set PROJ_NAME "simulation_proj"
set TOP_LEVEL_FILE "avmm_sync"

# note: the overwrite flag overwrites any .qsf if it exists
project_new ${PROJ_NAME} -overwrite 

set_global_assignment -name TOP_LEVEL_ENTITY ${TOP_LEVEL_FILE}
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name DEVICE AGFB014R24B2E2V
set_global_assignment -name FAMILY "Agilex 7"

####################################################################################
########################### SIMULATION SETTINGS ####################################
####################################################################################

set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (VHDL)"
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation

####################################################################################
################################# ADD FILES ########################################
####################################################################################

set_global_assignment -name VHDL_FILE "${SOURCE_DIR}/hdl/avmm_sync.vhd"


# set_global_assignment -name QSYS_FILE "${SOURCE_DIR}/synthesis/pcie_sys.qsys"

# example add IP and corresponding VHDL synthesis file
# set_global_assignment -name IP_FILE "${IP_DIR}/sram_cell.ip"
# set_global_assignment -name VHDL_FILE "${IP_DIR}/sram_cell/synth/sram_cell.vhd"


####################################################################################
########################### Signal Tap & Debug #####################################
####################################################################################

# set_global_assignment -name ENABLE_SIGNALTAP ON
# set_global_assignment -name USE_SIGNALTAP_FILE "${SOURCE_DIR}/stp1.stp"
# set_global_assignment -name SIGNALTAP_FILE "${SOURCE_DIR}/stp1.stp"

####################################################################################
############################## Virtual Pins ########################################
####################################################################################

# set_instance_assignment -name VIRTUAL_PIN ON -to pcie_p0_bam_master_waitrequest


####################################################################################
########################### ADDITIONAL SDM SETTINGS ################################
####################################################################################

set_global_assignment -name AUTO_RESTART_CONFIGURATION OFF
#set_global_assignment -name USE_CVP_CONFDONE SDM_IO15
set_global_assignment -name USE_CVP_CONFDONE SDM_IO10
set_global_assignment -name DEVICE_INITIALIZATION_CLOCK OSC_CLK_1_125MHZ
set_global_assignment -name PWRMGT_PAGE_COMMAND_ENABLE OFF
set_global_assignment -name PWRMGT_VOLTAGE_OUTPUT_FORMAT "LINEAR FORMAT"
set_global_assignment -name PWRMGT_LINEAR_FORMAT_N "-13"
set_global_assignment -name USE_INIT_DONE SDM_IO0
set_global_assignment -name POWER_APPLY_THERMAL_MARGIN ADDITIONAL

####################################################################################
####################################################################################
########################## PIN ASSIGNMENTS FROM GHRD ###############################
####################################################################################
####################################################################################

# set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
# set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
# set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
# set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "ACTIVE SERIAL X4"
# set_global_assignment -name USE_CONFIGURATION_DEVICE ON
# set_global_assignment -name GENERATE_PR_RBF_FILE ON
# set_global_assignment -name ENABLE_ED_CRC_CHECK ON
# set_global_assignment -name MINIMUM_SEU_INTERVAL 0
# set_global_assignment -name PWRMGT_SLAVE_DEVICE_TYPE ED8401
# set_global_assignment -name PWRMGT_SLAVE_DEVICE0_ADDRESS 47
# set_global_assignment -name PWRMGT_SLAVE_DEVICE1_ADDRESS 00
# set_global_assignment -name PWRMGT_SLAVE_DEVICE2_ADDRESS 00
# set_global_assignment -name ACTIVE_SERIAL_CLOCK AS_FREQ_100MHZ
# set_global_assignment -name USE_PWRMGT_SCL SDM_IO14
# set_global_assignment -name USE_PWRMGT_SDA SDM_IO11
# set_global_assignment -name USE_CONF_DONE SDM_IO16

####################################################################################
####################################################################################
########################## END ASSIGNMENTS FROM GHRD ###############################
####################################################################################
####################################################################################

project_close

