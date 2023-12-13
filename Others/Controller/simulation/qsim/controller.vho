-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/16/2023 22:08:56"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	controller IS
    PORT (
	clk : IN std_logic;
	b0 : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(11 DOWNTO 0);
	act : BUFFER std_logic_vector(2 DOWNTO 0);
	at : BUFFER std_logic_vector(9 DOWNTO 0);
	t : BUFFER std_logic_vector(9 DOWNTO 0);
	mc : BUFFER std_logic_vector(9 DOWNTO 0);
	avg : BUFFER std_logic
	);
END controller;

-- Design Ports Information
-- clk	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[5]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[9]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[4]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[8]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[9]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[6]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[7]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[8]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[9]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avg	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_act : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_at : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_t : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_mc : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_avg : std_logic;
SIGNAL \Selector12~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \act[0]~output_o\ : std_logic;
SIGNAL \act[1]~output_o\ : std_logic;
SIGNAL \act[2]~output_o\ : std_logic;
SIGNAL \at[0]~output_o\ : std_logic;
SIGNAL \at[1]~output_o\ : std_logic;
SIGNAL \at[2]~output_o\ : std_logic;
SIGNAL \at[3]~output_o\ : std_logic;
SIGNAL \at[4]~output_o\ : std_logic;
SIGNAL \at[5]~output_o\ : std_logic;
SIGNAL \at[6]~output_o\ : std_logic;
SIGNAL \at[7]~output_o\ : std_logic;
SIGNAL \at[8]~output_o\ : std_logic;
SIGNAL \at[9]~output_o\ : std_logic;
SIGNAL \t[0]~output_o\ : std_logic;
SIGNAL \t[1]~output_o\ : std_logic;
SIGNAL \t[2]~output_o\ : std_logic;
SIGNAL \t[3]~output_o\ : std_logic;
SIGNAL \t[4]~output_o\ : std_logic;
SIGNAL \t[5]~output_o\ : std_logic;
SIGNAL \t[6]~output_o\ : std_logic;
SIGNAL \t[7]~output_o\ : std_logic;
SIGNAL \t[8]~output_o\ : std_logic;
SIGNAL \t[9]~output_o\ : std_logic;
SIGNAL \mc[0]~output_o\ : std_logic;
SIGNAL \mc[1]~output_o\ : std_logic;
SIGNAL \mc[2]~output_o\ : std_logic;
SIGNAL \mc[3]~output_o\ : std_logic;
SIGNAL \mc[4]~output_o\ : std_logic;
SIGNAL \mc[5]~output_o\ : std_logic;
SIGNAL \mc[6]~output_o\ : std_logic;
SIGNAL \mc[7]~output_o\ : std_logic;
SIGNAL \mc[8]~output_o\ : std_logic;
SIGNAL \mc[9]~output_o\ : std_logic;
SIGNAL \avg~output_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \b3~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \as.S5~q\ : std_logic;
SIGNAL \as.S6~q\ : std_logic;
SIGNAL \as.S0~0_combout\ : std_logic;
SIGNAL \as.S0~q\ : std_logic;
SIGNAL \as.S1~0_combout\ : std_logic;
SIGNAL \as.S1~q\ : std_logic;
SIGNAL \as.S2~feeder_combout\ : std_logic;
SIGNAL \as.S2~q\ : std_logic;
SIGNAL \as.S3~q\ : std_logic;
SIGNAL \as.S4~feeder_combout\ : std_logic;
SIGNAL \as.S4~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \cv[0]~1_combout\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \cv[1]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \sat~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \sat[2]~1_combout\ : std_logic;
SIGNAL \sat[2]~2_combout\ : std_logic;
SIGNAL \sat[2]~3_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \sat[2]~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \sat[2]~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sat[2]~6_combout\ : std_logic;
SIGNAL \sat[2]~7_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sat[2]~8_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~1clkctrl_outclk\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \sat[3]~11_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \sat[3]~9_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \sat[3]~10_combout\ : std_logic;
SIGNAL \sat[3]~12_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \sat[4]~13_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \sat[4]~14_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sat[4]~15_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \sat[4]~16_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \sat[5]~17_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \sat[5]~18_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \sat[5]~19_combout\ : std_logic;
SIGNAL \sat[5]~20_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \sat[6]~21_combout\ : std_logic;
SIGNAL \sat[6]~22_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \sat[6]~23_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sat[6]~24_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \sat[7]~27_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \sat[7]~25_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \sat[7]~26_combout\ : std_logic;
SIGNAL \sat[7]~28_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \sat[8]~29_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \sat[8]~30_combout\ : std_logic;
SIGNAL \sat[8]~31_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sat[8]~32_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \sat[9]~35_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \sat[9]~33_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \sat[9]~34_combout\ : std_logic;
SIGNAL \sat[9]~36_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL sat : std_logic_vector(9 DOWNTO 0);
SIGNAL cv : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_b0 <= b0;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_reset <= reset;
ww_A <= A;
act <= ww_act;
at <= ww_at;
t <= ww_t;
mc <= ww_mc;
avg <= ww_avg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector12~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector12~1_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\b3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b3~input_o\);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N9
\act[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \act[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\act[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \act[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\act[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \act[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\at[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(0),
	devoe => ww_devoe,
	o => \at[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\at[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(1),
	devoe => ww_devoe,
	o => \at[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\at[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(2),
	devoe => ww_devoe,
	o => \at[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\at[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(3),
	devoe => ww_devoe,
	o => \at[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\at[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(4),
	devoe => ww_devoe,
	o => \at[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\at[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(5),
	devoe => ww_devoe,
	o => \at[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\at[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(6),
	devoe => ww_devoe,
	o => \at[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\at[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(7),
	devoe => ww_devoe,
	o => \at[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\at[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(8),
	devoe => ww_devoe,
	o => \at[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\at[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sat(9),
	devoe => ww_devoe,
	o => \at[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\t[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\t[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\t[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\t[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\t[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\t[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\t[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\t[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\t[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[8]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\t[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\mc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\mc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\mc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\mc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\mc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\mc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\mc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\mc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\mc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[8]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\mc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mc[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\avg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \avg~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\b3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: CLKCTRL_G2
\b3~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b3~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b3~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y19_N5
\as.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	asdata => \as.S4~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S5~q\);

-- Location: FF_X24_Y19_N19
\as.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	asdata => \as.S5~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S6~q\);

-- Location: LCCOMB_X23_Y19_N14
\as.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S0~0_combout\ = !\as.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \as.S6~q\,
	combout => \as.S0~0_combout\);

-- Location: FF_X23_Y19_N15
\as.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~input_o\,
	d => \as.S0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S0~q\);

-- Location: LCCOMB_X23_Y19_N2
\as.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S1~0_combout\ = !\as.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \as.S0~q\,
	combout => \as.S1~0_combout\);

-- Location: FF_X23_Y19_N3
\as.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~input_o\,
	d => \as.S1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S1~q\);

-- Location: LCCOMB_X23_Y19_N6
\as.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S2~feeder_combout\ = \as.S1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S1~q\,
	combout => \as.S2~feeder_combout\);

-- Location: FF_X23_Y19_N7
\as.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S2~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S2~q\);

-- Location: FF_X24_Y19_N11
\as.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	asdata => \as.S2~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S3~q\);

-- Location: LCCOMB_X24_Y19_N8
\as.S4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S4~feeder_combout\ = \as.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S3~q\,
	combout => \as.S4~feeder_combout\);

-- Location: FF_X24_Y19_N9
\as.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S4~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S4~q\);

-- Location: LCCOMB_X24_Y19_N18
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\as.S4~q\) # ((\as.S2~q\) # ((\as.S6~q\) # (!\as.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S4~q\,
	datab => \as.S2~q\,
	datac => \as.S6~q\,
	datad => \as.S0~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\as.S1~q\) # ((\as.S4~q\) # ((\as.S5~q\) # (!\as.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S1~q\,
	datab => \as.S4~q\,
	datac => \as.S5~q\,
	datad => \as.S0~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\as.S1~q\) # ((\as.S2~q\) # ((\as.S3~q\) # (!\as.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S1~q\,
	datab => \as.S2~q\,
	datac => \as.S3~q\,
	datad => \as.S0~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\cv[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cv[0]~1_combout\ = cv(1) $ (cv(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cv(1),
	datad => cv(0),
	combout => \cv[0]~1_combout\);

-- Location: LCCOMB_X24_Y20_N8
\cv[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- cv(0) = (\cv[1]~0_combout\ & ((!\cv[0]~1_combout\))) # (!\cv[1]~0_combout\ & (cv(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cv(0),
	datac => \cv[1]~0_combout\,
	datad => \cv[0]~1_combout\,
	combout => cv(0));

-- Location: IOIBUF_X23_Y24_N1
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X24_Y20_N30
\cv[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cv[1]~0_combout\ = (\as.S1~q\ & (\b0~input_o\ & ((!cv(1)) # (!cv(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cv(0),
	datab => cv(1),
	datac => \as.S1~q\,
	datad => \b0~input_o\,
	combout => \cv[1]~0_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cv(1) & cv(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cv(1),
	datad => cv(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\cv[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- cv(1) = (\cv[1]~0_combout\ & ((\Equal0~0_combout\))) # (!\cv[1]~0_combout\ & (cv(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cv(1),
	datac => \cv[1]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => cv(1));

-- Location: IOIBUF_X34_Y12_N8
\b2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X23_Y19_N28
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\as.S1~q\ & ((\b2~input_o\) # (\b1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datac => \b1~input_o\,
	datad => \as.S1~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\Selector12~0_combout\ & (cv(1) $ (!cv(0))))) # (!\as.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cv(1),
	datab => \Selector12~0_combout\,
	datac => \as.S0~q\,
	datad => cv(0),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\sat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat~0_combout\ = (!cv(0) & !cv(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cv(0),
	datad => cv(1),
	combout => \sat~0_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = sat(0) $ (VCC)
-- \Add0~1\ = CARRY(sat(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y20_N8
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = sat(0) $ (VCC)
-- \Add3~1\ = CARRY(sat(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X23_Y19_N8
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\sat~0_combout\ & ((\b2~input_o\ & ((\Add3~0_combout\))) # (!\b2~input_o\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \sat~0_combout\,
	datac => \Add3~0_combout\,
	datad => \b2~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # (((!\sat~0_combout\ & sat(0))) # (!\as.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat~0_combout\,
	datab => \Selector3~0_combout\,
	datac => \as.S1~q\,
	datad => sat(0),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X23_Y19_N0
\sat[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(0) = (\Selector2~0_combout\ & (\Selector3~1_combout\)) # (!\Selector2~0_combout\ & ((sat(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Selector3~1_combout\,
	datad => sat(0),
	combout => sat(0));

-- Location: LCCOMB_X23_Y19_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\Selector12~0_combout\ & ((cv(0)) # (!cv(1))))) # (!\as.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cv(0),
	datab => \Selector12~0_combout\,
	datac => \as.S0~q\,
	datad => cv(1),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sat(1) & (!\Add0~1\)) # (!sat(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!sat(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y19_N22
\Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (cv(1) & (sat(1))) # (!cv(1) & ((cv(0) & (sat(1))) # (!cv(0) & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(1),
	datab => cv(1),
	datac => cv(0),
	datad => \Add0~2_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X25_Y20_N2
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = sat(1) $ (VCC)
-- \Add4~1\ = CARRY(sat(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(1),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X19_Y20_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = sat(1) $ (VCC)
-- \Add1~1\ = CARRY(sat(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y19_N30
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\b2~input_o\ & ((\Add4~0_combout\) # ((!\Equal0~0_combout\)))) # (!\b2~input_o\ & (((\Add1~0_combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \Add4~0_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (sat(1) & (\Add3~1\ & VCC)) # (!sat(1) & (!\Add3~1\))
-- \Add3~3\ = CARRY((!sat(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X23_Y19_N26
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\sat~0_combout\ & ((\Selector1~2_combout\ & ((\Add3~2_combout\))) # (!\Selector1~2_combout\ & (\Selector1~5_combout\)))) # (!\sat~0_combout\ & (\Selector1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~5_combout\,
	datab => \sat~0_combout\,
	datac => \Selector1~2_combout\,
	datad => \Add3~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X23_Y19_N10
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\as.S1~q\ & ((\Equal0~0_combout\ & ((\Selector1~2_combout\))) # (!\Equal0~0_combout\ & (\Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \as.S1~q\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X23_Y19_N12
\sat[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(1) = (\Selector0~0_combout\ & (\Selector1~4_combout\)) # (!\Selector0~0_combout\ & ((sat(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \Selector1~4_combout\,
	datad => sat(1),
	combout => sat(1));

-- Location: LCCOMB_X24_Y20_N16
\sat[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~1_combout\ = (cv(0) & ((cv(1)) # (!\b2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cv(0),
	datac => cv(1),
	datad => \b2~input_o\,
	combout => \sat[2]~1_combout\);

-- Location: LCCOMB_X24_Y20_N6
\sat[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~2_combout\ = ((!cv(0) & cv(1))) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cv(0),
	datac => \b2~input_o\,
	datad => cv(1),
	combout => \sat[2]~2_combout\);

-- Location: LCCOMB_X24_Y20_N20
\sat[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~3_combout\ = (\b2~input_o\ & (cv(1) $ (cv(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cv(1),
	datab => cv(0),
	datad => \b2~input_o\,
	combout => \sat[2]~3_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (sat(2) & ((GND) # (!\Add3~3\))) # (!sat(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((sat(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X25_Y20_N4
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (sat(2) & (\Add4~1\ & VCC)) # (!sat(2) & (!\Add4~1\))
-- \Add4~3\ = CARRY((!sat(2) & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(2),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X21_Y20_N0
\sat[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~4_combout\ = (\sat[2]~2_combout\ & (\sat[2]~3_combout\)) # (!\sat[2]~2_combout\ & ((\sat[2]~3_combout\ & ((\Add4~2_combout\))) # (!\sat[2]~3_combout\ & (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~2_combout\,
	datab => \sat[2]~3_combout\,
	datac => \Add3~4_combout\,
	datad => \Add4~2_combout\,
	combout => \sat[2]~4_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = sat(2) $ (VCC)
-- \Add2~1\ = CARRY(sat(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y20_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = sat(2) $ (VCC)
-- \Add5~1\ = CARRY(sat(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(2),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X21_Y20_N2
\sat[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~5_combout\ = (\sat[2]~2_combout\ & ((\sat[2]~4_combout\ & ((\Add5~0_combout\))) # (!\sat[2]~4_combout\ & (\Add2~0_combout\)))) # (!\sat[2]~2_combout\ & (\sat[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~2_combout\,
	datab => \sat[2]~4_combout\,
	datac => \Add2~0_combout\,
	datad => \Add5~0_combout\,
	combout => \sat[2]~5_combout\);

-- Location: LCCOMB_X21_Y20_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (sat(2) & (\Add0~3\ $ (GND))) # (!sat(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((sat(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X24_Y20_N12
\sat[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~6_combout\ = (cv(1)) # (\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cv(1),
	datad => \b2~input_o\,
	combout => \sat[2]~6_combout\);

-- Location: LCCOMB_X21_Y20_N8
\sat[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~7_combout\ = (\sat[2]~1_combout\ & (((\sat[2]~6_combout\)))) # (!\sat[2]~1_combout\ & ((\sat[2]~6_combout\ & (\sat[2]~5_combout\)) # (!\sat[2]~6_combout\ & ((\Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~1_combout\,
	datab => \sat[2]~5_combout\,
	datac => \Add0~4_combout\,
	datad => \sat[2]~6_combout\,
	combout => \sat[2]~7_combout\);

-- Location: LCCOMB_X19_Y20_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (sat(2) & (!\Add1~1\)) # (!sat(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!sat(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X21_Y20_N6
\sat[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[2]~8_combout\ = (\sat[2]~7_combout\ & ((sat(2)) # ((!\sat[2]~1_combout\)))) # (!\sat[2]~7_combout\ & (((\Add1~2_combout\ & \sat[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(2),
	datab => \sat[2]~7_combout\,
	datac => \Add1~2_combout\,
	datad => \sat[2]~1_combout\,
	combout => \sat[2]~8_combout\);

-- Location: LCCOMB_X21_Y20_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\sat[2]~8_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[2]~8_combout\,
	datac => \as.S1~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ((\as.S1~q\ & ((\b2~input_o\) # (\b1~input_o\)))) # (!\as.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datab => \b1~input_o\,
	datac => \as.S0~q\,
	datad => \as.S1~q\,
	combout => \Selector12~1_combout\);

-- Location: CLKCTRL_G8
\Selector12~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector12~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector12~1clkctrl_outclk\);

-- Location: LCCOMB_X21_Y20_N30
\sat[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(2) = (GLOBAL(\Selector12~1clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & (sat(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(2),
	datab => \Selector4~0_combout\,
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(2));

-- Location: LCCOMB_X21_Y20_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sat(3) & (!\Add0~5\)) # (!sat(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!sat(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y20_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (sat(3) & ((GND) # (!\Add1~3\))) # (!sat(3) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((sat(3)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y20_N4
\sat[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[3]~11_combout\ = (\sat[2]~1_combout\ & (((\sat[2]~6_combout\) # (\Add1~4_combout\)))) # (!\sat[2]~1_combout\ & (\Add0~6_combout\ & (!\sat[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \sat[2]~1_combout\,
	datac => \sat[2]~6_combout\,
	datad => \Add1~4_combout\,
	combout => \sat[3]~11_combout\);

-- Location: LCCOMB_X26_Y20_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (sat(3) & (\Add5~1\ & VCC)) # (!sat(3) & (!\Add5~1\))
-- \Add5~3\ = CARRY((!sat(3) & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(3),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X23_Y20_N14
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (sat(3) & (\Add3~5\ & VCC)) # (!sat(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!sat(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X25_Y20_N6
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (sat(3) & (\Add4~3\ $ (GND))) # (!sat(3) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((sat(3) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(3),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X24_Y20_N28
\sat[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[3]~9_combout\ = (\sat[2]~2_combout\ & (((\sat[2]~3_combout\)))) # (!\sat[2]~2_combout\ & ((\sat[2]~3_combout\ & ((\Add4~4_combout\))) # (!\sat[2]~3_combout\ & (\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \sat[2]~2_combout\,
	datac => \sat[2]~3_combout\,
	datad => \Add4~4_combout\,
	combout => \sat[3]~9_combout\);

-- Location: LCCOMB_X26_Y20_N18
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (sat(3) & (!\Add2~1\)) # (!sat(3) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!sat(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X24_Y20_N4
\sat[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[3]~10_combout\ = (\sat[3]~9_combout\ & ((\Add5~2_combout\) # ((!\sat[2]~2_combout\)))) # (!\sat[3]~9_combout\ & (((\sat[2]~2_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \sat[3]~9_combout\,
	datac => \sat[2]~2_combout\,
	datad => \Add2~2_combout\,
	combout => \sat[3]~10_combout\);

-- Location: LCCOMB_X22_Y20_N10
\sat[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[3]~12_combout\ = (\sat[3]~11_combout\ & ((sat(3)) # ((!\sat[2]~6_combout\)))) # (!\sat[3]~11_combout\ & (((\sat[2]~6_combout\ & \sat[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(3),
	datab => \sat[3]~11_combout\,
	datac => \sat[2]~6_combout\,
	datad => \sat[3]~10_combout\,
	combout => \sat[3]~12_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\sat[3]~12_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[3]~12_combout\,
	datad => \as.S1~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\sat[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(3) = (GLOBAL(\Selector12~1clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & (sat(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(3),
	datac => \Selector5~0_combout\,
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(3));

-- Location: LCCOMB_X23_Y20_N16
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (sat(4) & ((GND) # (!\Add3~7\))) # (!sat(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((sat(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X26_Y20_N20
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (sat(4) & (\Add2~3\ $ (GND))) # (!sat(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((sat(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y20_N10
\sat[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[4]~13_combout\ = (\sat[2]~3_combout\ & (((\sat[2]~2_combout\)))) # (!\sat[2]~3_combout\ & ((\sat[2]~2_combout\ & ((\Add2~4_combout\))) # (!\sat[2]~2_combout\ & (\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \sat[2]~3_combout\,
	datac => \Add2~4_combout\,
	datad => \sat[2]~2_combout\,
	combout => \sat[4]~13_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (sat(4) & (\Add4~5\ & VCC)) # (!sat(4) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!sat(4) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(4),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X26_Y20_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (sat(4) & ((GND) # (!\Add5~3\))) # (!sat(4) & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((sat(4)) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(4),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X24_Y20_N24
\sat[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[4]~14_combout\ = (\sat[4]~13_combout\ & (((\Add5~4_combout\) # (!\sat[2]~3_combout\)))) # (!\sat[4]~13_combout\ & (\Add4~6_combout\ & (\sat[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[4]~13_combout\,
	datab => \Add4~6_combout\,
	datac => \sat[2]~3_combout\,
	datad => \Add5~4_combout\,
	combout => \sat[4]~14_combout\);

-- Location: LCCOMB_X21_Y20_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (sat(4) & (\Add0~7\ $ (GND))) # (!sat(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((sat(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X24_Y20_N26
\sat[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[4]~15_combout\ = (\sat[2]~1_combout\ & (((\sat[2]~6_combout\)))) # (!\sat[2]~1_combout\ & ((\sat[2]~6_combout\ & (\sat[4]~14_combout\)) # (!\sat[2]~6_combout\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~1_combout\,
	datab => \sat[4]~14_combout\,
	datac => \sat[2]~6_combout\,
	datad => \Add0~8_combout\,
	combout => \sat[4]~15_combout\);

-- Location: LCCOMB_X19_Y20_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (sat(4) & (!\Add1~5\)) # (!sat(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!sat(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y20_N4
\sat[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[4]~16_combout\ = (\sat[4]~15_combout\ & ((sat(4)) # ((!\sat[2]~1_combout\)))) # (!\sat[4]~15_combout\ & (((\sat[2]~1_combout\ & \Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(4),
	datab => \sat[4]~15_combout\,
	datac => \sat[2]~1_combout\,
	datad => \Add1~6_combout\,
	combout => \sat[4]~16_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\sat[4]~16_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sat[4]~16_combout\,
	datad => \as.S1~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\sat[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(4) = (GLOBAL(\Selector12~1clkctrl_outclk\) & (\Selector6~0_combout\)) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & ((sat(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \Selector12~1clkctrl_outclk\,
	datad => sat(4),
	combout => sat(4));

-- Location: LCCOMB_X25_Y20_N10
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (sat(5) & ((GND) # (!\Add4~7\))) # (!sat(5) & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((sat(5)) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X23_Y20_N18
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (sat(5) & (\Add3~9\ & VCC)) # (!sat(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!sat(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X22_Y20_N22
\sat[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[5]~17_combout\ = (\sat[2]~3_combout\ & ((\sat[2]~2_combout\) # ((\Add4~8_combout\)))) # (!\sat[2]~3_combout\ & (!\sat[2]~2_combout\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~3_combout\,
	datab => \sat[2]~2_combout\,
	datac => \Add4~8_combout\,
	datad => \Add3~10_combout\,
	combout => \sat[5]~17_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (sat(5) & (\Add2~5\ & VCC)) # (!sat(5) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!sat(5) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X26_Y20_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (sat(5) & (!\Add5~5\)) # (!sat(5) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!sat(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X22_Y20_N28
\sat[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[5]~18_combout\ = (\sat[5]~17_combout\ & (((\Add5~6_combout\)) # (!\sat[2]~2_combout\))) # (!\sat[5]~17_combout\ & (\sat[2]~2_combout\ & (\Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[5]~17_combout\,
	datab => \sat[2]~2_combout\,
	datac => \Add2~6_combout\,
	datad => \Add5~6_combout\,
	combout => \sat[5]~18_combout\);

-- Location: LCCOMB_X19_Y20_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (sat(5) & (\Add1~7\ $ (GND))) # (!sat(5) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((sat(5) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y20_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (sat(5) & (!\Add0~9\)) # (!sat(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!sat(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X22_Y20_N26
\sat[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[5]~19_combout\ = (\sat[2]~1_combout\ & ((\Add1~8_combout\) # ((\sat[2]~6_combout\)))) # (!\sat[2]~1_combout\ & (((!\sat[2]~6_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \sat[2]~1_combout\,
	datac => \sat[2]~6_combout\,
	datad => \Add0~10_combout\,
	combout => \sat[5]~19_combout\);

-- Location: LCCOMB_X22_Y20_N12
\sat[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[5]~20_combout\ = (\sat[5]~19_combout\ & (((sat(5)) # (!\sat[2]~6_combout\)))) # (!\sat[5]~19_combout\ & (\sat[5]~18_combout\ & (\sat[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[5]~18_combout\,
	datab => \sat[5]~19_combout\,
	datac => \sat[2]~6_combout\,
	datad => sat(5),
	combout => \sat[5]~20_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\sat[5]~20_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[5]~20_combout\,
	datad => \as.S1~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\sat[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(5) = (GLOBAL(\Selector12~1clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & (sat(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sat(5),
	datac => \Selector7~0_combout\,
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(5));

-- Location: LCCOMB_X25_Y20_N12
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (sat(6) & (\Add4~9\ & VCC)) # (!sat(6) & (!\Add4~9\))
-- \Add4~11\ = CARRY((!sat(6) & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X26_Y20_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (sat(6) & (\Add5~7\ $ (GND))) # (!sat(6) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((sat(6) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(6),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X26_Y20_N24
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (sat(6) & ((GND) # (!\Add2~7\))) # (!sat(6) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((sat(6)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X23_Y20_N20
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (sat(6) & ((GND) # (!\Add3~11\))) # (!sat(6) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((sat(6)) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X25_Y20_N28
\sat[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[6]~21_combout\ = (\sat[2]~3_combout\ & (((\sat[2]~2_combout\)))) # (!\sat[2]~3_combout\ & ((\sat[2]~2_combout\ & (\Add2~8_combout\)) # (!\sat[2]~2_combout\ & ((\Add3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~3_combout\,
	datab => \Add2~8_combout\,
	datac => \sat[2]~2_combout\,
	datad => \Add3~12_combout\,
	combout => \sat[6]~21_combout\);

-- Location: LCCOMB_X25_Y20_N0
\sat[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[6]~22_combout\ = (\sat[2]~3_combout\ & ((\sat[6]~21_combout\ & ((\Add5~8_combout\))) # (!\sat[6]~21_combout\ & (\Add4~10_combout\)))) # (!\sat[2]~3_combout\ & (((\sat[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \sat[2]~3_combout\,
	datac => \Add5~8_combout\,
	datad => \sat[6]~21_combout\,
	combout => \sat[6]~22_combout\);

-- Location: LCCOMB_X21_Y20_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (sat(6) & (\Add0~11\ $ (GND))) # (!sat(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((sat(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y20_N30
\sat[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[6]~23_combout\ = (\sat[2]~6_combout\ & ((\sat[6]~22_combout\) # ((\sat[2]~1_combout\)))) # (!\sat[2]~6_combout\ & (((!\sat[2]~1_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~6_combout\,
	datab => \sat[6]~22_combout\,
	datac => \sat[2]~1_combout\,
	datad => \Add0~12_combout\,
	combout => \sat[6]~23_combout\);

-- Location: LCCOMB_X19_Y20_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (sat(6) & (!\Add1~9\)) # (!sat(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!sat(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y20_N0
\sat[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[6]~24_combout\ = (\sat[6]~23_combout\ & ((sat(6)) # ((!\sat[2]~1_combout\)))) # (!\sat[6]~23_combout\ & (((\sat[2]~1_combout\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[6]~23_combout\,
	datab => sat(6),
	datac => \sat[2]~1_combout\,
	datad => \Add1~10_combout\,
	combout => \sat[6]~24_combout\);

-- Location: LCCOMB_X23_Y20_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\sat[6]~24_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[6]~24_combout\,
	datad => \as.S1~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\sat[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(6) = (GLOBAL(\Selector12~1clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & (sat(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(6),
	datac => \Selector8~0_combout\,
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(6));

-- Location: LCCOMB_X19_Y20_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (sat(7) & (\Add1~11\ $ (GND))) # (!sat(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((sat(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y20_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (sat(7) & (!\Add0~13\)) # (!sat(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!sat(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y20_N0
\sat[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[7]~27_combout\ = (\sat[2]~6_combout\ & (\sat[2]~1_combout\)) # (!\sat[2]~6_combout\ & ((\sat[2]~1_combout\ & (\Add1~12_combout\)) # (!\sat[2]~1_combout\ & ((\Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~6_combout\,
	datab => \sat[2]~1_combout\,
	datac => \Add1~12_combout\,
	datad => \Add0~14_combout\,
	combout => \sat[7]~27_combout\);

-- Location: LCCOMB_X26_Y20_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (sat(7) & (\Add5~9\ & VCC)) # (!sat(7) & (!\Add5~9\))
-- \Add5~11\ = CARRY((!sat(7) & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(7),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X23_Y20_N22
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (sat(7) & (\Add3~13\ & VCC)) # (!sat(7) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!sat(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X25_Y20_N14
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (sat(7) & ((GND) # (!\Add4~11\))) # (!sat(7) & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((sat(7)) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X22_Y20_N8
\sat[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[7]~25_combout\ = (\sat[2]~3_combout\ & (((\sat[2]~2_combout\) # (\Add4~12_combout\)))) # (!\sat[2]~3_combout\ & (\Add3~14_combout\ & (!\sat[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~3_combout\,
	datab => \Add3~14_combout\,
	datac => \sat[2]~2_combout\,
	datad => \Add4~12_combout\,
	combout => \sat[7]~25_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (sat(7) & (!\Add2~9\)) # (!sat(7) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!sat(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X22_Y20_N6
\sat[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[7]~26_combout\ = (\sat[7]~25_combout\ & ((\Add5~10_combout\) # ((!\sat[2]~2_combout\)))) # (!\sat[7]~25_combout\ & (((\Add2~10_combout\ & \sat[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \sat[7]~25_combout\,
	datac => \Add2~10_combout\,
	datad => \sat[2]~2_combout\,
	combout => \sat[7]~26_combout\);

-- Location: LCCOMB_X22_Y20_N18
\sat[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[7]~28_combout\ = (\sat[7]~27_combout\ & ((sat(7)) # ((!\sat[2]~6_combout\)))) # (!\sat[7]~27_combout\ & (((\sat[2]~6_combout\ & \sat[7]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[7]~27_combout\,
	datab => sat(7),
	datac => \sat[2]~6_combout\,
	datad => \sat[7]~26_combout\,
	combout => \sat[7]~28_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\sat[7]~28_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[7]~28_combout\,
	datad => \as.S1~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\sat[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(7) = (GLOBAL(\Selector12~1clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & (sat(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(7),
	datac => \Selector9~0_combout\,
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(7));

-- Location: LCCOMB_X21_Y20_N26
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (sat(8) & (\Add0~15\ $ (GND))) # (!sat(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((sat(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X23_Y20_N24
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (sat(8) & ((GND) # (!\Add3~15\))) # (!sat(8) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((sat(8)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X26_Y20_N28
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (sat(8) & (\Add2~11\ $ (GND))) # (!sat(8) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((sat(8) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X25_Y20_N20
\sat[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[8]~29_combout\ = (\sat[2]~3_combout\ & (\sat[2]~2_combout\)) # (!\sat[2]~3_combout\ & ((\sat[2]~2_combout\ & ((\Add2~12_combout\))) # (!\sat[2]~2_combout\ & (\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~3_combout\,
	datab => \sat[2]~2_combout\,
	datac => \Add3~16_combout\,
	datad => \Add2~12_combout\,
	combout => \sat[8]~29_combout\);

-- Location: LCCOMB_X26_Y20_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (sat(8) & ((GND) # (!\Add5~11\))) # (!sat(8) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((sat(8)) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(8),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X25_Y20_N16
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (sat(8) & (\Add4~13\ & VCC)) # (!sat(8) & (!\Add4~13\))
-- \Add4~15\ = CARRY((!sat(8) & !\Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sat(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X25_Y20_N22
\sat[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[8]~30_combout\ = (\sat[2]~3_combout\ & ((\sat[8]~29_combout\ & (\Add5~12_combout\)) # (!\sat[8]~29_combout\ & ((\Add4~14_combout\))))) # (!\sat[2]~3_combout\ & (\sat[8]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~3_combout\,
	datab => \sat[8]~29_combout\,
	datac => \Add5~12_combout\,
	datad => \Add4~14_combout\,
	combout => \sat[8]~30_combout\);

-- Location: LCCOMB_X25_Y20_N24
\sat[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[8]~31_combout\ = (\sat[2]~6_combout\ & ((\sat[2]~1_combout\) # ((\sat[8]~30_combout\)))) # (!\sat[2]~6_combout\ & (!\sat[2]~1_combout\ & (\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~6_combout\,
	datab => \sat[2]~1_combout\,
	datac => \Add0~16_combout\,
	datad => \sat[8]~30_combout\,
	combout => \sat[8]~31_combout\);

-- Location: LCCOMB_X19_Y20_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (sat(8) & (!\Add1~13\)) # (!sat(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!sat(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sat(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X25_Y20_N26
\sat[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[8]~32_combout\ = (\sat[8]~31_combout\ & ((sat(8)) # ((!\sat[2]~1_combout\)))) # (!\sat[8]~31_combout\ & (((\sat[2]~1_combout\ & \Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sat(8),
	datab => \sat[8]~31_combout\,
	datac => \sat[2]~1_combout\,
	datad => \Add1~14_combout\,
	combout => \sat[8]~32_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\sat[8]~32_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[8]~32_combout\,
	datac => \as.S1~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\sat[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(8) = (GLOBAL(\Selector12~1clkctrl_outclk\) & (\Selector10~0_combout\)) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & ((sat(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => sat(8),
	datad => \Selector12~1clkctrl_outclk\,
	combout => sat(8));

-- Location: LCCOMB_X19_Y20_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (!sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X21_Y20_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X19_Y20_N22
\sat[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[9]~35_combout\ = (\sat[2]~1_combout\ & ((\Add1~16_combout\) # ((\sat[2]~6_combout\)))) # (!\sat[2]~1_combout\ & (((!\sat[2]~6_combout\ & \Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~1_combout\,
	datab => \Add1~16_combout\,
	datac => \sat[2]~6_combout\,
	datad => \Add0~18_combout\,
	combout => \sat[9]~35_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add3~17\ $ (!sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X25_Y20_N18
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X19_Y20_N26
\sat[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[9]~33_combout\ = (\sat[2]~2_combout\ & (\sat[2]~3_combout\)) # (!\sat[2]~2_combout\ & ((\sat[2]~3_combout\ & ((\Add4~16_combout\))) # (!\sat[2]~3_combout\ & (\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[2]~2_combout\,
	datab => \sat[2]~3_combout\,
	datac => \Add3~18_combout\,
	datad => \Add4~16_combout\,
	combout => \sat[9]~33_combout\);

-- Location: LCCOMB_X26_Y20_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add5~13\ $ (!sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (sat(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sat(9),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X19_Y20_N20
\sat[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[9]~34_combout\ = (\sat[9]~33_combout\ & (((\Add5~14_combout\)) # (!\sat[2]~2_combout\))) # (!\sat[9]~33_combout\ & (\sat[2]~2_combout\ & ((\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[9]~33_combout\,
	datab => \sat[2]~2_combout\,
	datac => \Add5~14_combout\,
	datad => \Add2~14_combout\,
	combout => \sat[9]~34_combout\);

-- Location: LCCOMB_X19_Y20_N28
\sat[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat[9]~36_combout\ = (\sat[9]~35_combout\ & ((sat(9)) # ((!\sat[2]~6_combout\)))) # (!\sat[9]~35_combout\ & (((\sat[9]~34_combout\ & \sat[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat[9]~35_combout\,
	datab => sat(9),
	datac => \sat[9]~34_combout\,
	datad => \sat[2]~6_combout\,
	combout => \sat[9]~36_combout\);

-- Location: LCCOMB_X19_Y20_N18
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\sat[9]~36_combout\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sat[9]~36_combout\,
	datad => \as.S1~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\sat[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- sat(9) = (GLOBAL(\Selector12~1clkctrl_outclk\) & (\Selector11~0_combout\)) # (!GLOBAL(\Selector12~1clkctrl_outclk\) & ((sat(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datac => \Selector12~1clkctrl_outclk\,
	datad => sat(9),
	combout => sat(9));

-- Location: IOIBUF_X34_Y2_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

ww_act(0) <= \act[0]~output_o\;

ww_act(1) <= \act[1]~output_o\;

ww_act(2) <= \act[2]~output_o\;

ww_at(0) <= \at[0]~output_o\;

ww_at(1) <= \at[1]~output_o\;

ww_at(2) <= \at[2]~output_o\;

ww_at(3) <= \at[3]~output_o\;

ww_at(4) <= \at[4]~output_o\;

ww_at(5) <= \at[5]~output_o\;

ww_at(6) <= \at[6]~output_o\;

ww_at(7) <= \at[7]~output_o\;

ww_at(8) <= \at[8]~output_o\;

ww_at(9) <= \at[9]~output_o\;

ww_t(0) <= \t[0]~output_o\;

ww_t(1) <= \t[1]~output_o\;

ww_t(2) <= \t[2]~output_o\;

ww_t(3) <= \t[3]~output_o\;

ww_t(4) <= \t[4]~output_o\;

ww_t(5) <= \t[5]~output_o\;

ww_t(6) <= \t[6]~output_o\;

ww_t(7) <= \t[7]~output_o\;

ww_t(8) <= \t[8]~output_o\;

ww_t(9) <= \t[9]~output_o\;

ww_mc(0) <= \mc[0]~output_o\;

ww_mc(1) <= \mc[1]~output_o\;

ww_mc(2) <= \mc[2]~output_o\;

ww_mc(3) <= \mc[3]~output_o\;

ww_mc(4) <= \mc[4]~output_o\;

ww_mc(5) <= \mc[5]~output_o\;

ww_mc(6) <= \mc[6]~output_o\;

ww_mc(7) <= \mc[7]~output_o\;

ww_mc(8) <= \mc[8]~output_o\;

ww_mc(9) <= \mc[9]~output_o\;

ww_avg <= \avg~output_o\;
END structure;


