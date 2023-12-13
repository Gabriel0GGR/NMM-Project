vcom -work work Waveform2.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.controller_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
