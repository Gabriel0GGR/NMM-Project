onerror {exit -code 1}
vlib work
vlog -work work nmm_qsim.vo
vlog -work work Waveform4.vwf.vt
vsim -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.nmm_vlg_vec_tst
vcd file -direction nmm.msim.vcd
vcd add -internal nmm_vlg_vec_tst/*
vcd add -internal nmm_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

