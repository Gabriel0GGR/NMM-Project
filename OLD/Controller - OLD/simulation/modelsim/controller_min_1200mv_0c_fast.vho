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

-- DATE "08/20/2023 13:01:06"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controller IS
    PORT (
	A : IN std_logic_vector(11 DOWNTO 0);
	clk : IN std_logic;
	M : OUT std_logic_vector(11 DOWNTO 0)
	);
END controller;

-- Design Ports Information
-- M[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_M : std_logic_vector(11 DOWNTO 0);
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \M[4]~output_o\ : std_logic;
SIGNAL \M[5]~output_o\ : std_logic;
SIGNAL \M[6]~output_o\ : std_logic;
SIGNAL \M[7]~output_o\ : std_logic;
SIGNAL \M[8]~output_o\ : std_logic;
SIGNAL \M[9]~output_o\ : std_logic;
SIGNAL \M[10]~output_o\ : std_logic;
SIGNAL \M[11]~output_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~3clkctrl_outclk\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~2clkctrl_outclk\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~1clkctrl_outclk\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[4]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[3]~81_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[7]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[7]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[6]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[6]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~87_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~93_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[19]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[19]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~99_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~106_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~112_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~124_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL number : std_logic_vector(1 DOWNTO 0);
SIGNAL memory_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL memory_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL memory_0 : std_logic_vector(11 DOWNTO 0);
SIGNAL average : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_A <= A;
ww_clk <= clk;
M <= ww_M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);

\process_0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~2_combout\);

\process_0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~1_combout\);

\process_0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~3_combout\);

-- Location: IOOBUF_X22_Y31_N2
\M[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(0),
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\M[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(1),
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\M[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(2),
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\M[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(3),
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\M[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(4),
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\M[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(5),
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\M[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(6),
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\M[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(7),
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\M[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(8),
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\M[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(9),
	devoe => ww_devoe,
	o => \M[9]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\M[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(10),
	devoe => ww_devoe,
	o => \M[10]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\M[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(11),
	devoe => ww_devoe,
	o => \M[11]~output_o\);

-- Location: IOIBUF_X33_Y28_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X13_Y1_N0
\process_0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (number(0) & \clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datac => \clk~input_o\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X13_Y1_N26
\process_0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!number(0) & \clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datac => \clk~input_o\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X13_Y1_N12
\number[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- number(0) = (!\process_0~4_combout\ & ((\process_0~5_combout\) # (number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~4_combout\,
	datac => \process_0~5_combout\,
	datad => number(0),
	combout => number(0));

-- Location: LCCOMB_X13_Y1_N2
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\clk~input_o\ & (number(1) $ (number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(1),
	datac => \clk~input_o\,
	datad => number(0),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X13_Y1_N8
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\clk~input_o\ & (number(1) $ (!number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(1),
	datac => \clk~input_o\,
	datad => number(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X13_Y1_N10
\number[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- number(1) = (!\comb~0_combout\ & ((\comb~1_combout\) # (number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => number(1),
	combout => number(1));

-- Location: LCCOMB_X15_Y1_N4
\process_0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!number(0) & (number(1) & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number(0),
	datac => number(1),
	datad => \clk~input_o\,
	combout => \process_0~3_combout\);

-- Location: CLKCTRL_G16
\process_0~3clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~3clkctrl_outclk\);

-- Location: LCCOMB_X29_Y29_N2
\memory_2[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(2) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[2]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(2),
	combout => memory_2(2));

-- Location: LCCOMB_X15_Y1_N10
\process_0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (number(0) & (!number(1) & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number(0),
	datac => number(1),
	datad => \clk~input_o\,
	combout => \process_0~2_combout\);

-- Location: CLKCTRL_G17
\process_0~2clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~2clkctrl_outclk\);

-- Location: LCCOMB_X29_Y29_N22
\memory_1[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(2) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[2]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => memory_1(2),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(2));

-- Location: LCCOMB_X15_Y1_N2
\process_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!number(0) & (!number(1) & \clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number(0),
	datac => number(1),
	datad => \clk~input_o\,
	combout => \process_0~1_combout\);

-- Location: CLKCTRL_G19
\process_0~1clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~1clkctrl_outclk\);

-- Location: LCCOMB_X26_Y29_N2
\memory_0[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(2) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[2]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => memory_0(2),
	datad => \process_0~1clkctrl_outclk\,
	combout => memory_0(2));

-- Location: IOIBUF_X16_Y31_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X26_Y29_N0
\memory_1[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(1) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[1]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \process_0~2clkctrl_outclk\,
	datad => memory_1(1),
	combout => memory_1(1));

-- Location: LCCOMB_X27_Y29_N28
\memory_0[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(1) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[1]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	datad => memory_0(1),
	combout => memory_0(1));

-- Location: IOIBUF_X16_Y31_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X27_Y29_N2
\memory_0[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(0) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[0]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	datad => memory_0(0),
	combout => memory_0(0));

-- Location: LCCOMB_X27_Y29_N12
\memory_1[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(0) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[0]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \process_0~2clkctrl_outclk\,
	datad => memory_1(0),
	combout => memory_1(0));

-- Location: LCCOMB_X26_Y29_N6
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (memory_0(0) & (memory_1(0) $ (VCC))) # (!memory_0(0) & (memory_1(0) & VCC))
-- \Add0~1\ = CARRY((memory_0(0) & memory_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(0),
	datab => memory_1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y29_N8
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (memory_1(1) & ((memory_0(1) & (\Add0~1\ & VCC)) # (!memory_0(1) & (!\Add0~1\)))) # (!memory_1(1) & ((memory_0(1) & (!\Add0~1\)) # (!memory_0(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((memory_1(1) & (!memory_0(1) & !\Add0~1\)) # (!memory_1(1) & ((!\Add0~1\) # (!memory_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(1),
	datab => memory_0(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X26_Y29_N10
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((memory_1(2) $ (memory_0(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((memory_1(2) & ((memory_0(2)) # (!\Add0~3\))) # (!memory_1(2) & (memory_0(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(2),
	datab => memory_0(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y29_N14
\memory_2[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(1) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[1]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => memory_2(1),
	datad => \process_0~3clkctrl_outclk\,
	combout => memory_2(1));

-- Location: LCCOMB_X25_Y28_N0
\memory_2[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(0) = (GLOBAL(\process_0~3clkctrl_outclk\) & ((\A[0]~input_o\))) # (!GLOBAL(\process_0~3clkctrl_outclk\) & (memory_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memory_2(0),
	datac => \A[0]~input_o\,
	datad => \process_0~3clkctrl_outclk\,
	combout => memory_2(0));

-- Location: LCCOMB_X25_Y29_N2
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & (memory_2(0) $ (VCC))) # (!\Add0~0_combout\ & (memory_2(0) & VCC))
-- \Add1~1\ = CARRY((\Add0~0_combout\ & memory_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => memory_2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X25_Y29_N4
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (memory_2(1) & ((\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\)))) # (!memory_2(1) & ((\Add0~2_combout\ & (!\Add1~1\)) # (!\Add0~2_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((memory_2(1) & (!\Add0~2_combout\ & !\Add1~1\)) # (!memory_2(1) & ((!\Add1~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(1),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y29_N6
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((memory_2(2) $ (\Add0~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((memory_2(2) & ((\Add0~4_combout\) # (!\Add1~3\))) # (!memory_2(2) & (\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X33_Y25_N1
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X27_Y29_N24
\memory_2[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(4) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[4]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => memory_2(4),
	datad => \process_0~3clkctrl_outclk\,
	combout => memory_2(4));

-- Location: LCCOMB_X27_Y29_N4
\memory_1[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(4) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[4]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => memory_1(4),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(4));

-- Location: LCCOMB_X27_Y29_N22
\memory_0[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(4) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[4]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	datad => memory_0(4),
	combout => memory_0(4));

-- Location: IOIBUF_X33_Y27_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X27_Y29_N6
\memory_1[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(3) = (GLOBAL(\process_0~2clkctrl_outclk\) & ((\A[3]~input_o\))) # (!GLOBAL(\process_0~2clkctrl_outclk\) & (memory_1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(3),
	datab => \A[3]~input_o\,
	datac => \process_0~2clkctrl_outclk\,
	combout => memory_1(3));

-- Location: LCCOMB_X26_Y29_N4
\memory_0[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(3) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[3]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => memory_0(3),
	datad => \process_0~1clkctrl_outclk\,
	combout => memory_0(3));

-- Location: LCCOMB_X26_Y29_N12
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (memory_1(3) & ((memory_0(3) & (\Add0~5\ & VCC)) # (!memory_0(3) & (!\Add0~5\)))) # (!memory_1(3) & ((memory_0(3) & (!\Add0~5\)) # (!memory_0(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((memory_1(3) & (!memory_0(3) & !\Add0~5\)) # (!memory_1(3) & ((!\Add0~5\) # (!memory_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(3),
	datab => memory_0(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y29_N14
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((memory_1(4) $ (memory_0(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((memory_1(4) & ((memory_0(4)) # (!\Add0~7\))) # (!memory_1(4) & (memory_0(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(4),
	datab => memory_0(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y28_N12
\memory_2[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(3) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[3]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(3),
	combout => memory_2(3));

-- Location: LCCOMB_X25_Y29_N8
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (memory_2(3) & ((\Add0~6_combout\ & (\Add1~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add1~5\)))) # (!memory_2(3) & ((\Add0~6_combout\ & (!\Add1~5\)) # (!\Add0~6_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((memory_2(3) & (!\Add0~6_combout\ & !\Add1~5\)) # (!memory_2(3) & ((!\Add1~5\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(3),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y29_N10
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((memory_2(4) $ (\Add0~8_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((memory_2(4) & ((\Add0~8_combout\) # (!\Add1~7\))) # (!memory_2(4) & (\Add0~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(4),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: IOIBUF_X31_Y31_N1
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X25_Y29_N30
\memory_2[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(6) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[6]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => memory_2(6),
	datad => \process_0~3clkctrl_outclk\,
	combout => memory_2(6));

-- Location: LCCOMB_X29_Y29_N12
\memory_0[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(6) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[6]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => memory_0(6),
	datad => \process_0~1clkctrl_outclk\,
	combout => memory_0(6));

-- Location: LCCOMB_X27_Y29_N8
\memory_1[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(6) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[6]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => memory_1(6),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(6));

-- Location: IOIBUF_X29_Y31_N8
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X29_Y29_N30
\memory_0[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(5) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[5]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => memory_0(5),
	datad => \process_0~1clkctrl_outclk\,
	combout => memory_0(5));

-- Location: LCCOMB_X29_Y29_N8
\memory_1[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(5) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[5]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => memory_1(5),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(5));

-- Location: LCCOMB_X26_Y29_N16
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (memory_0(5) & ((memory_1(5) & (\Add0~9\ & VCC)) # (!memory_1(5) & (!\Add0~9\)))) # (!memory_0(5) & ((memory_1(5) & (!\Add0~9\)) # (!memory_1(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((memory_0(5) & (!memory_1(5) & !\Add0~9\)) # (!memory_0(5) & ((!\Add0~9\) # (!memory_1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(5),
	datab => memory_1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y29_N18
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((memory_0(6) $ (memory_1(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((memory_0(6) & ((memory_1(6)) # (!\Add0~11\))) # (!memory_0(6) & (memory_1(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(6),
	datab => memory_1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X29_Y29_N20
\memory_2[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(5) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[5]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(5),
	combout => memory_2(5));

-- Location: LCCOMB_X25_Y29_N12
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (memory_2(5) & ((\Add0~10_combout\ & (\Add1~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~9\)))) # (!memory_2(5) & ((\Add0~10_combout\ & (!\Add1~9\)) # (!\Add0~10_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((memory_2(5) & (!\Add0~10_combout\ & !\Add1~9\)) # (!memory_2(5) & ((!\Add1~9\) # (!\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(5),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y29_N14
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((memory_2(6) $ (\Add0~12_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((memory_2(6) & ((\Add0~12_combout\) # (!\Add1~11\))) # (!memory_2(6) & (\Add0~12_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(6),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X22_Y29_N2
\Div0|auto_generated|divider|divider|op_10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~0_combout\ = \Add1~12_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~1\);

-- Location: IOIBUF_X33_Y28_N8
\A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X26_Y28_N18
\memory_2[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(8) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[8]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(8),
	combout => memory_2(8));

-- Location: LCCOMB_X26_Y28_N10
\memory_1[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(8) = (GLOBAL(\process_0~2clkctrl_outclk\) & ((\A[8]~input_o\))) # (!GLOBAL(\process_0~2clkctrl_outclk\) & (memory_1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(8),
	datab => \A[8]~input_o\,
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(8));

-- Location: LCCOMB_X26_Y28_N0
\memory_0[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(8) = (GLOBAL(\process_0~1clkctrl_outclk\) & ((\A[8]~input_o\))) # (!GLOBAL(\process_0~1clkctrl_outclk\) & (memory_0(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memory_0(8),
	datac => \A[8]~input_o\,
	datad => \process_0~1clkctrl_outclk\,
	combout => memory_0(8));

-- Location: IOIBUF_X33_Y27_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X29_Y29_N26
\memory_1[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(7) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[7]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => memory_1(7),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(7));

-- Location: LCCOMB_X27_Y29_N26
\memory_0[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(7) = (GLOBAL(\process_0~1clkctrl_outclk\) & ((\A[7]~input_o\))) # (!GLOBAL(\process_0~1clkctrl_outclk\) & (memory_0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(7),
	datab => \A[7]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	combout => memory_0(7));

-- Location: LCCOMB_X26_Y29_N20
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (memory_1(7) & ((memory_0(7) & (\Add0~13\ & VCC)) # (!memory_0(7) & (!\Add0~13\)))) # (!memory_1(7) & ((memory_0(7) & (!\Add0~13\)) # (!memory_0(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((memory_1(7) & (!memory_0(7) & !\Add0~13\)) # (!memory_1(7) & ((!\Add0~13\) # (!memory_0(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(7),
	datab => memory_0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X26_Y29_N22
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((memory_1(8) $ (memory_0(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((memory_1(8) & ((memory_0(8)) # (!\Add0~15\))) # (!memory_1(8) & (memory_0(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(8),
	datab => memory_0(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y29_N10
\memory_2[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(7) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[7]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(7),
	combout => memory_2(7));

-- Location: LCCOMB_X25_Y29_N16
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~14_combout\ & ((memory_2(7) & (\Add1~13\ & VCC)) # (!memory_2(7) & (!\Add1~13\)))) # (!\Add0~14_combout\ & ((memory_2(7) & (!\Add1~13\)) # (!memory_2(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\Add0~14_combout\ & (!memory_2(7) & !\Add1~13\)) # (!\Add0~14_combout\ & ((!\Add1~13\) # (!memory_2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => memory_2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X25_Y29_N18
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((memory_2(8) $ (\Add0~16_combout\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((memory_2(8) & ((\Add0~16_combout\) # (!\Add1~15\))) # (!memory_2(8) & (\Add0~16_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(8),
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X23_Y29_N18
\Div0|auto_generated|divider|divider|op_8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~0_combout\ = \Add1~16_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~1\);

-- Location: IOIBUF_X29_Y31_N1
\A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X27_Y29_N30
\memory_1[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(10) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[10]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => memory_1(10),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(10));

-- Location: LCCOMB_X27_Y29_N0
\memory_0[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(10) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[10]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => memory_0(10),
	datac => \process_0~1clkctrl_outclk\,
	combout => memory_0(10));

-- Location: IOIBUF_X31_Y31_N8
\A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X29_Y29_N16
\memory_1[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(9) = (GLOBAL(\process_0~2clkctrl_outclk\) & (\A[9]~input_o\)) # (!GLOBAL(\process_0~2clkctrl_outclk\) & ((memory_1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => memory_1(9),
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(9));

-- Location: LCCOMB_X27_Y29_N16
\memory_0[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(9) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[9]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	datad => memory_0(9),
	combout => memory_0(9));

-- Location: LCCOMB_X26_Y29_N24
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (memory_1(9) & ((memory_0(9) & (\Add0~17\ & VCC)) # (!memory_0(9) & (!\Add0~17\)))) # (!memory_1(9) & ((memory_0(9) & (!\Add0~17\)) # (!memory_0(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((memory_1(9) & (!memory_0(9) & !\Add0~17\)) # (!memory_1(9) & ((!\Add0~17\) # (!memory_0(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(9),
	datab => memory_0(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X26_Y29_N26
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((memory_1(10) $ (memory_0(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((memory_1(10) & ((memory_0(10)) # (!\Add0~19\))) # (!memory_1(10) & (memory_0(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(10),
	datab => memory_0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X29_Y29_N28
\memory_2[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(10) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[10]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(10),
	combout => memory_2(10));

-- Location: LCCOMB_X26_Y28_N24
\memory_2[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(9) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[9]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \process_0~3clkctrl_outclk\,
	datad => memory_2(9),
	combout => memory_2(9));

-- Location: LCCOMB_X25_Y29_N20
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (memory_2(9) & ((\Add0~18_combout\ & (\Add1~17\ & VCC)) # (!\Add0~18_combout\ & (!\Add1~17\)))) # (!memory_2(9) & ((\Add0~18_combout\ & (!\Add1~17\)) # (!\Add0~18_combout\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((memory_2(9) & (!\Add0~18_combout\ & !\Add1~17\)) # (!memory_2(9) & ((!\Add1~17\) # (!\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(9),
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X25_Y29_N22
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\Add0~20_combout\ $ (memory_2(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\Add0~20_combout\ & ((memory_2(10)) # (!\Add1~19\))) # (!\Add0~20_combout\ & (memory_2(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => memory_2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y29_N18
\Div0|auto_generated|divider|divider|op_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~0_combout\ = \Add1~20_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_6~1\ = CARRY(\Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~1\);

-- Location: IOIBUF_X33_Y25_N8
\A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X27_Y29_N20
\memory_0[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_0(11) = (GLOBAL(\process_0~1clkctrl_outclk\) & (\A[11]~input_o\)) # (!GLOBAL(\process_0~1clkctrl_outclk\) & ((memory_0(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \process_0~1clkctrl_outclk\,
	datad => memory_0(11),
	combout => memory_0(11));

-- Location: LCCOMB_X27_Y29_N10
\memory_1[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_1(11) = (GLOBAL(\process_0~2clkctrl_outclk\) & ((\A[11]~input_o\))) # (!GLOBAL(\process_0~2clkctrl_outclk\) & (memory_1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(11),
	datac => \A[11]~input_o\,
	datad => \process_0~2clkctrl_outclk\,
	combout => memory_1(11));

-- Location: LCCOMB_X26_Y29_N28
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (memory_0(11) & ((memory_1(11) & (\Add0~21\ & VCC)) # (!memory_1(11) & (!\Add0~21\)))) # (!memory_0(11) & ((memory_1(11) & (!\Add0~21\)) # (!memory_1(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((memory_0(11) & (!memory_1(11) & !\Add0~21\)) # (!memory_0(11) & ((!\Add0~21\) # (!memory_1(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(11),
	datab => memory_1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X26_Y29_N30
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = !\Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X27_Y29_N18
\memory_2[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- memory_2(11) = (GLOBAL(\process_0~3clkctrl_outclk\) & (\A[11]~input_o\)) # (!GLOBAL(\process_0~3clkctrl_outclk\) & ((memory_2(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => memory_2(11),
	datad => \process_0~3clkctrl_outclk\,
	combout => memory_2(11));

-- Location: LCCOMB_X25_Y29_N24
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (memory_2(11) & ((\Add0~22_combout\ & (\Add1~21\ & VCC)) # (!\Add0~22_combout\ & (!\Add1~21\)))) # (!memory_2(11) & ((\Add0~22_combout\ & (!\Add1~21\)) # (!\Add0~22_combout\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((memory_2(11) & (!\Add0~22_combout\ & !\Add1~21\)) # (!memory_2(11) & ((!\Add1~21\) # (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(11),
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X25_Y29_N26
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add0~24_combout\ & (\Add1~23\ $ (GND))) # (!\Add0~24_combout\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\Add0~24_combout\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X25_Y29_N28
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = \Add1~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~25\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X25_Y29_N0
\Div0|auto_generated|divider|divider|StageOut[4]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[4]~80_combout\ = (!\Add1~24_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \Add1~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[4]~80_combout\);

-- Location: LCCOMB_X24_Y29_N12
\Div0|auto_generated|divider|divider|StageOut[3]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[3]~81_combout\ = (\Add1~24_combout\ & !\Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datad => \Add1~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[3]~81_combout\);

-- Location: LCCOMB_X24_Y29_N0
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \Add1~22_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X24_Y29_N2
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[3]~81_combout\ & (!\Div0|auto_generated|divider|divider|op_5~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[3]~81_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~1\) # (GND)))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~1\) # (!\Div0|auto_generated|divider|divider|StageOut[3]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[3]~81_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X24_Y29_N4
\Div0|auto_generated|divider|divider|op_5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[4]~80_combout\) # (!\Div0|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[4]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	cout => \Div0|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X24_Y29_N6
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = !\Div0|auto_generated|divider|divider|op_5~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\);

-- Location: LCCOMB_X24_Y29_N10
\Div0|auto_generated|divider|divider|StageOut[7]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[7]~82_combout\ = (\Add1~24_combout\ & (!\Add1~26_combout\ & \Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datac => \Add1~26_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[7]~82_combout\);

-- Location: LCCOMB_X24_Y29_N8
\Div0|auto_generated|divider|divider|StageOut[7]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[7]~83_combout\ = (\Div0|auto_generated|divider|divider|op_5~2_combout\ & !\Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[7]~83_combout\);

-- Location: LCCOMB_X24_Y29_N26
\Div0|auto_generated|divider|divider|StageOut[6]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[6]~84_combout\ = (\Add1~22_combout\ & \Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[6]~84_combout\);

-- Location: LCCOMB_X24_Y29_N16
\Div0|auto_generated|divider|divider|StageOut[6]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[6]~85_combout\ = (\Div0|auto_generated|divider|divider|op_5~0_combout\ & !\Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[6]~85_combout\);

-- Location: LCCOMB_X24_Y29_N20
\Div0|auto_generated|divider|divider|op_6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[6]~84_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[6]~84_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[6]~85_combout\ & (!\Div0|auto_generated|divider|divider|op_6~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[6]~85_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[6]~84_combout\ & !\Div0|auto_generated|divider|divider|StageOut[6]~85_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[6]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[6]~85_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1\,
	combout => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X24_Y29_N22
\Div0|auto_generated|divider|divider|op_6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[7]~82_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[7]~83_combout\) # (!\Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[7]~82_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[7]~83_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3\,
	cout => \Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X24_Y29_N24
\Div0|auto_generated|divider|divider|op_6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_combout\ = !\Div0|auto_generated|divider|divider|op_6~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~6_combout\);

-- Location: LCCOMB_X24_Y29_N30
\Div0|auto_generated|divider|divider|StageOut[10]~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~115_combout\ = (\Div0|auto_generated|divider|divider|op_6~6_combout\ & ((\Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\Add1~22_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~6_combout\ & (\Div0|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	datac => \Add1~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~115_combout\);

-- Location: LCCOMB_X24_Y29_N14
\Div0|auto_generated|divider|divider|StageOut[10]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~86_combout\ = (\Div0|auto_generated|divider|divider|op_6~2_combout\ & !\Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~86_combout\);

-- Location: LCCOMB_X23_Y29_N16
\Div0|auto_generated|divider|divider|StageOut[9]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~88_combout\ = (\Div0|auto_generated|divider|divider|op_6~0_combout\ & !\Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~88_combout\);

-- Location: LCCOMB_X24_Y29_N28
\Div0|auto_generated|divider|divider|StageOut[9]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~87_combout\ = (\Add1~20_combout\ & \Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~87_combout\);

-- Location: LCCOMB_X23_Y29_N6
\Div0|auto_generated|divider|divider|op_7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~0_combout\ = \Add1~18_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X23_Y29_N8
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[9]~88_combout\ & (((!\Div0|auto_generated|divider|divider|op_7~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[9]~88_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[9]~87_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[9]~87_combout\ & ((\Div0|auto_generated|divider|divider|op_7~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[9]~88_combout\ & !\Div0|auto_generated|divider|divider|StageOut[9]~87_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~88_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~87_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X23_Y29_N10
\Div0|auto_generated|divider|divider|op_7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[10]~115_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[10]~86_combout\) # (!\Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[10]~115_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[10]~86_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	cout => \Div0|auto_generated|divider|divider|op_7~5_cout\);

-- Location: LCCOMB_X23_Y29_N12
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = !\Div0|auto_generated|divider|divider|op_7~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\);

-- Location: LCCOMB_X23_Y29_N26
\Div0|auto_generated|divider|divider|StageOut[13]~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~116_combout\ = (\Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\Div0|auto_generated|divider|divider|op_6~6_combout\ & (\Add1~20_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~6_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~116_combout\);

-- Location: LCCOMB_X23_Y29_N2
\Div0|auto_generated|divider|divider|StageOut[13]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~89_combout\ = (\Div0|auto_generated|divider|divider|op_7~2_combout\ & !\Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~89_combout\);

-- Location: LCCOMB_X23_Y29_N30
\Div0|auto_generated|divider|divider|StageOut[12]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~91_combout\ = (\Div0|auto_generated|divider|divider|op_7~0_combout\ & !\Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~91_combout\);

-- Location: LCCOMB_X23_Y29_N28
\Div0|auto_generated|divider|divider|StageOut[12]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~90_combout\ = (\Add1~18_combout\ & \Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~90_combout\);

-- Location: LCCOMB_X23_Y29_N20
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[12]~91_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[12]~91_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[12]~90_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[12]~90_combout\ & ((\Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[12]~91_combout\ & !\Div0|auto_generated|divider|divider|StageOut[12]~90_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[12]~91_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[12]~90_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X23_Y29_N22
\Div0|auto_generated|divider|divider|op_8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[13]~116_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[13]~89_combout\) # (!\Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[13]~116_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[13]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	cout => \Div0|auto_generated|divider|divider|op_8~5_cout\);

-- Location: LCCOMB_X23_Y29_N24
\Div0|auto_generated|divider|divider|op_8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_combout\ = !\Div0|auto_generated|divider|divider|op_8~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~6_combout\);

-- Location: LCCOMB_X23_Y29_N4
\Div0|auto_generated|divider|divider|StageOut[16]~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~117_combout\ = (\Div0|auto_generated|divider|divider|op_8~6_combout\ & ((\Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\Add1~18_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & (\Div0|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~0_combout\,
	datab => \Add1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~117_combout\);

-- Location: LCCOMB_X23_Y29_N0
\Div0|auto_generated|divider|divider|StageOut[16]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~92_combout\ = (\Div0|auto_generated|divider|divider|op_8~2_combout\ & !\Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~92_combout\);

-- Location: LCCOMB_X22_Y29_N26
\Div0|auto_generated|divider|divider|StageOut[15]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~94_combout\ = (\Div0|auto_generated|divider|divider|op_8~0_combout\ & !\Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~94_combout\);

-- Location: LCCOMB_X22_Y29_N28
\Div0|auto_generated|divider|divider|StageOut[15]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~93_combout\ = (\Add1~16_combout\ & \Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~93_combout\);

-- Location: LCCOMB_X22_Y29_N14
\Div0|auto_generated|divider|divider|op_9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~0_combout\ = \Add1~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X22_Y29_N16
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[15]~94_combout\ & (((!\Div0|auto_generated|divider|divider|op_9~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[15]~94_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[15]~93_combout\ & (!\Div0|auto_generated|divider|divider|op_9~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[15]~93_combout\ & ((\Div0|auto_generated|divider|divider|op_9~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[15]~94_combout\ & !\Div0|auto_generated|divider|divider|StageOut[15]~93_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~93_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X22_Y29_N18
\Div0|auto_generated|divider|divider|op_9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~117_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[16]~92_combout\) # (!\Div0|auto_generated|divider|divider|op_9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	cout => \Div0|auto_generated|divider|divider|op_9~5_cout\);

-- Location: LCCOMB_X22_Y29_N20
\Div0|auto_generated|divider|divider|op_9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_combout\ = !\Div0|auto_generated|divider|divider|op_9~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~6_combout\);

-- Location: LCCOMB_X22_Y29_N12
\Div0|auto_generated|divider|divider|StageOut[19]~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[19]~118_combout\ = (\Div0|auto_generated|divider|divider|op_9~6_combout\ & ((\Div0|auto_generated|divider|divider|op_8~6_combout\ & (\Add1~16_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~6_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[19]~118_combout\);

-- Location: LCCOMB_X22_Y29_N0
\Div0|auto_generated|divider|divider|StageOut[19]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[19]~95_combout\ = (\Div0|auto_generated|divider|divider|op_9~2_combout\ & !\Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[19]~95_combout\);

-- Location: LCCOMB_X22_Y29_N10
\Div0|auto_generated|divider|divider|StageOut[18]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~96_combout\ = (\Add1~14_combout\ & \Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~96_combout\);

-- Location: LCCOMB_X22_Y29_N24
\Div0|auto_generated|divider|divider|StageOut[18]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~97_combout\ = (\Div0|auto_generated|divider|divider|op_9~0_combout\ & !\Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~97_combout\);

-- Location: LCCOMB_X22_Y29_N4
\Div0|auto_generated|divider|divider|op_10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[18]~96_combout\ & (((!\Div0|auto_generated|divider|divider|op_10~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[18]~96_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[18]~97_combout\ & (!\Div0|auto_generated|divider|divider|op_10~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[18]~97_combout\ & ((\Div0|auto_generated|divider|divider|op_10~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[18]~96_combout\ & !\Div0|auto_generated|divider|divider|StageOut[18]~97_combout\)) # (!\Div0|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~96_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~97_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1\,
	combout => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X22_Y29_N6
\Div0|auto_generated|divider|divider|op_10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[19]~118_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[19]~95_combout\) # (!\Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[19]~118_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[19]~95_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3\,
	cout => \Div0|auto_generated|divider|divider|op_10~5_cout\);

-- Location: LCCOMB_X22_Y29_N8
\Div0|auto_generated|divider|divider|op_10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~6_combout\ = !\Div0|auto_generated|divider|divider|op_10~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~6_combout\);

-- Location: LCCOMB_X22_Y29_N30
\Div0|auto_generated|divider|divider|StageOut[22]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~98_combout\ = (!\Div0|auto_generated|divider|divider|op_10~6_combout\ & \Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~98_combout\);

-- Location: LCCOMB_X22_Y29_N22
\Div0|auto_generated|divider|divider|StageOut[22]~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~119_combout\ = (\Div0|auto_generated|divider|divider|op_10~6_combout\ & ((\Div0|auto_generated|divider|divider|op_9~6_combout\ & (\Add1~14_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_9~6_combout\ & ((\Div0|auto_generated|divider|divider|op_9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~119_combout\);

-- Location: LCCOMB_X21_Y29_N6
\Div0|auto_generated|divider|divider|StageOut[21]~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~100_combout\ = (!\Div0|auto_generated|divider|divider|op_10~6_combout\ & \Div0|auto_generated|divider|divider|op_10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~100_combout\);

-- Location: LCCOMB_X21_Y29_N20
\Div0|auto_generated|divider|divider|StageOut[21]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~99_combout\ = (\Div0|auto_generated|divider|divider|op_10~6_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Add1~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~99_combout\);

-- Location: LCCOMB_X21_Y29_N22
\Div0|auto_generated|divider|divider|op_11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~0_combout\ = \Add1~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_11~1\ = CARRY(\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~1\);

-- Location: LCCOMB_X21_Y29_N24
\Div0|auto_generated|divider|divider|op_11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[21]~100_combout\ & (((!\Div0|auto_generated|divider|divider|op_11~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[21]~100_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[21]~99_combout\ & (!\Div0|auto_generated|divider|divider|op_11~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[21]~99_combout\ & ((\Div0|auto_generated|divider|divider|op_11~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_11~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[21]~100_combout\ & !\Div0|auto_generated|divider|divider|StageOut[21]~99_combout\)) # (!\Div0|auto_generated|divider|divider|op_11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~1\,
	combout => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X21_Y29_N26
\Div0|auto_generated|divider|divider|op_11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[22]~98_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[22]~119_combout\) # (!\Div0|auto_generated|divider|divider|op_11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~119_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~3\,
	cout => \Div0|auto_generated|divider|divider|op_11~5_cout\);

-- Location: LCCOMB_X21_Y29_N28
\Div0|auto_generated|divider|divider|op_11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_combout\ = !\Div0|auto_generated|divider|divider|op_11~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_11~6_combout\);

-- Location: LCCOMB_X21_Y29_N30
\Div0|auto_generated|divider|divider|StageOut[25]~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~120_combout\ = (\Div0|auto_generated|divider|divider|op_11~6_combout\ & ((\Div0|auto_generated|divider|divider|op_10~6_combout\ & ((\Add1~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_10~6_combout\ & (\Div0|auto_generated|divider|divider|op_10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	datab => \Add1~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~120_combout\);

-- Location: LCCOMB_X21_Y29_N16
\Div0|auto_generated|divider|divider|StageOut[25]~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~101_combout\ = (\Div0|auto_generated|divider|divider|op_11~2_combout\ & !\Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~101_combout\);

-- Location: LCCOMB_X21_Y29_N18
\Div0|auto_generated|divider|divider|StageOut[24]~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~102_combout\ = (\Add1~10_combout\ & \Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~102_combout\);

-- Location: LCCOMB_X21_Y29_N4
\Div0|auto_generated|divider|divider|StageOut[24]~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~103_combout\ = (\Div0|auto_generated|divider|divider|op_11~0_combout\ & !\Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~103_combout\);

-- Location: LCCOMB_X21_Y29_N8
\Div0|auto_generated|divider|divider|op_12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~0_combout\ = \Add1~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X21_Y29_N10
\Div0|auto_generated|divider|divider|op_12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[24]~102_combout\ & (((!\Div0|auto_generated|divider|divider|op_12~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[24]~102_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[24]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_12~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[24]~103_combout\ & ((\Div0|auto_generated|divider|divider|op_12~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[24]~102_combout\ & !\Div0|auto_generated|divider|divider|StageOut[24]~103_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~103_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~1\,
	combout => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X21_Y29_N12
\Div0|auto_generated|divider|divider|op_12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~120_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[25]~101_combout\) # (!\Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~120_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~3\,
	cout => \Div0|auto_generated|divider|divider|op_12~5_cout\);

-- Location: LCCOMB_X21_Y29_N14
\Div0|auto_generated|divider|divider|op_12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~6_combout\ = !\Div0|auto_generated|divider|divider|op_12~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_12~6_combout\);

-- Location: LCCOMB_X21_Y30_N26
\Div0|auto_generated|divider|divider|StageOut[27]~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~105_combout\ = (\Add1~8_combout\ & \Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~105_combout\);

-- Location: LCCOMB_X21_Y30_N0
\Div0|auto_generated|divider|divider|StageOut[27]~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~106_combout\ = (\Div0|auto_generated|divider|divider|op_12~0_combout\ & !\Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~106_combout\);

-- Location: LCCOMB_X21_Y30_N18
\Div0|auto_generated|divider|divider|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~0_combout\ = \Add1~6_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X21_Y30_N20
\Div0|auto_generated|divider|divider|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[27]~105_combout\ & (((!\Div0|auto_generated|divider|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[27]~105_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[27]~106_combout\ & (!\Div0|auto_generated|divider|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[27]~106_combout\ & ((\Div0|auto_generated|divider|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[27]~105_combout\ & !\Div0|auto_generated|divider|divider|StageOut[27]~106_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X21_Y29_N0
\Div0|auto_generated|divider|divider|StageOut[28]~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~121_combout\ = (\Div0|auto_generated|divider|divider|op_12~6_combout\ & ((\Div0|auto_generated|divider|divider|op_11~6_combout\ & (\Add1~10_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_11~6_combout\ & ((\Div0|auto_generated|divider|divider|op_11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~121_combout\);

-- Location: LCCOMB_X21_Y30_N16
\Div0|auto_generated|divider|divider|StageOut[28]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~104_combout\ = (\Div0|auto_generated|divider|divider|op_12~2_combout\ & !\Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~104_combout\);

-- Location: LCCOMB_X21_Y30_N22
\Div0|auto_generated|divider|divider|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[28]~121_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[28]~104_combout\) # (!\Div0|auto_generated|divider|divider|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~121_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~104_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	cout => \Div0|auto_generated|divider|divider|op_1~5_cout\);

-- Location: LCCOMB_X21_Y30_N24
\Div0|auto_generated|divider|divider|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~6_combout\ = !\Div0|auto_generated|divider|divider|op_1~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X21_Y30_N6
\Div0|auto_generated|divider|divider|StageOut[31]~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~107_combout\ = (\Div0|auto_generated|divider|divider|op_1~2_combout\ & !\Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~107_combout\);

-- Location: LCCOMB_X21_Y30_N28
\Div0|auto_generated|divider|divider|StageOut[31]~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~122_combout\ = (\Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\Div0|auto_generated|divider|divider|op_12~6_combout\ & (\Add1~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_12~6_combout\ & ((\Div0|auto_generated|divider|divider|op_12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~122_combout\);

-- Location: LCCOMB_X21_Y30_N30
\Div0|auto_generated|divider|divider|StageOut[30]~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~109_combout\ = (\Div0|auto_generated|divider|divider|op_1~0_combout\ & !\Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~109_combout\);

-- Location: LCCOMB_X21_Y30_N4
\Div0|auto_generated|divider|divider|StageOut[30]~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~108_combout\ = (\Add1~6_combout\ & \Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~108_combout\);

-- Location: LCCOMB_X21_Y30_N8
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \Add1~4_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X21_Y30_N10
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[30]~109_combout\ & (((!\Div0|auto_generated|divider|divider|op_2~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[30]~109_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[30]~108_combout\ & (!\Div0|auto_generated|divider|divider|op_2~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[30]~108_combout\ & ((\Div0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[30]~109_combout\ & !\Div0|auto_generated|divider|divider|StageOut[30]~108_combout\)) # (!\Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~109_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~108_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X21_Y30_N12
\Div0|auto_generated|divider|divider|op_2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[31]~107_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[31]~122_combout\) # (!\Div0|auto_generated|divider|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~107_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~122_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	cout => \Div0|auto_generated|divider|divider|op_2~5_cout\);

-- Location: LCCOMB_X21_Y30_N14
\Div0|auto_generated|divider|divider|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~6_combout\ = !\Div0|auto_generated|divider|divider|op_2~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_2~6_combout\);

-- Location: LCCOMB_X22_Y30_N18
\Div0|auto_generated|divider|divider|StageOut[33]~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ = (\Add1~4_combout\ & \Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\);

-- Location: LCCOMB_X22_Y30_N4
\Div0|auto_generated|divider|divider|StageOut[33]~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~112_combout\ = (\Div0|auto_generated|divider|divider|op_2~0_combout\ & !\Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~112_combout\);

-- Location: LCCOMB_X22_Y30_N10
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \Add1~2_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X22_Y30_N12
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~1\)))) # (!\Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[33]~112_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[33]~112_combout\ & ((\Div0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[33]~111_combout\ & !\Div0|auto_generated|divider|divider|StageOut[33]~112_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~111_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~112_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X22_Y30_N6
\Div0|auto_generated|divider|divider|StageOut[34]~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~123_combout\ = (\Div0|auto_generated|divider|divider|op_2~6_combout\ & ((\Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\Add1~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~6_combout\ & (\Div0|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datac => \Add1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~123_combout\);

-- Location: LCCOMB_X22_Y30_N8
\Div0|auto_generated|divider|divider|StageOut[34]~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~110_combout\ = (\Div0|auto_generated|divider|divider|op_2~2_combout\ & !\Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~110_combout\);

-- Location: LCCOMB_X22_Y30_N14
\Div0|auto_generated|divider|divider|op_3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~123_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[34]~110_combout\) # (!\Div0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~123_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~110_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	cout => \Div0|auto_generated|divider|divider|op_3~5_cout\);

-- Location: LCCOMB_X22_Y30_N16
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = !\Div0|auto_generated|divider|divider|op_3~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~5_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\);

-- Location: LCCOMB_X22_Y30_N30
\Div0|auto_generated|divider|divider|StageOut[37]~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\ = (\Div0|auto_generated|divider|divider|op_3~2_combout\ & !\Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\);

-- Location: LCCOMB_X22_Y30_N20
\Div0|auto_generated|divider|divider|StageOut[37]~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~124_combout\ = (\Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\Div0|auto_generated|divider|divider|op_2~6_combout\ & ((\Add1~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~6_combout\ & (\Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Add1~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~124_combout\);

-- Location: LCCOMB_X22_Y30_N0
\Div0|auto_generated|divider|divider|StageOut[36]~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~114_combout\ = (\Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\Add1~2_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \Add1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~114_combout\);

-- Location: LCCOMB_X22_Y30_N22
\Div0|auto_generated|divider|divider|op_4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_cout\ = CARRY((\Add1~0_combout\ & \Div0|auto_generated|divider|divider|StageOut[36]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~114_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X22_Y30_N24
\Div0|auto_generated|divider|divider|op_4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[37]~113_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[37]~124_combout\ & !\Div0|auto_generated|divider|divider|op_4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~113_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~124_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3_cout\);

-- Location: LCCOMB_X22_Y30_N26
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = \Div0|auto_generated|divider|divider|op_4~3_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~3_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\);

-- Location: LCCOMB_X15_Y1_N30
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((!number(1)) # (!\clk~input_o\)) # (!number(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number(0),
	datac => \clk~input_o\,
	datad => number(1),
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G15
\process_0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y30_N28
\average[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(0) = (GLOBAL(\process_0~0clkctrl_outclk\) & (average(0))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => average(0),
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => average(0));

-- Location: LCCOMB_X22_Y30_N2
\average[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(1) = (GLOBAL(\process_0~0clkctrl_outclk\) & (average(1))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => average(1),
	datac => \process_0~0clkctrl_outclk\,
	datad => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => average(1));

-- Location: LCCOMB_X21_Y30_N2
\average[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(2) = (GLOBAL(\process_0~0clkctrl_outclk\) & (average(2))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|op_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => average(2),
	datac => \Div0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => average(2));

-- Location: LCCOMB_X20_Y30_N8
\average[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(3) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(3)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datac => average(3),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(3));

-- Location: LCCOMB_X20_Y29_N4
\average[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(4) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(4)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	datac => average(4),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(4));

-- Location: LCCOMB_X21_Y29_N2
\average[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(5) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(5)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	datab => average(5),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(5));

-- Location: LCCOMB_X20_Y29_N30
\average[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(6) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(6)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datac => average(6),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(6));

-- Location: LCCOMB_X27_Y30_N8
\average[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(7) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(7)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	datac => average(7),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(7));

-- Location: LCCOMB_X23_Y30_N20
\average[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(8) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(8)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => average(8),
	combout => average(8));

-- Location: LCCOMB_X24_Y30_N0
\average[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(9) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(9)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => average(9),
	combout => average(9));

-- Location: LCCOMB_X23_Y29_N14
\average[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(10) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(10)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datac => average(10),
	datad => \process_0~0clkctrl_outclk\,
	combout => average(10));

-- Location: LCCOMB_X25_Y30_N12
\average[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- average(11) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((average(11)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => average(11),
	combout => average(11));

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_M(4) <= \M[4]~output_o\;

ww_M(5) <= \M[5]~output_o\;

ww_M(6) <= \M[6]~output_o\;

ww_M(7) <= \M[7]~output_o\;

ww_M(8) <= \M[8]~output_o\;

ww_M(9) <= \M[9]~output_o\;

ww_M(10) <= \M[10]~output_o\;

ww_M(11) <= \M[11]~output_o\;
END structure;


