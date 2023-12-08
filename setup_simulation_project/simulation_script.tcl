transcript on

set SOURCE_DIR "C:/Users/Brandon/Documents/Git_Repositories/ssl_debug"

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Brandon/Documents/Git_Repositories/ssl_debug/hdl/avmm_sync.vhd}

vcom -2008 -work work {C:/Users/Brandon/Documents/Git_Repositories/ssl_debug/hdl/tb_avmm_sync.vhd}

# vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  bram_cam_tb
vsim -t 1ps -L rtl_work -L work -voptargs="+acc"  tb_avmm_sync

add wave *
view structure
view signals
run -all