vlib work
vlog Lohovskyi_lab4.v
vsim work.Lohovskyi_lab4

add wave -position insertpoint sim:/Lohovskyi_lab4/*

force x3 2#0 0ns, 2#1 200ns, 2#0 400ns
force x2 2#0 0ns, 2#1 100ns, 2#0 200ns, 2#1 300ns, 2#0 400ns
force x1 2#0 0ns, 2#1 50ns, 2#0 100ns, 2#1 150ns, 2#0 200ns, 2#1 250ns, 2#0 300ns, 2#1 350ns, 2#0 400ns

run 500ns
