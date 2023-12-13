onerror {quit -f}
vlib work
vlog -work work decoder2_4.vo
vlog -work work decoder2_4.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder2_4_vlg_vec_tst
vcd file -direction decoder2_4.msim.vcd
vcd add -internal decoder2_4_vlg_vec_tst/*
vcd add -internal decoder2_4_vlg_vec_tst/i1/*
add wave /*
run -all
