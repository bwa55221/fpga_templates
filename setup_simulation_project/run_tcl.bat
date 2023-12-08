@REM @echo off
:: setup directory structures
SET SETUP_DIR=C:\Users\Brandon\Documents\Git_Repositories\fpga_templates\setup_simulation_project
SET PROJECT_DIR=C:\Users\Brandon\Documents\Development_Drive\SSL\simulation_proj

:: check if quartus binary path exists, add to path
IF EXIST C:\intelFPGA_pro\23.3\quartus\bin64 SET PATH=%PATH%;C:\intelFPGA_pro\23.3\quartus\bin64

:: create new directory for test project
md %PROJECT_DIR%
cd %PROJECT_DIR%

:: copy QSYS files into test project directory
@REM copy "%GIT_DIR%\synthesis\pcie_sys.qsys" "%PROJECT_DIR%\pcie_sys.qsys"

:: execute setup script inside test project directory
quartus_sh -t "%SETUP_DIR%\setup_proj.tcl"


:: launch quartus 
start "" quartus 

pause