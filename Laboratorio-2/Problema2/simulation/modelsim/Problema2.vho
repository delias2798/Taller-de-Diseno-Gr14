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

-- DATE "08/23/2021 15:22:53"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sumador_4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	c_in : IN std_logic;
	c_out : BUFFER std_logic;
	s : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END sumador_4;

-- Design Ports Information
-- c_out	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c_in : std_logic;
SIGNAL ww_c_out : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \sum1|c_out~0_combout\ : std_logic;
SIGNAL \sum3|c_out~0_combout\ : std_logic;
SIGNAL \sum0|s~0_combout\ : std_logic;
SIGNAL \sum1|s~0_combout\ : std_logic;
SIGNAL \sum2|s~0_combout\ : std_logic;
SIGNAL \sum3|s~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \sum1|ALT_INV_c_out~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c_in <= c_in;
c_out <= ww_c_out;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_c_in~input_o\ <= NOT \c_in~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\sum1|ALT_INV_c_out~0_combout\ <= NOT \sum1|c_out~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\c_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum3|c_out~0_combout\,
	devoe => ww_devoe,
	o => ww_c_out);

-- Location: IOOBUF_X89_Y4_N79
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum0|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y11_N96
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum1|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y11_N79
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum2|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y8_N39
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum3|s~0_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOIBUF_X8_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\c_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X13_Y4_N30
\sum1|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum1|c_out~0_combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( ((\b[0]~input_o\) # (\a[1]~input_o\)) # (\c_in~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( ((\c_in~input_o\ & \b[0]~input_o\)) # (\a[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\b[0]~input_o\) # (\c_in~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( (\c_in~input_o\ & (\a[1]~input_o\ & \b[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum1|c_out~0_combout\);

-- Location: LABCELL_X12_Y4_N0
\sum3|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum3|c_out~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( (\b[3]~input_o\) # (\a[3]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( (!\a[2]~input_o\ & (\a[3]~input_o\ & \b[3]~input_o\)) # (\a[2]~input_o\ & 
-- ((\b[3]~input_o\) # (\a[3]~input_o\))) ) ) ) # ( \b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( (!\a[2]~input_o\ & (\a[3]~input_o\ & \b[3]~input_o\)) # (\a[2]~input_o\ & ((\b[3]~input_o\) # (\a[3]~input_o\))) ) ) ) # ( !\b[2]~input_o\ & ( 
-- !\sum1|c_out~0_combout\ & ( (\a[3]~input_o\ & \b[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum3|c_out~0_combout\);

-- Location: LABCELL_X13_Y4_N6
\sum0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum0|s~0_combout\ = ( \a[0]~input_o\ & ( !\c_in~input_o\ $ (\b[0]~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\c_in~input_o\ $ (!\b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \sum0|s~0_combout\);

-- Location: LABCELL_X13_Y4_N15
\sum1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum1|s~0_combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\c_in~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\b[0]~input_o\ & \c_in~input_o\))) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\b[0]~input_o\ & !\c_in~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\b[0]~input_o\) # (!\c_in~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010010110101111000011110000101001011010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_c_in~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum1|s~0_combout\);

-- Location: LABCELL_X12_Y4_N36
\sum2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum2|s~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( \a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( \b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ 
-- & ( !\sum1|c_out~0_combout\ & ( \a[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum2|s~0_combout\);

-- Location: LABCELL_X12_Y4_N15
\sum3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum3|s~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\b[3]~input_o\ $ (\a[3]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\b[3]~input_o\ $ (!\a[3]~input_o\ $ (\a[2]~input_o\)) ) ) ) # ( \b[2]~input_o\ & ( 
-- !\sum1|c_out~0_combout\ & ( !\b[3]~input_o\ $ (!\a[3]~input_o\ $ (\a[2]~input_o\)) ) ) ) # ( !\b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( !\b[3]~input_o\ $ (!\a[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum3|s~0_combout\);

-- Location: LABCELL_X40_Y17_N0
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


