transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/segment7_deco.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/bin2bcd.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/Register.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/Counter.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/Comparator_mayor_equal.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/sumador_completo.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/restador_completo.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/calculo_tiempo_ingrediente.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/Counter_5.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/Mux_2_to_1.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/FSM.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/maquina_cafe_teorica.sv}
vlog -sv -work work +incdir+C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4 {C:/Users/samas/Documents/GitHub/Taller-de-Diseno-Gr14/Laboratorio-4/mocaccino_tb.sv}

