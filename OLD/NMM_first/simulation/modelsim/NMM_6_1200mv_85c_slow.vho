-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/17/2023 22:15:27"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NMM IS
    PORT (
	SQR_IN : IN std_logic;
	SQR_OUT : IN std_logic;
	CLK : IN std_logic;
	a : OUT std_logic_vector(31 DOWNTO 0)
	);
END NMM;

-- Design Ports Information
-- CLK	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SQR_OUT	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SQR_IN	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF NMM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SQR_IN : std_logic;
SIGNAL ww_SQR_OUT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL \SQR_IN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \a[0]~output_o\ : std_logic;
SIGNAL \a[1]~output_o\ : std_logic;
SIGNAL \a[2]~output_o\ : std_logic;
SIGNAL \a[3]~output_o\ : std_logic;
SIGNAL \a[4]~output_o\ : std_logic;
SIGNAL \a[5]~output_o\ : std_logic;
SIGNAL \a[6]~output_o\ : std_logic;
SIGNAL \a[7]~output_o\ : std_logic;
SIGNAL \a[8]~output_o\ : std_logic;
SIGNAL \a[9]~output_o\ : std_logic;
SIGNAL \a[10]~output_o\ : std_logic;
SIGNAL \a[11]~output_o\ : std_logic;
SIGNAL \a[12]~output_o\ : std_logic;
SIGNAL \a[13]~output_o\ : std_logic;
SIGNAL \a[14]~output_o\ : std_logic;
SIGNAL \a[15]~output_o\ : std_logic;
SIGNAL \a[16]~output_o\ : std_logic;
SIGNAL \a[17]~output_o\ : std_logic;
SIGNAL \a[18]~output_o\ : std_logic;
SIGNAL \a[19]~output_o\ : std_logic;
SIGNAL \a[20]~output_o\ : std_logic;
SIGNAL \a[21]~output_o\ : std_logic;
SIGNAL \a[22]~output_o\ : std_logic;
SIGNAL \a[23]~output_o\ : std_logic;
SIGNAL \a[24]~output_o\ : std_logic;
SIGNAL \a[25]~output_o\ : std_logic;
SIGNAL \a[26]~output_o\ : std_logic;
SIGNAL \a[27]~output_o\ : std_logic;
SIGNAL \a[28]~output_o\ : std_logic;
SIGNAL \a[29]~output_o\ : std_logic;
SIGNAL \a[30]~output_o\ : std_logic;
SIGNAL \a[31]~output_o\ : std_logic;
SIGNAL \SQR_IN~input_o\ : std_logic;
SIGNAL \SQR_IN~inputclkctrl_outclk\ : std_logic;
SIGNAL \SQR_OUT~input_o\ : std_logic;
SIGNAL \number[0]~31_combout\ : std_logic;
SIGNAL \number[1]~32_combout\ : std_logic;
SIGNAL \number[1]~33\ : std_logic;
SIGNAL \number[2]~34_combout\ : std_logic;
SIGNAL \number[2]~35\ : std_logic;
SIGNAL \number[3]~36_combout\ : std_logic;
SIGNAL \number[3]~37\ : std_logic;
SIGNAL \number[4]~38_combout\ : std_logic;
SIGNAL \number[4]~39\ : std_logic;
SIGNAL \number[5]~40_combout\ : std_logic;
SIGNAL \number[5]~41\ : std_logic;
SIGNAL \number[6]~42_combout\ : std_logic;
SIGNAL \number[6]~43\ : std_logic;
SIGNAL \number[7]~44_combout\ : std_logic;
SIGNAL \number[7]~45\ : std_logic;
SIGNAL \number[8]~46_combout\ : std_logic;
SIGNAL \number[8]~47\ : std_logic;
SIGNAL \number[9]~48_combout\ : std_logic;
SIGNAL \number[9]~49\ : std_logic;
SIGNAL \number[10]~50_combout\ : std_logic;
SIGNAL \number[10]~51\ : std_logic;
SIGNAL \number[11]~52_combout\ : std_logic;
SIGNAL \number[11]~53\ : std_logic;
SIGNAL \number[12]~54_combout\ : std_logic;
SIGNAL \number[12]~55\ : std_logic;
SIGNAL \number[13]~56_combout\ : std_logic;
SIGNAL \number[13]~57\ : std_logic;
SIGNAL \number[14]~58_combout\ : std_logic;
SIGNAL \number[14]~59\ : std_logic;
SIGNAL \number[15]~60_combout\ : std_logic;
SIGNAL \number[15]~61\ : std_logic;
SIGNAL \number[16]~62_combout\ : std_logic;
SIGNAL \number[16]~63\ : std_logic;
SIGNAL \number[17]~64_combout\ : std_logic;
SIGNAL \number[17]~65\ : std_logic;
SIGNAL \number[18]~66_combout\ : std_logic;
SIGNAL \number[18]~67\ : std_logic;
SIGNAL \number[19]~68_combout\ : std_logic;
SIGNAL \number[19]~69\ : std_logic;
SIGNAL \number[20]~70_combout\ : std_logic;
SIGNAL \number[20]~71\ : std_logic;
SIGNAL \number[21]~72_combout\ : std_logic;
SIGNAL \number[21]~73\ : std_logic;
SIGNAL \number[22]~74_combout\ : std_logic;
SIGNAL \number[22]~75\ : std_logic;
SIGNAL \number[23]~76_combout\ : std_logic;
SIGNAL \number[23]~77\ : std_logic;
SIGNAL \number[24]~78_combout\ : std_logic;
SIGNAL \number[24]~79\ : std_logic;
SIGNAL \number[25]~80_combout\ : std_logic;
SIGNAL \number[25]~81\ : std_logic;
SIGNAL \number[26]~82_combout\ : std_logic;
SIGNAL \number[26]~83\ : std_logic;
SIGNAL \number[27]~84_combout\ : std_logic;
SIGNAL \number[27]~85\ : std_logic;
SIGNAL \number[28]~86_combout\ : std_logic;
SIGNAL \number[28]~87\ : std_logic;
SIGNAL \number[29]~88_combout\ : std_logic;
SIGNAL \number[29]~89\ : std_logic;
SIGNAL \number[30]~90_combout\ : std_logic;
SIGNAL \number[30]~91\ : std_logic;
SIGNAL \number[31]~92_combout\ : std_logic;
SIGNAL number : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SQR_OUT~input_o\ : std_logic;

BEGIN

ww_SQR_IN <= SQR_IN;
ww_SQR_OUT <= SQR_OUT;
ww_CLK <= CLK;
a <= ww_a;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SQR_IN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SQR_IN~input_o\);
\ALT_INV_SQR_OUT~input_o\ <= NOT \SQR_OUT~input_o\;

-- Location: IOOBUF_X31_Y0_N2
\a[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(0),
	devoe => ww_devoe,
	o => \a[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\a[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(1),
	devoe => ww_devoe,
	o => \a[1]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\a[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(2),
	devoe => ww_devoe,
	o => \a[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\a[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(3),
	devoe => ww_devoe,
	o => \a[3]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\a[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(4),
	devoe => ww_devoe,
	o => \a[4]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\a[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(5),
	devoe => ww_devoe,
	o => \a[5]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\a[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(6),
	devoe => ww_devoe,
	o => \a[6]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\a[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(7),
	devoe => ww_devoe,
	o => \a[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\a[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(8),
	devoe => ww_devoe,
	o => \a[8]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\a[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(9),
	devoe => ww_devoe,
	o => \a[9]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\a[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(10),
	devoe => ww_devoe,
	o => \a[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\a[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(11),
	devoe => ww_devoe,
	o => \a[11]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\a[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(12),
	devoe => ww_devoe,
	o => \a[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\a[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(13),
	devoe => ww_devoe,
	o => \a[13]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\a[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(14),
	devoe => ww_devoe,
	o => \a[14]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\a[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(15),
	devoe => ww_devoe,
	o => \a[15]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\a[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(16),
	devoe => ww_devoe,
	o => \a[16]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\a[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(17),
	devoe => ww_devoe,
	o => \a[17]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\a[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(18),
	devoe => ww_devoe,
	o => \a[18]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\a[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(19),
	devoe => ww_devoe,
	o => \a[19]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\a[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(20),
	devoe => ww_devoe,
	o => \a[20]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\a[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(21),
	devoe => ww_devoe,
	o => \a[21]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\a[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(22),
	devoe => ww_devoe,
	o => \a[22]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\a[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(23),
	devoe => ww_devoe,
	o => \a[23]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\a[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(24),
	devoe => ww_devoe,
	o => \a[24]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\a[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(25),
	devoe => ww_devoe,
	o => \a[25]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\a[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(26),
	devoe => ww_devoe,
	o => \a[26]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\a[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(27),
	devoe => ww_devoe,
	o => \a[27]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\a[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(28),
	devoe => ww_devoe,
	o => \a[28]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\a[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(29),
	devoe => ww_devoe,
	o => \a[29]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\a[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(30),
	devoe => ww_devoe,
	o => \a[30]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\a[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => number(31),
	devoe => ww_devoe,
	o => \a[31]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\SQR_IN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SQR_IN,
	o => \SQR_IN~input_o\);

-- Location: CLKCTRL_G17
\SQR_IN~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SQR_IN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SQR_IN~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y14_N8
\SQR_OUT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SQR_OUT,
	o => \SQR_OUT~input_o\);

-- Location: LCCOMB_X32_Y20_N0
\number[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[0]~31_combout\ = \SQR_OUT~input_o\ $ (!number(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SQR_OUT~input_o\,
	datac => number(0),
	combout => \number[0]~31_combout\);

-- Location: FF_X32_Y20_N1
\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

-- Location: LCCOMB_X32_Y20_N2
\number[1]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[1]~32_combout\ = (number(0) & (number(1) $ (VCC))) # (!number(0) & (number(1) & VCC))
-- \number[1]~33\ = CARRY((number(0) & number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => number(1),
	datad => VCC,
	combout => \number[1]~32_combout\,
	cout => \number[1]~33\);

-- Location: FF_X32_Y20_N3
\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[1]~32_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

-- Location: LCCOMB_X32_Y20_N4
\number[2]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[2]~34_combout\ = (number(2) & (!\number[1]~33\)) # (!number(2) & ((\number[1]~33\) # (GND)))
-- \number[2]~35\ = CARRY((!\number[1]~33\) # (!number(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(2),
	datad => VCC,
	cin => \number[1]~33\,
	combout => \number[2]~34_combout\,
	cout => \number[2]~35\);

-- Location: FF_X32_Y20_N5
\number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[2]~34_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(2));

-- Location: LCCOMB_X32_Y20_N6
\number[3]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[3]~36_combout\ = (number(3) & (\number[2]~35\ $ (GND))) # (!number(3) & (!\number[2]~35\ & VCC))
-- \number[3]~37\ = CARRY((number(3) & !\number[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(3),
	datad => VCC,
	cin => \number[2]~35\,
	combout => \number[3]~36_combout\,
	cout => \number[3]~37\);

-- Location: FF_X32_Y20_N7
\number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[3]~36_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(3));

-- Location: LCCOMB_X32_Y20_N8
\number[4]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[4]~38_combout\ = (number(4) & (!\number[3]~37\)) # (!number(4) & ((\number[3]~37\) # (GND)))
-- \number[4]~39\ = CARRY((!\number[3]~37\) # (!number(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(4),
	datad => VCC,
	cin => \number[3]~37\,
	combout => \number[4]~38_combout\,
	cout => \number[4]~39\);

-- Location: FF_X32_Y20_N9
\number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[4]~38_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(4));

-- Location: LCCOMB_X32_Y20_N10
\number[5]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[5]~40_combout\ = (number(5) & (\number[4]~39\ $ (GND))) # (!number(5) & (!\number[4]~39\ & VCC))
-- \number[5]~41\ = CARRY((number(5) & !\number[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(5),
	datad => VCC,
	cin => \number[4]~39\,
	combout => \number[5]~40_combout\,
	cout => \number[5]~41\);

-- Location: FF_X32_Y20_N11
\number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[5]~40_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(5));

-- Location: LCCOMB_X32_Y20_N12
\number[6]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[6]~42_combout\ = (number(6) & (!\number[5]~41\)) # (!number(6) & ((\number[5]~41\) # (GND)))
-- \number[6]~43\ = CARRY((!\number[5]~41\) # (!number(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(6),
	datad => VCC,
	cin => \number[5]~41\,
	combout => \number[6]~42_combout\,
	cout => \number[6]~43\);

-- Location: FF_X32_Y20_N13
\number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[6]~42_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(6));

-- Location: LCCOMB_X32_Y20_N14
\number[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[7]~44_combout\ = (number(7) & (\number[6]~43\ $ (GND))) # (!number(7) & (!\number[6]~43\ & VCC))
-- \number[7]~45\ = CARRY((number(7) & !\number[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(7),
	datad => VCC,
	cin => \number[6]~43\,
	combout => \number[7]~44_combout\,
	cout => \number[7]~45\);

-- Location: FF_X32_Y20_N15
\number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[7]~44_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(7));

-- Location: LCCOMB_X32_Y20_N16
\number[8]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[8]~46_combout\ = (number(8) & (!\number[7]~45\)) # (!number(8) & ((\number[7]~45\) # (GND)))
-- \number[8]~47\ = CARRY((!\number[7]~45\) # (!number(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(8),
	datad => VCC,
	cin => \number[7]~45\,
	combout => \number[8]~46_combout\,
	cout => \number[8]~47\);

-- Location: FF_X32_Y20_N17
\number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[8]~46_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(8));

-- Location: LCCOMB_X32_Y20_N18
\number[9]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[9]~48_combout\ = (number(9) & (\number[8]~47\ $ (GND))) # (!number(9) & (!\number[8]~47\ & VCC))
-- \number[9]~49\ = CARRY((number(9) & !\number[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(9),
	datad => VCC,
	cin => \number[8]~47\,
	combout => \number[9]~48_combout\,
	cout => \number[9]~49\);

-- Location: FF_X32_Y20_N19
\number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[9]~48_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(9));

-- Location: LCCOMB_X32_Y20_N20
\number[10]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[10]~50_combout\ = (number(10) & (!\number[9]~49\)) # (!number(10) & ((\number[9]~49\) # (GND)))
-- \number[10]~51\ = CARRY((!\number[9]~49\) # (!number(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(10),
	datad => VCC,
	cin => \number[9]~49\,
	combout => \number[10]~50_combout\,
	cout => \number[10]~51\);

-- Location: FF_X32_Y20_N21
\number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[10]~50_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(10));

-- Location: LCCOMB_X32_Y20_N22
\number[11]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[11]~52_combout\ = (number(11) & (\number[10]~51\ $ (GND))) # (!number(11) & (!\number[10]~51\ & VCC))
-- \number[11]~53\ = CARRY((number(11) & !\number[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(11),
	datad => VCC,
	cin => \number[10]~51\,
	combout => \number[11]~52_combout\,
	cout => \number[11]~53\);

-- Location: FF_X32_Y20_N23
\number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[11]~52_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(11));

-- Location: LCCOMB_X32_Y20_N24
\number[12]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[12]~54_combout\ = (number(12) & (!\number[11]~53\)) # (!number(12) & ((\number[11]~53\) # (GND)))
-- \number[12]~55\ = CARRY((!\number[11]~53\) # (!number(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(12),
	datad => VCC,
	cin => \number[11]~53\,
	combout => \number[12]~54_combout\,
	cout => \number[12]~55\);

-- Location: FF_X32_Y20_N25
\number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[12]~54_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(12));

-- Location: LCCOMB_X32_Y20_N26
\number[13]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[13]~56_combout\ = (number(13) & (\number[12]~55\ $ (GND))) # (!number(13) & (!\number[12]~55\ & VCC))
-- \number[13]~57\ = CARRY((number(13) & !\number[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(13),
	datad => VCC,
	cin => \number[12]~55\,
	combout => \number[13]~56_combout\,
	cout => \number[13]~57\);

-- Location: FF_X32_Y20_N27
\number[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[13]~56_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(13));

-- Location: LCCOMB_X32_Y20_N28
\number[14]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[14]~58_combout\ = (number(14) & (!\number[13]~57\)) # (!number(14) & ((\number[13]~57\) # (GND)))
-- \number[14]~59\ = CARRY((!\number[13]~57\) # (!number(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(14),
	datad => VCC,
	cin => \number[13]~57\,
	combout => \number[14]~58_combout\,
	cout => \number[14]~59\);

-- Location: FF_X32_Y20_N29
\number[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[14]~58_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(14));

-- Location: LCCOMB_X32_Y20_N30
\number[15]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[15]~60_combout\ = (number(15) & (\number[14]~59\ $ (GND))) # (!number(15) & (!\number[14]~59\ & VCC))
-- \number[15]~61\ = CARRY((number(15) & !\number[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(15),
	datad => VCC,
	cin => \number[14]~59\,
	combout => \number[15]~60_combout\,
	cout => \number[15]~61\);

-- Location: FF_X32_Y20_N31
\number[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[15]~60_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(15));

-- Location: LCCOMB_X32_Y19_N0
\number[16]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[16]~62_combout\ = (number(16) & (!\number[15]~61\)) # (!number(16) & ((\number[15]~61\) # (GND)))
-- \number[16]~63\ = CARRY((!\number[15]~61\) # (!number(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(16),
	datad => VCC,
	cin => \number[15]~61\,
	combout => \number[16]~62_combout\,
	cout => \number[16]~63\);

-- Location: FF_X32_Y19_N1
\number[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[16]~62_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(16));

-- Location: LCCOMB_X32_Y19_N2
\number[17]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[17]~64_combout\ = (number(17) & (\number[16]~63\ $ (GND))) # (!number(17) & (!\number[16]~63\ & VCC))
-- \number[17]~65\ = CARRY((number(17) & !\number[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(17),
	datad => VCC,
	cin => \number[16]~63\,
	combout => \number[17]~64_combout\,
	cout => \number[17]~65\);

-- Location: FF_X32_Y19_N3
\number[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[17]~64_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(17));

-- Location: LCCOMB_X32_Y19_N4
\number[18]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[18]~66_combout\ = (number(18) & (!\number[17]~65\)) # (!number(18) & ((\number[17]~65\) # (GND)))
-- \number[18]~67\ = CARRY((!\number[17]~65\) # (!number(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(18),
	datad => VCC,
	cin => \number[17]~65\,
	combout => \number[18]~66_combout\,
	cout => \number[18]~67\);

-- Location: FF_X32_Y19_N5
\number[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[18]~66_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(18));

-- Location: LCCOMB_X32_Y19_N6
\number[19]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[19]~68_combout\ = (number(19) & (\number[18]~67\ $ (GND))) # (!number(19) & (!\number[18]~67\ & VCC))
-- \number[19]~69\ = CARRY((number(19) & !\number[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(19),
	datad => VCC,
	cin => \number[18]~67\,
	combout => \number[19]~68_combout\,
	cout => \number[19]~69\);

-- Location: FF_X32_Y19_N7
\number[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[19]~68_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(19));

-- Location: LCCOMB_X32_Y19_N8
\number[20]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[20]~70_combout\ = (number(20) & (!\number[19]~69\)) # (!number(20) & ((\number[19]~69\) # (GND)))
-- \number[20]~71\ = CARRY((!\number[19]~69\) # (!number(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(20),
	datad => VCC,
	cin => \number[19]~69\,
	combout => \number[20]~70_combout\,
	cout => \number[20]~71\);

-- Location: FF_X32_Y19_N9
\number[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[20]~70_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(20));

-- Location: LCCOMB_X32_Y19_N10
\number[21]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[21]~72_combout\ = (number(21) & (\number[20]~71\ $ (GND))) # (!number(21) & (!\number[20]~71\ & VCC))
-- \number[21]~73\ = CARRY((number(21) & !\number[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(21),
	datad => VCC,
	cin => \number[20]~71\,
	combout => \number[21]~72_combout\,
	cout => \number[21]~73\);

-- Location: FF_X32_Y19_N11
\number[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[21]~72_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(21));

-- Location: LCCOMB_X32_Y19_N12
\number[22]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[22]~74_combout\ = (number(22) & (!\number[21]~73\)) # (!number(22) & ((\number[21]~73\) # (GND)))
-- \number[22]~75\ = CARRY((!\number[21]~73\) # (!number(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(22),
	datad => VCC,
	cin => \number[21]~73\,
	combout => \number[22]~74_combout\,
	cout => \number[22]~75\);

-- Location: FF_X32_Y19_N13
\number[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[22]~74_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(22));

-- Location: LCCOMB_X32_Y19_N14
\number[23]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[23]~76_combout\ = (number(23) & (\number[22]~75\ $ (GND))) # (!number(23) & (!\number[22]~75\ & VCC))
-- \number[23]~77\ = CARRY((number(23) & !\number[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(23),
	datad => VCC,
	cin => \number[22]~75\,
	combout => \number[23]~76_combout\,
	cout => \number[23]~77\);

-- Location: FF_X32_Y19_N15
\number[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[23]~76_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(23));

-- Location: LCCOMB_X32_Y19_N16
\number[24]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[24]~78_combout\ = (number(24) & (!\number[23]~77\)) # (!number(24) & ((\number[23]~77\) # (GND)))
-- \number[24]~79\ = CARRY((!\number[23]~77\) # (!number(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(24),
	datad => VCC,
	cin => \number[23]~77\,
	combout => \number[24]~78_combout\,
	cout => \number[24]~79\);

-- Location: FF_X32_Y19_N17
\number[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[24]~78_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(24));

-- Location: LCCOMB_X32_Y19_N18
\number[25]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[25]~80_combout\ = (number(25) & (\number[24]~79\ $ (GND))) # (!number(25) & (!\number[24]~79\ & VCC))
-- \number[25]~81\ = CARRY((number(25) & !\number[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(25),
	datad => VCC,
	cin => \number[24]~79\,
	combout => \number[25]~80_combout\,
	cout => \number[25]~81\);

-- Location: FF_X32_Y19_N19
\number[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[25]~80_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(25));

-- Location: LCCOMB_X32_Y19_N20
\number[26]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[26]~82_combout\ = (number(26) & (!\number[25]~81\)) # (!number(26) & ((\number[25]~81\) # (GND)))
-- \number[26]~83\ = CARRY((!\number[25]~81\) # (!number(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(26),
	datad => VCC,
	cin => \number[25]~81\,
	combout => \number[26]~82_combout\,
	cout => \number[26]~83\);

-- Location: FF_X32_Y19_N21
\number[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[26]~82_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(26));

-- Location: LCCOMB_X32_Y19_N22
\number[27]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[27]~84_combout\ = (number(27) & (\number[26]~83\ $ (GND))) # (!number(27) & (!\number[26]~83\ & VCC))
-- \number[27]~85\ = CARRY((number(27) & !\number[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(27),
	datad => VCC,
	cin => \number[26]~83\,
	combout => \number[27]~84_combout\,
	cout => \number[27]~85\);

-- Location: FF_X32_Y19_N23
\number[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[27]~84_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(27));

-- Location: LCCOMB_X32_Y19_N24
\number[28]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[28]~86_combout\ = (number(28) & (!\number[27]~85\)) # (!number(28) & ((\number[27]~85\) # (GND)))
-- \number[28]~87\ = CARRY((!\number[27]~85\) # (!number(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(28),
	datad => VCC,
	cin => \number[27]~85\,
	combout => \number[28]~86_combout\,
	cout => \number[28]~87\);

-- Location: FF_X32_Y19_N25
\number[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[28]~86_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(28));

-- Location: LCCOMB_X32_Y19_N26
\number[29]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[29]~88_combout\ = (number(29) & (\number[28]~87\ $ (GND))) # (!number(29) & (!\number[28]~87\ & VCC))
-- \number[29]~89\ = CARRY((number(29) & !\number[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(29),
	datad => VCC,
	cin => \number[28]~87\,
	combout => \number[29]~88_combout\,
	cout => \number[29]~89\);

-- Location: FF_X32_Y19_N27
\number[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[29]~88_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(29));

-- Location: LCCOMB_X32_Y19_N28
\number[30]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[30]~90_combout\ = (number(30) & (!\number[29]~89\)) # (!number(30) & ((\number[29]~89\) # (GND)))
-- \number[30]~91\ = CARRY((!\number[29]~89\) # (!number(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => number(30),
	datad => VCC,
	cin => \number[29]~89\,
	combout => \number[30]~90_combout\,
	cout => \number[30]~91\);

-- Location: FF_X32_Y19_N29
\number[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[30]~90_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(30));

-- Location: LCCOMB_X32_Y19_N30
\number[31]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \number[31]~92_combout\ = number(31) $ (!\number[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => number(31),
	cin => \number[30]~91\,
	combout => \number[31]~92_combout\);

-- Location: FF_X32_Y19_N31
\number[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SQR_IN~inputclkctrl_outclk\,
	d => \number[31]~92_combout\,
	ena => \ALT_INV_SQR_OUT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(31));

-- Location: IOIBUF_X24_Y31_N1
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

ww_a(0) <= \a[0]~output_o\;

ww_a(1) <= \a[1]~output_o\;

ww_a(2) <= \a[2]~output_o\;

ww_a(3) <= \a[3]~output_o\;

ww_a(4) <= \a[4]~output_o\;

ww_a(5) <= \a[5]~output_o\;

ww_a(6) <= \a[6]~output_o\;

ww_a(7) <= \a[7]~output_o\;

ww_a(8) <= \a[8]~output_o\;

ww_a(9) <= \a[9]~output_o\;

ww_a(10) <= \a[10]~output_o\;

ww_a(11) <= \a[11]~output_o\;

ww_a(12) <= \a[12]~output_o\;

ww_a(13) <= \a[13]~output_o\;

ww_a(14) <= \a[14]~output_o\;

ww_a(15) <= \a[15]~output_o\;

ww_a(16) <= \a[16]~output_o\;

ww_a(17) <= \a[17]~output_o\;

ww_a(18) <= \a[18]~output_o\;

ww_a(19) <= \a[19]~output_o\;

ww_a(20) <= \a[20]~output_o\;

ww_a(21) <= \a[21]~output_o\;

ww_a(22) <= \a[22]~output_o\;

ww_a(23) <= \a[23]~output_o\;

ww_a(24) <= \a[24]~output_o\;

ww_a(25) <= \a[25]~output_o\;

ww_a(26) <= \a[26]~output_o\;

ww_a(27) <= \a[27]~output_o\;

ww_a(28) <= \a[28]~output_o\;

ww_a(29) <= \a[29]~output_o\;

ww_a(30) <= \a[30]~output_o\;

ww_a(31) <= \a[31]~output_o\;
END structure;


