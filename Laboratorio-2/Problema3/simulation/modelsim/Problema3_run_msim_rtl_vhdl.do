transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_n.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_6_tb.vhd}
