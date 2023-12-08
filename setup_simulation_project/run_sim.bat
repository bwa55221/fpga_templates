@REM @echo off

:: setup directory structures
SET SETUP_DIR=C:\Users\Brandon\Documents\Git_Repositories\fpga_templates\setup_simulation_project

:: check if questa path exists, add to path
IF EXIST :\intelFPGA_pro\23.3\questa_fe\win64 SET PATH=%PATH%;C:\intelFPGA_pro\23.3\questa_fe\win64

:: start Questa simulator, run simulator setup script
start "" vsim.exe -do "%SETUP_DIR%\simulation_script.tcl" 

@REM https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/commands-to-invoke.html

:: other useful links

:: https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/generating-a-msim-setup-tcl-simulation.html
:: https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/example-my-sim-tcl-simulation-script.html



@REM vsim.exe -do C:\Users\Brandon\Documents\Git_Repositories\fpga_templates\setup_simulation_project\simulation_script.tcl