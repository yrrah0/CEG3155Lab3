onerror {quit -f}
vlib work
vlog -work work TrafficLight.vo
vlog -work work TrafficLight.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.testBench_vlg_vec_tst
vcd file -direction TrafficLight.msim.vcd
vcd add -internal testBench_vlg_vec_tst/*
vcd add -internal testBench_vlg_vec_tst/i1/*
add wave /*
run -all
