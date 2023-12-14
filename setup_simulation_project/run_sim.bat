@REM @echo off

:: setup directory structures from file
for /f "delims== tokens=1,2 EOL=#" %%G in (sim_params.txt) do set %%G=%%H

:: check if questa path exists, add to path
IF EXIST %QUESTA_BINARY_DIR% SET PATH=%PATH%;%QUESTA_BINARY_DIR%

:: copy sim params into simulation artifact directory
xcopy params.txt %SIM_ARTIFACTS_DIR%

:: move to simulation directory
cd %SIM_ARTIFACTS_DIR%

:: start Questa simulator, run simulator setup script
start "" vsim.exe -do "%SOURCE_CODE_DIR%\%SIM_SCRIPT%" 

@REM pause

:: other useful links
:: https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/commands-to-invoke.html
:: https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/generating-a-msim-setup-tcl-simulation.html
:: https://www.intel.com/content/www/us/en/docs/programmable/730191/23-2/example-my-sim-tcl-simulation-script.html