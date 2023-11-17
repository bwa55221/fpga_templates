# note: the overwrite flag overwrites any .qsf if it exists
project_new test_proj -overwrite 

set_global_assignment -name TOP_LEVEL_ENTITY pcie_sys_top_level
# set_global_assignment -name ORIGINAL_QUARTUS_VERSION 23.3.0
# set_global_assignment -name PROJECT_CREATION_TIME_DATE "17:59:18  OCTOBER 10, 2023"
# set_global_assignment -name LAST_QUARTUS_VERSION "23.3.0 Pro Edition"
# set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
#set_global_assignment -name DEVICE AGFB014R24A2E3VR0
#set_global_assignment -name DEVICE AGFB014R24A2E2VR0
#set_global_assignment -name DEVICE AGFB014R24A2E2V
set_global_assignment -name DEVICE AGFB014R24B2E2V
set_global_assignment -name FAMILY "Agilex 7"

set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "ACTIVE SERIAL X4"
set_global_assignment -name USE_CONFIGURATION_DEVICE ON
set_global_assignment -name GENERATE_PR_RBF_FILE ON
set_global_assignment -name ENABLE_ED_CRC_CHECK ON
set_global_assignment -name MINIMUM_SEU_INTERVAL 0
set_global_assignment -name PWRMGT_SLAVE_DEVICE_TYPE ED8401
set_global_assignment -name PWRMGT_SLAVE_DEVICE0_ADDRESS 47
set_global_assignment -name PWRMGT_SLAVE_DEVICE1_ADDRESS 00
set_global_assignment -name PWRMGT_SLAVE_DEVICE2_ADDRESS 00
set_global_assignment -name ACTIVE_SERIAL_CLOCK AS_FREQ_100MHZ
set_global_assignment -name USE_PWRMGT_SCL SDM_IO14
set_global_assignment -name USE_PWRMGT_SDA SDM_IO11
set_global_assignment -name USE_CONF_DONE SDM_IO16

project_close

