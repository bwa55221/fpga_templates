@echo off

:: get template directory 
set TEMPLATE_DIR=%cd%

:: setup directory structures from file
for /f "delims== tokens=1,2 EOL=#" %%G in (params.txt) do set %%G=%%H

:: check if quartus binary path exists, add to path
IF EXIST %QUARTUS_BINARY_DIR% SET PATH=%PATH%;%QUARTUS_BINARY_DIR%

:: create new directory for test project
md %QUARTUS_PROJECT_DIR%

:: copy over params file used for creation (good for record)
xcopy params.txt %QUARTUS_PROJECT_DIR%

:: go to new project directory and run the setup template script
cd %QUARTUS_PROJECT_DIR%

:: execute setup script inside test project directory
quartus_sh -t "%TEMPLATE_DIR%\%SETUP_SCRIPT%"

:: launch quartus 
start "" quartus 

pause