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

-- DATE "08/23/2021 16:33:16"

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
	cuenta : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END contador_6_fpga;

-- Design Ports Information
-- cuenta[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[11]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[12]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_cuenta : std_logic_vector(13 DOWNTO 0);
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
SIGNAL \seg1|Mux6~0_combout\ : std_logic;
SIGNAL \seg1|Mux5~0_combout\ : std_logic;
SIGNAL \seg1|Mux4~0_combout\ : std_logic;
SIGNAL \seg1|Mux3~0_combout\ : std_logic;
SIGNAL \seg1|Mux2~0_combout\ : std_logic;
SIGNAL \seg1|Mux1~0_combout\ : std_logic;
SIGNAL \seg1|Mux0~0_combout\ : std_logic;
SIGNAL \cuenta_reg[4]~4_combout\ : std_logic;
SIGNAL \cuenta_reg[5]~3_combout\ : std_logic;
SIGNAL \seg2|Mux5~0_combout\ : std_logic;
SIGNAL \seg2|Mux0~0_combout\ : std_logic;
SIGNAL \seg2|Mux0~1_combout\ : std_logic;
SIGNAL cuenta_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cuenta_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL ALT_INV_cuenta_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \seg1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
cuenta <= ww_cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cuenta_reg[3]~DUPLICATE_q\ <= NOT \cuenta_reg[3]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[2]~DUPLICATE_q\ <= NOT \cuenta_reg[2]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[1]~DUPLICATE_q\ <= NOT \cuenta_reg[1]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[0]~DUPLICATE_q\ <= NOT \cuenta_reg[0]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
ALT_INV_cuenta_reg(4) <= NOT cuenta_reg(4);
ALT_INV_cuenta_reg(5) <= NOT cuenta_reg(5);
\seg1|ALT_INV_Mux6~0_combout\ <= NOT \seg1|Mux6~0_combout\;
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
	i => \seg1|ALT_INV_Mux6~0_combout\,
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
	i => \seg1|Mux5~0_combout\,
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
	i => \seg1|Mux4~0_combout\,
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
	i => \seg1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(3));

-- Location: IOOBUF_X89_Y13_N56
\cuenta[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(4));

-- Location: IOOBUF_X89_Y13_N39
\cuenta[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(5));

-- Location: IOOBUF_X89_Y4_N96
\cuenta[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(6));

-- Location: IOOBUF_X89_Y6_N39
\cuenta[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_cuenta_reg(5),
	devoe => ww_devoe,
	o => ww_cuenta(7));

-- Location: IOOBUF_X89_Y6_N56
\cuenta[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(8));

-- Location: IOOBUF_X89_Y16_N39
\cuenta[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => cuenta_reg(4),
	devoe => ww_devoe,
	o => ww_cuenta(9));

-- Location: IOOBUF_X89_Y16_N56
\cuenta[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(10));

-- Location: IOOBUF_X89_Y15_N39
\cuenta[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(11));

-- Location: IOOBUF_X89_Y15_N56
\cuenta[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cuenta(12));

-- Location: IOOBUF_X89_Y8_N56
\cuenta[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_cuenta(13));

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

-- Location: LABCELL_X88_Y8_N30
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

-- Location: FF_X88_Y8_N32
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

-- Location: FF_X88_Y8_N31
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

-- Location: LABCELL_X88_Y8_N6
\cuenta_reg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[1]~0_combout\ = ( \cuenta_reg[0]~DUPLICATE_q\ & ( !cuenta_reg(1) ) ) # ( !\cuenta_reg[0]~DUPLICATE_q\ & ( cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cuenta_reg(1),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[1]~0_combout\);

-- Location: FF_X88_Y8_N7
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

-- Location: FF_X88_Y8_N8
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

-- Location: FF_X88_Y8_N16
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

-- Location: LABCELL_X88_Y8_N15
\cuenta_reg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[2]~1_combout\ = ( \cuenta_reg[0]~DUPLICATE_q\ & ( !\cuenta_reg[1]~DUPLICATE_q\ $ (!cuenta_reg(2)) ) ) # ( !\cuenta_reg[0]~DUPLICATE_q\ & ( cuenta_reg(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cuenta_reg[1]~DUPLICATE_q\,
	datad => ALT_INV_cuenta_reg(2),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[2]~1_combout\);

-- Location: FF_X88_Y8_N17
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

-- Location: FF_X88_Y8_N53
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

-- Location: LABCELL_X88_Y8_N51
\cuenta_reg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[3]~2_combout\ = ( \cuenta_reg[0]~DUPLICATE_q\ & ( !cuenta_reg(3) $ (((!\cuenta_reg[2]~DUPLICATE_q\) # (!\cuenta_reg[1]~DUPLICATE_q\))) ) ) # ( !\cuenta_reg[0]~DUPLICATE_q\ & ( cuenta_reg(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datac => \ALT_INV_cuenta_reg[1]~DUPLICATE_q\,
	datad => ALT_INV_cuenta_reg(3),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[3]~2_combout\);

-- Location: FF_X88_Y8_N52
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

-- Location: LABCELL_X88_Y8_N12
\seg1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux6~0_combout\ = ( cuenta_reg(2) & ( (!cuenta_reg(0) & ((!\cuenta_reg[3]~DUPLICATE_q\) # (cuenta_reg(1)))) # (cuenta_reg(0) & ((!cuenta_reg(1)) # (\cuenta_reg[3]~DUPLICATE_q\))) ) ) # ( !cuenta_reg(2) & ( (\cuenta_reg[3]~DUPLICATE_q\) # 
-- (cuenta_reg(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111101110011101111110111001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => ALT_INV_cuenta_reg(1),
	datad => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(2),
	combout => \seg1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\seg1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux5~0_combout\ = (!cuenta_reg(1) & (cuenta_reg(0) & (!\cuenta_reg[2]~DUPLICATE_q\ $ (\cuenta_reg[3]~DUPLICATE_q\)))) # (cuenta_reg(1) & (!\cuenta_reg[3]~DUPLICATE_q\ & ((!\cuenta_reg[2]~DUPLICATE_q\) # (cuenta_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100000010010011010000001001001101000000100100110100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(1),
	datab => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(0),
	datad => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	combout => \seg1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\seg1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux4~0_combout\ = ( cuenta_reg(1) & ( (cuenta_reg(0) & !\cuenta_reg[3]~DUPLICATE_q\) ) ) # ( !cuenta_reg(1) & ( (!cuenta_reg(2) & (cuenta_reg(0))) # (cuenta_reg(2) & ((!\cuenta_reg[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => ALT_INV_cuenta_reg(2),
	datac => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(1),
	combout => \seg1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\seg1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux3~0_combout\ = ( cuenta_reg(1) & ( (!cuenta_reg(2) & (!cuenta_reg(0) & \cuenta_reg[3]~DUPLICATE_q\)) # (cuenta_reg(2) & (cuenta_reg(0))) ) ) # ( !cuenta_reg(1) & ( (!\cuenta_reg[3]~DUPLICATE_q\ & (!cuenta_reg(2) $ (!cuenta_reg(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cuenta_reg(2),
	datac => ALT_INV_cuenta_reg(0),
	datad => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(1),
	combout => \seg1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\seg1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux2~0_combout\ = (!cuenta_reg(2) & (!cuenta_reg(0) & (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(1)))) # (cuenta_reg(2) & (\cuenta_reg[3]~DUPLICATE_q\ & ((!cuenta_reg(0)) # (cuenta_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => ALT_INV_cuenta_reg(2),
	datac => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datad => ALT_INV_cuenta_reg(1),
	combout => \seg1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\seg1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux1~0_combout\ = ( cuenta_reg(1) & ( (!cuenta_reg(0) & (cuenta_reg(2))) # (cuenta_reg(0) & ((\cuenta_reg[3]~DUPLICATE_q\))) ) ) # ( !cuenta_reg(1) & ( (cuenta_reg(2) & (!cuenta_reg(0) $ (!\cuenta_reg[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => ALT_INV_cuenta_reg(2),
	datad => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(1),
	combout => \seg1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N3
\seg1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux0~0_combout\ = ( cuenta_reg(1) & ( (cuenta_reg(0) & (!cuenta_reg(2) & \cuenta_reg[3]~DUPLICATE_q\)) ) ) # ( !cuenta_reg(1) & ( (!cuenta_reg(0) & (cuenta_reg(2) & !\cuenta_reg[3]~DUPLICATE_q\)) # (cuenta_reg(0) & (!cuenta_reg(2) $ 
-- (\cuenta_reg[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => ALT_INV_cuenta_reg(2),
	datac => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(1),
	combout => \seg1|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N27
\cuenta_reg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[4]~4_combout\ = ( cuenta_reg(4) & ( \cuenta_reg[1]~DUPLICATE_q\ & ( (!cuenta_reg(3)) # ((!\cuenta_reg[2]~DUPLICATE_q\) # (!cuenta_reg(0))) ) ) ) # ( !cuenta_reg(4) & ( \cuenta_reg[1]~DUPLICATE_q\ & ( (cuenta_reg(3) & 
-- (\cuenta_reg[2]~DUPLICATE_q\ & cuenta_reg(0))) ) ) ) # ( cuenta_reg(4) & ( !\cuenta_reg[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(3),
	datab => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(0),
	datae => ALT_INV_cuenta_reg(4),
	dataf => \ALT_INV_cuenta_reg[1]~DUPLICATE_q\,
	combout => \cuenta_reg[4]~4_combout\);

-- Location: FF_X88_Y8_N29
\cuenta_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(4));

-- Location: LABCELL_X88_Y8_N54
\cuenta_reg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[5]~3_combout\ = ( cuenta_reg(5) & ( \cuenta_reg[1]~DUPLICATE_q\ & ( (!cuenta_reg(3)) # ((!\cuenta_reg[2]~DUPLICATE_q\) # ((!cuenta_reg(4)) # (!cuenta_reg(0)))) ) ) ) # ( !cuenta_reg(5) & ( \cuenta_reg[1]~DUPLICATE_q\ & ( (cuenta_reg(3) & 
-- (\cuenta_reg[2]~DUPLICATE_q\ & (cuenta_reg(4) & cuenta_reg(0)))) ) ) ) # ( cuenta_reg(5) & ( !\cuenta_reg[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(3),
	datab => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(4),
	datad => ALT_INV_cuenta_reg(0),
	datae => ALT_INV_cuenta_reg(5),
	dataf => \ALT_INV_cuenta_reg[1]~DUPLICATE_q\,
	combout => \cuenta_reg[5]~3_combout\);

-- Location: FF_X88_Y8_N55
\cuenta_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[5]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(5));

-- Location: LABCELL_X88_Y8_N45
\seg2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux5~0_combout\ = (cuenta_reg(5)) # (cuenta_reg(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(4),
	datab => ALT_INV_cuenta_reg(5),
	combout => \seg2|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\seg2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux0~0_combout\ = (cuenta_reg(4) & !cuenta_reg(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(4),
	datab => ALT_INV_cuenta_reg(5),
	combout => \seg2|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\seg2|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux0~1_combout\ = ( cuenta_reg(5) & ( !cuenta_reg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cuenta_reg(4),
	datae => ALT_INV_cuenta_reg(5),
	combout => \seg2|Mux0~1_combout\);

-- Location: MLABCELL_X28_Y24_N3
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


