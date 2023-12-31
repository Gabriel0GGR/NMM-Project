onerror {exit -code 1}
vlib work
vlog -work work controller.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.controller_vlg_vec_tst -voptargs="+acc"
vcd file -direction controller.msim.vcd
vcd add -internal controller_vlg_vec_tst/*
vcd add -internal controller_vlg_vec_tst/i1/*
run -all
quit -f
