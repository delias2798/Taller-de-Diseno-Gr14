transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_xor_n.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_or_n.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/sumador_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/sumador_n.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/restador_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/restador_n.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/shift_right.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/shift_left.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/ALU.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/ALU_tb.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_and_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_or_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_xor_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-3/Problema1/compuerta_and_n.sv}

