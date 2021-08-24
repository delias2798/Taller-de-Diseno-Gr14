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

-- DATE "08/23/2021 22:48:29"

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

ENTITY 	sumador_4_fpga IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	c_in : IN std_logic;
	c_out : OUT std_logic;
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END sumador_4_fpga;

-- Design Ports Information
-- c_out	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_in	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_4_fpga IS
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
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \sum1|c_out~0_combout\ : std_logic;
SIGNAL \sum3|c_out~0_combout\ : std_logic;
SIGNAL \deco|Ram0~0_combout\ : std_logic;
SIGNAL \sum2|s~0_combout\ : std_logic;
SIGNAL \sum3|s~0_combout\ : std_logic;
SIGNAL \sum1|s~0_combout\ : std_logic;
SIGNAL \deco|Ram0~1_combout\ : std_logic;
SIGNAL \seg2|Mux5~0_combout\ : std_logic;
SIGNAL \seg2|Mux3~0_combout\ : std_logic;
SIGNAL \seg2|Mux2~0_combout\ : std_logic;
SIGNAL \deco|Ram0~4_combout\ : std_logic;
SIGNAL \sum0|s~0_combout\ : std_logic;
SIGNAL \deco|Ram0~3_combout\ : std_logic;
SIGNAL \deco|Ram0~2_combout\ : std_logic;
SIGNAL \seg1|Mux6~0_combout\ : std_logic;
SIGNAL \seg1|Mux5~0_combout\ : std_logic;
SIGNAL \seg1|Mux4~0_combout\ : std_logic;
SIGNAL \seg1|Mux3~0_combout\ : std_logic;
SIGNAL \seg1|Mux2~0_combout\ : std_logic;
SIGNAL \seg1|Mux1~0_combout\ : std_logic;
SIGNAL \seg1|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_c_in~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \seg1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~4_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~3_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~2_combout\ : std_logic;
SIGNAL \sum0|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \seg2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~1_combout\ : std_logic;
SIGNAL \sum3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \sum2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \sum1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Ram0~0_combout\ : std_logic;
SIGNAL \sum3|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \sum1|ALT_INV_c_out~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c_in <= c_in;
c_out <= ww_c_out;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
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
\seg1|ALT_INV_Mux6~0_combout\ <= NOT \seg1|Mux6~0_combout\;
\deco|ALT_INV_Ram0~4_combout\ <= NOT \deco|Ram0~4_combout\;
\deco|ALT_INV_Ram0~3_combout\ <= NOT \deco|Ram0~3_combout\;
\deco|ALT_INV_Ram0~2_combout\ <= NOT \deco|Ram0~2_combout\;
\sum0|ALT_INV_s~0_combout\ <= NOT \sum0|s~0_combout\;
\seg2|ALT_INV_Mux2~0_combout\ <= NOT \seg2|Mux2~0_combout\;
\deco|ALT_INV_Ram0~1_combout\ <= NOT \deco|Ram0~1_combout\;
\sum3|ALT_INV_s~0_combout\ <= NOT \sum3|s~0_combout\;
\sum2|ALT_INV_s~0_combout\ <= NOT \sum2|s~0_combout\;
\sum1|ALT_INV_s~0_combout\ <= NOT \sum1|s~0_combout\;
\deco|ALT_INV_Ram0~0_combout\ <= NOT \deco|Ram0~0_combout\;
\sum3|ALT_INV_c_out~0_combout\ <= NOT \sum3|c_out~0_combout\;
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

-- Location: IOOBUF_X89_Y8_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Ram0~0_combout\,
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
	i => \seg2|Mux5~0_combout\,
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
	i => \deco|Ram0~1_combout\,
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
	i => \seg2|Mux3~0_combout\,
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
	i => \seg2|ALT_INV_Mux2~0_combout\,
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
	i => GND,
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
	i => \seg2|Mux3~0_combout\,
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
	i => \seg1|ALT_INV_Mux6~0_combout\,
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
	i => \seg1|Mux5~0_combout\,
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
	i => \seg1|Mux4~0_combout\,
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
	i => \seg1|Mux3~0_combout\,
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
	i => \seg1|Mux2~0_combout\,
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
	i => \seg1|Mux1~0_combout\,
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
	i => \seg1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

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

-- Location: LABCELL_X22_Y4_N30
\sum1|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum1|c_out~0_combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( ((\a[1]~input_o\) # (\c_in~input_o\)) # (\b[0]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( ((\b[0]~input_o\ & \c_in~input_o\)) # (\a[1]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\c_in~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( (\b[0]~input_o\ & (\c_in~input_o\ & \a[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000011111100000011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_c_in~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum1|c_out~0_combout\);

-- Location: LABCELL_X22_Y4_N9
\sum3|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum3|c_out~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( (\a[3]~input_o\) # (\b[3]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( (!\b[3]~input_o\ & (\a[3]~input_o\ & \a[2]~input_o\)) # (\b[3]~input_o\ & 
-- ((\a[2]~input_o\) # (\a[3]~input_o\))) ) ) ) # ( \b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( (!\b[3]~input_o\ & (\a[3]~input_o\ & \a[2]~input_o\)) # (\b[3]~input_o\ & ((\a[2]~input_o\) # (\a[3]~input_o\))) ) ) ) # ( !\b[2]~input_o\ & ( 
-- !\sum1|c_out~0_combout\ & ( (\b[3]~input_o\ & \a[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010101111100000101010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum3|c_out~0_combout\);

-- Location: LABCELL_X22_Y4_N42
\deco|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( (!\a[2]~input_o\ & ((!\a[3]~input_o\) # (!\b[3]~input_o\))) # (\a[2]~input_o\ & (!\a[3]~input_o\ & !\b[3]~input_o\)) ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( 
-- (!\a[3]~input_o\) # (!\b[3]~input_o\) ) ) ) # ( \b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( (!\a[3]~input_o\) # (!\b[3]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( (!\a[2]~input_o\) # ((!\a[3]~input_o\) # (!\b[3]~input_o\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111001111110011111100111111001110100011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \deco|Ram0~0_combout\);

-- Location: LABCELL_X22_Y4_N57
\sum2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum2|s~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( \a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( \b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( !\a[2]~input_o\ ) ) ) # ( !\b[2]~input_o\ 
-- & ( !\sum1|c_out~0_combout\ & ( \a[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum2|s~0_combout\);

-- Location: LABCELL_X22_Y4_N0
\sum3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum3|s~0_combout\ = ( \b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\a[3]~input_o\ $ (\b[3]~input_o\) ) ) ) # ( !\b[2]~input_o\ & ( \sum1|c_out~0_combout\ & ( !\a[2]~input_o\ $ (!\a[3]~input_o\ $ (\b[3]~input_o\)) ) ) ) # ( \b[2]~input_o\ & ( 
-- !\sum1|c_out~0_combout\ & ( !\a[2]~input_o\ $ (!\a[3]~input_o\ $ (\b[3]~input_o\)) ) ) ) # ( !\b[2]~input_o\ & ( !\sum1|c_out~0_combout\ & ( !\a[3]~input_o\ $ (!\b[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100011010010110100101101001011010011100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \sum1|ALT_INV_c_out~0_combout\,
	combout => \sum3|s~0_combout\);

-- Location: LABCELL_X22_Y4_N51
\sum1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum1|s~0_combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\b[0]~input_o\) # (\c_in~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\c_in~input_o\ & \b[0]~input_o\))) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\c_in~input_o\ & !\b[0]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\c_in~input_o\) # (!\b[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110011011000110110011001001110010011001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_in~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \sum1|s~0_combout\);

-- Location: LABCELL_X83_Y7_N33
\deco|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~1_combout\ = ( \sum3|c_out~0_combout\ & ( (!\sum2|s~0_combout\ & (!\sum3|s~0_combout\)) # (\sum2|s~0_combout\ & (\sum3|s~0_combout\ & \sum1|s~0_combout\)) ) ) # ( !\sum3|c_out~0_combout\ & ( (\sum3|s~0_combout\ & ((\sum1|s~0_combout\) # 
-- (\sum2|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110100000101001011010000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum2|ALT_INV_s~0_combout\,
	datac => \sum3|ALT_INV_s~0_combout\,
	datad => \sum1|ALT_INV_s~0_combout\,
	dataf => \sum3|ALT_INV_c_out~0_combout\,
	combout => \deco|Ram0~1_combout\);

-- Location: LABCELL_X83_Y7_N36
\seg2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux5~0_combout\ = ( \deco|Ram0~1_combout\ ) # ( !\deco|Ram0~1_combout\ & ( !\deco|Ram0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~0_combout\,
	dataf => \deco|ALT_INV_Ram0~1_combout\,
	combout => \seg2|Mux5~0_combout\);

-- Location: LABCELL_X83_Y7_N42
\seg2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux3~0_combout\ = ( \deco|Ram0~1_combout\ & ( \deco|Ram0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \deco|ALT_INV_Ram0~0_combout\,
	dataf => \deco|ALT_INV_Ram0~1_combout\,
	combout => \seg2|Mux3~0_combout\);

-- Location: LABCELL_X83_Y7_N21
\seg2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg2|Mux2~0_combout\ = ( \deco|Ram0~1_combout\ ) # ( !\deco|Ram0~1_combout\ & ( \deco|Ram0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \deco|ALT_INV_Ram0~0_combout\,
	dataf => \deco|ALT_INV_Ram0~1_combout\,
	combout => \seg2|Mux2~0_combout\);

-- Location: LABCELL_X83_Y7_N0
\deco|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~4_combout\ = ( \sum3|c_out~0_combout\ & ( (!\sum3|s~0_combout\ & (\sum1|s~0_combout\ & !\sum2|s~0_combout\)) # (\sum3|s~0_combout\ & (!\sum1|s~0_combout\ & \sum2|s~0_combout\)) ) ) # ( !\sum3|c_out~0_combout\ & ( (\sum3|s~0_combout\ & 
-- (!\sum1|s~0_combout\ & !\sum2|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sum3|ALT_INV_s~0_combout\,
	datac => \sum1|ALT_INV_s~0_combout\,
	datad => \sum2|ALT_INV_s~0_combout\,
	dataf => \sum3|ALT_INV_c_out~0_combout\,
	combout => \deco|Ram0~4_combout\);

-- Location: LABCELL_X22_Y4_N36
\sum0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum0|s~0_combout\ = ( \a[0]~input_o\ & ( !\b[0]~input_o\ $ (\c_in~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\b[0]~input_o\ $ (!\c_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_c_in~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \sum0|s~0_combout\);

-- Location: LABCELL_X83_Y7_N3
\deco|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~3_combout\ = ( \sum3|c_out~0_combout\ & ( (!\sum2|s~0_combout\ & ((!\sum1|s~0_combout\) # (\sum3|s~0_combout\))) ) ) # ( !\sum3|c_out~0_combout\ & ( (\sum2|s~0_combout\ & ((!\sum3|s~0_combout\) # (\sum1|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|ALT_INV_s~0_combout\,
	datab => \sum3|ALT_INV_s~0_combout\,
	datac => \sum2|ALT_INV_s~0_combout\,
	dataf => \sum3|ALT_INV_c_out~0_combout\,
	combout => \deco|Ram0~3_combout\);

-- Location: LABCELL_X83_Y7_N24
\deco|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \deco|Ram0~2_combout\ = ( \sum3|c_out~0_combout\ & ( (!\sum1|s~0_combout\ & (!\sum3|s~0_combout\ & !\sum2|s~0_combout\)) # (\sum1|s~0_combout\ & (!\sum3|s~0_combout\ $ (!\sum2|s~0_combout\))) ) ) # ( !\sum3|c_out~0_combout\ & ( (!\sum1|s~0_combout\ & 
-- (\sum3|s~0_combout\ & \sum2|s~0_combout\)) # (\sum1|s~0_combout\ & (!\sum3|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001000110010001100100011010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum1|ALT_INV_s~0_combout\,
	datab => \sum3|ALT_INV_s~0_combout\,
	datac => \sum2|ALT_INV_s~0_combout\,
	dataf => \sum3|ALT_INV_c_out~0_combout\,
	combout => \deco|Ram0~2_combout\);

-- Location: LABCELL_X83_Y7_N6
\seg1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux6~0_combout\ = ( \deco|Ram0~2_combout\ & ( ((!\sum0|s~0_combout\) # (!\deco|Ram0~3_combout\)) # (\deco|Ram0~4_combout\) ) ) # ( !\deco|Ram0~2_combout\ & ( (!\deco|Ram0~4_combout\ & ((\deco|Ram0~3_combout\))) # (\deco|Ram0~4_combout\ & 
-- ((!\deco|Ram0~3_combout\) # (\sum0|s~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~4_combout\,
	datab => \sum0|ALT_INV_s~0_combout\,
	datac => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux6~0_combout\);

-- Location: LABCELL_X83_Y7_N9
\seg1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux5~0_combout\ = ( \deco|Ram0~2_combout\ & ( (!\deco|Ram0~4_combout\ & ((!\deco|Ram0~3_combout\) # (\sum0|s~0_combout\))) ) ) # ( !\deco|Ram0~2_combout\ & ( (\sum0|s~0_combout\ & (!\deco|Ram0~4_combout\ $ (\deco|Ram0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~4_combout\,
	datab => \sum0|ALT_INV_s~0_combout\,
	datad => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux5~0_combout\);

-- Location: LABCELL_X83_Y7_N15
\seg1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux4~0_combout\ = ( \deco|Ram0~4_combout\ & ( (!\deco|Ram0~2_combout\ & (\sum0|s~0_combout\ & !\deco|Ram0~3_combout\)) ) ) # ( !\deco|Ram0~4_combout\ & ( ((!\deco|Ram0~2_combout\ & \deco|Ram0~3_combout\)) # (\sum0|s~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000010100000000000001111101011110000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~2_combout\,
	datac => \sum0|ALT_INV_s~0_combout\,
	datad => \deco|ALT_INV_Ram0~3_combout\,
	datae => \deco|ALT_INV_Ram0~4_combout\,
	combout => \seg1|Mux4~0_combout\);

-- Location: LABCELL_X83_Y7_N51
\seg1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux3~0_combout\ = ( \deco|Ram0~2_combout\ & ( (!\sum0|s~0_combout\ & (\deco|Ram0~4_combout\ & !\deco|Ram0~3_combout\)) # (\sum0|s~0_combout\ & ((\deco|Ram0~3_combout\))) ) ) # ( !\deco|Ram0~2_combout\ & ( (!\deco|Ram0~4_combout\ & 
-- (!\sum0|s~0_combout\ $ (!\deco|Ram0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~4_combout\,
	datab => \sum0|ALT_INV_s~0_combout\,
	datad => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux3~0_combout\);

-- Location: LABCELL_X83_Y7_N48
\seg1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux2~0_combout\ = ( \deco|Ram0~2_combout\ & ( (!\deco|Ram0~4_combout\ & (!\sum0|s~0_combout\ & !\deco|Ram0~3_combout\)) # (\deco|Ram0~4_combout\ & ((\deco|Ram0~3_combout\))) ) ) # ( !\deco|Ram0~2_combout\ & ( (\deco|Ram0~4_combout\ & 
-- (!\sum0|s~0_combout\ & \deco|Ram0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~4_combout\,
	datab => \sum0|ALT_INV_s~0_combout\,
	datac => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux2~0_combout\);

-- Location: LABCELL_X83_Y7_N54
\seg1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux1~0_combout\ = ( \deco|Ram0~2_combout\ & ( (!\sum0|s~0_combout\ & (\deco|Ram0~3_combout\)) # (\sum0|s~0_combout\ & ((\deco|Ram0~4_combout\))) ) ) # ( !\deco|Ram0~2_combout\ & ( (\deco|Ram0~3_combout\ & (!\sum0|s~0_combout\ $ 
-- (!\deco|Ram0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sum0|ALT_INV_s~0_combout\,
	datac => \deco|ALT_INV_Ram0~3_combout\,
	datad => \deco|ALT_INV_Ram0~4_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux1~0_combout\);

-- Location: LABCELL_X83_Y7_N57
\seg1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seg1|Mux0~0_combout\ = ( \deco|Ram0~2_combout\ & ( (\deco|Ram0~4_combout\ & (\sum0|s~0_combout\ & !\deco|Ram0~3_combout\)) ) ) # ( !\deco|Ram0~2_combout\ & ( (!\deco|Ram0~4_combout\ & (!\sum0|s~0_combout\ $ (!\deco|Ram0~3_combout\))) # 
-- (\deco|Ram0~4_combout\ & (\sum0|s~0_combout\ & \deco|Ram0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \deco|ALT_INV_Ram0~4_combout\,
	datab => \sum0|ALT_INV_s~0_combout\,
	datad => \deco|ALT_INV_Ram0~3_combout\,
	dataf => \deco|ALT_INV_Ram0~2_combout\,
	combout => \seg1|Mux0~0_combout\);

-- Location: LABCELL_X18_Y40_N3
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


