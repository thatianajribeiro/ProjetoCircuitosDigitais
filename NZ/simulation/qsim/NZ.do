onerror {quit -f}
vlib work
vlog -work work NZ.vo
vlog -work work NZ.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Reg2bits_vlg_vec_tst
vcd file -direction NZ.msim.vcd
vcd add -internal Reg2bits_vlg_vec_tst/*
vcd add -internal Reg2bits_vlg_vec_tst/i1/*
add wave /*
run -all
