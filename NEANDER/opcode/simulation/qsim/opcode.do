onerror {quit -f}
vlib work
vlog -work work opcode.vo
vlog -work work opcode.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RegOpcode_vlg_vec_tst
vcd file -direction opcode.msim.vcd
vcd add -internal RegOpcode_vlg_vec_tst/*
vcd add -internal RegOpcode_vlg_vec_tst/i1/*
add wave /*
run -all
