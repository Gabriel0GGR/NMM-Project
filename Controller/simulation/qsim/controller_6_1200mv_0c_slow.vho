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

-- DATE "11/21/2023 21:33:43"

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
-- clk	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- act[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[6]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[8]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- at[9]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[8]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t[9]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[7]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[8]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mc[9]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avg	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \bx~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \as.S3~q\ : std_logic;
SIGNAL \as.S4~feeder_combout\ : std_logic;
SIGNAL \as.S4~q\ : std_logic;
SIGNAL \as.S5~q\ : std_logic;
SIGNAL \as.S6~q\ : std_logic;
SIGNAL \as.S0~0_combout\ : std_logic;
SIGNAL \as.S0~q\ : std_logic;
SIGNAL \as.S1~0_combout\ : std_logic;
SIGNAL \as.S1~q\ : std_logic;
SIGNAL \as.S2~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \bx~combout\ : std_logic;
SIGNAL \bx~clkctrl_outclk\ : std_logic;
SIGNAL \av0[0]~1_combout\ : std_logic;
SIGNAL \av0[1]~0_combout\ : std_logic;
SIGNAL \av0[1]~feeder_combout\ : std_logic;
SIGNAL \at~8_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \at[2]~14_combout\ : std_logic;
SIGNAL \at[2]~16_combout\ : std_logic;
SIGNAL \at[2]~15_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \at~10_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \at~22_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \at~23_combout\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \bx~0_combout\ : std_logic;
SIGNAL \at[2]~21_combout\ : std_logic;
SIGNAL \at[3]~reg0_q\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \at~28_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \at~29_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \at[6]~reg0_q\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \at~30_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \at~31_combout\ : std_logic;
SIGNAL \Add5~23_combout\ : std_logic;
SIGNAL \at[7]~reg0_q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \at~32_combout\ : std_logic;
SIGNAL \at~33_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~27_combout\ : std_logic;
SIGNAL \at[8]~reg0_q\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \at~34_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \at~35_combout\ : std_logic;
SIGNAL \Add5~31_combout\ : std_logic;
SIGNAL \at[9]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \at~9_combout\ : std_logic;
SIGNAL \at~11_combout\ : std_logic;
SIGNAL \at[1]~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \at~12_combout\ : std_logic;
SIGNAL \at~13_combout\ : std_logic;
SIGNAL \at[1]~reg0_q\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \at~17_combout\ : std_logic;
SIGNAL \at~18_combout\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \at[2]~reg0_q\ : std_logic;
SIGNAL \at~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \at[2]~19_combout\ : std_logic;
SIGNAL \at[2]~20_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \at~24_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \at~25_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \at[4]~reg0_q\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \at~26_combout\ : std_logic;
SIGNAL \at~27_combout\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \at[5]~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \at~3_combout\ : std_logic;
SIGNAL \at~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \at~2_combout\ : std_logic;
SIGNAL \at~6_combout\ : std_logic;
SIGNAL \at~7_combout\ : std_logic;
SIGNAL \at[0]~0_combout\ : std_logic;
SIGNAL \at[0]~reg0_q\ : std_logic;
SIGNAL \mc~35_combout\ : std_logic;
SIGNAL \av1[0]~0_combout\ : std_logic;
SIGNAL \mc[0]~8_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \mc[0]~9_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \mc[0]~10_combout\ : std_logic;
SIGNAL \mc[0]~reg0_q\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \mc[1]~12_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \mc[1]~13_combout\ : std_logic;
SIGNAL \mc[1]~11_combout\ : std_logic;
SIGNAL \mc[1]~14_combout\ : std_logic;
SIGNAL \mc[1]~reg0_q\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \mc[2]~0_combout\ : std_logic;
SIGNAL \mc[2]~15_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \mc[2]~16_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \mc~17_combout\ : std_logic;
SIGNAL \mc~18_combout\ : std_logic;
SIGNAL \mc[2]~19_combout\ : std_logic;
SIGNAL \mc[2]~20_combout\ : std_logic;
SIGNAL \mc[2]~reg0_q\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \mc[3]~1_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \mc~21_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \mc~22_combout\ : std_logic;
SIGNAL \mc[3]~reg0_q\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \mc[4]~2_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \mc~23_combout\ : std_logic;
SIGNAL \mc~24_combout\ : std_logic;
SIGNAL \mc[4]~reg0_q\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \mc[5]~3_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \mc~25_combout\ : std_logic;
SIGNAL \mc~26_combout\ : std_logic;
SIGNAL \mc[5]~reg0_q\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \mc[6]~4_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \mc~27_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \mc~28_combout\ : std_logic;
SIGNAL \mc[6]~reg0_q\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \mc[7]~5_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \mc~29_combout\ : std_logic;
SIGNAL \mc~30_combout\ : std_logic;
SIGNAL \mc[7]~reg0_q\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \mc[8]~6_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \mc~31_combout\ : std_logic;
SIGNAL \mc~32_combout\ : std_logic;
SIGNAL \mc[8]~reg0_q\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \mc[9]~7_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \mc~33_combout\ : std_logic;
SIGNAL \mc~34_combout\ : std_logic;
SIGNAL \mc[9]~reg0_q\ : std_logic;
SIGNAL av0 : std_logic_vector(1 DOWNTO 0);
SIGNAL av1 : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_b2~input_o\ : std_logic;
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

\bx~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bx~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\b3~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b3~input_o\);
\ALT_INV_b2~input_o\ <= NOT \b2~input_o\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X34_Y4_N23
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: FF_X14_Y6_N29
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

-- Location: LCCOMB_X14_Y6_N30
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

-- Location: FF_X14_Y6_N31
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

-- Location: FF_X14_Y6_N27
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

-- Location: FF_X14_Y6_N21
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

-- Location: LCCOMB_X14_Y6_N2
\as.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \as.S0~0_combout\ = !\as.S6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \as.S6~q\,
	combout => \as.S0~0_combout\);

-- Location: FF_X14_Y6_N3
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

-- Location: LCCOMB_X14_Y6_N0
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

-- Location: FF_X14_Y6_N1
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

-- Location: FF_X14_Y6_N25
\as.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b3~inputclkctrl_outclk\,
	asdata => \as.S1~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \as.S2~q\);

-- Location: LCCOMB_X14_Y6_N20
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

-- Location: LCCOMB_X14_Y6_N26
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\as.S4~q\) # ((\as.S1~q\) # ((\as.S5~q\) # (!\as.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S4~q\,
	datab => \as.S1~q\,
	datac => \as.S5~q\,
	datad => \as.S0~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X14_Y6_N28
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

-- Location: IOIBUF_X34_Y12_N1
\b2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\b1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\b0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X1_Y6_N0
bx : cycloneive_lcell_comb
-- Equation(s):
-- \bx~combout\ = LCELL((\b2~input_o\) # ((\b1~input_o\) # (\b0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => \b1~input_o\,
	datad => \b0~input_o\,
	combout => \bx~combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X13_Y6_N20
\av0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \av0[0]~1_combout\ = !\at~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \at~8_combout\,
	combout => \av0[0]~1_combout\);

-- Location: LCCOMB_X13_Y6_N10
\av0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \av0[1]~0_combout\ = (\b0~input_o\ & \as.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b0~input_o\,
	datac => \as.S1~q\,
	combout => \av0[1]~0_combout\);

-- Location: FF_X13_Y6_N21
\av0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \av0[0]~1_combout\,
	ena => \av0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av0(0));

-- Location: LCCOMB_X13_Y6_N14
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

-- Location: FF_X13_Y6_N15
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

-- Location: LCCOMB_X13_Y6_N16
\at~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~8_combout\ = av0(1) $ (av0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => av0(1),
	datad => av0(0),
	combout => \at~8_combout\);

-- Location: LCCOMB_X7_Y6_N2
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \at[0]~reg0_q\ $ (VCC)
-- \Add3~1\ = CARRY(\at[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[0]~reg0_q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X13_Y6_N24
\at[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~14_combout\ = (\b2~input_o\ & !av0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datad => av0(0),
	combout => \at[2]~14_combout\);

-- Location: LCCOMB_X13_Y6_N28
\at[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~16_combout\ = (av0(1) & ((av0(0)))) # (!av0(1) & (!\b2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => av0(1),
	datad => av0(0),
	combout => \at[2]~16_combout\);

-- Location: LCCOMB_X13_Y6_N2
\at[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~15_combout\ = (!\b2~input_o\ & (av0(1) $ (av0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datac => av0(1),
	datad => av0(0),
	combout => \at[2]~15_combout\);

-- Location: LCCOMB_X12_Y6_N10
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \at[2]~reg0_q\ $ (VCC)
-- \Add5~1\ = CARRY(\at[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X8_Y6_N10
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \at[1]~reg0_q\ $ (VCC)
-- \Add1~1\ = CARRY(\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X13_Y6_N18
\at~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~10_combout\ = (av0(1) & (\at[1]~reg0_q\)) # (!av0(1) & (((\Add1~0_combout\ & !\at~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datab => av0(1),
	datac => \Add1~0_combout\,
	datad => \at~3_combout\,
	combout => \at~10_combout\);

-- Location: LCCOMB_X9_Y6_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \at[0]~reg0_q\ $ (VCC)
-- \Add0~1\ = CARRY(\at[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[0]~reg0_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X9_Y6_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\at[1]~reg0_q\ & (!\Add0~1\)) # (!\at[1]~reg0_q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\at[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X12_Y6_N12
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\at[3]~reg0_q\ & (\Add5~1\ & VCC)) # (!\at[3]~reg0_q\ & (!\Add5~1\))
-- \Add5~5\ = CARRY((!\at[3]~reg0_q\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X7_Y6_N6
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\at[2]~reg0_q\ & ((GND) # (!\Add3~3\))) # (!\at[2]~reg0_q\ & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((\at[2]~reg0_q\) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X7_Y6_N8
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\at[3]~reg0_q\ & (\Add3~5\ & VCC)) # (!\at[3]~reg0_q\ & (!\Add3~5\))
-- \Add3~7\ = CARRY((!\at[3]~reg0_q\ & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X7_Y6_N0
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~4_combout\)) # (!av0(1) & ((\Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \Add5~4_combout\,
	datac => \Add3~6_combout\,
	datad => \at[2]~14_combout\,
	combout => \Add5~6_combout\);

-- Location: LCCOMB_X11_Y6_N10
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \at[1]~reg0_q\ $ (VCC)
-- \Add4~1\ = CARRY(\at[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[1]~reg0_q\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X11_Y6_N12
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\at[2]~reg0_q\ & (\Add4~1\ & VCC)) # (!\at[2]~reg0_q\ & (!\Add4~1\))
-- \Add4~3\ = CARRY((!\at[2]~reg0_q\ & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X11_Y6_N14
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\at[3]~reg0_q\ & (\Add4~3\ $ (GND))) # (!\at[3]~reg0_q\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\at[3]~reg0_q\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X14_Y6_N4
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \at[2]~reg0_q\ $ (VCC)
-- \Add2~1\ = CARRY(\at[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X14_Y6_N6
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\at[3]~reg0_q\ & (!\Add2~1\)) # (!\at[3]~reg0_q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\at[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X10_Y6_N26
\at~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~22_combout\ = (\at[2]~16_combout\ & (\at[2]~15_combout\)) # (!\at[2]~16_combout\ & ((\at[2]~15_combout\ & ((\Add2~2_combout\))) # (!\at[2]~15_combout\ & (\Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add4~4_combout\,
	datad => \Add2~2_combout\,
	combout => \at~22_combout\);

-- Location: LCCOMB_X8_Y6_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\at[2]~reg0_q\ & (!\Add1~1\)) # (!\at[2]~reg0_q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\at[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X8_Y6_N14
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\at[3]~reg0_q\ & ((GND) # (!\Add1~3\))) # (!\at[3]~reg0_q\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\at[3]~reg0_q\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X9_Y6_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\at[2]~reg0_q\ & (\Add0~3\ $ (GND))) # (!\at[2]~reg0_q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\at[2]~reg0_q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y6_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\at[3]~reg0_q\ & (!\Add0~5\)) # (!\at[3]~reg0_q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\at[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[3]~reg0_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y6_N24
\at~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~23_combout\ = (\at~22_combout\ & ((\Add1~4_combout\) # ((!\at[2]~16_combout\)))) # (!\at~22_combout\ & (((\at[2]~16_combout\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~22_combout\,
	datab => \Add1~4_combout\,
	datac => \at[2]~16_combout\,
	datad => \Add0~6_combout\,
	combout => \at~23_combout\);

-- Location: LCCOMB_X10_Y6_N12
\Add5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (\Add5~6_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \at[2]~14_combout\,
	datac => \at[2]~20_combout\,
	datad => \at~23_combout\,
	combout => \Add5~7_combout\);

-- Location: LCCOMB_X14_Y4_N20
\bx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bx~0_combout\ = (!\b2~input_o\ & !\b1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~input_o\,
	datad => \b1~input_o\,
	combout => \bx~0_combout\);

-- Location: LCCOMB_X14_Y6_N24
\at[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~21_combout\ = (!\bx~0_combout\ & (\as.S1~q\ & ((!av0(0)) # (!av0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \bx~0_combout\,
	datac => \as.S1~q\,
	datad => av0(0),
	combout => \at[2]~21_combout\);

-- Location: FF_X10_Y6_N13
\at[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~7_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[3]~reg0_q\);

-- Location: LCCOMB_X11_Y6_N16
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\at[4]~reg0_q\ & (\Add4~5\ & VCC)) # (!\at[4]~reg0_q\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\at[4]~reg0_q\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X11_Y6_N18
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\at[5]~reg0_q\ & ((GND) # (!\Add4~7\))) # (!\at[5]~reg0_q\ & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((\at[5]~reg0_q\) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X11_Y6_N20
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\at[6]~reg0_q\ & (\Add4~9\ & VCC)) # (!\at[6]~reg0_q\ & (!\Add4~9\))
-- \Add4~11\ = CARRY((!\at[6]~reg0_q\ & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X9_Y6_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\at[4]~reg0_q\ & (\Add0~7\ $ (GND))) # (!\at[4]~reg0_q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\at[4]~reg0_q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y6_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\at[5]~reg0_q\ & (!\Add0~9\)) # (!\at[5]~reg0_q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\at[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y6_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\at[6]~reg0_q\ & (\Add0~11\ $ (GND))) # (!\at[6]~reg0_q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\at[6]~reg0_q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X10_Y6_N22
\at~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~28_combout\ = (\at[2]~16_combout\ & ((\at[2]~15_combout\) # ((\Add0~12_combout\)))) # (!\at[2]~16_combout\ & (!\at[2]~15_combout\ & (\Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add4~10_combout\,
	datad => \Add0~12_combout\,
	combout => \at~28_combout\);

-- Location: LCCOMB_X14_Y6_N8
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\at[4]~reg0_q\ & (\Add2~3\ $ (GND))) # (!\at[4]~reg0_q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\at[4]~reg0_q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X14_Y6_N10
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\at[5]~reg0_q\ & (\Add2~5\ & VCC)) # (!\at[5]~reg0_q\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\at[5]~reg0_q\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X14_Y6_N12
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\at[6]~reg0_q\ & ((GND) # (!\Add2~7\))) # (!\at[6]~reg0_q\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\at[6]~reg0_q\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X8_Y6_N16
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\at[4]~reg0_q\ & (!\Add1~5\)) # (!\at[4]~reg0_q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\at[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X8_Y6_N18
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\at[5]~reg0_q\ & (\Add1~7\ $ (GND))) # (!\at[5]~reg0_q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\at[5]~reg0_q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X8_Y6_N20
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\at[6]~reg0_q\ & (!\Add1~9\)) # (!\at[6]~reg0_q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\at[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X10_Y6_N4
\at~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~29_combout\ = (\at~28_combout\ & (((\Add1~10_combout\)) # (!\at[2]~15_combout\))) # (!\at~28_combout\ & (\at[2]~15_combout\ & (\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~28_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add2~8_combout\,
	datad => \Add1~10_combout\,
	combout => \at~29_combout\);

-- Location: LCCOMB_X7_Y6_N10
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\at[4]~reg0_q\ & ((GND) # (!\Add3~7\))) # (!\at[4]~reg0_q\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((\at[4]~reg0_q\) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X7_Y6_N12
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\at[5]~reg0_q\ & (\Add3~9\ & VCC)) # (!\at[5]~reg0_q\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\at[5]~reg0_q\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X7_Y6_N14
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\at[6]~reg0_q\ & ((GND) # (!\Add3~11\))) # (!\at[6]~reg0_q\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((\at[6]~reg0_q\) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X12_Y6_N16
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\at[5]~reg0_q\ & (!\Add5~9\)) # (!\at[5]~reg0_q\ & ((\Add5~9\) # (GND)))
-- \Add5~13\ = CARRY((!\Add5~9\) # (!\at[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X12_Y6_N18
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\at[6]~reg0_q\ & (\Add5~13\ $ (GND))) # (!\at[6]~reg0_q\ & (!\Add5~13\ & VCC))
-- \Add5~17\ = CARRY((\at[6]~reg0_q\ & !\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[6]~reg0_q\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X7_Y6_N28
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\at[2]~14_combout\ & ((av0(1) & ((\Add5~16_combout\))) # (!av0(1) & (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \at[2]~14_combout\,
	datac => \Add3~12_combout\,
	datad => \Add5~16_combout\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X10_Y6_N8
\Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = (\Add5~18_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~14_combout\,
	datab => \at[2]~20_combout\,
	datac => \at~29_combout\,
	datad => \Add5~18_combout\,
	combout => \Add5~19_combout\);

-- Location: FF_X10_Y6_N9
\at[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~19_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[6]~reg0_q\);

-- Location: LCCOMB_X7_Y6_N16
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\at[7]~reg0_q\ & (\Add3~13\ & VCC)) # (!\at[7]~reg0_q\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((!\at[7]~reg0_q\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X12_Y6_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\at[7]~reg0_q\ & (\Add5~17\ & VCC)) # (!\at[7]~reg0_q\ & (!\Add5~17\))
-- \Add5~21\ = CARRY((!\at[7]~reg0_q\ & !\Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X10_Y6_N6
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\at[2]~14_combout\ & ((av0(1) & ((\Add5~20_combout\))) # (!av0(1) & (\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \at[2]~14_combout\,
	datac => \Add3~14_combout\,
	datad => \Add5~20_combout\,
	combout => \Add5~22_combout\);

-- Location: LCCOMB_X11_Y6_N22
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\at[7]~reg0_q\ & ((GND) # (!\Add4~11\))) # (!\at[7]~reg0_q\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\at[7]~reg0_q\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X14_Y6_N14
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\at[7]~reg0_q\ & (!\Add2~9\)) # (!\at[7]~reg0_q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\at[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X10_Y6_N16
\at~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~30_combout\ = (\at[2]~16_combout\ & (\at[2]~15_combout\)) # (!\at[2]~16_combout\ & ((\at[2]~15_combout\ & ((\Add2~10_combout\))) # (!\at[2]~15_combout\ & (\Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add4~12_combout\,
	datad => \Add2~10_combout\,
	combout => \at~30_combout\);

-- Location: LCCOMB_X8_Y6_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\at[7]~reg0_q\ & (\Add1~11\ $ (GND))) # (!\at[7]~reg0_q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\at[7]~reg0_q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X9_Y6_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\at[7]~reg0_q\ & (!\Add0~13\)) # (!\at[7]~reg0_q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\at[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[7]~reg0_q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X10_Y6_N10
\at~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~31_combout\ = (\at[2]~16_combout\ & ((\at~30_combout\ & (\Add1~12_combout\)) # (!\at~30_combout\ & ((\Add0~14_combout\))))) # (!\at[2]~16_combout\ & (\at~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at~30_combout\,
	datac => \Add1~12_combout\,
	datad => \Add0~14_combout\,
	combout => \at~31_combout\);

-- Location: LCCOMB_X10_Y6_N14
\Add5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~23_combout\ = (\Add5~22_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~22_combout\,
	datab => \at[2]~14_combout\,
	datac => \at[2]~20_combout\,
	datad => \at~31_combout\,
	combout => \Add5~23_combout\);

-- Location: FF_X10_Y6_N15
\at[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~23_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[7]~reg0_q\);

-- Location: LCCOMB_X8_Y6_N24
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\at[8]~reg0_q\ & (!\Add1~13\)) # (!\at[8]~reg0_q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\at[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X14_Y6_N16
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\at[8]~reg0_q\ & (\Add2~11\ $ (GND))) # (!\at[8]~reg0_q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\at[8]~reg0_q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X11_Y6_N24
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\at[8]~reg0_q\ & (\Add4~13\ & VCC)) # (!\at[8]~reg0_q\ & (!\Add4~13\))
-- \Add4~15\ = CARRY((!\at[8]~reg0_q\ & !\Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X9_Y6_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\at[8]~reg0_q\ & (\Add0~15\ $ (GND))) # (!\at[8]~reg0_q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\at[8]~reg0_q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X10_Y6_N28
\at~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~32_combout\ = (\at[2]~16_combout\ & (((\at[2]~15_combout\) # (\Add0~16_combout\)))) # (!\at[2]~16_combout\ & (\Add4~14_combout\ & (!\at[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \Add4~14_combout\,
	datac => \at[2]~15_combout\,
	datad => \Add0~16_combout\,
	combout => \at~32_combout\);

-- Location: LCCOMB_X10_Y6_N30
\at~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~33_combout\ = (\at[2]~15_combout\ & ((\at~32_combout\ & (\Add1~14_combout\)) # (!\at~32_combout\ & ((\Add2~12_combout\))))) # (!\at[2]~15_combout\ & (((\at~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add2~12_combout\,
	datad => \at~32_combout\,
	combout => \at~33_combout\);

-- Location: LCCOMB_X12_Y6_N22
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\at[8]~reg0_q\ & ((GND) # (!\Add5~21\))) # (!\at[8]~reg0_q\ & (\Add5~21\ $ (GND)))
-- \Add5~25\ = CARRY((\at[8]~reg0_q\) # (!\Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X7_Y6_N18
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\at[8]~reg0_q\ & ((GND) # (!\Add3~15\))) # (!\at[8]~reg0_q\ & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((\at[8]~reg0_q\) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[8]~reg0_q\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X7_Y6_N30
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~24_combout\)) # (!av0(1) & ((\Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \at[2]~14_combout\,
	datac => \Add5~24_combout\,
	datad => \Add3~16_combout\,
	combout => \Add5~26_combout\);

-- Location: LCCOMB_X10_Y6_N20
\Add5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~27_combout\ = (\Add5~26_combout\) # ((\at~33_combout\ & (!\at[2]~14_combout\ & !\at[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~33_combout\,
	datab => \at[2]~14_combout\,
	datac => \at[2]~20_combout\,
	datad => \Add5~26_combout\,
	combout => \Add5~27_combout\);

-- Location: FF_X10_Y6_N21
\at[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~27_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[8]~reg0_q\);

-- Location: LCCOMB_X12_Y6_N24
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = \at[9]~reg0_q\ $ (!\Add5~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \at[9]~reg0_q\,
	cin => \Add5~25\,
	combout => \Add5~28_combout\);

-- Location: LCCOMB_X7_Y6_N20
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add3~17\ $ (!\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X12_Y6_N4
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~28_combout\)) # (!av0(1) & ((\Add3~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \Add5~28_combout\,
	datac => \at[2]~14_combout\,
	datad => \Add3~18_combout\,
	combout => \Add5~30_combout\);

-- Location: LCCOMB_X9_Y6_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X11_Y6_N26
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = \Add4~15\ $ (\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add4~15\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X14_Y6_N18
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X12_Y6_N30
\at~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~34_combout\ = (\at[2]~15_combout\ & ((\at[2]~16_combout\) # ((\Add2~14_combout\)))) # (!\at[2]~15_combout\ & (!\at[2]~16_combout\ & (\Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~15_combout\,
	datab => \at[2]~16_combout\,
	datac => \Add4~16_combout\,
	datad => \Add2~14_combout\,
	combout => \at~34_combout\);

-- Location: LCCOMB_X8_Y6_N26
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (!\at[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \at[9]~reg0_q\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X12_Y6_N28
\at~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~35_combout\ = (\at[2]~16_combout\ & ((\at~34_combout\ & ((\Add1~16_combout\))) # (!\at~34_combout\ & (\Add0~18_combout\)))) # (!\at[2]~16_combout\ & (((\at~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \at[2]~16_combout\,
	datac => \at~34_combout\,
	datad => \Add1~16_combout\,
	combout => \at~35_combout\);

-- Location: LCCOMB_X12_Y6_N26
\Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~31_combout\ = (\Add5~30_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~14_combout\,
	datab => \at[2]~20_combout\,
	datac => \Add5~30_combout\,
	datad => \at~35_combout\,
	combout => \Add5~31_combout\);

-- Location: FF_X12_Y6_N27
\at[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~31_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[9]~reg0_q\);

-- Location: LCCOMB_X9_Y6_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\at[8]~reg0_q\ & (\at[6]~reg0_q\ & (\at[7]~reg0_q\ & \at[9]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datab => \at[6]~reg0_q\,
	datac => \at[7]~reg0_q\,
	datad => \at[9]~reg0_q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\at[4]~reg0_q\) # ((\at[0]~reg0_q\ & (\at[2]~reg0_q\ & \at[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datab => \at[2]~reg0_q\,
	datac => \at[4]~reg0_q\,
	datad => \at[1]~reg0_q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y6_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\at[3]~reg0_q\ & !\LessThan0~1_combout\)) # (!\LessThan0~0_combout\)) # (!\at[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \at[3]~reg0_q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y6_N2
\at~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~9_combout\ = (av0(1) & (\LessThan2~1_combout\)) # (!av0(1) & (((\Add0~2_combout\ & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => av0(1),
	datac => \Add0~2_combout\,
	datad => \LessThan0~2_combout\,
	combout => \at~9_combout\);

-- Location: LCCOMB_X8_Y6_N0
\at~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~11_combout\ = (av0(0) & (((\at~10_combout\)))) # (!av0(0) & ((av0(1) & (\at~10_combout\ & !\at~9_combout\)) # (!av0(1) & ((\at~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \at~10_combout\,
	datad => \at~9_combout\,
	combout => \at~11_combout\);

-- Location: LCCOMB_X8_Y6_N28
\at[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[1]~1_combout\ = (\b1~input_o\ & ((\at~11_combout\))) # (!\b1~input_o\ & (\at[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datac => \at[1]~reg0_q\,
	datad => \at~11_combout\,
	combout => \at[1]~1_combout\);

-- Location: LCCOMB_X7_Y6_N4
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\at[1]~reg0_q\ & (\Add3~1\ & VCC)) # (!\at[1]~reg0_q\ & (!\Add3~1\))
-- \Add3~3\ = CARRY((!\at[1]~reg0_q\ & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[1]~reg0_q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X8_Y6_N4
\at~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~12_combout\ = (av0(0) & (av0(1))) # (!av0(0) & ((av0(1) & ((\at[1]~reg0_q\))) # (!av0(1) & (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \Add3~2_combout\,
	datad => \at[1]~reg0_q\,
	combout => \at~12_combout\);

-- Location: LCCOMB_X8_Y6_N30
\at~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~13_combout\ = (av0(0) & ((\at~12_combout\ & ((\at[1]~1_combout\))) # (!\at~12_combout\ & (\Add4~0_combout\)))) # (!av0(0) & (((\at~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => \Add4~0_combout\,
	datac => \at~12_combout\,
	datad => \at[1]~1_combout\,
	combout => \at~13_combout\);

-- Location: FF_X8_Y6_N29
\at[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[1]~1_combout\,
	asdata => \at~13_combout\,
	sload => \b2~input_o\,
	ena => \as.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[1]~reg0_q\);

-- Location: LCCOMB_X12_Y6_N8
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~0_combout\)) # (!av0(1) & ((\Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \at[2]~14_combout\,
	datac => av0(1),
	datad => \Add3~4_combout\,
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X9_Y6_N0
\at~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~17_combout\ = (\at[2]~15_combout\ & (\at[2]~16_combout\)) # (!\at[2]~15_combout\ & ((\at[2]~16_combout\ & ((\Add0~4_combout\))) # (!\at[2]~16_combout\ & (\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~15_combout\,
	datab => \at[2]~16_combout\,
	datac => \Add4~2_combout\,
	datad => \Add0~4_combout\,
	combout => \at~17_combout\);

-- Location: LCCOMB_X9_Y6_N2
\at~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~18_combout\ = (\at[2]~15_combout\ & ((\at~17_combout\ & (\Add1~2_combout\)) # (!\at~17_combout\ & ((\Add2~0_combout\))))) # (!\at[2]~15_combout\ & (((\at~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~15_combout\,
	datab => \Add1~2_combout\,
	datac => \Add2~0_combout\,
	datad => \at~17_combout\,
	combout => \at~18_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (\Add5~2_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \at[2]~14_combout\,
	datac => \at[2]~20_combout\,
	datad => \at~18_combout\,
	combout => \Add5~3_combout\);

-- Location: FF_X12_Y6_N1
\at[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~3_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[2]~reg0_q\);

-- Location: LCCOMB_X9_Y6_N30
\at~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~4_combout\ = (\at[8]~reg0_q\ & (\at[7]~reg0_q\ & \at[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[8]~reg0_q\,
	datac => \at[7]~reg0_q\,
	datad => \at[9]~reg0_q\,
	combout => \at~4_combout\);

-- Location: LCCOMB_X8_Y6_N6
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\at[5]~reg0_q\ & (!\at[6]~reg0_q\ & (!\at[3]~reg0_q\ & !\at[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datab => \at[6]~reg0_q\,
	datac => \at[3]~reg0_q\,
	datad => \at[4]~reg0_q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X8_Y6_N8
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\at~4_combout\ & ((\at[2]~reg0_q\) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at[2]~reg0_q\,
	datac => \at~4_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X13_Y6_N22
\at[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~19_combout\ = (\at[2]~15_combout\ & ((\at[2]~16_combout\ & (\at~3_combout\)) # (!\at[2]~16_combout\ & ((\LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~3_combout\,
	datab => \at[2]~15_combout\,
	datac => \LessThan2~1_combout\,
	datad => \at[2]~16_combout\,
	combout => \at[2]~19_combout\);

-- Location: LCCOMB_X13_Y6_N0
\at[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[2]~20_combout\ = (\at[2]~19_combout\) # ((\at[2]~16_combout\ & (!\at[2]~15_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \at[2]~19_combout\,
	datad => \LessThan0~2_combout\,
	combout => \at[2]~20_combout\);

-- Location: LCCOMB_X13_Y6_N30
\at~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~24_combout\ = (\at[2]~16_combout\ & ((\at[2]~15_combout\) # ((\Add0~8_combout\)))) # (!\at[2]~16_combout\ & (!\at[2]~15_combout\ & ((\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add0~8_combout\,
	datad => \Add4~6_combout\,
	combout => \at~24_combout\);

-- Location: LCCOMB_X13_Y6_N4
\at~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~25_combout\ = (\at~24_combout\ & (((\Add1~6_combout\)) # (!\at[2]~15_combout\))) # (!\at~24_combout\ & (\at[2]~15_combout\ & (\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~24_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add2~4_combout\,
	datad => \Add1~6_combout\,
	combout => \at~25_combout\);

-- Location: LCCOMB_X12_Y6_N14
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\at[4]~reg0_q\ & ((GND) # (!\Add5~5\))) # (!\at[4]~reg0_q\ & (\Add5~5\ $ (GND)))
-- \Add5~9\ = CARRY((\at[4]~reg0_q\) # (!\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \at[4]~reg0_q\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X12_Y6_N2
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~8_combout\)) # (!av0(1) & ((\Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \at[2]~14_combout\,
	datac => \Add5~8_combout\,
	datad => \Add3~8_combout\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X13_Y6_N8
\Add5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (\Add5~10_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~14_combout\,
	datab => \at[2]~20_combout\,
	datac => \at~25_combout\,
	datad => \Add5~10_combout\,
	combout => \Add5~11_combout\);

-- Location: FF_X13_Y6_N9
\at[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~11_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[4]~reg0_q\);

-- Location: LCCOMB_X7_Y6_N22
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\at[2]~14_combout\ & ((av0(1) & (\Add5~12_combout\)) # (!av0(1) & ((\Add3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(1),
	datab => \at[2]~14_combout\,
	datac => \Add5~12_combout\,
	datad => \Add3~10_combout\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X10_Y6_N2
\at~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~26_combout\ = (\at[2]~16_combout\ & (\at[2]~15_combout\)) # (!\at[2]~16_combout\ & ((\at[2]~15_combout\ & (\Add2~6_combout\)) # (!\at[2]~15_combout\ & ((\Add4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \at[2]~15_combout\,
	datac => \Add2~6_combout\,
	datad => \Add4~8_combout\,
	combout => \at~26_combout\);

-- Location: LCCOMB_X10_Y6_N0
\at~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~27_combout\ = (\at[2]~16_combout\ & ((\at~26_combout\ & ((\Add1~8_combout\))) # (!\at~26_combout\ & (\Add0~10_combout\)))) # (!\at[2]~16_combout\ & (((\at~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~16_combout\,
	datab => \Add0~10_combout\,
	datac => \Add1~8_combout\,
	datad => \at~26_combout\,
	combout => \at~27_combout\);

-- Location: LCCOMB_X10_Y6_N18
\Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = (\Add5~14_combout\) # ((!\at[2]~14_combout\ & (!\at[2]~20_combout\ & \at~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \at[2]~14_combout\,
	datac => \at[2]~20_combout\,
	datad => \at~27_combout\,
	combout => \Add5~15_combout\);

-- Location: FF_X10_Y6_N19
\at[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \Add5~15_combout\,
	ena => \at[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[5]~reg0_q\);

-- Location: LCCOMB_X13_Y6_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!\at[1]~reg0_q\) # (!\at[3]~reg0_q\)) # (!\at[4]~reg0_q\)) # (!\at[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[2]~reg0_q\,
	datab => \at[4]~reg0_q\,
	datac => \at[3]~reg0_q\,
	datad => \at[1]~reg0_q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y6_N12
\at~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~3_combout\ = (\LessThan0~0_combout\ & ((\at[5]~reg0_q\) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[5]~reg0_q\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \at~3_combout\);

-- Location: LCCOMB_X13_Y6_N6
\at~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~5_combout\ = (av0(0) & (\at~3_combout\ & ((!av0(1))))) # (!av0(0) & (((\LessThan2~1_combout\) # (!av0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at~3_combout\,
	datab => av0(0),
	datac => \LessThan2~1_combout\,
	datad => av0(1),
	combout => \at~5_combout\);

-- Location: LCCOMB_X11_Y6_N30
\at~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~2_combout\ = ((\Add0~0_combout\) # (av0(0) $ (av0(1)))) # (!\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \LessThan0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \at~2_combout\);

-- Location: LCCOMB_X11_Y6_N28
\at~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~6_combout\ = (\b1~input_o\ & ((\at~5_combout\ & ((\at~2_combout\))) # (!\at~5_combout\ & (\at[0]~reg0_q\)))) # (!\b1~input_o\ & (\at[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~reg0_q\,
	datab => \b1~input_o\,
	datac => \at~5_combout\,
	datad => \at~2_combout\,
	combout => \at~6_combout\);

-- Location: LCCOMB_X11_Y6_N6
\at~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \at~7_combout\ = (av0(0) & (((\at~6_combout\)))) # (!av0(0) & ((av0(1) & ((\at~6_combout\))) # (!av0(1) & (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av0(0),
	datab => av0(1),
	datac => \Add3~0_combout\,
	datad => \at~6_combout\,
	combout => \at~7_combout\);

-- Location: LCCOMB_X11_Y6_N8
\at[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[0]~0_combout\ = (\at~8_combout\ & (\at[0]~reg0_q\)) # (!\at~8_combout\ & ((\at~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \at~8_combout\,
	datac => \at[0]~reg0_q\,
	datad => \at~7_combout\,
	combout => \at[0]~0_combout\);

-- Location: FF_X11_Y6_N9
\at[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \at[0]~0_combout\,
	asdata => \at~6_combout\,
	sload => \ALT_INV_b2~input_o\,
	ena => \as.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \at[0]~reg0_q\);

-- Location: LCCOMB_X17_Y6_N14
\mc~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~35_combout\ = av1(0) $ (!av1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => av1(0),
	datad => av1(1),
	combout => \mc~35_combout\);

-- Location: LCCOMB_X14_Y6_N22
\av1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \av1[0]~0_combout\ = (\b0~input_o\ & \as.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b0~input_o\,
	datad => \as.S2~q\,
	combout => \av1[0]~0_combout\);

-- Location: FF_X17_Y6_N15
\av1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc~35_combout\,
	ena => \av1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av1(0));

-- Location: FF_X17_Y6_N13
\av1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	asdata => av1(0),
	sload => VCC,
	ena => \av1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => av1(1));

-- Location: LCCOMB_X14_Y4_N18
\mc[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[0]~8_combout\ = (!av1(1) & (\as.S2~q\ & !av1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datac => \as.S2~q\,
	datad => av1(0),
	combout => \mc[0]~8_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \mc[0]~reg0_q\ $ (VCC)
-- \Add6~1\ = CARRY(\mc[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[0]~reg0_q\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X14_Y4_N12
\mc[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[0]~9_combout\ = (\b1~input_o\ & ((\mc[0]~8_combout\ & (\Add6~0_combout\)) # (!\mc[0]~8_combout\ & ((\mc[0]~reg0_q\))))) # (!\b1~input_o\ & (((\mc[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~input_o\,
	datab => \mc[0]~8_combout\,
	datac => \Add6~0_combout\,
	datad => \mc[0]~reg0_q\,
	combout => \mc[0]~9_combout\);

-- Location: LCCOMB_X13_Y4_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \mc[0]~reg0_q\ $ (VCC)
-- \Add9~1\ = CARRY(\mc[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[0]~reg0_q\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X14_Y4_N28
\mc[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[0]~10_combout\ = (\mc[0]~8_combout\ & ((\b2~input_o\ & ((\Add9~0_combout\))) # (!\b2~input_o\ & (\mc[0]~9_combout\)))) # (!\mc[0]~8_combout\ & (\mc[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[0]~9_combout\,
	datab => \mc[0]~8_combout\,
	datac => \Add9~0_combout\,
	datad => \b2~input_o\,
	combout => \mc[0]~10_combout\);

-- Location: FF_X14_Y4_N29
\mc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[0]~reg0_q\);

-- Location: LCCOMB_X13_Y4_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\mc[1]~reg0_q\ & (\Add9~1\ & VCC)) # (!\mc[1]~reg0_q\ & (!\Add9~1\))
-- \Add9~3\ = CARRY((!\mc[1]~reg0_q\ & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[1]~reg0_q\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X16_Y4_N8
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \mc[1]~reg0_q\ $ (VCC)
-- \Add7~1\ = CARRY(\mc[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~reg0_q\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X19_Y4_N0
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \mc[1]~reg0_q\ $ (VCC)
-- \Add10~1\ = CARRY(\mc[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~reg0_q\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X14_Y4_N4
\mc[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[1]~12_combout\ = (\b2~input_o\ & (((\Add10~0_combout\) # (!av1(0))))) # (!\b2~input_o\ & (\Add7~0_combout\ & ((av1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \b2~input_o\,
	datac => \Add10~0_combout\,
	datad => av1(0),
	combout => \mc[1]~12_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\mc[1]~reg0_q\ & (!\Add6~1\)) # (!\mc[1]~reg0_q\ & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!\mc[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~reg0_q\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X14_Y4_N30
\mc[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[1]~13_combout\ = (av1(0) & (((\mc[1]~12_combout\)))) # (!av1(0) & ((\mc[1]~12_combout\ & (\Add9~2_combout\)) # (!\mc[1]~12_combout\ & ((\Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => av1(0),
	datac => \mc[1]~12_combout\,
	datad => \Add6~2_combout\,
	combout => \mc[1]~13_combout\);

-- Location: LCCOMB_X14_Y4_N6
\mc[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[1]~11_combout\ = (\as.S2~q\ & (!av1(1) & ((\b2~input_o\) # (\b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \as.S2~q\,
	datab => \b2~input_o\,
	datac => av1(1),
	datad => \b1~input_o\,
	combout => \mc[1]~11_combout\);

-- Location: LCCOMB_X14_Y4_N10
\mc[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[1]~14_combout\ = (\mc[1]~11_combout\ & (\mc[1]~13_combout\)) # (!\mc[1]~11_combout\ & ((\mc[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[1]~13_combout\,
	datac => \mc[1]~reg0_q\,
	datad => \mc[1]~11_combout\,
	combout => \mc[1]~14_combout\);

-- Location: FF_X14_Y4_N11
\mc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[1]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N4
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = \mc[2]~reg0_q\ $ (VCC)
-- \Add11~1\ = CARRY(\mc[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X13_Y4_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\mc[2]~reg0_q\ & ((GND) # (!\Add9~3\))) # (!\mc[2]~reg0_q\ & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((\mc[2]~reg0_q\) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X19_Y4_N30
\mc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~0_combout\ = (av1(1) & (\Add11~0_combout\)) # (!av1(1) & ((\Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add11~0_combout\,
	datad => \Add9~4_combout\,
	combout => \mc[2]~0_combout\);

-- Location: LCCOMB_X17_Y6_N20
\mc[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~15_combout\ = (\b2~input_o\ & (av1(0) & av1(1))) # (!\b2~input_o\ & ((av1(0)) # (av1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~input_o\,
	datac => av1(0),
	datad => av1(1),
	combout => \mc[2]~15_combout\);

-- Location: LCCOMB_X16_Y4_N10
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\mc[2]~reg0_q\ & (!\Add7~1\)) # (!\mc[2]~reg0_q\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\mc[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X17_Y4_N2
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \mc[2]~reg0_q\ $ (VCC)
-- \Add8~1\ = CARRY(\mc[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc[2]~reg0_q\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X16_Y4_N6
\mc[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~16_combout\ = (\b2~input_o\) # (av1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2~input_o\,
	datad => av1(0),
	combout => \mc[2]~16_combout\);

-- Location: LCCOMB_X18_Y4_N6
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\mc[2]~reg0_q\ & (\Add6~3\ $ (GND))) # (!\mc[2]~reg0_q\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\mc[2]~reg0_q\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X19_Y4_N2
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\mc[2]~reg0_q\ & (\Add10~1\ & VCC)) # (!\mc[2]~reg0_q\ & (!\Add10~1\))
-- \Add10~3\ = CARRY((!\mc[2]~reg0_q\ & !\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~reg0_q\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X19_Y4_N18
\mc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~17_combout\ = (\mc[2]~15_combout\ & (\mc[2]~16_combout\)) # (!\mc[2]~15_combout\ & ((\mc[2]~16_combout\ & ((\Add10~2_combout\))) # (!\mc[2]~16_combout\ & (\Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \mc[2]~16_combout\,
	datac => \Add6~4_combout\,
	datad => \Add10~2_combout\,
	combout => \mc~17_combout\);

-- Location: LCCOMB_X19_Y4_N28
\mc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~18_combout\ = (\mc[2]~15_combout\ & ((\mc~17_combout\ & (\Add7~2_combout\)) # (!\mc~17_combout\ & ((\Add8~0_combout\))))) # (!\mc[2]~15_combout\ & (((\mc~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \Add7~2_combout\,
	datac => \Add8~0_combout\,
	datad => \mc~17_combout\,
	combout => \mc~18_combout\);

-- Location: LCCOMB_X16_Y4_N28
\mc[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~19_combout\ = (av1(0)) # (!\b2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2~input_o\,
	datad => av1(0),
	combout => \mc[2]~19_combout\);

-- Location: LCCOMB_X14_Y4_N24
\mc[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[2]~20_combout\ = (!\bx~0_combout\ & (\as.S2~q\ & ((!av1(0)) # (!av1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \bx~0_combout\,
	datac => \as.S2~q\,
	datad => av1(0),
	combout => \mc[2]~20_combout\);

-- Location: FF_X19_Y4_N31
\mc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[2]~0_combout\,
	asdata => \mc~18_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[2]~reg0_q\);

-- Location: LCCOMB_X13_Y4_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\mc[3]~reg0_q\ & (\Add9~5\ & VCC)) # (!\mc[3]~reg0_q\ & (!\Add9~5\))
-- \Add9~7\ = CARRY((!\mc[3]~reg0_q\ & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X21_Y4_N6
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\mc[3]~reg0_q\ & (\Add11~1\ & VCC)) # (!\mc[3]~reg0_q\ & (!\Add11~1\))
-- \Add11~3\ = CARRY((!\mc[3]~reg0_q\ & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X17_Y4_N0
\mc[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[3]~1_combout\ = (av1(1) & ((\Add11~2_combout\))) # (!av1(1) & (\Add9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add11~2_combout\,
	datad => av1(1),
	combout => \mc[3]~1_combout\);

-- Location: LCCOMB_X16_Y4_N12
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\mc[3]~reg0_q\ & ((GND) # (!\Add7~3\))) # (!\mc[3]~reg0_q\ & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((\mc[3]~reg0_q\) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X17_Y4_N4
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\mc[3]~reg0_q\ & (!\Add8~1\)) # (!\mc[3]~reg0_q\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\mc[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X18_Y4_N8
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\mc[3]~reg0_q\ & (!\Add6~5\)) # (!\mc[3]~reg0_q\ & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\mc[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X17_Y4_N30
\mc~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~21_combout\ = (\mc[2]~16_combout\ & (((\mc[2]~15_combout\)))) # (!\mc[2]~16_combout\ & ((\mc[2]~15_combout\ & (\Add8~2_combout\)) # (!\mc[2]~15_combout\ & ((\Add6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~16_combout\,
	datab => \Add8~2_combout\,
	datac => \Add6~6_combout\,
	datad => \mc[2]~15_combout\,
	combout => \mc~21_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\mc[3]~reg0_q\ & (\Add10~3\ $ (GND))) # (!\mc[3]~reg0_q\ & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((\mc[3]~reg0_q\ & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[3]~reg0_q\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X17_Y4_N20
\mc~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~22_combout\ = (\mc[2]~16_combout\ & ((\mc~21_combout\ & (\Add7~4_combout\)) # (!\mc~21_combout\ & ((\Add10~4_combout\))))) # (!\mc[2]~16_combout\ & (((\mc~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \mc[2]~16_combout\,
	datac => \mc~21_combout\,
	datad => \Add10~4_combout\,
	combout => \mc~22_combout\);

-- Location: FF_X17_Y4_N1
\mc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[3]~1_combout\,
	asdata => \mc~22_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[3]~reg0_q\);

-- Location: LCCOMB_X13_Y4_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\mc[4]~reg0_q\ & ((GND) # (!\Add9~7\))) # (!\mc[4]~reg0_q\ & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((\mc[4]~reg0_q\) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X21_Y4_N8
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\mc[4]~reg0_q\ & ((GND) # (!\Add11~3\))) # (!\mc[4]~reg0_q\ & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((\mc[4]~reg0_q\) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X18_Y4_N0
\mc[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[4]~2_combout\ = (av1(1) & ((\Add11~4_combout\))) # (!av1(1) & (\Add9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add9~8_combout\,
	datad => \Add11~4_combout\,
	combout => \mc[4]~2_combout\);

-- Location: LCCOMB_X16_Y4_N14
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\mc[4]~reg0_q\ & (!\Add7~5\)) # (!\mc[4]~reg0_q\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\mc[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X17_Y4_N6
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\mc[4]~reg0_q\ & (\Add8~3\ $ (GND))) # (!\mc[4]~reg0_q\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\mc[4]~reg0_q\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X19_Y4_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\mc[4]~reg0_q\ & (\Add10~5\ & VCC)) # (!\mc[4]~reg0_q\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\mc[4]~reg0_q\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X18_Y4_N10
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\mc[4]~reg0_q\ & (\Add6~7\ $ (GND))) # (!\mc[4]~reg0_q\ & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((\mc[4]~reg0_q\ & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[4]~reg0_q\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X19_Y4_N26
\mc~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~23_combout\ = (\mc[2]~16_combout\ & ((\Add10~6_combout\) # ((\mc[2]~15_combout\)))) # (!\mc[2]~16_combout\ & (((!\mc[2]~15_combout\ & \Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \mc[2]~16_combout\,
	datac => \mc[2]~15_combout\,
	datad => \Add6~8_combout\,
	combout => \mc~23_combout\);

-- Location: LCCOMB_X18_Y4_N28
\mc~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~24_combout\ = (\mc[2]~15_combout\ & ((\mc~23_combout\ & (\Add7~6_combout\)) # (!\mc~23_combout\ & ((\Add8~4_combout\))))) # (!\mc[2]~15_combout\ & (((\mc~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \Add7~6_combout\,
	datac => \Add8~4_combout\,
	datad => \mc~23_combout\,
	combout => \mc~24_combout\);

-- Location: FF_X18_Y4_N1
\mc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[4]~2_combout\,
	asdata => \mc~24_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[4]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N10
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\mc[5]~reg0_q\ & (!\Add11~5\)) # (!\mc[5]~reg0_q\ & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!\mc[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X13_Y4_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\mc[5]~reg0_q\ & (\Add9~9\ & VCC)) # (!\mc[5]~reg0_q\ & (!\Add9~9\))
-- \Add9~11\ = CARRY((!\mc[5]~reg0_q\ & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X16_Y4_N4
\mc[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[5]~3_combout\ = (av1(1) & (\Add11~6_combout\)) # (!av1(1) & ((\Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add11~6_combout\,
	datad => \Add9~10_combout\,
	combout => \mc[5]~3_combout\);

-- Location: LCCOMB_X16_Y4_N16
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\mc[5]~reg0_q\ & (\Add7~7\ $ (GND))) # (!\mc[5]~reg0_q\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\mc[5]~reg0_q\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X19_Y4_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\mc[5]~reg0_q\ & ((GND) # (!\Add10~7\))) # (!\mc[5]~reg0_q\ & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((\mc[5]~reg0_q\) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X17_Y4_N8
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\mc[5]~reg0_q\ & (\Add8~5\ & VCC)) # (!\mc[5]~reg0_q\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\mc[5]~reg0_q\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X18_Y4_N12
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\mc[5]~reg0_q\ & (!\Add6~9\)) # (!\mc[5]~reg0_q\ & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!\mc[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[5]~reg0_q\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X16_Y4_N2
\mc~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~25_combout\ = (\mc[2]~16_combout\ & (((\mc[2]~15_combout\)))) # (!\mc[2]~16_combout\ & ((\mc[2]~15_combout\ & (\Add8~6_combout\)) # (!\mc[2]~15_combout\ & ((\Add6~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~16_combout\,
	datab => \Add8~6_combout\,
	datac => \mc[2]~15_combout\,
	datad => \Add6~10_combout\,
	combout => \mc~25_combout\);

-- Location: LCCOMB_X16_Y4_N26
\mc~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~26_combout\ = (\mc[2]~16_combout\ & ((\mc~25_combout\ & (\Add7~8_combout\)) # (!\mc~25_combout\ & ((\Add10~8_combout\))))) # (!\mc[2]~16_combout\ & (((\mc~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~16_combout\,
	datab => \Add7~8_combout\,
	datac => \Add10~8_combout\,
	datad => \mc~25_combout\,
	combout => \mc~26_combout\);

-- Location: FF_X16_Y4_N5
\mc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[5]~3_combout\,
	asdata => \mc~26_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[5]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N12
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\mc[6]~reg0_q\ & (\Add11~7\ $ (GND))) # (!\mc[6]~reg0_q\ & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((\mc[6]~reg0_q\ & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X13_Y4_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\mc[6]~reg0_q\ & ((GND) # (!\Add9~11\))) # (!\mc[6]~reg0_q\ & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((\mc[6]~reg0_q\) # (!\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X18_Y4_N26
\mc[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[6]~4_combout\ = (av1(1) & (\Add11~8_combout\)) # (!av1(1) & ((\Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add11~8_combout\,
	datad => \Add9~12_combout\,
	combout => \mc[6]~4_combout\);

-- Location: LCCOMB_X17_Y4_N10
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\mc[6]~reg0_q\ & ((GND) # (!\Add8~7\))) # (!\mc[6]~reg0_q\ & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((\mc[6]~reg0_q\) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X18_Y4_N14
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\mc[6]~reg0_q\ & (\Add6~11\ $ (GND))) # (!\mc[6]~reg0_q\ & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((\mc[6]~reg0_q\ & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X19_Y4_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\mc[6]~reg0_q\ & (\Add10~9\ & VCC)) # (!\mc[6]~reg0_q\ & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\mc[6]~reg0_q\ & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X18_Y4_N30
\mc~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~27_combout\ = (\mc[2]~16_combout\ & (((\Add10~10_combout\) # (\mc[2]~15_combout\)))) # (!\mc[2]~16_combout\ & (\Add6~12_combout\ & ((!\mc[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~16_combout\,
	datab => \Add6~12_combout\,
	datac => \Add10~10_combout\,
	datad => \mc[2]~15_combout\,
	combout => \mc~27_combout\);

-- Location: LCCOMB_X16_Y4_N18
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\mc[6]~reg0_q\ & (!\Add7~9\)) # (!\mc[6]~reg0_q\ & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!\mc[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[6]~reg0_q\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X18_Y4_N24
\mc~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~28_combout\ = (\mc[2]~15_combout\ & ((\mc~27_combout\ & ((\Add7~10_combout\))) # (!\mc~27_combout\ & (\Add8~8_combout\)))) # (!\mc[2]~15_combout\ & (((\mc~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \Add8~8_combout\,
	datac => \mc~27_combout\,
	datad => \Add7~10_combout\,
	combout => \mc~28_combout\);

-- Location: FF_X18_Y4_N27
\mc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[6]~4_combout\,
	asdata => \mc~28_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[6]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N14
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\mc[7]~reg0_q\ & (\Add11~9\ & VCC)) # (!\mc[7]~reg0_q\ & (!\Add11~9\))
-- \Add11~11\ = CARRY((!\mc[7]~reg0_q\ & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X13_Y4_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\mc[7]~reg0_q\ & (\Add9~13\ & VCC)) # (!\mc[7]~reg0_q\ & (!\Add9~13\))
-- \Add9~15\ = CARRY((!\mc[7]~reg0_q\ & !\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X19_Y4_N20
\mc[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[7]~5_combout\ = (av1(1) & (\Add11~10_combout\)) # (!av1(1) & ((\Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add11~10_combout\,
	datad => \Add9~14_combout\,
	combout => \mc[7]~5_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\mc[7]~reg0_q\ & ((GND) # (!\Add10~11\))) # (!\mc[7]~reg0_q\ & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((\mc[7]~reg0_q\) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X16_Y4_N20
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\mc[7]~reg0_q\ & (\Add7~11\ $ (GND))) # (!\mc[7]~reg0_q\ & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((\mc[7]~reg0_q\ & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X18_Y4_N16
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\mc[7]~reg0_q\ & (!\Add6~13\)) # (!\mc[7]~reg0_q\ & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!\mc[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X17_Y4_N12
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\mc[7]~reg0_q\ & (!\Add8~9\)) # (!\mc[7]~reg0_q\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\mc[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[7]~reg0_q\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X19_Y4_N24
\mc~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~29_combout\ = (\mc[2]~15_combout\ & ((\mc[2]~16_combout\) # ((\Add8~10_combout\)))) # (!\mc[2]~15_combout\ & (!\mc[2]~16_combout\ & (\Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \mc[2]~16_combout\,
	datac => \Add6~14_combout\,
	datad => \Add8~10_combout\,
	combout => \mc~29_combout\);

-- Location: LCCOMB_X19_Y4_N22
\mc~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~30_combout\ = (\mc[2]~16_combout\ & ((\mc~29_combout\ & ((\Add7~12_combout\))) # (!\mc~29_combout\ & (\Add10~12_combout\)))) # (!\mc[2]~16_combout\ & (((\mc~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \mc[2]~16_combout\,
	datac => \Add7~12_combout\,
	datad => \mc~29_combout\,
	combout => \mc~30_combout\);

-- Location: FF_X19_Y4_N21
\mc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[7]~5_combout\,
	asdata => \mc~30_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[7]~reg0_q\);

-- Location: LCCOMB_X21_Y4_N16
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\mc[8]~reg0_q\ & ((GND) # (!\Add11~11\))) # (!\mc[8]~reg0_q\ & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((\mc[8]~reg0_q\) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X13_Y4_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\mc[8]~reg0_q\ & ((GND) # (!\Add9~15\))) # (!\mc[8]~reg0_q\ & (\Add9~15\ $ (GND)))
-- \Add9~17\ = CARRY((\mc[8]~reg0_q\) # (!\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X17_Y4_N18
\mc[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[8]~6_combout\ = (av1(1) & (\Add11~12_combout\)) # (!av1(1) & ((\Add9~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => av1(1),
	datab => \Add11~12_combout\,
	datad => \Add9~16_combout\,
	combout => \mc[8]~6_combout\);

-- Location: LCCOMB_X16_Y4_N22
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\mc[8]~reg0_q\ & (!\Add7~13\)) # (!\mc[8]~reg0_q\ & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!\mc[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X17_Y4_N14
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\mc[8]~reg0_q\ & (\Add8~11\ $ (GND))) # (!\mc[8]~reg0_q\ & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((\mc[8]~reg0_q\ & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X19_Y4_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\mc[8]~reg0_q\ & (\Add10~13\ & VCC)) # (!\mc[8]~reg0_q\ & (!\Add10~13\))
-- \Add10~15\ = CARRY((!\mc[8]~reg0_q\ & !\Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X18_Y4_N18
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\mc[8]~reg0_q\ & (\Add6~15\ $ (GND))) # (!\mc[8]~reg0_q\ & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((\mc[8]~reg0_q\ & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mc[8]~reg0_q\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X18_Y4_N22
\mc~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~31_combout\ = (\mc[2]~15_combout\ & (\mc[2]~16_combout\)) # (!\mc[2]~15_combout\ & ((\mc[2]~16_combout\ & (\Add10~14_combout\)) # (!\mc[2]~16_combout\ & ((\Add6~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \mc[2]~16_combout\,
	datac => \Add10~14_combout\,
	datad => \Add6~16_combout\,
	combout => \mc~31_combout\);

-- Location: LCCOMB_X17_Y4_N26
\mc~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~32_combout\ = (\mc[2]~15_combout\ & ((\mc~31_combout\ & (\Add7~14_combout\)) # (!\mc~31_combout\ & ((\Add8~12_combout\))))) # (!\mc[2]~15_combout\ & (((\mc~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \mc[2]~15_combout\,
	datac => \Add8~12_combout\,
	datad => \mc~31_combout\,
	combout => \mc~32_combout\);

-- Location: FF_X17_Y4_N19
\mc[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[8]~6_combout\,
	asdata => \mc~32_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[8]~reg0_q\);

-- Location: LCCOMB_X13_Y4_N18
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = \Add9~17\ $ (!\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add9~17\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X21_Y4_N18
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = \Add11~13\ $ (!\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add11~13\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X17_Y4_N24
\mc[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc[9]~7_combout\ = (av1(1) & ((\Add11~14_combout\))) # (!av1(1) & (\Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~18_combout\,
	datab => av1(1),
	datad => \Add11~14_combout\,
	combout => \mc[9]~7_combout\);

-- Location: LCCOMB_X19_Y4_N16
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = \Add10~15\ $ (\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add10~15\,
	combout => \Add10~16_combout\);

-- Location: LCCOMB_X16_Y4_N24
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = \Add7~15\ $ (!\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add7~15\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X18_Y4_N20
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = \Add6~17\ $ (\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add6~17\,
	combout => \Add6~18_combout\);

-- Location: LCCOMB_X17_Y4_N16
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = \Add8~13\ $ (\mc[9]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mc[9]~reg0_q\,
	cin => \Add8~13\,
	combout => \Add8~14_combout\);

-- Location: LCCOMB_X17_Y4_N28
\mc~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~33_combout\ = (\mc[2]~15_combout\ & ((\mc[2]~16_combout\) # ((\Add8~14_combout\)))) # (!\mc[2]~15_combout\ & (!\mc[2]~16_combout\ & (\Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc[2]~15_combout\,
	datab => \mc[2]~16_combout\,
	datac => \Add6~18_combout\,
	datad => \Add8~14_combout\,
	combout => \mc~33_combout\);

-- Location: LCCOMB_X17_Y4_N22
\mc~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc~34_combout\ = (\mc[2]~16_combout\ & ((\mc~33_combout\ & ((\Add7~16_combout\))) # (!\mc~33_combout\ & (\Add10~16_combout\)))) # (!\mc[2]~16_combout\ & (((\mc~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~16_combout\,
	datab => \Add7~16_combout\,
	datac => \mc[2]~16_combout\,
	datad => \mc~33_combout\,
	combout => \mc~34_combout\);

-- Location: FF_X17_Y4_N25
\mc[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bx~clkctrl_outclk\,
	d => \mc[9]~7_combout\,
	asdata => \mc~34_combout\,
	sload => \mc[2]~19_combout\,
	ena => \mc[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc[9]~reg0_q\);

-- Location: IOIBUF_X13_Y24_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
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


