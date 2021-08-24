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

-- DATE "08/23/2021 18:15:13"

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
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END contador_6_fpga;

-- Design Ports Information
-- hex1[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \cuenta_reg[0]~5_combout\ : std_logic;
SIGNAL \cuenta_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[1]~2_combout\ : std_logic;
SIGNAL \cuenta_reg[2]~0_combout\ : std_logic;
SIGNAL \cuenta_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[3]~1_combout\ : std_logic;
SIGNAL \cuenta_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cuenta_reg[4]~4_combout\ : std_logic;
SIGNAL \cuenta_reg[5]~3_combout\ : std_logic;
SIGNAL \deco|Ram0~0_combout\ : std_logic;
SIGNAL \deco|Ram0~1_combout\ : std_logic;
SIGNAL \deco|Ram0~2_combout\ : std_logic;
SIGNAL \seg1|Mux6~0_combout\ : std_logic;
SIGNAL \seg1|Mux5~0_combout\ : std_logic;
SIGNAL \seg1|Mux4~0_combout\ : std_logic;
SIGNAL \seg1|Mux3~0_combout\ : std_logic;
SIGNAL \seg1|Mux2~0_combout\ : std_logic;
SIGNAL \seg1|Mux1~0_combout\ : std_logic;
SIGNAL \seg1|Mux0~0_combout\ : std_logic;
SIGNAL \deco|Ram0~5_combout\ : std_logic;
SIGNAL \deco|Ram0~3_combout\ : std_logic;
SIGNAL \deco|Ram0~4_combout\ : std_logic;
SIGNAL \seg2|Mux6~0_combout\ : std_logic;
SIGNAL \seg2|Mux5~0_combout\ : std_logic;
SIGNAL \seg2|Mux4~0_combout\ : std_logic;
SIGNAL \seg2|Mux3~0_combout\ : std_logic;
SIGNAL \seg2|Mux2~0_combout\ : std_logic;
SIGNAL \seg2|Mux1~0_combout\ : std_logic;
SIGNAL \seg2|Mux0~0_combout\ : std_logic;
SIGNAL cuenta_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \seg1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~2_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~1_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~0_combout\ : std_logic;
SIGNAL ALT_INV_cuenta_reg : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cuenta_reg[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cuenta_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \seg2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~5_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~4_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~3_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\seg1|ALT_INV_Mux6~0_combout\ <= NOT \seg1|Mux6~0_combout\;
\deco|ALT_INV_Ram0~2_combout\ <= NOT \deco|Ram0~2_combout\;
\deco|ALT_INV_Ram0~1_combout\ <= NOT \deco|Ram0~1_combout\;
\deco|ALT_INV_Ram0~0_combout\ <= NOT \deco|Ram0~0_combout\;
ALT_INV_cuenta_reg(4) <= NOT cuenta_reg(4);
ALT_INV_cuenta_reg(5) <= NOT cuenta_reg(5);
ALT_INV_cuenta_reg(1) <= NOT cuenta_reg(1);
ALT_INV_cuenta_reg(3) <= NOT cuenta_reg(3);
ALT_INV_cuenta_reg(2) <= NOT cuenta_reg(2);
ALT_INV_cuenta_reg(0) <= NOT cuenta_reg(0);
\ALT_INV_cuenta_reg[3]~DUPLICATE_q\ <= NOT \cuenta_reg[3]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[2]~DUPLICATE_q\ <= NOT \cuenta_reg[2]~DUPLICATE_q\;
\ALT_INV_cuenta_reg[0]~DUPLICATE_q\ <= NOT \cuenta_reg[0]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\seg2|ALT_INV_Mux0~0_combout\ <= NOT \seg2|Mux0~0_combout\;
\deco|ALT_INV_Ram0~5_combout\ <= NOT \deco|Ram0~5_combout\;
\deco|ALT_INV_Ram0~4_combout\ <= NOT \deco|Ram0~4_combout\;
\deco|ALT_INV_Ram0~3_combout\ <= NOT \deco|Ram0~3_combout\;

-- Location: IOOBUF_X89_Y8_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y11_N79
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y11_N96
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y4_N79
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y13_N56
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y13_N39
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y4_N96
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X89_Y6_N39
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X89_Y6_N56
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X89_Y16_N39
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X89_Y16_N56
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X89_Y15_N39
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X89_Y15_N56
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X89_Y8_N56
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seg2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

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

-- Location: CLKCTRL_G5
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

-- Location: FF_X87_Y12_N26
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

-- Location: MLABCELL_X87_Y12_N24
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

-- Location: FF_X87_Y12_N25
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

-- Location: MLABCELL_X87_Y12_N15
\cuenta_reg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[1]~2_combout\ = ( \cuenta_reg[0]~DUPLICATE_q\ & ( !cuenta_reg(1) ) ) # ( !\cuenta_reg[0]~DUPLICATE_q\ & ( cuenta_reg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cuenta_reg(1),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[1]~2_combout\);

-- Location: FF_X87_Y12_N17
\cuenta_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(1));

-- Location: FF_X87_Y12_N41
\cuenta_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[3]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(3));

-- Location: FF_X87_Y12_N23
\cuenta_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta_reg(2));

-- Location: MLABCELL_X87_Y12_N21
\cuenta_reg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[2]~0_combout\ = ( \cuenta_reg[0]~DUPLICATE_q\ & ( !cuenta_reg(1) $ (!cuenta_reg(2)) ) ) # ( !\cuenta_reg[0]~DUPLICATE_q\ & ( cuenta_reg(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cuenta_reg(1),
	datad => ALT_INV_cuenta_reg(2),
	dataf => \ALT_INV_cuenta_reg[0]~DUPLICATE_q\,
	combout => \cuenta_reg[2]~0_combout\);

-- Location: FF_X87_Y12_N22
\cuenta_reg[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N39
\cuenta_reg[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[3]~1_combout\ = ( cuenta_reg(3) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (!cuenta_reg(1)) # (!cuenta_reg(0)) ) ) ) # ( !cuenta_reg(3) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (cuenta_reg(1) & cuenta_reg(0)) ) ) ) # ( cuenta_reg(3) & ( 
-- !\cuenta_reg[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cuenta_reg(1),
	datad => ALT_INV_cuenta_reg(0),
	datae => ALT_INV_cuenta_reg(3),
	dataf => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	combout => \cuenta_reg[3]~1_combout\);

-- Location: FF_X87_Y12_N40
\cuenta_reg[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cuenta_reg[3]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta_reg[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N3
\cuenta_reg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[4]~4_combout\ = ( cuenta_reg(4) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (!cuenta_reg(3)) # ((!cuenta_reg(1)) # (!cuenta_reg(0))) ) ) ) # ( !cuenta_reg(4) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (cuenta_reg(3) & (cuenta_reg(1) & cuenta_reg(0))) ) ) ) # 
-- ( cuenta_reg(4) & ( !\cuenta_reg[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cuenta_reg(3),
	datac => ALT_INV_cuenta_reg(1),
	datad => ALT_INV_cuenta_reg(0),
	datae => ALT_INV_cuenta_reg(4),
	dataf => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	combout => \cuenta_reg[4]~4_combout\);

-- Location: FF_X87_Y12_N5
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

-- Location: MLABCELL_X87_Y12_N30
\cuenta_reg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cuenta_reg[5]~3_combout\ = ( cuenta_reg(5) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (!cuenta_reg(4)) # ((!cuenta_reg(1)) # ((!cuenta_reg(0)) # (!cuenta_reg(3)))) ) ) ) # ( !cuenta_reg(5) & ( \cuenta_reg[2]~DUPLICATE_q\ & ( (cuenta_reg(4) & (cuenta_reg(1) & 
-- (cuenta_reg(0) & cuenta_reg(3)))) ) ) ) # ( cuenta_reg(5) & ( !\cuenta_reg[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(4),
	datab => ALT_INV_cuenta_reg(1),
	datac => ALT_INV_cuenta_reg(0),
	datad => ALT_INV_cuenta_reg(3),
	datae => ALT_INV_cuenta_reg(5),
	dataf => \ALT_INV_cuenta_reg[2]~DUPLICATE_q\,
	combout => \cuenta_reg[5]~3_combout\);

-- Location: FF_X87_Y12_N31
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

-- Location: MLABCELL_X87_Y12_N18
\deco|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~0_combout\ = ( cuenta_reg(4) & ( (!cuenta_reg(1) & ((!\cuenta_reg[3]~DUPLICATE_q\ & (!cuenta_reg(2) $ (cuenta_reg(5)))) # (\cuenta_reg[3]~DUPLICATE_q\ & (!cuenta_reg(2) & cuenta_reg(5))))) # (cuenta_reg(1) & ((!\cuenta_reg[3]~DUPLICATE_q\ & 
-- (cuenta_reg(2) & !cuenta_reg(5))) # (\cuenta_reg[3]~DUPLICATE_q\ & (!cuenta_reg(2) $ (cuenta_reg(5)))))) ) ) # ( !cuenta_reg(4) & ( (!cuenta_reg(1) & ((!\cuenta_reg[3]~DUPLICATE_q\ & ((cuenta_reg(5)))) # (\cuenta_reg[3]~DUPLICATE_q\ & (cuenta_reg(2) & 
-- !cuenta_reg(5))))) # (cuenta_reg(1) & (!\cuenta_reg[3]~DUPLICATE_q\ $ (((cuenta_reg(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011010011001010001101001100110010100001010011001010000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(1),
	datab => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(2),
	datad => ALT_INV_cuenta_reg(5),
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~0_combout\);

-- Location: MLABCELL_X87_Y12_N54
\deco|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~1_combout\ = ( cuenta_reg(5) & ( cuenta_reg(4) & ( (!cuenta_reg(2) & (\cuenta_reg[3]~DUPLICATE_q\ & !cuenta_reg(1))) # (cuenta_reg(2) & (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(1))) ) ) ) # ( !cuenta_reg(5) & ( cuenta_reg(4) & ( 
-- (!cuenta_reg(2) & ((!cuenta_reg(1)) # (\cuenta_reg[3]~DUPLICATE_q\))) ) ) ) # ( cuenta_reg(5) & ( !cuenta_reg(4) & ( !cuenta_reg(2) $ (((!cuenta_reg(1)) # (\cuenta_reg[3]~DUPLICATE_q\))) ) ) ) # ( !cuenta_reg(5) & ( !cuenta_reg(4) & ( (cuenta_reg(2) & 
-- ((!\cuenta_reg[3]~DUPLICATE_q\) # (cuenta_reg(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010110010101100110100010101000100010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(2),
	datab => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(1),
	datae => ALT_INV_cuenta_reg(5),
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~1_combout\);

-- Location: MLABCELL_X87_Y12_N45
\deco|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~2_combout\ = ( cuenta_reg(5) & ( cuenta_reg(4) & ( (!cuenta_reg(2) & (!\cuenta_reg[3]~DUPLICATE_q\ $ (cuenta_reg(1)))) ) ) ) # ( !cuenta_reg(5) & ( cuenta_reg(4) & ( (!cuenta_reg(2) & (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(1))) # 
-- (cuenta_reg(2) & (\cuenta_reg[3]~DUPLICATE_q\ & !cuenta_reg(1))) ) ) ) # ( cuenta_reg(5) & ( !cuenta_reg(4) & ( (cuenta_reg(2) & (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(1))) ) ) ) # ( !cuenta_reg(5) & ( !cuenta_reg(4) & ( (!cuenta_reg(2) & 
-- (\cuenta_reg[3]~DUPLICATE_q\ & !cuenta_reg(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000101000000000101101000001010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(2),
	datac => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datad => ALT_INV_cuenta_reg(1),
	datae => ALT_INV_cuenta_reg(5),
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~2_combout\);

-- Location: LABCELL_X88_Y12_N24
\seg1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux6~0_combout\ = ( cuenta_reg(0) & ( \deco|Ram0~2_combout\ ) ) # ( !cuenta_reg(0) & ( \deco|Ram0~2_combout\ & ( (!\deco|Ram0~1_combout\) # (\deco|Ram0~0_combout\) ) ) ) # ( cuenta_reg(0) & ( !\deco|Ram0~2_combout\ & ( !\deco|Ram0~0_combout\ $ 
-- (!\deco|Ram0~1_combout\) ) ) ) # ( !cuenta_reg(0) & ( !\deco|Ram0~2_combout\ & ( (\deco|Ram0~1_combout\) # (\deco|Ram0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~0_combout\,
	datac => \deco|ALT_INV_Ram0~1_combout\,
	datae => ALT_INV_cuenta_reg(0),
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y12_N9
\seg1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux5~0_combout\ = ( cuenta_reg(0) & ( \deco|Ram0~0_combout\ & ( !\deco|Ram0~2_combout\ ) ) ) # ( !cuenta_reg(0) & ( \deco|Ram0~0_combout\ & ( (!\deco|Ram0~1_combout\ & !\deco|Ram0~2_combout\) ) ) ) # ( cuenta_reg(0) & ( !\deco|Ram0~0_combout\ & ( 
-- !\deco|Ram0~1_combout\ $ (\deco|Ram0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~1_combout\,
	datac => \deco|ALT_INV_Ram0~2_combout\,
	datae => ALT_INV_cuenta_reg(0),
	dataf => \deco|ALT_INV_Ram0~0_combout\,
	combout => \seg1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y12_N48
\seg1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux4~0_combout\ = ( cuenta_reg(0) & ( \deco|Ram0~2_combout\ & ( (!\deco|Ram0~0_combout\ & !\deco|Ram0~1_combout\) ) ) ) # ( cuenta_reg(0) & ( !\deco|Ram0~2_combout\ ) ) # ( !cuenta_reg(0) & ( !\deco|Ram0~2_combout\ & ( (!\deco|Ram0~0_combout\ & 
-- \deco|Ram0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~0_combout\,
	datac => \deco|ALT_INV_Ram0~1_combout\,
	datae => ALT_INV_cuenta_reg(0),
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y12_N57
\seg1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux3~0_combout\ = ( \deco|Ram0~2_combout\ & ( (\deco|Ram0~0_combout\ & (!cuenta_reg(0) $ (\deco|Ram0~1_combout\))) ) ) # ( !\deco|Ram0~2_combout\ & ( (!cuenta_reg(0) & (!\deco|Ram0~0_combout\ & \deco|Ram0~1_combout\)) # (cuenta_reg(0) & 
-- (!\deco|Ram0~0_combout\ $ (\deco|Ram0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datac => \deco|ALT_INV_Ram0~0_combout\,
	datad => \deco|ALT_INV_Ram0~1_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y12_N39
\seg1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux2~0_combout\ = ( cuenta_reg(0) & ( \deco|Ram0~0_combout\ & ( (\deco|Ram0~1_combout\ & \deco|Ram0~2_combout\) ) ) ) # ( !cuenta_reg(0) & ( \deco|Ram0~0_combout\ & ( !\deco|Ram0~1_combout\ $ (\deco|Ram0~2_combout\) ) ) ) # ( !cuenta_reg(0) & ( 
-- !\deco|Ram0~0_combout\ & ( (\deco|Ram0~1_combout\ & \deco|Ram0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000010101010010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~1_combout\,
	datad => \deco|ALT_INV_Ram0~2_combout\,
	datae => ALT_INV_cuenta_reg(0),
	dataf => \deco|ALT_INV_Ram0~0_combout\,
	combout => \seg1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y12_N18
\seg1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux1~0_combout\ = ( cuenta_reg(0) & ( \deco|Ram0~2_combout\ & ( \deco|Ram0~0_combout\ ) ) ) # ( !cuenta_reg(0) & ( \deco|Ram0~2_combout\ & ( \deco|Ram0~1_combout\ ) ) ) # ( cuenta_reg(0) & ( !\deco|Ram0~2_combout\ & ( (!\deco|Ram0~0_combout\ & 
-- \deco|Ram0~1_combout\) ) ) ) # ( !cuenta_reg(0) & ( !\deco|Ram0~2_combout\ & ( (\deco|Ram0~0_combout\ & \deco|Ram0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~0_combout\,
	datac => \deco|ALT_INV_Ram0~1_combout\,
	datae => ALT_INV_cuenta_reg(0),
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\seg1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux0~0_combout\ = ( \deco|Ram0~0_combout\ & ( (cuenta_reg(0) & (\deco|Ram0~2_combout\ & !\deco|Ram0~1_combout\)) ) ) # ( !\deco|Ram0~0_combout\ & ( (!cuenta_reg(0) & (!\deco|Ram0~2_combout\ & \deco|Ram0~1_combout\)) # (cuenta_reg(0) & 
-- (!\deco|Ram0~2_combout\ $ (\deco|Ram0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(0),
	datab => \deco|ALT_INV_Ram0~2_combout\,
	datac => \deco|ALT_INV_Ram0~1_combout\,
	dataf => \deco|ALT_INV_Ram0~0_combout\,
	combout => \seg1|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y12_N12
\deco|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~5_combout\ = ( cuenta_reg(4) & ( (!cuenta_reg(2) & ((!\cuenta_reg[3]~DUPLICATE_q\ & ((!cuenta_reg(5)) # (cuenta_reg(1)))) # (\cuenta_reg[3]~DUPLICATE_q\ & ((cuenta_reg(5)))))) # (cuenta_reg(2) & ((!\cuenta_reg[3]~DUPLICATE_q\ & 
-- ((cuenta_reg(5)))) # (\cuenta_reg[3]~DUPLICATE_q\ & (cuenta_reg(1) & !cuenta_reg(5))))) ) ) # ( !cuenta_reg(4) & ( (!\cuenta_reg[3]~DUPLICATE_q\ & (((cuenta_reg(5))))) # (\cuenta_reg[3]~DUPLICATE_q\ & (!cuenta_reg(5) & ((cuenta_reg(1)) # 
-- (cuenta_reg(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111001100000100111100110010001001011011101000100101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cuenta_reg(2),
	datab => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datac => ALT_INV_cuenta_reg(1),
	datad => ALT_INV_cuenta_reg(5),
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~5_combout\);

-- Location: MLABCELL_X87_Y12_N48
\deco|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~3_combout\ = ( cuenta_reg(2) & ( cuenta_reg(4) & ( (!cuenta_reg(5)) # (\cuenta_reg[3]~DUPLICATE_q\) ) ) ) # ( !cuenta_reg(2) & ( cuenta_reg(4) & ( (\cuenta_reg[3]~DUPLICATE_q\ & !cuenta_reg(5)) ) ) ) # ( cuenta_reg(2) & ( !cuenta_reg(4) & ( 
-- (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(5)) ) ) ) # ( !cuenta_reg(2) & ( !cuenta_reg(4) & ( (!\cuenta_reg[3]~DUPLICATE_q\ & cuenta_reg(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	datad => ALT_INV_cuenta_reg(5),
	datae => ALT_INV_cuenta_reg(2),
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~3_combout\);

-- Location: MLABCELL_X87_Y12_N9
\deco|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~4_combout\ = ( \cuenta_reg[3]~DUPLICATE_q\ & ( cuenta_reg(4) & ( cuenta_reg(5) ) ) ) # ( !\cuenta_reg[3]~DUPLICATE_q\ & ( cuenta_reg(4) & ( cuenta_reg(5) ) ) ) # ( \cuenta_reg[3]~DUPLICATE_q\ & ( !cuenta_reg(4) & ( cuenta_reg(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cuenta_reg(5),
	datae => \ALT_INV_cuenta_reg[3]~DUPLICATE_q\,
	dataf => ALT_INV_cuenta_reg(4),
	combout => \deco|Ram0~4_combout\);

-- Location: LABCELL_X88_Y12_N0
\seg2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux6~0_combout\ = ( \deco|Ram0~4_combout\ & ( (\deco|Ram0~5_combout\ & \deco|Ram0~3_combout\) ) ) # ( !\deco|Ram0~4_combout\ & ( !\deco|Ram0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux6~0_combout\);

-- Location: LABCELL_X88_Y12_N3
\seg2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux5~0_combout\ = ( \deco|Ram0~4_combout\ & ( (\deco|Ram0~5_combout\ & \deco|Ram0~3_combout\) ) ) # ( !\deco|Ram0~4_combout\ & ( (\deco|Ram0~3_combout\) # (\deco|Ram0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux5~0_combout\);

-- Location: LABCELL_X88_Y12_N45
\seg2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux4~0_combout\ = ( \deco|Ram0~4_combout\ & ( (!\deco|Ram0~3_combout\) # (\deco|Ram0~5_combout\) ) ) # ( !\deco|Ram0~4_combout\ & ( \deco|Ram0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux4~0_combout\);

-- Location: LABCELL_X88_Y12_N12
\seg2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux3~0_combout\ = ( \deco|Ram0~4_combout\ & ( !\deco|Ram0~5_combout\ $ (\deco|Ram0~3_combout\) ) ) # ( !\deco|Ram0~4_combout\ & ( (\deco|Ram0~5_combout\ & !\deco|Ram0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux3~0_combout\);

-- Location: LABCELL_X88_Y12_N15
\seg2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux2~0_combout\ = ( !\deco|Ram0~4_combout\ & ( (!\deco|Ram0~5_combout\ & \deco|Ram0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux2~0_combout\);

-- Location: LABCELL_X88_Y12_N30
\seg2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux1~0_combout\ = ( \deco|Ram0~5_combout\ & ( \deco|Ram0~4_combout\ & ( !\deco|Ram0~3_combout\ ) ) ) # ( !\deco|Ram0~5_combout\ & ( \deco|Ram0~4_combout\ & ( \deco|Ram0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~3_combout\,
	datae => \deco|ALT_INV_Ram0~5_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\seg2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux0~0_combout\ = ( \deco|Ram0~4_combout\ & ( (\deco|Ram0~3_combout\) # (\deco|Ram0~5_combout\) ) ) # ( !\deco|Ram0~4_combout\ & ( (!\deco|Ram0~5_combout\) # (\deco|Ram0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~5_combout\,
	datab => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg2|Mux0~0_combout\);

-- Location: LABCELL_X35_Y71_N0
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


