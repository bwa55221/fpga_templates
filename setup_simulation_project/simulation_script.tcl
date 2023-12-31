# # Begin simulation script

transcript on

# define procedure to read in params file
proc readfile {filename} {
    set fp [open $filename r]
    set lines [split [read $fp] "\n"]
    # puts $lines
    close $fp

    foreach line $lines {
        if {[regexp {^[^#\r\n].*(?==)} $line var]} {

            if {[regexp {=.*$} $line val]} {
                set val [string trim $val "="]
                regsub -all {\\} $val / val
                puts "set $var $val"
                variable $var $val
            }
        } 
    }
}

# read in parameters
readfile params.txt

# set SOURCE_CODE_DIR "C:/Users/Brandon/Documents/Git_Repositories/ssl_debug"
# set QSYS_SIMDIR "C:/Users/Brandon/Documents/Development_Drive/SSL/simulation_proj"

# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR $SIM_PROJ_DIR
# #
# # Source the generated IP simulation script.
source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work $SOURCE_CODE_DIR/hdl/avmm_sync.vhd
vcom -2008 -work work $SOURCE_CODE_DIR/test/tb_avmm_sync.vhd

set TOP_LEVEL_NAME tb_avmm_sync

# vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  bram_cam_tb
vsim -t 1ps -L rtl_work -L work -voptargs="+acc"  tb_avmm_sync

add wave *
view structure
view signals
run -all