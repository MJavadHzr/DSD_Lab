onerror {quit -f}
vlib work
vlog -work work schematic_comb.vo
vlog -work work schematic_comb.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.top_module_vlg_vec_tst
vcd file -direction schematic_comb.msim.vcd
vcd add -internal top_module_vlg_vec_tst/*
vcd add -internal top_module_vlg_vec_tst/i1/*
add wave /*
run -all
