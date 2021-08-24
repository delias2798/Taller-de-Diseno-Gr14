transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema2/sumador_1.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema2/sumador_4.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema2/sumador_4_tb.vhd}

