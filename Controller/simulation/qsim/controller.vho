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

-- DATE "11/25/2023 17:02:41"

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
	trg : BUFFER std_logic;
	avg : BUFFER std_logic
	);
END controller;

-- Design Ports Information
-- A[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[4]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[7]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[8]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[9]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[7]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[8]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[9]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[8]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[9]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trg	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avg	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_trg : std_logic;
SIGNAL ww_avg : std_logic;
SIGNAL \bx~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b3~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \trg~output_o\ : std_logic;
SIGNAL \avg~output_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \b3~inputclkctrl_outclk\ : std_logic;
SIGNAL \as.S3~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \as.S3~q\ : std_logic;
SIGNAL \as.S4~feeder_combout\ : std_logic;
SIGNAL \as.S4~q\ : std_logic;
SIGNAL \as.S5~feeder_combout\ : std_logic;
SIGNAL \as.S5~q\ : std_logic;
SIGNAL \as.S6~q\ : std_logic;
SIGNAL \as.S0~0_combout\ : std_logic;
SIGNAL \as.S0~q\ : std_logic;
SIGNAL \as.S1~0_combout\ : std_logic;
SIGNAL \as.S1~q\ : std_logic;
SIGNAL \as.S2~feeder_combout\ : std_logic;
SIGNAL \as.S2~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \bx~combout\ : std_logic;
SIGNAL \bx~clkctrl_outclk\ : std_logic;
SIGNAL \at~16_combout\ : std_logic;
SIGNAL \av0[1]~0_combout\ : std_logic;
SIGNAL \av0[1]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \at[7]~7_combout\ : std_logic;
SIGNAL \at[4]~30_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \at[4]~29_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \at~50_combout\ : std_logic;
SIGNAL \at~51_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \at[8]~8_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \at~52_combout\ : std_logic;
SIGNAL \at~53_combout\ : std_logic;
SIGNAL \at[4]~33_combout\ : std_logic;
SIGNAL \at~26_combout\ : std_logic;
SIGNAL \at[4]~40_combout\ : std_logic;
SIGNAL \at[2]~41_combout\ : std_logic;
SIGNAL \at[8]~reg0_q\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \at[9]~9_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \at~54_combout\ : std_logic;
SIGNAL \at~55_combout\ : std_logic;
SIGNAL \at[9]~reg0_q\ : std_logic;
SIGNAL \at~13_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \at[4]~38_combout\ : std_logic;
SIGNAL \at[4]~35_combout\ : std_logic;
SIGNAL \at[4]~36_combout\ : std_logic;
SIGNAL \at[4]~37_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \at[4]~34_combout\ : std_logic;
SIGNAL \at[4]~39_combout\ : std_logic;
SIGNAL \at[7]~reg0_q\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \at[4]~10_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \at~21_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \at~25_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \at~22_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \at~23_combout\ : std_logic;
SIGNAL \at~24_combout\ : std_logic;
SIGNAL \at~27_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \at~28_combout\ : std_logic;
SIGNAL \at[1]~1_combout\ : std_logic;
SIGNAL \at[1]~reg0_q\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \at[2]~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \at~31_combout\ : std_logic;
SIGNAL \at~32_combout\ : std_logic;
SIGNAL \at[2]~reg0_q\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \at[3]~3_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \at~42_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \at~43_combout\ : std_logic;
SIGNAL \at[3]~reg0_q\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \at[4]~4_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \at~44_combout\ : std_logic;
SIGNAL \at~45_combout\ : std_logic;
SIGNAL \at[4]~reg0_q\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \at[5]~5_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \at~46_combout\ : std_logic;
SIGNAL \at~47_combout\ : std_logic;
SIGNAL \at[5]~reg0_q\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \at[6]~6_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \at~48_combout\ : std_logic;
SIGNAL \at~49_combout\ : std_logic;
SIGNAL \at[6]~reg0_q\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \at~20_combout\ : std_logic;
SIGNAL \at~11_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \at~17_combout\ : std_logic;
SIGNAL \at~12_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \at~14_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \at~15_combout\ : std_logic;
SIGNAL \at~18_combout\ : std_logic;
SIGNAL \at~19_combout\ : std_logic;
SIGNAL \at[0]~0_combout\ : std_logic;
SIGNAL \at[0]~reg0_q\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \t[1]~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clk_div~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \t[9]~12_combout\ : std_logic;
SIGNAL \t[1]~reg0_q\ : std_logic;
SIGNAL \t[1]~11\ : std_logic;
SIGNAL \t[2]~13_combout\ : std_logic;
SIGNAL \t[2]~reg0_q\ : std_logic;
SIGNAL \t[2]~14\ : std_logic;
SIGNAL \t[3]~15_combout\ : std_logic;
SIGNAL \t[3]~reg0_q\ : std_logic;
SIGNAL \t[3]~16\ : std_logic;
SIGNAL \t[4]~17_combout\ : std_logic;
SIGNAL \t[4]~reg0_q\ : std_logic;
SIGNAL \t[4]~18\ : std_logic;
SIGNAL \t[5]~19_combout\ : std_logic;
SIGNAL \t[5]~reg0_q\ : std_logic;
SIGNAL \t[5]~20\ : std_logic;
SIGNAL \t[6]~21_combout\ : std_logic;
SIGNAL \t[6]~reg0_q\ : std_logic;
SIGNAL \t[6]~22\ : std_logic;
SIGNAL \t[7]~23_combout\ : std_logic;
SIGNAL \t[7]~reg0_q\ : std_logic;
SIGNAL \t[7]~24\ : std_logic;
SIGNAL \t[8]~25_combout\ : std_logic;
SIGNAL \t[8]~reg0_q\ : std_logic;
SIGNAL \t[8]~26\ : std_logic;
SIGNAL \t[9]~27_combout\ : std_logic;
SIGNAL \t[9]~reg0_q\ : std_logic;
SIGNAL \LessThan12~1_cout\ : std_logic;
SIGNAL \LessThan12~3_cout\ : std_logic;
SIGNAL \LessThan12~5_cout\ : std_logic;
SIGNAL \LessThan12~7_cout\ : std_logic;
SIGNAL \LessThan12~9_cout\ : std_logic;
SIGNAL \LessThan12~11_cout\ : std_logic;
SIGNAL \LessThan12~13_cout\ : std_logic;
SIGNAL \LessThan12~15_cout\ : std_logic;
SIGNAL \LessThan12~17_cout\ : std_logic;
SIGNAL \LessThan12~18_combout\ : std_logic;
SIGNAL \trg$latch~combout\ : std_logic;
SIGNAL \t[0]~9_combout\ : std_logic;
SIGNAL \t[0]~reg0_q\ : std_logic;
SIGNAL \mc~16_combout\ : std_logic;
SIGNAL \av1[1]~0_combout\ : std_logic;
SIGNAL \av1[1]~feeder_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \mc~21_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \mc[7]~7_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \mc[2]~30_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \mc[2]~29_combout\ : std_logic;
SIGNAL \mc~50_combout\ : std_logic;
SIGNAL \mc~51_combout\ : std_logic;
SIGNAL \mc[2]~36_combout\ : std_logic;
SIGNAL \mc[2]~33_combout\ : std_logic;
SIGNAL \mc[2]~35_combout\ : std_logic;
SIGNAL \mc[2]~37_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \mc[8]~8_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \mc~52_combout\ : std_logic;
SIGNAL \mc~53_combout\ : std_logic;
SIGNAL \mc~26_combout\ : std_logic;
SIGNAL \mc[2]~40_combout\ : std_logic;
SIGNAL \mc[2]~41_combout\ : std_logic;
SIGNAL \mc[8]~reg0_q\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \mc[9]~9_combout\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \mc~54_combout\ : std_logic;
SIGNAL \mc~55_combout\ : std_logic;
SIGNAL \mc[9]~reg0_q\ : std_logic;
SIGNAL \mc~13_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \mc[2]~38_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \mc[2]~34_combout\ : std_logic;
SIGNAL \mc[2]~39_combout\ : std_logic;
SIGNAL \mc[7]~reg0_q\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \mc~20_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \mc~25_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \mc~23_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \mc~22_combout\ : std_logic;
SIGNAL \mc~24_combout\ : std_logic;
SIGNAL \mc~27_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \mc~28_combout\ : std_logic;
SIGNAL \mc[1]~1_combout\ : std_logic;
SIGNAL \mc[1]~reg0_q\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \mc[2]~2_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \mc~31_combout\ : std_logic;
SIGNAL \mc~32_combout\ : std_logic;
SIGNAL \mc[2]~reg0_q\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \mc[3]~3_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \mc~42_combout\ : std_logic;
SIGNAL \mc~43_combout\ : std_logic;
SIGNAL \mc[3]~reg0_q\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \mc[4]~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \mc~44_combout\ : std_logic;
SIGNAL \mc~45_combout\ : std_logic;
SIGNAL \mc[4]~reg0_q\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \mc[5]~5_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \mc~46_combout\ : std_logic;
SIGNAL \mc~47_combout\ : std_logic;
SIGNAL \mc[5]~reg0_q\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \mc[6]~6_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \mc~48_combout\ : std_logic;
SIGNAL \mc~49_combout\ : std_logic;
SIGNAL \mc[6]~reg0_q\ : std_logic;
SIGNAL \mc[2]~10_combout\ : std_logic;
SIGNAL \mc~11_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \mc~17_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \mc~15_combout\ : std_logic;
SIGNAL \mc~12_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \mc~14_combout\ : std_logic;
SIGNAL \mc~18_combout\ : std_logic;
SIGNAL \mc~19_combout\ : std_logic;
SIGNAL \mc[0]~0_combout\ : std_logic;
SIGNAL \mc[0]~reg0_q\ : std_logic;
SIGNAL \avg~0_combout\ : std_logic;
SIGNAL \avg~1_combout\ : std_logic;
SIGNAL \avg~reg0_q\ : std_logic;
SIGNAL av0 : std_logic_vector(1 DOWNTO 0);
SIGNAL clk_div : std_logic_vector(25 DOWNTO 0);
SIGNAL av1 : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_b2~input_o\ : std_logic;
SIGNAL \ALT_INV_trg$latch~combout\ : std_logic;
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
trg <= ww_trg;
avg <= ww_avg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bx~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bx~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\b3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b3~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_b2~input_o\ <= NOT \b2~input_o\;
\ALT_INV_trg$latch~combout\ <= NOT \trg$latch~combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X30_Y24_N2
\at[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[0]~reg0_q\,
	devoe => ww_devoe,
	o => \at[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\at[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[1]~reg0_q\,
	devoe => ww_devoe,
	o => \at[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\at[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[2]~reg0_q\,
	devoe => ww_devoe,
	o => \at[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\at[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[3]~reg0_q\,
	devoe => ww_devoe,
	o => \at[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\at[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[4]~reg0_q\,
	devoe => ww_devoe,
	o => \at[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\at[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[5]~reg0_q\,
	devoe => ww_devoe,
	o => \at[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\at[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[6]~reg0_q\,
	devoe => ww_devoe,
	o => \at[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\at[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[7]~reg0_q\,
	devoe => ww_devoe,
	o => \at[7]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\at[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[8]~reg0_q\,
	devoe => ww_devoe,
	o => \at[8]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\at[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \at[9]~reg0_q\,
	devoe => ww_devoe,
	o => \at[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\t[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[0]~reg0_q\,
	devoe => ww_devoe,
	o => \t[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\t[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[1]~reg0_q\,
	devoe => ww_devoe,
	o => \t[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\t[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[2]~reg0_q\,
	devoe => ww_devoe,
	o => \t[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\t[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[3]~reg0_q\,
	devoe => ww_devoe,
	o => \t[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\t[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[4]~reg0_q\,
	devoe => ww_devoe,
	o => \t[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\t[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[5]~reg0_q\,
	devoe => ww_devoe,
	o => \t[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\t[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[6]~reg0_q\,
	devoe => ww_devoe,
	o => \t[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\t[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[7]~reg0_q\,
	devoe => ww_devoe,
	o => \t[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\t[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[8]~reg0_q\,
	devoe => ww_devoe,
	o => \t[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\t[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t[9]~reg0_q\,
	devoe => ww_devoe,
	o => \t[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\mc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[0]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\mc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[1]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\mc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[2]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\mc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[3]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\mc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[4]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\mc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[5]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\mc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[6]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\mc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[7]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\mc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[8]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[8]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\mc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mc[9]~reg0_q\,
	devoe => ww_devoe,
	o => \mc[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\trg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trg$latch~combout\,
	devoe => ww_devoe,
	o => \trg~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\avg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \avg~reg0_q\,
	devoe => ww_devoe,
	o => \avg~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\b3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X26_Y16_N30
\as.S3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S3~feeder_combout\ = \as.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S2~q\,
	combout => \as.S3~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G0
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

-- Location: FF_X26_Y16_N31
\as.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S3~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S3~q\);

-- Location: LCCOMB_X26_Y16_N18
\as.S4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S4~feeder_combout\ = \as.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \as.S3~q\,
	combout => \as.S4~feeder_combout\);

-- Location: FF_X26_Y16_N19
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

-- Location: LCCOMB_X26_Y16_N16
\as.S5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S5~feeder_combout\ = \as.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S4~q\,
	combout => \as.S5~feeder_combout\);

-- Location: FF_X26_Y16_N17
\as.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S5~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S5~q\);

-- Location: FF_X26_Y16_N27
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

-- Location: LCCOMB_X26_Y16_N24
\as.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S0~0_combout\ = !\as.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \as.S6~q\,
	combout => \as.S0~0_combout\);

-- Location: FF_X26_Y16_N25
\as.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S0~q\);

-- Location: LCCOMB_X26_Y16_N0
\as.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S1~0_combout\ = !\as.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S0~q\,
	combout => \as.S1~0_combout\);

-- Location: FF_X26_Y16_N1
\as.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	d => \as.S1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S1~q\);

-- Location: LCCOMB_X25_Y20_N2
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

-- Location: FF_X25_Y20_N3
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

-- Location: LCCOMB_X26_Y16_N26
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\as.S2~q\) # (((\as.S6~q\) # (\as.S4~q\)) # (!\as.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S2~q\,
	datab => \as.S0~q\,
	datac => \as.S6~q\,
	datad => \as.S4~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X26_Y16_N22
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\as.S1~q\) # (((\as.S5~q\) # (\as.S4~q\)) # (!\as.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S1~q\,
	datab => \as.S0~q\,
	datac => \as.S5~q\,
	datad => \as.S4~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X26_Y16_N12
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\as.S3~q\) # (((\as.S1~q\) # (\as.S2~q\)) # (!\as.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S3~q\,
	datab => \as.S0~q\,
	datac => \as.S1~q\,
	datad => \as.S2~q\,
	combout => \WideOr0~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

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
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X33_Y12_N2
bx : cycloneive_lcell_comb
-- Equation(s):
-- \bx~combout\ = LCELL((\b1~input_o\) # ((\b2~input_o\) # (\b0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \b2~input_o\,
	datad => \b0~input_o\,
	combout => \bx~combout\);

-- Location: CLKCTRL_G6
\bx~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bx~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bx~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y17_N28
\at~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~16_combout\ = av0(1) $ (!av0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datac => av0(0),
	combout => \at~16_combout\);

-- Location: LCCOMB_X26_Y17_N26
\av0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \av0[1]~0_combout\ = (\b0~input_o\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~input_o\,
	datad => \as.S1~q\,
	combout => \av0[1]~0_combout\);

-- Location: FF_X26_Y17_N29
\av0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at~16_combout\,
	ena => \av0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av0(0));

-- Location: LCCOMB_X26_Y17_N30
\av0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \av0[1]~feeder_combout\ = av0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => av0(0),
	combout => \av0[1]~feeder_combout\);

-- Location: FF_X26_Y17_N31
\av0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \av0[1]~feeder_combout\,
	ena => \av0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av0(1));

-- Location: LCCOMB_X30_Y15_N10
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!av0(1) & av0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => av0(1),
	datad => av0(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X31_Y16_N12
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \at[1]~reg0_q\ $ (VCC)
-- \Add6~1\ = CARRY(\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X29_Y16_N18
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\at[6]~reg0_q\ & ((GND) # (!\Add5~11\))) # (!\at[6]~reg0_q\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\at[6]~reg0_q\) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X29_Y16_N20
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\at[7]~reg0_q\ & (\Add5~13\ & VCC)) # (!\at[7]~reg0_q\ & (!\Add5~13\))
-- \Add5~15\ = CARRY((!\at[7]~reg0_q\ & !\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X31_Y16_N20
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\at[5]~reg0_q\ & ((GND) # (!\Add6~7\))) # (!\at[5]~reg0_q\ & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((\at[5]~reg0_q\) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X31_Y16_N22
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\at[6]~reg0_q\ & (\Add6~9\ & VCC)) # (!\at[6]~reg0_q\ & (!\Add6~9\))
-- \Add6~11\ = CARRY((!\at[6]~reg0_q\ & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X31_Y16_N24
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\at[7]~reg0_q\ & ((GND) # (!\Add6~11\))) # (!\at[7]~reg0_q\ & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((\at[7]~reg0_q\) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X30_Y15_N0
\at[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[7]~7_combout\ = (\Equal1~0_combout\ & ((\Add6~12_combout\))) # (!\Equal1~0_combout\ & (\Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add5~14_combout\,
	datad => \Add6~12_combout\,
	combout => \at[7]~7_combout\);

-- Location: LCCOMB_X29_Y15_N30
\at[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~30_combout\ = (av0(1) & ((!av0(0)))) # (!av0(1) & (\b2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => av0(0),
	datad => av0(1),
	combout => \at[4]~30_combout\);

-- Location: LCCOMB_X28_Y15_N4
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \at[2]~reg0_q\ $ (VCC)
-- \Add4~1\ = CARRY(\at[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X28_Y15_N6
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\at[3]~reg0_q\ & (!\Add4~1\)) # (!\at[3]~reg0_q\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\at[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X28_Y15_N8
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\at[4]~reg0_q\ & (\Add4~3\ $ (GND))) # (!\at[4]~reg0_q\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\at[4]~reg0_q\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X28_Y15_N10
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\at[5]~reg0_q\ & (\Add4~5\ & VCC)) # (!\at[5]~reg0_q\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\at[5]~reg0_q\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X28_Y15_N12
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\at[6]~reg0_q\ & ((GND) # (!\Add4~7\))) # (!\at[6]~reg0_q\ & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((\at[6]~reg0_q\) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X28_Y15_N14
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\at[7]~reg0_q\ & (!\Add4~9\)) # (!\at[7]~reg0_q\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\at[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X29_Y15_N10
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \at[2]~reg0_q\ $ (VCC)
-- \Add7~1\ = CARRY(\at[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X29_Y15_N12
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\at[3]~reg0_q\ & (\Add7~1\ & VCC)) # (!\at[3]~reg0_q\ & (!\Add7~1\))
-- \Add7~3\ = CARRY((!\at[3]~reg0_q\ & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X29_Y15_N14
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\at[4]~reg0_q\ & ((GND) # (!\Add7~3\))) # (!\at[4]~reg0_q\ & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((\at[4]~reg0_q\) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X29_Y15_N16
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\at[5]~reg0_q\ & (!\Add7~5\)) # (!\at[5]~reg0_q\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\at[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X29_Y15_N18
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\at[6]~reg0_q\ & (\Add7~7\ $ (GND))) # (!\at[6]~reg0_q\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\at[6]~reg0_q\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X29_Y15_N20
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\at[7]~reg0_q\ & (\Add7~9\ & VCC)) # (!\at[7]~reg0_q\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\at[7]~reg0_q\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X31_Y15_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \at[0]~reg0_q\ $ (VCC)
-- \Add2~1\ = CARRY(\at[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[0]~reg0_q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X31_Y15_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\at[1]~reg0_q\ & (!\Add2~1\)) # (!\at[1]~reg0_q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\at[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X31_Y15_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\at[2]~reg0_q\ & (\Add2~3\ $ (GND))) # (!\at[2]~reg0_q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\at[2]~reg0_q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X31_Y15_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\at[3]~reg0_q\ & (!\Add2~5\)) # (!\at[3]~reg0_q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\at[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X31_Y15_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\at[4]~reg0_q\ & (\Add2~7\ $ (GND))) # (!\at[4]~reg0_q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\at[4]~reg0_q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X31_Y15_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\at[5]~reg0_q\ & (!\Add2~9\)) # (!\at[5]~reg0_q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\at[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X31_Y15_N14
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\at[6]~reg0_q\ & (\Add2~11\ $ (GND))) # (!\at[6]~reg0_q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\at[6]~reg0_q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X31_Y15_N16
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\at[7]~reg0_q\ & (!\Add2~13\)) # (!\at[7]~reg0_q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\at[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X30_Y16_N28
\at[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~29_combout\ = (av0(0) & (!\b2~input_o\ & (!av0(1)))) # (!av0(0) & (av0(1) & ((!\LessThan5~3_combout\) # (!\b2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => \b2~input_o\,
	datac => av0(1),
	datad => \LessThan5~3_combout\,
	combout => \at[4]~29_combout\);

-- Location: LCCOMB_X32_Y15_N10
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \at[1]~reg0_q\ $ (VCC)
-- \Add3~1\ = CARRY(\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X32_Y15_N12
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\at[2]~reg0_q\ & (!\Add3~1\)) # (!\at[2]~reg0_q\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\at[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X32_Y15_N14
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\at[3]~reg0_q\ & ((GND) # (!\Add3~3\))) # (!\at[3]~reg0_q\ & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((\at[3]~reg0_q\) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X32_Y15_N16
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\at[4]~reg0_q\ & (!\Add3~5\)) # (!\at[4]~reg0_q\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\at[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X32_Y15_N18
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\at[5]~reg0_q\ & (\Add3~7\ $ (GND))) # (!\at[5]~reg0_q\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\at[5]~reg0_q\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X32_Y15_N20
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\at[6]~reg0_q\ & (!\Add3~9\)) # (!\at[6]~reg0_q\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\at[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X32_Y15_N22
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\at[7]~reg0_q\ & (\Add3~11\ $ (GND))) # (!\at[7]~reg0_q\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\at[7]~reg0_q\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X31_Y15_N26
\at~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~50_combout\ = (\at[4]~30_combout\ & (((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & ((\at[4]~29_combout\ & ((\Add3~12_combout\))) # (!\at[4]~29_combout\ & (\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add2~14_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add3~12_combout\,
	combout => \at~50_combout\);

-- Location: LCCOMB_X30_Y15_N30
\at~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~51_combout\ = (\at[4]~30_combout\ & ((\at~50_combout\ & (\Add4~10_combout\)) # (!\at~50_combout\ & ((\Add7~10_combout\))))) # (!\at[4]~30_combout\ & (((\at~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add4~10_combout\,
	datac => \Add7~10_combout\,
	datad => \at~50_combout\,
	combout => \at~51_combout\);

-- Location: LCCOMB_X29_Y16_N22
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\at[8]~reg0_q\ & ((GND) # (!\Add5~15\))) # (!\at[8]~reg0_q\ & (\Add5~15\ $ (GND)))
-- \Add5~17\ = CARRY((\at[8]~reg0_q\) # (!\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X31_Y16_N26
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\at[8]~reg0_q\ & (\Add6~13\ & VCC)) # (!\at[8]~reg0_q\ & (!\Add6~13\))
-- \Add6~15\ = CARRY((!\at[8]~reg0_q\ & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X29_Y15_N4
\at[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[8]~8_combout\ = (\Equal1~0_combout\ & ((\Add6~14_combout\))) # (!\Equal1~0_combout\ & (\Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add5~16_combout\,
	datad => \Add6~14_combout\,
	combout => \at[8]~8_combout\);

-- Location: LCCOMB_X32_Y15_N24
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\at[8]~reg0_q\ & (!\Add3~13\)) # (!\at[8]~reg0_q\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\at[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X28_Y15_N16
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\at[8]~reg0_q\ & (\Add4~11\ $ (GND))) # (!\at[8]~reg0_q\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\at[8]~reg0_q\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X29_Y15_N22
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\at[8]~reg0_q\ & ((GND) # (!\Add7~11\))) # (!\at[8]~reg0_q\ & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\at[8]~reg0_q\) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X31_Y15_N18
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\at[8]~reg0_q\ & (\Add2~15\ $ (GND))) # (!\at[8]~reg0_q\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\at[8]~reg0_q\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X29_Y15_N28
\at~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~52_combout\ = (\at[4]~29_combout\ & (((\at[4]~30_combout\)))) # (!\at[4]~29_combout\ & ((\at[4]~30_combout\ & (\Add7~12_combout\)) # (!\at[4]~30_combout\ & ((\Add2~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \at[4]~29_combout\,
	datac => \at[4]~30_combout\,
	datad => \Add2~16_combout\,
	combout => \at~52_combout\);

-- Location: LCCOMB_X29_Y15_N26
\at~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~53_combout\ = (\at[4]~29_combout\ & ((\at~52_combout\ & ((\Add4~12_combout\))) # (!\at~52_combout\ & (\Add3~14_combout\)))) # (!\at[4]~29_combout\ & (((\at~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~29_combout\,
	datab => \Add3~14_combout\,
	datac => \Add4~12_combout\,
	datad => \at~52_combout\,
	combout => \at~53_combout\);

-- Location: LCCOMB_X28_Y15_N0
\at[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~33_combout\ = (av0(1)) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2~input_o\,
	datad => av0(1),
	combout => \at[4]~33_combout\);

-- Location: LCCOMB_X26_Y17_N18
\at~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~26_combout\ = (\b1~input_o\ & ((!av0(0)) # (!av0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datac => av0(1),
	datad => av0(0),
	combout => \at~26_combout\);

-- Location: LCCOMB_X30_Y16_N10
\at[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~40_combout\ = ((av0(1) & ((av0(0)) # (!\LessThan5~3_combout\)))) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => \b2~input_o\,
	datac => av0(1),
	datad => \LessThan5~3_combout\,
	combout => \at[4]~40_combout\);

-- Location: LCCOMB_X30_Y15_N28
\at[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~41_combout\ = (\as.S1~q\ & ((\at~26_combout\) # (!\at[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~26_combout\,
	datac => \at[4]~40_combout\,
	datad => \as.S1~q\,
	combout => \at[2]~41_combout\);

-- Location: FF_X29_Y15_N5
\at[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[8]~8_combout\,
	asdata => \at~53_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[8]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N28
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = \at[9]~reg0_q\ $ (\Add6~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	cin => \Add6~15\,
	combout => \Add6~16_combout\);

-- Location: LCCOMB_X29_Y16_N24
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = \Add5~17\ $ (!\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add5~17\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X31_Y15_N30
\at[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[9]~9_combout\ = (\Equal1~0_combout\ & (\Add6~16_combout\)) # (!\Equal1~0_combout\ & ((\Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add6~16_combout\,
	datad => \Add5~18_combout\,
	combout => \at[9]~9_combout\);

-- Location: LCCOMB_X28_Y15_N18
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \at[9]~reg0_q\ $ (\Add4~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X29_Y15_N24
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = \Add7~13\ $ (!\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add7~13\,
	combout => \Add7~14_combout\);

-- Location: LCCOMB_X32_Y15_N26
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \Add3~15\ $ (!\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X31_Y15_N20
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \at[9]~reg0_q\ $ (\Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X32_Y15_N0
\at~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~54_combout\ = (\at[4]~30_combout\ & (((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & ((\at[4]~29_combout\ & (\Add3~16_combout\)) # (!\at[4]~29_combout\ & ((\Add2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \at[4]~30_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add2~18_combout\,
	combout => \at~54_combout\);

-- Location: LCCOMB_X32_Y15_N8
\at~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~55_combout\ = (\at[4]~30_combout\ & ((\at~54_combout\ & (\Add4~14_combout\)) # (!\at~54_combout\ & ((\Add7~14_combout\))))) # (!\at[4]~30_combout\ & (((\at~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add4~14_combout\,
	datac => \Add7~14_combout\,
	datad => \at~54_combout\,
	combout => \at~55_combout\);

-- Location: FF_X31_Y15_N31
\at[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[9]~9_combout\,
	asdata => \at~55_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[9]~reg0_q\);

-- Location: LCCOMB_X31_Y15_N0
\at~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~13_combout\ = (\at[9]~reg0_q\ & (\at[7]~reg0_q\ & \at[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	datac => \at[7]~reg0_q\,
	datad => \at[8]~reg0_q\,
	combout => \at~13_combout\);

-- Location: LCCOMB_X31_Y16_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\at[2]~reg0_q\) # (!\at[4]~reg0_q\)) # (!\at[3]~reg0_q\)) # (!\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datab => \at[3]~reg0_q\,
	datac => \at[4]~reg0_q\,
	datad => \at[2]~reg0_q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y16_N30
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!\at[5]~reg0_q\ & \LessThan1~0_combout\)) # (!\at~13_combout\)) # (!\at[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datab => \at[5]~reg0_q\,
	datac => \LessThan1~0_combout\,
	datad => \at~13_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y16_N16
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\at[3]~reg0_q\ & !\at[4]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \at[3]~reg0_q\,
	datad => \at[4]~reg0_q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y16_N2
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\at[5]~reg0_q\ & (!\at[6]~reg0_q\ & (!\at[2]~reg0_q\ & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \at[6]~reg0_q\,
	datac => \at[2]~reg0_q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y15_N12
\at[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~38_combout\ = (\at[4]~30_combout\ & (\at~13_combout\ & ((!\LessThan2~1_combout\)))) # (!\at[4]~30_combout\ & (((!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \at~13_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan2~1_combout\,
	combout => \at[4]~38_combout\);

-- Location: LCCOMB_X30_Y15_N22
\at[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~35_combout\ = (!\at[2]~reg0_q\ & (\Equal1~0_combout\ & ((!\at[0]~reg0_q\) # (!\at[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datab => \at[1]~reg0_q\,
	datac => \at[0]~reg0_q\,
	datad => \Equal1~0_combout\,
	combout => \at[4]~35_combout\);

-- Location: LCCOMB_X30_Y15_N16
\at[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~36_combout\ = (!\at[3]~reg0_q\ & ((\Equal1~0_combout\) # ((!\at[2]~reg0_q\ & !\at[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datab => \at[3]~reg0_q\,
	datac => \at[1]~reg0_q\,
	datad => \Equal1~0_combout\,
	combout => \at[4]~36_combout\);

-- Location: LCCOMB_X30_Y15_N26
\at[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~37_combout\ = (!\at[4]~33_combout\ & (\at[4]~10_combout\ & ((\at[4]~35_combout\) # (\at[4]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~35_combout\,
	datab => \at[4]~33_combout\,
	datac => \at[4]~10_combout\,
	datad => \at[4]~36_combout\,
	combout => \at[4]~37_combout\);

-- Location: LCCOMB_X30_Y16_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!\at[0]~reg0_q\) # (!\at[2]~reg0_q\)) # (!\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datac => \at[2]~reg0_q\,
	datad => \at[0]~reg0_q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y16_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((\LessThan2~0_combout\ & \LessThan0~0_combout\)) # (!\at~13_combout\)) # (!\LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \at~13_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y15_N24
\at[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~34_combout\ = (!\at[4]~30_combout\ & (\at[4]~33_combout\ & (!\LessThan0~1_combout\ & !\at[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \at[4]~33_combout\,
	datac => \LessThan0~1_combout\,
	datad => \at[4]~29_combout\,
	combout => \at[4]~34_combout\);

-- Location: LCCOMB_X30_Y15_N6
\at[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~39_combout\ = (\at[4]~37_combout\) # ((\at[4]~34_combout\) # ((\at[4]~38_combout\ & \at[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~38_combout\,
	datab => \at[4]~29_combout\,
	datac => \at[4]~37_combout\,
	datad => \at[4]~34_combout\,
	combout => \at[4]~39_combout\);

-- Location: FF_X30_Y15_N1
\at[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[7]~7_combout\,
	asdata => \at~51_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[7]~reg0_q\);

-- Location: LCCOMB_X30_Y16_N14
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\at[7]~reg0_q\ & (!\at[8]~reg0_q\ & !\at[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datac => \at[8]~reg0_q\,
	datad => \at[9]~reg0_q\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\at[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~10_combout\ = (!\at[5]~reg0_q\ & (!\at[4]~reg0_q\ & (!\at[6]~reg0_q\ & \LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \at[4]~reg0_q\,
	datac => \at[6]~reg0_q\,
	datad => \LessThan5~0_combout\,
	combout => \at[4]~10_combout\);

-- Location: LCCOMB_X29_Y16_N28
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\at[3]~reg0_q\ & ((\at[2]~reg0_q\) # ((\at[0]~reg0_q\ & \at[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datab => \at[1]~reg0_q\,
	datac => \at[2]~reg0_q\,
	datad => \at[3]~reg0_q\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y15_N14
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\LessThan4~0_combout\) # (!\at[4]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \at[4]~10_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X31_Y16_N8
\at~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~21_combout\ = (\Equal1~0_combout\ & (\Add6~0_combout\ & ((\LessThan4~1_combout\)))) # (!\Equal1~0_combout\ & (((\at[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \at[1]~reg0_q\,
	datac => \Equal1~0_combout\,
	datad => \LessThan4~1_combout\,
	combout => \at~21_combout\);

-- Location: LCCOMB_X29_Y16_N6
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \at[0]~reg0_q\ $ (VCC)
-- \Add5~1\ = CARRY(\at[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X29_Y16_N8
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\at[1]~reg0_q\ & (\Add5~1\ & VCC)) # (!\at[1]~reg0_q\ & (!\Add5~1\))
-- \Add5~3\ = CARRY((!\at[1]~reg0_q\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X29_Y16_N4
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\at[1]~reg0_q\) # ((\at[3]~reg0_q\) # ((\at[2]~reg0_q\) # (!\at[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datab => \at[3]~reg0_q\,
	datac => \at[2]~reg0_q\,
	datad => \at[4]~10_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y16_N26
\at~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~25_combout\ = (av0(1) & (!av0(0) & ((\LessThan2~1_combout\) # (!\at~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \at~13_combout\,
	datac => av0(1),
	datad => av0(0),
	combout => \at~25_combout\);

-- Location: LCCOMB_X31_Y16_N4
\at~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~22_combout\ = (av0(0) & (!av0(1) & (\LessThan1~2_combout\ & \Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \LessThan1~2_combout\,
	datad => \Add3~0_combout\,
	combout => \at~22_combout\);

-- Location: LCCOMB_X31_Y16_N6
\at~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~23_combout\ = (!av0(0) & (!av0(1) & \Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datac => av0(1),
	datad => \Add2~2_combout\,
	combout => \at~23_combout\);

-- Location: LCCOMB_X31_Y16_N2
\at~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~24_combout\ = (\b1~input_o\ & ((\at~22_combout\) # ((\LessThan0~1_combout\ & \at~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \b1~input_o\,
	datac => \at~22_combout\,
	datad => \at~23_combout\,
	combout => \at~24_combout\);

-- Location: LCCOMB_X30_Y16_N4
\at~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~27_combout\ = (\at~24_combout\) # ((\at[1]~reg0_q\ & ((\at~25_combout\) # (!\at~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~25_combout\,
	datab => \at[1]~reg0_q\,
	datac => \at~26_combout\,
	datad => \at~24_combout\,
	combout => \at~27_combout\);

-- Location: LCCOMB_X31_Y16_N10
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (av0(1)) # (av0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => av0(1),
	datad => av0(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y16_N6
\at~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~28_combout\ = (\Equal1~1_combout\ & (((\at~27_combout\)))) # (!\Equal1~1_combout\ & (\Add5~2_combout\ & (\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \LessThan3~0_combout\,
	datac => \at~27_combout\,
	datad => \Equal1~1_combout\,
	combout => \at~28_combout\);

-- Location: LCCOMB_X30_Y16_N20
\at[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[1]~1_combout\ = (\at~20_combout\ & ((\at~28_combout\))) # (!\at~20_combout\ & (\at~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~20_combout\,
	datab => \at~21_combout\,
	datad => \at~28_combout\,
	combout => \at[1]~1_combout\);

-- Location: FF_X30_Y16_N21
\at[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[1]~1_combout\,
	asdata => \at~27_combout\,
	sload => \ALT_INV_b2~input_o\,
	ena => \as.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[1]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N14
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\at[2]~reg0_q\ & (\Add6~1\ & VCC)) # (!\at[2]~reg0_q\ & (!\Add6~1\))
-- \Add6~3\ = CARRY((!\at[2]~reg0_q\ & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X29_Y16_N10
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\at[2]~reg0_q\ & ((GND) # (!\Add5~3\))) # (!\at[2]~reg0_q\ & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((\at[2]~reg0_q\) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X31_Y15_N24
\at[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~2_combout\ = (\Equal1~0_combout\ & (\Add6~2_combout\)) # (!\Equal1~0_combout\ & ((\Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Add5~4_combout\,
	datad => \Equal1~0_combout\,
	combout => \at[2]~2_combout\);

-- Location: LCCOMB_X32_Y15_N28
\at~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~31_combout\ = (\at[4]~30_combout\ & (((\at[4]~29_combout\) # (\Add7~0_combout\)))) # (!\at[4]~30_combout\ & (\Add2~4_combout\ & (!\at[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add2~4_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add7~0_combout\,
	combout => \at~31_combout\);

-- Location: LCCOMB_X32_Y15_N30
\at~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~32_combout\ = (\at[4]~29_combout\ & ((\at~31_combout\ & ((\Add4~0_combout\))) # (!\at~31_combout\ & (\Add3~2_combout\)))) # (!\at[4]~29_combout\ & (((\at~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add4~0_combout\,
	datac => \at[4]~29_combout\,
	datad => \at~31_combout\,
	combout => \at~32_combout\);

-- Location: FF_X31_Y15_N25
\at[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[2]~2_combout\,
	asdata => \at~32_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[2]~reg0_q\);

-- Location: LCCOMB_X31_Y16_N16
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\at[3]~reg0_q\ & (\Add6~3\ $ (GND))) # (!\at[3]~reg0_q\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\at[3]~reg0_q\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X29_Y16_N12
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\at[3]~reg0_q\ & (\Add5~5\ & VCC)) # (!\at[3]~reg0_q\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\at[3]~reg0_q\ & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X31_Y15_N22
\at[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[3]~3_combout\ = (\Equal1~0_combout\ & (\Add6~4_combout\)) # (!\Equal1~0_combout\ & ((\Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add5~6_combout\,
	datad => \Equal1~0_combout\,
	combout => \at[3]~3_combout\);

-- Location: LCCOMB_X32_Y15_N4
\at~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~42_combout\ = (\at[4]~30_combout\ & (((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & ((\at[4]~29_combout\ & (\Add3~4_combout\)) # (!\at[4]~29_combout\ & ((\Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add3~4_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add2~6_combout\,
	combout => \at~42_combout\);

-- Location: LCCOMB_X32_Y15_N2
\at~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~43_combout\ = (\at[4]~30_combout\ & ((\at~42_combout\ & ((\Add4~2_combout\))) # (!\at~42_combout\ & (\Add7~2_combout\)))) # (!\at[4]~30_combout\ & (((\at~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add7~2_combout\,
	datac => \at~42_combout\,
	datad => \Add4~2_combout\,
	combout => \at~43_combout\);

-- Location: FF_X31_Y15_N23
\at[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[3]~3_combout\,
	asdata => \at~43_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[3]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N14
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\at[4]~reg0_q\ & ((GND) # (!\Add5~7\))) # (!\at[4]~reg0_q\ & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((\at[4]~reg0_q\) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X31_Y16_N18
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\at[4]~reg0_q\ & (\Add6~5\ & VCC)) # (!\at[4]~reg0_q\ & (!\Add6~5\))
-- \Add6~7\ = CARRY((!\at[4]~reg0_q\ & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X30_Y15_N20
\at[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[4]~4_combout\ = (\Equal1~0_combout\ & ((\Add6~6_combout\))) # (!\Equal1~0_combout\ & (\Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add5~8_combout\,
	datad => \Add6~6_combout\,
	combout => \at[4]~4_combout\);

-- Location: LCCOMB_X30_Y15_N18
\at~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~44_combout\ = (\at[4]~30_combout\ & ((\Add7~4_combout\) # ((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & (((\Add2~8_combout\ & !\at[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add7~4_combout\,
	datac => \Add2~8_combout\,
	datad => \at[4]~29_combout\,
	combout => \at~44_combout\);

-- Location: LCCOMB_X30_Y15_N8
\at~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~45_combout\ = (\at[4]~29_combout\ & ((\at~44_combout\ & (\Add4~4_combout\)) # (!\at~44_combout\ & ((\Add3~6_combout\))))) # (!\at[4]~29_combout\ & (((\at~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~29_combout\,
	datab => \Add4~4_combout\,
	datac => \Add3~6_combout\,
	datad => \at~44_combout\,
	combout => \at~45_combout\);

-- Location: FF_X30_Y15_N21
\at[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[4]~4_combout\,
	asdata => \at~45_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[4]~reg0_q\);

-- Location: LCCOMB_X29_Y16_N16
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\at[5]~reg0_q\ & (\Add5~9\ & VCC)) # (!\at[5]~reg0_q\ & (!\Add5~9\))
-- \Add5~11\ = CARRY((!\at[5]~reg0_q\ & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X31_Y15_N28
\at[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[5]~5_combout\ = (\Equal1~0_combout\ & (\Add6~8_combout\)) # (!\Equal1~0_combout\ & ((\Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add5~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \at[5]~5_combout\);

-- Location: LCCOMB_X29_Y15_N0
\at~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~46_combout\ = (\at[4]~30_combout\ & (((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & ((\at[4]~29_combout\ & (\Add3~8_combout\)) # (!\at[4]~29_combout\ & ((\Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \at[4]~30_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add2~10_combout\,
	combout => \at~46_combout\);

-- Location: LCCOMB_X29_Y15_N6
\at~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~47_combout\ = (\at[4]~30_combout\ & ((\at~46_combout\ & ((\Add4~6_combout\))) # (!\at~46_combout\ & (\Add7~6_combout\)))) # (!\at[4]~30_combout\ & (((\at~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add7~6_combout\,
	datac => \Add4~6_combout\,
	datad => \at~46_combout\,
	combout => \at~47_combout\);

-- Location: FF_X31_Y15_N29
\at[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[5]~5_combout\,
	asdata => \at~47_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[5]~reg0_q\);

-- Location: LCCOMB_X30_Y15_N2
\at[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[6]~6_combout\ = (\Equal1~0_combout\ & ((\Add6~10_combout\))) # (!\Equal1~0_combout\ & (\Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add5~12_combout\,
	datad => \Add6~10_combout\,
	combout => \at[6]~6_combout\);

-- Location: LCCOMB_X28_Y15_N2
\at~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~48_combout\ = (\at[4]~30_combout\ & ((\Add7~8_combout\) # ((\at[4]~29_combout\)))) # (!\at[4]~30_combout\ & (((!\at[4]~29_combout\ & \Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~30_combout\,
	datab => \Add7~8_combout\,
	datac => \at[4]~29_combout\,
	datad => \Add2~12_combout\,
	combout => \at~48_combout\);

-- Location: LCCOMB_X28_Y15_N24
\at~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~49_combout\ = (\at[4]~29_combout\ & ((\at~48_combout\ & (\Add4~8_combout\)) # (!\at~48_combout\ & ((\Add3~10_combout\))))) # (!\at[4]~29_combout\ & (((\at~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \Add3~10_combout\,
	datac => \at[4]~29_combout\,
	datad => \at~48_combout\,
	combout => \at~49_combout\);

-- Location: FF_X30_Y15_N3
\at[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[6]~6_combout\,
	asdata => \at~49_combout\,
	sclr => \at[4]~39_combout\,
	sload => \at[4]~33_combout\,
	ena => \at[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[6]~reg0_q\);

-- Location: LCCOMB_X30_Y16_N12
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\at[6]~reg0_q\ & \at[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \at[6]~reg0_q\,
	datad => \at[5]~reg0_q\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y16_N8
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\at[2]~reg0_q\ & ((\at[1]~reg0_q\) # (\at[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datac => \at[2]~reg0_q\,
	datad => \at[0]~reg0_q\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y16_N18
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = ((\LessThan5~1_combout\ & ((\LessThan5~2_combout\) # (!\LessThan2~0_combout\)))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \LessThan5~2_combout\,
	datac => \LessThan5~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X30_Y16_N24
\at~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~20_combout\ = (av0(1) & ((av0(0)) # (!\LessThan5~3_combout\))) # (!av0(1) & (!av0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datac => av0(0),
	datad => \LessThan5~3_combout\,
	combout => \at~20_combout\);

-- Location: LCCOMB_X29_Y16_N26
\at~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~11_combout\ = (\at[0]~reg0_q\) # ((\at[4]~10_combout\ & (\Equal1~0_combout\ & !\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datab => \at[4]~10_combout\,
	datac => \Equal1~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \at~11_combout\);

-- Location: LCCOMB_X30_Y13_N8
\at~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~17_combout\ = (\at[9]~reg0_q\ & (\at[8]~reg0_q\ & (\b1~input_o\ & \at[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	datab => \at[8]~reg0_q\,
	datac => \b1~input_o\,
	datad => \at[7]~reg0_q\,
	combout => \at~17_combout\);

-- Location: LCCOMB_X26_Y17_N4
\at~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~12_combout\ = (\b1~input_o\ & (!av0(1) & !av0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datac => av0(1),
	datad => av0(0),
	combout => \at~12_combout\);

-- Location: LCCOMB_X30_Y16_N0
\at~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~14_combout\ = (\at~12_combout\ & (((\Add2~0_combout\) # (!\LessThan0~1_combout\)))) # (!\at~12_combout\ & (\at[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datab => \at~12_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add2~0_combout\,
	combout => \at~14_combout\);

-- Location: LCCOMB_X29_Y15_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!\at[5]~reg0_q\ & \LessThan1~0_combout\)) # (!\at[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \at[6]~reg0_q\,
	datac => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y15_N8
\at~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~15_combout\ = (av0(0) & ((av0(1) & (!\LessThan2~1_combout\)) # (!av0(1) & ((!\LessThan1~1_combout\))))) # (!av0(0) & (((!\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \LessThan2~1_combout\,
	datad => \LessThan1~1_combout\,
	combout => \at~15_combout\);

-- Location: LCCOMB_X30_Y13_N30
\at~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~18_combout\ = (\at~14_combout\) # ((!\at~16_combout\ & (\at~17_combout\ & \at~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~16_combout\,
	datab => \at~17_combout\,
	datac => \at~14_combout\,
	datad => \at~15_combout\,
	combout => \at~18_combout\);

-- Location: LCCOMB_X30_Y13_N0
\at~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~19_combout\ = (\Equal1~1_combout\ & (((\at~18_combout\)))) # (!\Equal1~1_combout\ & ((\Add5~0_combout\) # ((!\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \at~18_combout\,
	datad => \LessThan3~0_combout\,
	combout => \at~19_combout\);

-- Location: LCCOMB_X30_Y13_N4
\at[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[0]~0_combout\ = (\at~20_combout\ & ((\at~19_combout\))) # (!\at~20_combout\ & (\at~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~20_combout\,
	datab => \at~11_combout\,
	datad => \at~19_combout\,
	combout => \at[0]~0_combout\);

-- Location: FF_X30_Y13_N5
\at[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[0]~0_combout\,
	asdata => \at~18_combout\,
	sload => \ALT_INV_b2~input_o\,
	ena => \as.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[0]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y13_N10
\t[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[1]~10_combout\ = (\t[0]~reg0_q\ & (\t[1]~reg0_q\ $ (VCC))) # (!\t[0]~reg0_q\ & (\t[1]~reg0_q\ & VCC))
-- \t[1]~11\ = CARRY((\t[0]~reg0_q\ & \t[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t[0]~reg0_q\,
	datab => \t[1]~reg0_q\,
	datad => VCC,
	combout => \t[1]~10_combout\,
	cout => \t[1]~11\);

-- Location: FF_X29_Y13_N23
\clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(24));

-- Location: LCCOMB_X29_Y14_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_div(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X28_Y13_N2
\clk_div~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~1_combout\ = (\Add0~0_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \clk_div~1_combout\);

-- Location: FF_X28_Y13_N3
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~1_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LCCOMB_X29_Y14_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_div(1) & (!\Add0~1\)) # (!clk_div(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X29_Y14_N9
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LCCOMB_X29_Y14_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_div(2) & (\Add0~3\ $ (GND))) # (!clk_div(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_div(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X28_Y13_N8
\clk_div~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = (\Add0~4_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \clk_div~0_combout\);

-- Location: FF_X28_Y13_N9
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~0_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LCCOMB_X29_Y14_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_div(3) & (!\Add0~5\)) # (!clk_div(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X29_Y14_N13
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LCCOMB_X29_Y14_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_div(4) & (\Add0~7\ $ (GND))) # (!clk_div(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_div(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X29_Y14_N15
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LCCOMB_X29_Y14_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_div(5) & (!\Add0~9\)) # (!clk_div(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X29_Y14_N17
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LCCOMB_X29_Y14_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_div(6) & (\Add0~11\ $ (GND))) # (!clk_div(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_div(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X29_Y14_N19
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LCCOMB_X29_Y14_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_div(7) & (!\Add0~13\)) # (!clk_div(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X29_Y14_N21
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LCCOMB_X29_Y14_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_div(8) & (\Add0~15\ $ (GND))) # (!clk_div(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_div(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X29_Y14_N23
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LCCOMB_X29_Y14_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_div(9) & (!\Add0~17\)) # (!clk_div(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X29_Y14_N25
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: LCCOMB_X29_Y14_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_div(10) & (\Add0~19\ $ (GND))) # (!clk_div(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_div(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X29_Y14_N27
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LCCOMB_X29_Y14_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_div(11) & (!\Add0~21\)) # (!clk_div(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X29_Y14_N29
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LCCOMB_X29_Y14_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_div(12) & (\Add0~23\ $ (GND))) # (!clk_div(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_div(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X29_Y14_N31
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LCCOMB_X29_Y13_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_div(13) & (!\Add0~25\)) # (!clk_div(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X29_Y13_N1
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LCCOMB_X29_Y13_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_div(14) & (\Add0~27\ $ (GND))) # (!clk_div(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_div(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X29_Y13_N3
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LCCOMB_X29_Y13_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_div(15) & (!\Add0~29\)) # (!clk_div(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_div(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X29_Y13_N5
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: LCCOMB_X29_Y13_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_div(16) & (\Add0~31\ $ (GND))) # (!clk_div(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_div(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X29_Y13_N7
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LCCOMB_X29_Y13_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_div(17) & (!\Add0~33\)) # (!clk_div(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_div(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X29_Y13_N9
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LCCOMB_X29_Y13_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_div(18) & (\Add0~35\ $ (GND))) # (!clk_div(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_div(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X29_Y13_N11
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LCCOMB_X29_Y13_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_div(19) & (!\Add0~37\)) # (!clk_div(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_div(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X29_Y13_N13
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: LCCOMB_X29_Y13_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_div(20) & (\Add0~39\ $ (GND))) # (!clk_div(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_div(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X29_Y13_N15
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LCCOMB_X29_Y13_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_div(21) & (!\Add0~41\)) # (!clk_div(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_div(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X29_Y13_N17
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LCCOMB_X29_Y13_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_div(22) & (\Add0~43\ $ (GND))) # (!clk_div(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_div(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X29_Y13_N19
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LCCOMB_X29_Y13_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (clk_div(23) & (!\Add0~45\)) # (!clk_div(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!clk_div(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_div(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X29_Y13_N21
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: LCCOMB_X29_Y13_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (clk_div(24) & (\Add0~47\ $ (GND))) # (!clk_div(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((clk_div(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_div(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X29_Y13_N25
\clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \ALT_INV_trg$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(25));

-- Location: LCCOMB_X29_Y13_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (clk_div(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_div(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X28_Y13_N30
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~46_combout\ & !\Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Add0~44_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X29_Y13_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~24_combout\ & (!\Add0~26_combout\ & (!\Add0~30_combout\ & !\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X29_Y14_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\ & (!\Add0~2_combout\ & (!\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y14_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~16_combout\ & (!\Add0~18_combout\ & (!\Add0~20_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y14_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~12_combout\ & (!\Add0~14_combout\ & (!\Add0~8_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X29_Y13_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X29_Y13_N26
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~32_combout\ & (!\Add0~36_combout\ & (!\Add0~34_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~34_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X28_Y13_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~42_combout\ & (!\Add0~40_combout\ & (!\Add0~38_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X28_Y13_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~48_combout\ & (!\Add0~50_combout\ & (\Equal0~7_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~50_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X28_Y13_N4
\t[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[9]~12_combout\ = (!\trg$latch~combout\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trg$latch~combout\,
	datad => \Equal0~8_combout\,
	combout => \t[9]~12_combout\);

-- Location: FF_X28_Y13_N11
\t[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[1]~10_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[1]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N12
\t[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[2]~13_combout\ = (\t[2]~reg0_q\ & (!\t[1]~11\)) # (!\t[2]~reg0_q\ & ((\t[1]~11\) # (GND)))
-- \t[2]~14\ = CARRY((!\t[1]~11\) # (!\t[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~reg0_q\,
	datad => VCC,
	cin => \t[1]~11\,
	combout => \t[2]~13_combout\,
	cout => \t[2]~14\);

-- Location: FF_X28_Y13_N13
\t[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[2]~13_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[2]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N14
\t[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[3]~15_combout\ = (\t[3]~reg0_q\ & (\t[2]~14\ $ (GND))) # (!\t[3]~reg0_q\ & (!\t[2]~14\ & VCC))
-- \t[3]~16\ = CARRY((\t[3]~reg0_q\ & !\t[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t[3]~reg0_q\,
	datad => VCC,
	cin => \t[2]~14\,
	combout => \t[3]~15_combout\,
	cout => \t[3]~16\);

-- Location: FF_X28_Y13_N15
\t[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[3]~15_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[3]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N16
\t[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[4]~17_combout\ = (\t[4]~reg0_q\ & (!\t[3]~16\)) # (!\t[4]~reg0_q\ & ((\t[3]~16\) # (GND)))
-- \t[4]~18\ = CARRY((!\t[3]~16\) # (!\t[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t[4]~reg0_q\,
	datad => VCC,
	cin => \t[3]~16\,
	combout => \t[4]~17_combout\,
	cout => \t[4]~18\);

-- Location: FF_X28_Y13_N17
\t[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[4]~17_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[4]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N18
\t[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[5]~19_combout\ = (\t[5]~reg0_q\ & (\t[4]~18\ $ (GND))) # (!\t[5]~reg0_q\ & (!\t[4]~18\ & VCC))
-- \t[5]~20\ = CARRY((\t[5]~reg0_q\ & !\t[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t[5]~reg0_q\,
	datad => VCC,
	cin => \t[4]~18\,
	combout => \t[5]~19_combout\,
	cout => \t[5]~20\);

-- Location: FF_X28_Y13_N19
\t[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[5]~19_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[5]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N20
\t[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[6]~21_combout\ = (\t[6]~reg0_q\ & (!\t[5]~20\)) # (!\t[6]~reg0_q\ & ((\t[5]~20\) # (GND)))
-- \t[6]~22\ = CARRY((!\t[5]~20\) # (!\t[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t[6]~reg0_q\,
	datad => VCC,
	cin => \t[5]~20\,
	combout => \t[6]~21_combout\,
	cout => \t[6]~22\);

-- Location: FF_X28_Y13_N21
\t[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[6]~21_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[6]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N22
\t[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[7]~23_combout\ = (\t[7]~reg0_q\ & (\t[6]~22\ $ (GND))) # (!\t[7]~reg0_q\ & (!\t[6]~22\ & VCC))
-- \t[7]~24\ = CARRY((\t[7]~reg0_q\ & !\t[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[7]~reg0_q\,
	datad => VCC,
	cin => \t[6]~22\,
	combout => \t[7]~23_combout\,
	cout => \t[7]~24\);

-- Location: FF_X28_Y13_N23
\t[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[7]~23_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[7]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N24
\t[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[8]~25_combout\ = (\t[8]~reg0_q\ & (!\t[7]~24\)) # (!\t[8]~reg0_q\ & ((\t[7]~24\) # (GND)))
-- \t[8]~26\ = CARRY((!\t[7]~24\) # (!\t[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[8]~reg0_q\,
	datad => VCC,
	cin => \t[7]~24\,
	combout => \t[8]~25_combout\,
	cout => \t[8]~26\);

-- Location: FF_X28_Y13_N25
\t[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[8]~25_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[8]~reg0_q\);

-- Location: LCCOMB_X28_Y13_N26
\t[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[9]~27_combout\ = \t[9]~reg0_q\ $ (!\t[8]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[9]~reg0_q\,
	cin => \t[8]~26\,
	combout => \t[9]~27_combout\);

-- Location: FF_X28_Y13_N27
\t[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[9]~27_combout\,
	ena => \t[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[9]~reg0_q\);

-- Location: LCCOMB_X30_Y13_N10
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_cout\ = CARRY((!\t[0]~reg0_q\ & \at[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[0]~reg0_q\,
	datab => \at[0]~reg0_q\,
	datad => VCC,
	cout => \LessThan12~1_cout\);

-- Location: LCCOMB_X30_Y13_N12
\LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~3_cout\ = CARRY((\at[1]~reg0_q\ & (\t[1]~reg0_q\ & !\LessThan12~1_cout\)) # (!\at[1]~reg0_q\ & ((\t[1]~reg0_q\) # (!\LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datab => \t[1]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~1_cout\,
	cout => \LessThan12~3_cout\);

-- Location: LCCOMB_X30_Y13_N14
\LessThan12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~5_cout\ = CARRY((\t[2]~reg0_q\ & (\at[2]~reg0_q\ & !\LessThan12~3_cout\)) # (!\t[2]~reg0_q\ & ((\at[2]~reg0_q\) # (!\LessThan12~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[2]~reg0_q\,
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~3_cout\,
	cout => \LessThan12~5_cout\);

-- Location: LCCOMB_X30_Y13_N16
\LessThan12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~7_cout\ = CARRY((\at[3]~reg0_q\ & (\t[3]~reg0_q\ & !\LessThan12~5_cout\)) # (!\at[3]~reg0_q\ & ((\t[3]~reg0_q\) # (!\LessThan12~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[3]~reg0_q\,
	datab => \t[3]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~5_cout\,
	cout => \LessThan12~7_cout\);

-- Location: LCCOMB_X30_Y13_N18
\LessThan12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~9_cout\ = CARRY((\t[4]~reg0_q\ & (\at[4]~reg0_q\ & !\LessThan12~7_cout\)) # (!\t[4]~reg0_q\ & ((\at[4]~reg0_q\) # (!\LessThan12~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[4]~reg0_q\,
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~7_cout\,
	cout => \LessThan12~9_cout\);

-- Location: LCCOMB_X30_Y13_N20
\LessThan12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~11_cout\ = CARRY((\at[5]~reg0_q\ & (\t[5]~reg0_q\ & !\LessThan12~9_cout\)) # (!\at[5]~reg0_q\ & ((\t[5]~reg0_q\) # (!\LessThan12~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \t[5]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~9_cout\,
	cout => \LessThan12~11_cout\);

-- Location: LCCOMB_X30_Y13_N22
\LessThan12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~13_cout\ = CARRY((\t[6]~reg0_q\ & (\at[6]~reg0_q\ & !\LessThan12~11_cout\)) # (!\t[6]~reg0_q\ & ((\at[6]~reg0_q\) # (!\LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[6]~reg0_q\,
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~11_cout\,
	cout => \LessThan12~13_cout\);

-- Location: LCCOMB_X30_Y13_N24
\LessThan12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~15_cout\ = CARRY((\at[7]~reg0_q\ & (\t[7]~reg0_q\ & !\LessThan12~13_cout\)) # (!\at[7]~reg0_q\ & ((\t[7]~reg0_q\) # (!\LessThan12~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datab => \t[7]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~13_cout\,
	cout => \LessThan12~15_cout\);

-- Location: LCCOMB_X30_Y13_N26
\LessThan12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~17_cout\ = CARRY((\t[8]~reg0_q\ & (\at[8]~reg0_q\ & !\LessThan12~15_cout\)) # (!\t[8]~reg0_q\ & ((\at[8]~reg0_q\) # (!\LessThan12~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t[8]~reg0_q\,
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \LessThan12~15_cout\,
	cout => \LessThan12~17_cout\);

-- Location: LCCOMB_X30_Y13_N28
\LessThan12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~18_combout\ = (\at[9]~reg0_q\ & ((\LessThan12~17_cout\) # (!\t[9]~reg0_q\))) # (!\at[9]~reg0_q\ & (\LessThan12~17_cout\ & !\t[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[9]~reg0_q\,
	datad => \t[9]~reg0_q\,
	cin => \LessThan12~17_cout\,
	combout => \LessThan12~18_combout\);

-- Location: LCCOMB_X30_Y13_N6
\trg$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \trg$latch~combout\ = (\as.S5~q\ & ((!\LessThan12~18_combout\))) # (!\as.S5~q\ & (\trg$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trg$latch~combout\,
	datac => \as.S5~q\,
	datad => \LessThan12~18_combout\,
	combout => \trg$latch~combout\);

-- Location: LCCOMB_X30_Y13_N2
\t[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t[0]~9_combout\ = \t[0]~reg0_q\ $ (((!\trg$latch~combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trg$latch~combout\,
	datac => \t[0]~reg0_q\,
	datad => \Equal0~8_combout\,
	combout => \t[0]~9_combout\);

-- Location: FF_X30_Y13_N3
\t[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t[0]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N24
\mc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~16_combout\ = av1(1) $ (!av1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datac => av1(0),
	combout => \mc~16_combout\);

-- Location: LCCOMB_X26_Y17_N8
\av1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \av1[1]~0_combout\ = (\b0~input_o\ & \as.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~input_o\,
	datad => \as.S2~q\,
	combout => \av1[1]~0_combout\);

-- Location: FF_X26_Y17_N25
\av1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc~16_combout\,
	ena => \av1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av1(0));

-- Location: LCCOMB_X26_Y17_N22
\av1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \av1[1]~feeder_combout\ = av1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => av1(0),
	combout => \av1[1]~feeder_combout\);

-- Location: FF_X26_Y17_N23
\av1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \av1[1]~feeder_combout\,
	ena => \av1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av1(1));

-- Location: LCCOMB_X26_Y17_N20
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!av1(1) & av1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => av1(1),
	datad => av1(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (\mc[3]~reg0_q\ & ((\mc[2]~reg0_q\) # ((\mc[1]~reg0_q\ & \mc[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~reg0_q\,
	datab => \mc[0]~reg0_q\,
	datac => \mc[3]~reg0_q\,
	datad => \mc[2]~reg0_q\,
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (\LessThan10~0_combout\) # (!\mc[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mc[2]~10_combout\,
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = \mc[1]~reg0_q\ $ (VCC)
-- \Add12~1\ = CARRY(\mc[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[1]~reg0_q\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X25_Y17_N26
\mc~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~21_combout\ = (\Equal4~0_combout\ & (\LessThan10~1_combout\ & (\Add12~0_combout\))) # (!\Equal4~0_combout\ & (((\mc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \Add12~0_combout\,
	datad => \mc[1]~reg0_q\,
	combout => \mc~21_combout\);

-- Location: LCCOMB_X24_Y19_N30
\LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (\mc[2]~reg0_q\ & ((\mc[1]~reg0_q\) # (\mc[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[1]~reg0_q\,
	datac => \mc[0]~reg0_q\,
	datad => \mc[2]~reg0_q\,
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X24_Y19_N0
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (\mc[5]~reg0_q\ & \mc[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mc[5]~reg0_q\,
	datad => \mc[6]~reg0_q\,
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X24_Y19_N22
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!\mc[3]~reg0_q\ & !\mc[4]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mc[3]~reg0_q\,
	datad => \mc[4]~reg0_q\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\mc[6]~reg0_q\ & (\Add12~9\ & VCC)) # (!\mc[6]~reg0_q\ & (!\Add12~9\))
-- \Add12~11\ = CARRY((!\mc[6]~reg0_q\ & !\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X22_Y20_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (\mc[7]~reg0_q\ & ((GND) # (!\Add12~11\))) # (!\mc[7]~reg0_q\ & (\Add12~11\ $ (GND)))
-- \Add12~13\ = CARRY((\mc[7]~reg0_q\) # (!\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X24_Y21_N10
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = \mc[0]~reg0_q\ $ (VCC)
-- \Add11~1\ = CARRY(\mc[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[0]~reg0_q\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X24_Y21_N12
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\mc[1]~reg0_q\ & (\Add11~1\ & VCC)) # (!\mc[1]~reg0_q\ & (!\Add11~1\))
-- \Add11~3\ = CARRY((!\mc[1]~reg0_q\ & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~reg0_q\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X24_Y21_N14
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\mc[2]~reg0_q\ & ((GND) # (!\Add11~3\))) # (!\mc[2]~reg0_q\ & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((\mc[2]~reg0_q\) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X24_Y21_N16
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\mc[3]~reg0_q\ & (\Add11~5\ & VCC)) # (!\mc[3]~reg0_q\ & (!\Add11~5\))
-- \Add11~7\ = CARRY((!\mc[3]~reg0_q\ & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X24_Y21_N18
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\mc[4]~reg0_q\ & ((GND) # (!\Add11~7\))) # (!\mc[4]~reg0_q\ & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((\mc[4]~reg0_q\) # (!\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X24_Y21_N20
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\mc[5]~reg0_q\ & (\Add11~9\ & VCC)) # (!\mc[5]~reg0_q\ & (!\Add11~9\))
-- \Add11~11\ = CARRY((!\mc[5]~reg0_q\ & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X24_Y21_N22
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\mc[6]~reg0_q\ & ((GND) # (!\Add11~11\))) # (!\mc[6]~reg0_q\ & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((\mc[6]~reg0_q\) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X24_Y21_N24
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\mc[7]~reg0_q\ & (\Add11~13\ & VCC)) # (!\mc[7]~reg0_q\ & (!\Add11~13\))
-- \Add11~15\ = CARRY((!\mc[7]~reg0_q\ & !\Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X23_Y20_N28
\mc[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[7]~7_combout\ = (\Equal4~0_combout\ & (\Add12~12_combout\)) # (!\Equal4~0_combout\ & ((\Add11~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add11~14_combout\,
	combout => \mc[7]~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \mc[2]~reg0_q\ $ (VCC)
-- \Add10~1\ = CARRY(\mc[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X23_Y20_N2
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\mc[3]~reg0_q\ & (!\Add10~1\)) # (!\mc[3]~reg0_q\ & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!\mc[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X23_Y20_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\mc[4]~reg0_q\ & (\Add10~3\ $ (GND))) # (!\mc[4]~reg0_q\ & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((\mc[4]~reg0_q\ & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X23_Y20_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\mc[5]~reg0_q\ & (\Add10~5\ & VCC)) # (!\mc[5]~reg0_q\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\mc[5]~reg0_q\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X23_Y20_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\mc[6]~reg0_q\ & ((GND) # (!\Add10~7\))) # (!\mc[6]~reg0_q\ & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((\mc[6]~reg0_q\) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X23_Y20_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\mc[7]~reg0_q\ & (!\Add10~9\)) # (!\mc[7]~reg0_q\ & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!\mc[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X25_Y19_N4
\mc[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~30_combout\ = (av1(1) & ((!av1(0)))) # (!av1(1) & (\b2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \b2~input_o\,
	datad => av1(0),
	combout => \mc[2]~30_combout\);

-- Location: LCCOMB_X26_Y20_N4
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = \mc[2]~reg0_q\ $ (VCC)
-- \Add13~1\ = CARRY(\mc[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X26_Y20_N6
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\mc[3]~reg0_q\ & (\Add13~1\ & VCC)) # (!\mc[3]~reg0_q\ & (!\Add13~1\))
-- \Add13~3\ = CARRY((!\mc[3]~reg0_q\ & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X26_Y20_N8
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (\mc[4]~reg0_q\ & ((GND) # (!\Add13~3\))) # (!\mc[4]~reg0_q\ & (\Add13~3\ $ (GND)))
-- \Add13~5\ = CARRY((\mc[4]~reg0_q\) # (!\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X26_Y20_N10
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\mc[5]~reg0_q\ & (!\Add13~5\)) # (!\mc[5]~reg0_q\ & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!\mc[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X26_Y20_N12
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (\mc[6]~reg0_q\ & (\Add13~7\ $ (GND))) # (!\mc[6]~reg0_q\ & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((\mc[6]~reg0_q\ & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X26_Y20_N14
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\mc[7]~reg0_q\ & (\Add13~9\ & VCC)) # (!\mc[7]~reg0_q\ & (!\Add13~9\))
-- \Add13~11\ = CARRY((!\mc[7]~reg0_q\ & !\Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X25_Y20_N8
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \mc[1]~reg0_q\ $ (VCC)
-- \Add9~1\ = CARRY(\mc[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[1]~reg0_q\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X25_Y20_N10
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\mc[2]~reg0_q\ & (!\Add9~1\)) # (!\mc[2]~reg0_q\ & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!\mc[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X25_Y20_N12
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\mc[3]~reg0_q\ & ((GND) # (!\Add9~3\))) # (!\mc[3]~reg0_q\ & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((\mc[3]~reg0_q\) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X25_Y20_N14
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\mc[4]~reg0_q\ & (!\Add9~5\)) # (!\mc[4]~reg0_q\ & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!\mc[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X25_Y20_N16
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\mc[5]~reg0_q\ & (\Add9~7\ $ (GND))) # (!\mc[5]~reg0_q\ & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((\mc[5]~reg0_q\ & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X25_Y20_N18
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\mc[6]~reg0_q\ & (!\Add9~9\)) # (!\mc[6]~reg0_q\ & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\mc[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X25_Y20_N20
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\mc[7]~reg0_q\ & (\Add9~11\ $ (GND))) # (!\mc[7]~reg0_q\ & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((\mc[7]~reg0_q\ & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X25_Y19_N8
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \mc[0]~reg0_q\ $ (VCC)
-- \Add8~1\ = CARRY(\mc[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[0]~reg0_q\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X25_Y19_N10
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\mc[1]~reg0_q\ & (!\Add8~1\)) # (!\mc[1]~reg0_q\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\mc[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[1]~reg0_q\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X25_Y19_N12
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\mc[2]~reg0_q\ & (\Add8~3\ $ (GND))) # (!\mc[2]~reg0_q\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\mc[2]~reg0_q\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X25_Y19_N14
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\mc[3]~reg0_q\ & (!\Add8~5\)) # (!\mc[3]~reg0_q\ & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!\mc[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X25_Y19_N16
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\mc[4]~reg0_q\ & (\Add8~7\ $ (GND))) # (!\mc[4]~reg0_q\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\mc[4]~reg0_q\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X25_Y19_N18
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\mc[5]~reg0_q\ & (!\Add8~9\)) # (!\mc[5]~reg0_q\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\mc[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X25_Y19_N20
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\mc[6]~reg0_q\ & (\Add8~11\ $ (GND))) # (!\mc[6]~reg0_q\ & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((\mc[6]~reg0_q\ & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X25_Y19_N22
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\mc[7]~reg0_q\ & (!\Add8~13\)) # (!\mc[7]~reg0_q\ & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!\mc[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X24_Y19_N26
\mc[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~29_combout\ = (av1(1) & (!av1(0) & ((!\LessThan11~3_combout\) # (!\b2~input_o\)))) # (!av1(1) & (!\b2~input_o\ & (av1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \b2~input_o\,
	datac => av1(0),
	datad => \LessThan11~3_combout\,
	combout => \mc[2]~29_combout\);

-- Location: LCCOMB_X24_Y20_N22
\mc~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~50_combout\ = (\mc[2]~30_combout\ & (((\mc[2]~29_combout\)))) # (!\mc[2]~30_combout\ & ((\mc[2]~29_combout\ & (\Add9~12_combout\)) # (!\mc[2]~29_combout\ & ((\Add8~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add8~14_combout\,
	datad => \mc[2]~29_combout\,
	combout => \mc~50_combout\);

-- Location: LCCOMB_X23_Y20_N24
\mc~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~51_combout\ = (\mc[2]~30_combout\ & ((\mc~50_combout\ & (\Add10~10_combout\)) # (!\mc~50_combout\ & ((\Add13~10_combout\))))) # (!\mc[2]~30_combout\ & (((\mc~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add13~10_combout\,
	datad => \mc~50_combout\,
	combout => \mc~51_combout\);

-- Location: LCCOMB_X25_Y20_N4
\mc[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~36_combout\ = (!\mc[3]~reg0_q\ & ((\Equal4~0_combout\) # ((!\mc[2]~reg0_q\ & !\mc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datab => \mc[2]~reg0_q\,
	datac => \mc[1]~reg0_q\,
	datad => \Equal4~0_combout\,
	combout => \mc[2]~36_combout\);

-- Location: LCCOMB_X25_Y19_N30
\mc[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~33_combout\ = (av1(1)) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datad => av1(1),
	combout => \mc[2]~33_combout\);

-- Location: LCCOMB_X23_Y20_N18
\mc[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~35_combout\ = (!\mc[2]~reg0_q\ & (\Equal4~0_combout\ & ((!\mc[1]~reg0_q\) # (!\mc[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[0]~reg0_q\,
	datab => \mc[2]~reg0_q\,
	datac => \mc[1]~reg0_q\,
	datad => \Equal4~0_combout\,
	combout => \mc[2]~35_combout\);

-- Location: LCCOMB_X24_Y20_N16
\mc[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~37_combout\ = (!\mc[2]~33_combout\ & (\mc[2]~10_combout\ & ((\mc[2]~36_combout\) # (\mc[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~36_combout\,
	datab => \mc[2]~33_combout\,
	datac => \mc[2]~10_combout\,
	datad => \mc[2]~35_combout\,
	combout => \mc[2]~37_combout\);

-- Location: LCCOMB_X25_Y20_N6
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (((!\mc[2]~reg0_q\) # (!\mc[1]~reg0_q\)) # (!\mc[4]~reg0_q\)) # (!\mc[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datab => \mc[4]~reg0_q\,
	datac => \mc[1]~reg0_q\,
	datad => \mc[2]~reg0_q\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (\mc[8]~reg0_q\ & (\Add12~13\ & VCC)) # (!\mc[8]~reg0_q\ & (!\Add12~13\))
-- \Add12~15\ = CARRY((!\mc[8]~reg0_q\ & !\Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X24_Y21_N26
\Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (\mc[8]~reg0_q\ & ((GND) # (!\Add11~15\))) # (!\mc[8]~reg0_q\ & (\Add11~15\ $ (GND)))
-- \Add11~17\ = CARRY((\mc[8]~reg0_q\) # (!\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X26_Y20_N20
\mc[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[8]~8_combout\ = (\Equal4~0_combout\ & (\Add12~14_combout\)) # (!\Equal4~0_combout\ & ((\Add11~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Add12~14_combout\,
	datad => \Add11~16_combout\,
	combout => \mc[8]~8_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\mc[8]~reg0_q\ & (!\Add9~13\)) # (!\mc[8]~reg0_q\ & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!\mc[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X25_Y19_N24
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\mc[8]~reg0_q\ & (\Add8~15\ $ (GND))) # (!\mc[8]~reg0_q\ & (!\Add8~15\ & VCC))
-- \Add8~17\ = CARRY((\mc[8]~reg0_q\ & !\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X23_Y20_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\mc[8]~reg0_q\ & (\Add10~11\ $ (GND))) # (!\mc[8]~reg0_q\ & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((\mc[8]~reg0_q\ & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X26_Y20_N16
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (\mc[8]~reg0_q\ & ((GND) # (!\Add13~11\))) # (!\mc[8]~reg0_q\ & (\Add13~11\ $ (GND)))
-- \Add13~13\ = CARRY((\mc[8]~reg0_q\) # (!\Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X26_Y20_N24
\mc~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~52_combout\ = (\mc[2]~29_combout\ & (\Add10~12_combout\ & ((\mc[2]~30_combout\)))) # (!\mc[2]~29_combout\ & (((\Add13~12_combout\) # (!\mc[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \Add13~12_combout\,
	datac => \mc[2]~29_combout\,
	datad => \mc[2]~30_combout\,
	combout => \mc~52_combout\);

-- Location: LCCOMB_X26_Y20_N22
\mc~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~53_combout\ = (\mc[2]~30_combout\ & (((\mc~52_combout\)))) # (!\mc[2]~30_combout\ & ((\mc~52_combout\ & ((\Add8~16_combout\))) # (!\mc~52_combout\ & (\Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add8~16_combout\,
	datad => \mc~52_combout\,
	combout => \mc~53_combout\);

-- Location: LCCOMB_X26_Y17_N16
\mc~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~26_combout\ = (\b1~input_o\ & ((!av1(1)) # (!av1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => av1(0),
	datac => av1(1),
	combout => \mc~26_combout\);

-- Location: LCCOMB_X24_Y19_N24
\mc[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~40_combout\ = ((av1(1) & ((av1(0)) # (!\LessThan11~3_combout\)))) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \b2~input_o\,
	datac => av1(0),
	datad => \LessThan11~3_combout\,
	combout => \mc[2]~40_combout\);

-- Location: LCCOMB_X25_Y20_N26
\mc[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~41_combout\ = (\as.S2~q\ & ((\mc~26_combout\) # (!\mc[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc~26_combout\,
	datab => \as.S2~q\,
	datad => \mc[2]~40_combout\,
	combout => \mc[2]~41_combout\);

-- Location: FF_X26_Y20_N21
\mc[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[8]~8_combout\,
	asdata => \mc~53_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[8]~reg0_q\);

-- Location: LCCOMB_X24_Y21_N28
\Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = \mc[9]~reg0_q\ $ (!\Add11~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[9]~reg0_q\,
	cin => \Add11~17\,
	combout => \Add11~18_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = \Add12~15\ $ (\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add12~15\,
	combout => \Add12~16_combout\);

-- Location: LCCOMB_X25_Y20_N28
\mc[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[9]~9_combout\ = (\Equal4~0_combout\ & ((\Add12~16_combout\))) # (!\Equal4~0_combout\ & (\Add11~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~18_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add12~16_combout\,
	combout => \mc[9]~9_combout\);

-- Location: LCCOMB_X26_Y20_N18
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = \Add13~13\ $ (!\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add13~13\,
	combout => \Add13~14_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = \Add10~13\ $ (\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add10~13\,
	combout => \Add10~14_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = \mc[9]~reg0_q\ $ (\Add8~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[9]~reg0_q\,
	cin => \Add8~17\,
	combout => \Add8~18_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = \Add9~15\ $ (!\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add9~15\,
	combout => \Add9~16_combout\);

-- Location: LCCOMB_X25_Y19_N28
\mc~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~54_combout\ = (\mc[2]~30_combout\ & (((\mc[2]~29_combout\)))) # (!\mc[2]~30_combout\ & ((\mc[2]~29_combout\ & ((\Add9~16_combout\))) # (!\mc[2]~29_combout\ & (\Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add9~16_combout\,
	datad => \mc[2]~29_combout\,
	combout => \mc~54_combout\);

-- Location: LCCOMB_X25_Y19_N2
\mc~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~55_combout\ = (\mc[2]~30_combout\ & ((\mc~54_combout\ & ((\Add10~14_combout\))) # (!\mc~54_combout\ & (\Add13~14_combout\)))) # (!\mc[2]~30_combout\ & (((\mc~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add10~14_combout\,
	datad => \mc~54_combout\,
	combout => \mc~55_combout\);

-- Location: FF_X25_Y20_N29
\mc[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[9]~9_combout\,
	asdata => \mc~55_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[9]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N16
\mc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~13_combout\ = (\mc[7]~reg0_q\ & (\mc[8]~reg0_q\ & \mc[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datac => \mc[8]~reg0_q\,
	datad => \mc[9]~reg0_q\,
	combout => \mc~13_combout\);

-- Location: LCCOMB_X26_Y20_N26
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (((!\mc[5]~reg0_q\ & \LessThan7~0_combout\)) # (!\mc~13_combout\)) # (!\mc[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datab => \mc[6]~reg0_q\,
	datac => \LessThan7~0_combout\,
	datad => \mc~13_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X24_Y20_N12
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (!\mc[5]~reg0_q\ & (!\mc[6]~reg0_q\ & (!\mc[2]~reg0_q\ & \LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datab => \mc[6]~reg0_q\,
	datac => \mc[2]~reg0_q\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X24_Y20_N14
\mc[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~38_combout\ = (\mc[2]~30_combout\ & (((\mc~13_combout\ & !\LessThan8~1_combout\)))) # (!\mc[2]~30_combout\ & (!\LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \mc~13_combout\,
	datac => \mc[2]~30_combout\,
	datad => \LessThan8~1_combout\,
	combout => \mc[2]~38_combout\);

-- Location: LCCOMB_X23_Y20_N26
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ((!\mc[0]~reg0_q\) # (!\mc[1]~reg0_q\)) # (!\mc[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datac => \mc[1]~reg0_q\,
	datad => \mc[0]~reg0_q\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (((\LessThan6~0_combout\ & \LessThan8~0_combout\)) # (!\mc~13_combout\)) # (!\LessThan11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \LessThan11~1_combout\,
	datac => \mc~13_combout\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\mc[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~34_combout\ = (!\LessThan6~1_combout\ & (!\mc[2]~30_combout\ & (\mc[2]~33_combout\ & !\mc[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~1_combout\,
	datab => \mc[2]~30_combout\,
	datac => \mc[2]~33_combout\,
	datad => \mc[2]~29_combout\,
	combout => \mc[2]~34_combout\);

-- Location: LCCOMB_X24_Y20_N28
\mc[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~39_combout\ = (\mc[2]~37_combout\) # ((\mc[2]~34_combout\) # ((\mc[2]~29_combout\ & \mc[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~29_combout\,
	datab => \mc[2]~37_combout\,
	datac => \mc[2]~38_combout\,
	datad => \mc[2]~34_combout\,
	combout => \mc[2]~39_combout\);

-- Location: FF_X23_Y20_N29
\mc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[7]~7_combout\,
	asdata => \mc~51_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[7]~reg0_q\);

-- Location: LCCOMB_X24_Y19_N20
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!\mc[7]~reg0_q\ & (!\mc[8]~reg0_q\ & !\mc[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datac => \mc[8]~reg0_q\,
	datad => \mc[9]~reg0_q\,
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = ((\LessThan11~1_combout\ & ((\LessThan11~2_combout\) # (!\LessThan8~0_combout\)))) # (!\LessThan11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~2_combout\,
	datab => \LessThan11~1_combout\,
	datac => \LessThan8~0_combout\,
	datad => \LessThan11~0_combout\,
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X25_Y17_N28
\mc~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~20_combout\ = (av1(1) & ((av1(0)) # (!\LessThan11~3_combout\))) # (!av1(1) & (!av1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => av1(1),
	datac => av1(0),
	datad => \LessThan11~3_combout\,
	combout => \mc~20_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (av1(1)) # (av1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => av1(1),
	datad => av1(0),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X25_Y17_N20
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (\mc[3]~reg0_q\) # ((\mc[2]~reg0_q\) # ((\mc[1]~reg0_q\) # (!\mc[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datab => \mc[2]~reg0_q\,
	datac => \mc[2]~10_combout\,
	datad => \mc[1]~reg0_q\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\mc~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~25_combout\ = (av1(1) & (!av1(0) & ((\LessThan8~1_combout\) # (!\mc~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \mc~13_combout\,
	datac => av1(0),
	datad => \LessThan8~1_combout\,
	combout => \mc~25_combout\);

-- Location: LCCOMB_X25_Y17_N22
\mc~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~23_combout\ = (!av1(1) & (!av1(0) & \Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datac => av1(0),
	datad => \Add8~2_combout\,
	combout => \mc~23_combout\);

-- Location: LCCOMB_X25_Y17_N0
\mc~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~22_combout\ = (!av1(1) & (\Add9~0_combout\ & (av1(0) & \LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add9~0_combout\,
	datac => av1(0),
	datad => \LessThan7~2_combout\,
	combout => \mc~22_combout\);

-- Location: LCCOMB_X25_Y17_N24
\mc~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~24_combout\ = (\b1~input_o\ & ((\mc~22_combout\) # ((\LessThan6~1_combout\ & \mc~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \LessThan6~1_combout\,
	datac => \mc~23_combout\,
	datad => \mc~22_combout\,
	combout => \mc~24_combout\);

-- Location: LCCOMB_X25_Y17_N4
\mc~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~27_combout\ = (\mc~24_combout\) # ((\mc[1]~reg0_q\ & ((\mc~25_combout\) # (!\mc~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc~26_combout\,
	datab => \mc[1]~reg0_q\,
	datac => \mc~25_combout\,
	datad => \mc~24_combout\,
	combout => \mc~27_combout\);

-- Location: LCCOMB_X25_Y17_N6
\mc~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~28_combout\ = (\Equal4~1_combout\ & (((\mc~27_combout\)))) # (!\Equal4~1_combout\ & (\LessThan9~0_combout\ & ((\Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \LessThan9~0_combout\,
	datac => \mc~27_combout\,
	datad => \Add11~2_combout\,
	combout => \mc~28_combout\);

-- Location: LCCOMB_X25_Y17_N2
\mc[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[1]~1_combout\ = (\mc~20_combout\ & ((\mc~28_combout\))) # (!\mc~20_combout\ & (\mc~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc~21_combout\,
	datab => \mc~20_combout\,
	datad => \mc~28_combout\,
	combout => \mc[1]~1_combout\);

-- Location: FF_X25_Y17_N3
\mc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[1]~1_combout\,
	asdata => \mc~27_combout\,
	sload => \ALT_INV_b2~input_o\,
	ena => \as.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[1]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N2
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\mc[2]~reg0_q\ & (\Add12~1\ & VCC)) # (!\mc[2]~reg0_q\ & (!\Add12~1\))
-- \Add12~3\ = CARRY((!\mc[2]~reg0_q\ & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X25_Y20_N0
\mc[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~2_combout\ = (\Equal4~0_combout\ & (\Add12~2_combout\)) # (!\Equal4~0_combout\ & ((\Add11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add11~4_combout\,
	combout => \mc[2]~2_combout\);

-- Location: LCCOMB_X26_Y20_N28
\mc~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~31_combout\ = (\mc[2]~30_combout\ & (((\mc[2]~29_combout\) # (\Add13~0_combout\)))) # (!\mc[2]~30_combout\ & (\Add8~4_combout\ & (!\mc[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \mc[2]~30_combout\,
	datac => \mc[2]~29_combout\,
	datad => \Add13~0_combout\,
	combout => \mc~31_combout\);

-- Location: LCCOMB_X26_Y20_N30
\mc~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~32_combout\ = (\mc[2]~29_combout\ & ((\mc~31_combout\ & ((\Add10~0_combout\))) # (!\mc~31_combout\ & (\Add9~2_combout\)))) # (!\mc[2]~29_combout\ & (((\mc~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \Add10~0_combout\,
	datac => \mc[2]~29_combout\,
	datad => \mc~31_combout\,
	combout => \mc~32_combout\);

-- Location: FF_X25_Y20_N1
\mc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[2]~2_combout\,
	asdata => \mc~32_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[2]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (\mc[3]~reg0_q\ & (\Add12~3\ $ (GND))) # (!\mc[3]~reg0_q\ & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((\mc[3]~reg0_q\ & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X25_Y20_N30
\mc[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[3]~3_combout\ = (\Equal4~0_combout\ & (\Add12~4_combout\)) # (!\Equal4~0_combout\ & ((\Add11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => \Add11~6_combout\,
	datad => \Equal4~0_combout\,
	combout => \mc[3]~3_combout\);

-- Location: LCCOMB_X26_Y20_N0
\mc~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~42_combout\ = (\mc[2]~30_combout\ & (((\mc[2]~29_combout\)))) # (!\mc[2]~30_combout\ & ((\mc[2]~29_combout\ & (\Add9~4_combout\)) # (!\mc[2]~29_combout\ & ((\Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \mc[2]~30_combout\,
	datac => \mc[2]~29_combout\,
	datad => \Add8~6_combout\,
	combout => \mc~42_combout\);

-- Location: LCCOMB_X26_Y20_N2
\mc~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~43_combout\ = (\mc[2]~30_combout\ & ((\mc~42_combout\ & ((\Add10~2_combout\))) # (!\mc~42_combout\ & (\Add13~2_combout\)))) # (!\mc[2]~30_combout\ & (((\mc~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add10~2_combout\,
	datad => \mc~42_combout\,
	combout => \mc~43_combout\);

-- Location: FF_X25_Y20_N31
\mc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[3]~3_combout\,
	asdata => \mc~43_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[3]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\mc[4]~reg0_q\ & (\Add12~5\ & VCC)) # (!\mc[4]~reg0_q\ & (!\Add12~5\))
-- \Add12~7\ = CARRY((!\mc[4]~reg0_q\ & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X24_Y20_N24
\mc[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[4]~4_combout\ = (\Equal4~0_combout\ & (\Add12~6_combout\)) # (!\Equal4~0_combout\ & ((\Add11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add11~8_combout\,
	combout => \mc[4]~4_combout\);

-- Location: LCCOMB_X24_Y20_N2
\mc~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~44_combout\ = (\mc[2]~30_combout\ & ((\Add13~4_combout\) # ((\mc[2]~29_combout\)))) # (!\mc[2]~30_combout\ & (((\Add8~8_combout\ & !\mc[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add8~8_combout\,
	datad => \mc[2]~29_combout\,
	combout => \mc~44_combout\);

-- Location: LCCOMB_X24_Y20_N4
\mc~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~45_combout\ = (\mc[2]~29_combout\ & ((\mc~44_combout\ & ((\Add10~4_combout\))) # (!\mc~44_combout\ & (\Add9~6_combout\)))) # (!\mc[2]~29_combout\ & (((\mc~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~29_combout\,
	datab => \Add9~6_combout\,
	datac => \Add10~4_combout\,
	datad => \mc~44_combout\,
	combout => \mc~45_combout\);

-- Location: FF_X24_Y20_N25
\mc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[4]~4_combout\,
	asdata => \mc~45_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[4]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (\mc[5]~reg0_q\ & ((GND) # (!\Add12~7\))) # (!\mc[5]~reg0_q\ & (\Add12~7\ $ (GND)))
-- \Add12~9\ = CARRY((\mc[5]~reg0_q\) # (!\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X24_Y20_N30
\mc[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[5]~5_combout\ = (\Equal4~0_combout\ & (\Add12~8_combout\)) # (!\Equal4~0_combout\ & ((\Add11~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add11~10_combout\,
	combout => \mc[5]~5_combout\);

-- Location: LCCOMB_X24_Y20_N10
\mc~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~46_combout\ = (\mc[2]~29_combout\ & ((\Add9~8_combout\) # ((\mc[2]~30_combout\)))) # (!\mc[2]~29_combout\ & (((!\mc[2]~30_combout\ & \Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \mc[2]~29_combout\,
	datac => \mc[2]~30_combout\,
	datad => \Add8~10_combout\,
	combout => \mc~46_combout\);

-- Location: LCCOMB_X24_Y20_N8
\mc~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~47_combout\ = (\mc[2]~30_combout\ & ((\mc~46_combout\ & ((\Add10~6_combout\))) # (!\mc~46_combout\ & (\Add13~6_combout\)))) # (!\mc[2]~30_combout\ & (((\mc~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \mc[2]~30_combout\,
	datac => \Add10~6_combout\,
	datad => \mc~46_combout\,
	combout => \mc~47_combout\);

-- Location: FF_X24_Y20_N31
\mc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[5]~5_combout\,
	asdata => \mc~47_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[5]~reg0_q\);

-- Location: LCCOMB_X24_Y20_N20
\mc[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[6]~6_combout\ = (\Equal4~0_combout\ & (\Add12~10_combout\)) # (!\Equal4~0_combout\ & ((\Add11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datab => \Equal4~0_combout\,
	datad => \Add11~12_combout\,
	combout => \mc[6]~6_combout\);

-- Location: LCCOMB_X24_Y20_N26
\mc~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~48_combout\ = (\mc[2]~29_combout\ & (((\mc[2]~30_combout\)))) # (!\mc[2]~29_combout\ & ((\mc[2]~30_combout\ & (\Add13~8_combout\)) # (!\mc[2]~30_combout\ & ((\Add8~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datab => \mc[2]~29_combout\,
	datac => \mc[2]~30_combout\,
	datad => \Add8~12_combout\,
	combout => \mc~48_combout\);

-- Location: LCCOMB_X24_Y20_N0
\mc~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~49_combout\ = (\mc~48_combout\ & ((\Add10~8_combout\) # ((!\mc[2]~29_combout\)))) # (!\mc~48_combout\ & (((\Add9~10_combout\ & \mc[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \Add9~10_combout\,
	datac => \mc~48_combout\,
	datad => \mc[2]~29_combout\,
	combout => \mc~49_combout\);

-- Location: FF_X24_Y20_N21
\mc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[6]~6_combout\,
	asdata => \mc~49_combout\,
	sclr => \mc[2]~39_combout\,
	sload => \mc[2]~33_combout\,
	ena => \mc[2]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[6]~reg0_q\);

-- Location: LCCOMB_X24_Y19_N10
\mc[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~10_combout\ = (!\mc[6]~reg0_q\ & (!\mc[4]~reg0_q\ & (!\mc[5]~reg0_q\ & \LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datab => \mc[4]~reg0_q\,
	datac => \mc[5]~reg0_q\,
	datad => \LessThan11~0_combout\,
	combout => \mc[2]~10_combout\);

-- Location: LCCOMB_X25_Y17_N16
\mc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~11_combout\ = (\mc[0]~reg0_q\) # ((\Equal4~0_combout\ & (\mc[2]~10_combout\ & !\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[0]~reg0_q\,
	datab => \Equal4~0_combout\,
	datac => \mc[2]~10_combout\,
	datad => \LessThan10~0_combout\,
	combout => \mc~11_combout\);

-- Location: LCCOMB_X25_Y19_N6
\mc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~17_combout\ = (\b1~input_o\ & (\mc[9]~reg0_q\ & (\mc[7]~reg0_q\ & \mc[8]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \mc[9]~reg0_q\,
	datac => \mc[7]~reg0_q\,
	datad => \mc[8]~reg0_q\,
	combout => \mc~17_combout\);

-- Location: LCCOMB_X25_Y19_N0
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ((!\mc[5]~reg0_q\ & \LessThan7~0_combout\)) # (!\mc[6]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datac => \mc[6]~reg0_q\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X25_Y17_N8
\mc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~15_combout\ = (av1(0) & ((av1(1) & ((!\LessThan8~1_combout\))) # (!av1(1) & (!\LessThan7~1_combout\)))) # (!av1(0) & (((!\LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(0),
	datab => av1(1),
	datac => \LessThan7~1_combout\,
	datad => \LessThan8~1_combout\,
	combout => \mc~15_combout\);

-- Location: LCCOMB_X26_Y17_N14
\mc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~12_combout\ = (\b1~input_o\ & (!av1(0) & !av1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => av1(0),
	datac => av1(1),
	combout => \mc~12_combout\);

-- Location: LCCOMB_X25_Y17_N18
\mc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~14_combout\ = (\mc~12_combout\ & (((\Add8~0_combout\) # (!\LessThan6~1_combout\)))) # (!\mc~12_combout\ & (\mc[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[0]~reg0_q\,
	datab => \mc~12_combout\,
	datac => \LessThan6~1_combout\,
	datad => \Add8~0_combout\,
	combout => \mc~14_combout\);

-- Location: LCCOMB_X25_Y17_N30
\mc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~18_combout\ = (\mc~14_combout\) # ((\mc~17_combout\ & (!\mc~16_combout\ & \mc~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc~17_combout\,
	datab => \mc~16_combout\,
	datac => \mc~15_combout\,
	datad => \mc~14_combout\,
	combout => \mc~18_combout\);

-- Location: LCCOMB_X25_Y17_N10
\mc~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~19_combout\ = (\Equal4~1_combout\ & (((\mc~18_combout\)))) # (!\Equal4~1_combout\ & ((\Add11~0_combout\) # ((!\LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Add11~0_combout\,
	datac => \mc~18_combout\,
	datad => \LessThan9~0_combout\,
	combout => \mc~19_combout\);

-- Location: LCCOMB_X25_Y17_N12
\mc[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[0]~0_combout\ = (\mc~20_combout\ & ((\mc~19_combout\))) # (!\mc~20_combout\ & (\mc~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc~11_combout\,
	datab => \mc~20_combout\,
	datad => \mc~19_combout\,
	combout => \mc[0]~0_combout\);

-- Location: FF_X25_Y17_N13
\mc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[0]~0_combout\,
	asdata => \mc~18_combout\,
	sload => \ALT_INV_b2~input_o\,
	ena => \as.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[0]~reg0_q\);

-- Location: LCCOMB_X26_Y16_N28
\avg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avg~0_combout\ = (\b2~input_o\) # ((!\b1~input_o\ & (\b0~input_o\ $ (\avg~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \b2~input_o\,
	datac => \b0~input_o\,
	datad => \avg~reg0_q\,
	combout => \avg~0_combout\);

-- Location: LCCOMB_X26_Y16_N20
\avg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avg~1_combout\ = (\as.S3~q\ & (\avg~0_combout\)) # (!\as.S3~q\ & ((\avg~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S3~q\,
	datab => \avg~0_combout\,
	datac => \avg~reg0_q\,
	combout => \avg~1_combout\);

-- Location: FF_X26_Y16_N21
\avg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \avg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avg~reg0_q\);

-- Location: IOIBUF_X9_Y24_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
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

ww_trg <= \trg~output_o\;

ww_avg <= \avg~output_o\;
END structure;


