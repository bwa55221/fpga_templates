::@echo off

set optionFlag=/h

@echo off
set repoDir=C:\Users\Brandon\Documents\Git Repositories\ssl_debug\
set projDir=C:\Users\Brandon\Documents\Development_Drive\SSL\pcie_standalone\
set PlatformName=pcie_sys

echo Creating hard link to project QSF file...
set filename=pcie_test.qsf
@REM mklink %optionFlag% "%repoDir%synthesis\%filename%" "%projDir%%filename%"
echo Done creating link\n

@REM echo Creating hard link to project timing constraints...
@REM set filename=de10_nano_standalone.sdc
@REM mklink /h "%repoDir%synthesis\%filename%" "%projDir%%filename%"

echo Creating hard link to Platform Designer .qsys file...
set filename=pcie_sys.qsys
@REM mklink %optionFlag% "%repoDir%synthesis\%filename%" "%projDir%%filename%"
echo Done creating link

echo Creating hard link to Platform Designer generated HDL file...
set filename=%PlatformName%.vhd
@REM mklink %optionFlag% "%repoDir%hdl\%filename%" "%projDir%%PlatformName%\synth\%filename%"
echo Done creating link
pause

