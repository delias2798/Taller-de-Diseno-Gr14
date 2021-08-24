transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/bin_6_to_bcd.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/to_7seg.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_n.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_2_tb.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_4_tb.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_6_tb.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_6_fpga.vhd}
vcom -93 -work work {C:/Users/samas/Documents/quartusProjects/Lab2/Problema3/contador_6_tb2.vhd}

