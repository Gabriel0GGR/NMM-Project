onerror {quit -f}
vlib work
vlog -work work nmm.vo
vlog -work work nmm.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.nmm_vlg_vec_tst
vcd file -direction nmm.msim.vcd
vcd add -internal nmm_vlg_vec_tst/*
vcd add -internal nmm_vlg_vec_tst/i1/*
add wave /*
run -all
