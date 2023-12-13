onerror {exit -code 1}
vlib work
vlog -work work clk_multiplier.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.clk_multiplier_vlg_vec_tst -voptargs="+acc"
vcd file -direction clk_multiplier.msim.vcd
vcd add -internal clk_multiplier_vlg_vec_tst/*
vcd add -internal clk_multiplier_vlg_vec_tst/i1/*
run -all
quit -f
