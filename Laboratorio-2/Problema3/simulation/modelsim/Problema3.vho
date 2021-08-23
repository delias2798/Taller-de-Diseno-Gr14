-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/23/2021 15:37:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador_6_fpga IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	cuenta : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END contador_6_fpga;

-- Design Ports Information
-- cuenta[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[4]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_6_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_cuenta : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cuenta_reg[0]~5_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cuenta_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[1]~0_combout\ : std_logic;
SIGNAL \cuenta_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[2]~1_combout\ : std_logic;
SIGNAL \cuenta_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[3]~2_combout\ : std_logic;
SIGNAL \cuenta_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[4]~3_combout\ : std_logic;
SIGNAL \cuenta_reg[4]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[5]~4_combout\ : std_logic;
SIGNAL cuenta_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cuenta_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL ALT_INV_cuenta_reg : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
cuenta <= ww_cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cuenta_reg[2]~DUPLICATE_q\ <= NOT \cuenta_reg[2]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[0]~DUPLICATE_q\ <= NOT \cuenta_reg[0]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
ALT_INV_cuenta_reg(5) <= NOT cuenta_reg(5);
ALT_INV_cuenta_reg(4) <= NOT cuenta_reg(4);
ALT_INV_cuenta_reg(3) <= NOT cuenta_reg(3);
ALT_INV_cuenta_reg(2) <= NOT cuenta_reg(2);
ALT_INV_cuenta_reg(1) <= NOT cuenta_reg(1);
ALT_INV_cuenta_reg(0) <= NOT cuenta_reg(0);

-- Location: IOOBUF_X89_Y8_N39
\cuenta[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta_reg(0),
	devoe => ww_devoe,
	o => ww_cuenta(0));

-- Location: IOOBUF_X89_Y11_N79
\cuenta[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta_reg[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_cuenta(1));

-- Location: IOOBUF_X89_Y11_N96
\cuenta[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta_reg[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_cuenta(2));

-- Location: IOOBUF_X89_Y4_N79
\cuenta[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta_reg[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_cuenta(3));

-- Location: IOOBUF_X89_Y6_N39
\cuenta[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta_reg[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_cuenta(4));

-- Location: IOOBUF_X89_Y6_N56
\cuenta[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta_reg(5),
	devoe => ww_devoe,
	o => ww_cuenta(5));

-- Location: IOIBUF_X36_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y8_N54
\cuenta_reg[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[0]~5_combout\ = ( !cuenta_reg(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cuenta_reg(0),
	combout => \cuenta_reg[0]~5_combout\);

-- Location: IOIBUF_X12_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X88_Y8_N55
\cuenta_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(0));

-- Location: FF_X88_Y8_N19
\cuenta_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(1));

-- Location: FF_X88_Y8_N56
\cuenta_reg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[0]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N18
\cuenta_reg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[1]~0_combout\ = ( !cuenta_reg(1) & ( \cuenta_reg[0]~DUPLICATE_q\ ) ) # ( cuenta_reg(1) & ( !\cuenta_reg[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cuenta_reg(1),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[1]~0_combout\);

-- Location: FF_X88_Y8_N20
\cuenta_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[1]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[1]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N53
\cuenta_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(2));

-- Location: LABCELL_X88_Y8_N51
\cuenta_reg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[2]~1_combout\ = ( cuenta_reg(2) & ( cuenta_reg(1) & ( !\cuenta_reg[0]~DUPLICATE_q\ ) ) ) # ( !cuenta_reg(2) & ( cuenta_reg(1) & ( \cuenta_reg[0]~DUPLICATE_q\ ) ) ) # ( cuenta_reg(2) & ( !cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	datae => ALT_INV_cuenta_reg(2),
	dataf => ALT_INV_cuenta_reg(1),
	combout => \cuenta_reg[2]~1_combout\);

-- Location: FF_X88_Y8_N52
\cuenta_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[2]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N35
\cuenta_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(3));

-- Location: LABCELL_X88_Y8_N33
\cuenta_reg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[3]~2_combout\ = ( cuenta_reg(3) & ( cuenta_reg(1) & ( (!cuenta_reg(2)) # (!\cuenta_reg[0]~DUPLICATE_q\) ) ) ) # ( !cuenta_reg(3) & ( cuenta_reg(1) & ( (cuenta_reg(2) & \cuenta_reg[0]~DUPLICATE_q\) ) ) ) # ( cuenta_reg(3) & ( !cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(2),
	datad => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	datae => ALT_INV_cuenta_reg(3),
	dataf => ALT_INV_cuenta_reg(1),
	combout => \cuenta_reg[3]~2_combout\);

-- Location: FF_X88_Y8_N34
\cuenta_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[3]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[3]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N44
\cuenta_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(4));

-- Location: LABCELL_X88_Y8_N42
\cuenta_reg[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[4]~3_combout\ = ( cuenta_reg(4) & ( cuenta_reg(1) & ( (!cuenta_reg(3)) # ((!\cuenta_reg[0]~DUPLICATE_q\) # (!\cuenta_reg[2]~DUPLICATE_q\)) ) ) ) # ( !cuenta_reg(4) & ( cuenta_reg(1) & ( (cuenta_reg(3) & (\cuenta_reg[0]~DUPLICATE_q\ & 
-- \cuenta_reg[2]~DUPLICATE_q\)) ) ) ) # ( cuenta_reg(4) & ( !cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(3),
	datac => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	datad => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datae => ALT_INV_cuenta_reg(4),
	dataf => ALT_INV_cuenta_reg(1),
	combout => \cuenta_reg[4]~3_combout\);

-- Location: FF_X88_Y8_N43
\cuenta_reg[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N24
\cuenta_reg[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[5]~4_combout\ = ( cuenta_reg(5) & ( cuenta_reg(1) & ( (!cuenta_reg(3)) # ((!cuenta_reg(4)) # ((!\cuenta_reg[0]~DUPLICATE_q\) # (!\cuenta_reg[2]~DUPLICATE_q\))) ) ) ) # ( !cuenta_reg(5) & ( cuenta_reg(1) & ( (cuenta_reg(3) & (cuenta_reg(4) & 
-- (\cuenta_reg[0]~DUPLICATE_q\ & \cuenta_reg[2]~DUPLICATE_q\))) ) ) ) # ( cuenta_reg(5) & ( !cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(3),
	datab => ALT_INV_cuenta_reg(4),
	datac => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	datad => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datae => ALT_INV_cuenta_reg(5),
	dataf => ALT_INV_cuenta_reg(1),
	combout => \cuenta_reg[5]~4_combout\);

-- Location: FF_X88_Y8_N25
\cuenta_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[5]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(5));

-- Location: LABCELL_X9_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


