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

-- DATE "11/16/2023 19:26:22"

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

ENTITY 	average IS
    PORT (
	I : IN std_logic_vector(11 DOWNTO 0);
	MC : IN std_logic_vector(9 DOWNTO 0);
	avg : IN std_logic;
	clk : IN std_logic;
	A : OUT std_logic_vector(11 DOWNTO 0);
	M : OUT std_logic_vector(9 DOWNTO 0)
	);
END average;

-- Design Ports Information
-- A[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avg	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[9]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[10]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[11]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MC[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF average IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_MC : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_avg : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[8]~output_o\ : std_logic;
SIGNAL \A[9]~output_o\ : std_logic;
SIGNAL \A[10]~output_o\ : std_logic;
SIGNAL \A[11]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \avg~input_o\ : std_logic;
SIGNAL \number[0]~0_combout\ : std_logic;
SIGNAL \number[1]~1_combout\ : std_logic;
SIGNAL \memory_0[0]~0_combout\ : std_logic;
SIGNAL \I[8]~input_o\ : std_logic;
SIGNAL \memory_3[0]~0_combout\ : std_logic;
SIGNAL \memory_1[0]~0_combout\ : std_logic;
SIGNAL \memory_2[0]~0_combout\ : std_logic;
SIGNAL \I[7]~input_o\ : std_logic;
SIGNAL \I[6]~input_o\ : std_logic;
SIGNAL \memory_1[6]~feeder_combout\ : std_logic;
SIGNAL \I[5]~input_o\ : std_logic;
SIGNAL \memory_1[5]~feeder_combout\ : std_logic;
SIGNAL \I[4]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \I[11]~input_o\ : std_logic;
SIGNAL \I[10]~input_o\ : std_logic;
SIGNAL \memory_1[10]~feeder_combout\ : std_logic;
SIGNAL \I[9]~input_o\ : std_logic;
SIGNAL \memory_1[9]~feeder_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~8_wirecell_combout\ : std_logic;
SIGNAL \average[0]~0_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~153_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~152_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~155_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~156_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~158_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~186_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~159_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~161_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~160_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~148_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~149_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~151_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~154_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~140_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~144_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~145_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~146_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~147_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~180_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[29]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[12]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~8_wirecell_combout\ : std_logic;
SIGNAL \average[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[13]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~8_wirecell_combout\ : std_logic;
SIGNAL \average[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[14]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[14]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_wirecell_combout\ : std_logic;
SIGNAL \average[11]~feeder_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~8_wirecell_combout\ : std_logic;
SIGNAL \average[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~150_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_wirecell_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~157_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~164_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_wirecell_combout\ : std_logic;
SIGNAL \MC[0]~input_o\ : std_logic;
SIGNAL \MC[1]~input_o\ : std_logic;
SIGNAL \MC[2]~input_o\ : std_logic;
SIGNAL \MC[3]~input_o\ : std_logic;
SIGNAL \MC[4]~input_o\ : std_logic;
SIGNAL \MC[5]~input_o\ : std_logic;
SIGNAL \MC[6]~input_o\ : std_logic;
SIGNAL \MC[7]~input_o\ : std_logic;
SIGNAL \MC[8]~input_o\ : std_logic;
SIGNAL \MC[9]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL average : std_logic_vector(11 DOWNTO 0);
SIGNAL avg_mc : std_logic_vector(21 DOWNTO 0);
SIGNAL memory_0 : std_logic_vector(11 DOWNTO 0);
SIGNAL memory_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL memory_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL memory_3 : std_logic_vector(11 DOWNTO 0);
SIGNAL number : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_avg~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_I <= I;
ww_MC <= MC;
ww_avg <= avg;
ww_clk <= clk;
A <= ww_A;
M <= ww_M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~15\ & \Mult0|auto_generated|mac_mult1~14\ & \Mult0|auto_generated|mac_mult1~13\ & \Mult0|auto_generated|mac_mult1~12\ & \Mult0|auto_generated|mac_mult1~11\ & 
\Mult0|auto_generated|mac_mult1~10\ & \Mult0|auto_generated|mac_mult1~9\ & \Mult0|auto_generated|mac_mult1~8\ & \Mult0|auto_generated|mac_mult1~7\ & \Mult0|auto_generated|mac_mult1~6\ & \Mult0|auto_generated|mac_mult1~5\ & 
\Mult0|auto_generated|mac_mult1~4\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
avg_mc(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
avg_mc(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
avg_mc(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
avg_mc(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
avg_mc(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
avg_mc(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
avg_mc(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
avg_mc(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
avg_mc(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
avg_mc(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (average(9) & average(8) & average(7) & average(6) & average(5) & average(4) & average(3) & average(2) & average(1) & average(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\MC[9]~input_o\ & \MC[8]~input_o\ & \MC[7]~input_o\ & \MC[6]~input_o\ & \MC[5]~input_o\ & \MC[4]~input_o\ & \MC[3]~input_o\ & \MC[2]~input_o\ & \MC[1]~input_o\ & \MC[0]~input_o\ & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_avg~input_o\ <= NOT \avg~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y18_N16
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(0),
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(1),
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(2),
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(3),
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(4),
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(5),
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(6),
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(7),
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(8),
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(9),
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(10),
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => average(11),
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\M[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(0),
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\M[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(1),
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\M[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(2),
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\M[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(3),
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\M[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(4),
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\M[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(5),
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\M[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(6),
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\M[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(7),
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\M[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(8),
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\M[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => avg_mc(9),
	devoe => ww_devoe,
	o => \M[9]~output_o\);

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

-- Location: IOIBUF_X28_Y24_N8
\I[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\avg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avg,
	o => \avg~input_o\);

-- Location: LCCOMB_X25_Y16_N12
\number[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[0]~0_combout\ = number(0) $ (\avg~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => number(0),
	datad => \avg~input_o\,
	combout => \number[0]~0_combout\);

-- Location: FF_X25_Y16_N13
\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

-- Location: LCCOMB_X25_Y16_N10
\number[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \number[1]~1_combout\ = number(1) $ (((number(0) & \avg~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datac => number(1),
	datad => \avg~input_o\,
	combout => \number[1]~1_combout\);

-- Location: FF_X25_Y16_N11
\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \number[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

-- Location: LCCOMB_X25_Y16_N6
\memory_0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_0[0]~0_combout\ = (!number(0) & (\avg~input_o\ & !number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => \avg~input_o\,
	datad => number(1),
	combout => \memory_0[0]~0_combout\);

-- Location: FF_X19_Y16_N11
\memory_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[3]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(3));

-- Location: IOIBUF_X34_Y17_N1
\I[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(8),
	o => \I[8]~input_o\);

-- Location: LCCOMB_X25_Y16_N8
\memory_3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_3[0]~0_combout\ = (number(0) & (\avg~input_o\ & number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => \avg~input_o\,
	datad => number(1),
	combout => \memory_3[0]~0_combout\);

-- Location: FF_X22_Y16_N17
\memory_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[8]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(8));

-- Location: LCCOMB_X25_Y16_N28
\memory_1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_1[0]~0_combout\ = (number(0) & (\avg~input_o\ & !number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => \avg~input_o\,
	datad => number(1),
	combout => \memory_1[0]~0_combout\);

-- Location: FF_X25_Y16_N21
\memory_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[8]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(8));

-- Location: LCCOMB_X25_Y16_N30
\memory_2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_2[0]~0_combout\ = (!number(0) & (\avg~input_o\ & number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => \avg~input_o\,
	datad => number(1),
	combout => \memory_2[0]~0_combout\);

-- Location: FF_X24_Y16_N17
\memory_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[8]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(8));

-- Location: IOIBUF_X18_Y0_N15
\I[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(7),
	o => \I[7]~input_o\);

-- Location: FF_X23_Y16_N29
\memory_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[7]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(7));

-- Location: FF_X24_Y16_N15
\memory_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[7]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(7));

-- Location: IOIBUF_X21_Y0_N8
\I[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(6),
	o => \I[6]~input_o\);

-- Location: FF_X24_Y16_N13
\memory_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[6]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(6));

-- Location: LCCOMB_X23_Y16_N30
\memory_1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_1[6]~feeder_combout\ = \I[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I[6]~input_o\,
	combout => \memory_1[6]~feeder_combout\);

-- Location: FF_X23_Y16_N31
\memory_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_1[6]~feeder_combout\,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(6));

-- Location: IOIBUF_X34_Y17_N15
\I[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(5),
	o => \I[5]~input_o\);

-- Location: FF_X24_Y16_N11
\memory_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[5]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(5));

-- Location: LCCOMB_X25_Y16_N22
\memory_1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_1[5]~feeder_combout\ = \I[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I[5]~input_o\,
	combout => \memory_1[5]~feeder_combout\);

-- Location: FF_X25_Y16_N23
\memory_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_1[5]~feeder_combout\,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(5));

-- Location: IOIBUF_X28_Y0_N1
\I[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(4),
	o => \I[4]~input_o\);

-- Location: FF_X24_Y16_N9
\memory_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[4]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(4));

-- Location: FF_X24_Y16_N25
\memory_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[4]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(4));

-- Location: FF_X24_Y16_N7
\memory_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[3]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(3));

-- Location: FF_X25_Y16_N25
\memory_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[3]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(3));

-- Location: IOIBUF_X25_Y0_N1
\I[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: FF_X25_Y16_N19
\memory_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[2]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(2));

-- Location: FF_X24_Y16_N5
\memory_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[2]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(2));

-- Location: IOIBUF_X34_Y17_N22
\I[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: FF_X24_Y16_N29
\memory_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[1]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(1));

-- Location: FF_X24_Y16_N3
\memory_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[1]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(1));

-- Location: IOIBUF_X30_Y24_N22
\I[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: FF_X24_Y16_N27
\memory_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[0]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(0));

-- Location: FF_X24_Y16_N1
\memory_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[0]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(0));

-- Location: LCCOMB_X24_Y16_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (memory_1(0) & (memory_2(0) $ (VCC))) # (!memory_1(0) & (memory_2(0) & VCC))
-- \Add1~1\ = CARRY((memory_1(0) & memory_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(0),
	datab => memory_2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y16_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (memory_1(1) & ((memory_2(1) & (\Add1~1\ & VCC)) # (!memory_2(1) & (!\Add1~1\)))) # (!memory_1(1) & ((memory_2(1) & (!\Add1~1\)) # (!memory_2(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((memory_1(1) & (!memory_2(1) & !\Add1~1\)) # (!memory_1(1) & ((!\Add1~1\) # (!memory_2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(1),
	datab => memory_2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y16_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((memory_1(2) $ (memory_2(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((memory_1(2) & ((memory_2(2)) # (!\Add1~3\))) # (!memory_1(2) & (memory_2(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(2),
	datab => memory_2(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y16_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (memory_2(3) & ((memory_1(3) & (\Add1~5\ & VCC)) # (!memory_1(3) & (!\Add1~5\)))) # (!memory_2(3) & ((memory_1(3) & (!\Add1~5\)) # (!memory_1(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((memory_2(3) & (!memory_1(3) & !\Add1~5\)) # (!memory_2(3) & ((!\Add1~5\) # (!memory_1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(3),
	datab => memory_1(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y16_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((memory_2(4) $ (memory_1(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((memory_2(4) & ((memory_1(4)) # (!\Add1~7\))) # (!memory_2(4) & (memory_1(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(4),
	datab => memory_1(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y16_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (memory_2(5) & ((memory_1(5) & (\Add1~9\ & VCC)) # (!memory_1(5) & (!\Add1~9\)))) # (!memory_2(5) & ((memory_1(5) & (!\Add1~9\)) # (!memory_1(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((memory_2(5) & (!memory_1(5) & !\Add1~9\)) # (!memory_2(5) & ((!\Add1~9\) # (!memory_1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(5),
	datab => memory_1(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y16_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((memory_2(6) $ (memory_1(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((memory_2(6) & ((memory_1(6)) # (!\Add1~11\))) # (!memory_2(6) & (memory_1(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(6),
	datab => memory_1(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y16_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (memory_1(7) & ((memory_2(7) & (\Add1~13\ & VCC)) # (!memory_2(7) & (!\Add1~13\)))) # (!memory_1(7) & ((memory_2(7) & (!\Add1~13\)) # (!memory_2(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((memory_1(7) & (!memory_2(7) & !\Add1~13\)) # (!memory_1(7) & ((!\Add1~13\) # (!memory_2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(7),
	datab => memory_2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y16_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((memory_1(8) $ (memory_2(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((memory_1(8) & ((memory_2(8)) # (!\Add1~15\))) # (!memory_1(8) & (memory_2(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(8),
	datab => memory_2(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: IOIBUF_X34_Y9_N15
\I[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(11),
	o => \I[11]~input_o\);

-- Location: FF_X22_Y16_N23
\memory_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[11]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(11));

-- Location: FF_X19_Y16_N27
\memory_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[11]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(11));

-- Location: FF_X24_Y16_N23
\memory_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[11]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(11));

-- Location: FF_X24_Y16_N31
\memory_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[11]~input_o\,
	sload => VCC,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(11));

-- Location: IOIBUF_X34_Y18_N1
\I[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(10),
	o => \I[10]~input_o\);

-- Location: LCCOMB_X25_Y16_N4
\memory_1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_1[10]~feeder_combout\ = \I[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I[10]~input_o\,
	combout => \memory_1[10]~feeder_combout\);

-- Location: FF_X25_Y16_N5
\memory_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_1[10]~feeder_combout\,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(10));

-- Location: FF_X24_Y16_N21
\memory_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[10]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(10));

-- Location: IOIBUF_X34_Y10_N8
\I[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(9),
	o => \I[9]~input_o\);

-- Location: LCCOMB_X25_Y16_N2
\memory_1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory_1[9]~feeder_combout\ = \I[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I[9]~input_o\,
	combout => \memory_1[9]~feeder_combout\);

-- Location: FF_X25_Y16_N3
\memory_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory_1[9]~feeder_combout\,
	ena => \memory_1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_1(9));

-- Location: FF_X24_Y16_N19
\memory_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[9]~input_o\,
	sload => VCC,
	ena => \memory_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_2(9));

-- Location: LCCOMB_X24_Y16_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (memory_1(9) & ((memory_2(9) & (\Add1~17\ & VCC)) # (!memory_2(9) & (!\Add1~17\)))) # (!memory_1(9) & ((memory_2(9) & (!\Add1~17\)) # (!memory_2(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((memory_1(9) & (!memory_2(9) & !\Add1~17\)) # (!memory_1(9) & ((!\Add1~17\) # (!memory_2(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(9),
	datab => memory_2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X24_Y16_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((memory_1(10) $ (memory_2(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((memory_1(10) & ((memory_2(10)) # (!\Add1~19\))) # (!memory_1(10) & (memory_2(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_1(10),
	datab => memory_2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y16_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (memory_2(11) & ((memory_1(11) & (\Add1~21\ & VCC)) # (!memory_1(11) & (!\Add1~21\)))) # (!memory_2(11) & ((memory_1(11) & (!\Add1~21\)) # (!memory_1(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((memory_2(11) & (!memory_1(11) & !\Add1~21\)) # (!memory_2(11) & ((!\Add1~21\) # (!memory_1(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_2(11),
	datab => memory_1(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X24_Y16_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = !\Add1~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~23\,
	combout => \Add1~24_combout\);

-- Location: FF_X19_Y16_N25
\memory_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[10]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(10));

-- Location: FF_X19_Y16_N23
\memory_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[9]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(9));

-- Location: FF_X19_Y16_N21
\memory_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[8]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(8));

-- Location: FF_X22_Y16_N21
\memory_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[10]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(10));

-- Location: FF_X22_Y16_N19
\memory_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[9]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(9));

-- Location: FF_X19_Y16_N19
\memory_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[7]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(7));

-- Location: FF_X22_Y16_N15
\memory_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[7]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(7));

-- Location: FF_X19_Y16_N17
\memory_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[6]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(6));

-- Location: LCCOMB_X18_Y16_N8
\Div0|auto_generated|divider|divider|op_1~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_1~8_wirecell_combout\);

-- Location: LCCOMB_X25_Y16_N0
\average[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \average[0]~0_combout\ = ((number(0) & number(1))) # (!\avg~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => \avg~input_o\,
	datad => number(1),
	combout => \average[0]~0_combout\);

-- Location: FF_X18_Y16_N9
\average[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_1~8_wirecell_combout\,
	asdata => \I[5]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(5));

-- Location: FF_X19_Y16_N15
\memory_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[5]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(5));

-- Location: FF_X19_Y16_N13
\memory_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[4]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(4));

-- Location: FF_X22_Y16_N13
\memory_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[6]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(6));

-- Location: LCCOMB_X19_Y16_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (average(5) & ((memory_0(5) & (\Add0~9\ & VCC)) # (!memory_0(5) & (!\Add0~9\)))) # (!average(5) & ((memory_0(5) & (!\Add0~9\)) # (!memory_0(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((average(5) & (!memory_0(5) & !\Add0~9\)) # (!average(5) & ((!\Add0~9\) # (!memory_0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(5),
	datab => memory_0(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X22_Y16_N11
\memory_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[5]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(5));

-- Location: LCCOMB_X23_Y16_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\Add2~9\)) # (!\Add1~10_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~9\)) # (!\Add0~10_combout\ & ((!\Add2~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X22_Y16_N9
\memory_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[4]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(4));

-- Location: FF_X19_Y16_N9
\memory_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[2]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(2));

-- Location: FF_X19_Y16_N7
\memory_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[1]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(1));

-- Location: FF_X22_Y16_N7
\memory_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[3]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(3));

-- Location: FF_X19_Y16_N5
\memory_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[0]~input_o\,
	sload => VCC,
	ena => \memory_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_0(0));

-- Location: LCCOMB_X19_Y16_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (average(0) & (memory_0(0) $ (VCC))) # (!average(0) & (memory_0(0) & VCC))
-- \Add0~1\ = CARRY((average(0) & memory_0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => average(0),
	datab => memory_0(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y16_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (memory_0(1) & ((average(1) & (\Add0~1\ & VCC)) # (!average(1) & (!\Add0~1\)))) # (!memory_0(1) & ((average(1) & (!\Add0~1\)) # (!average(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((memory_0(1) & (!average(1) & !\Add0~1\)) # (!memory_0(1) & ((!\Add0~1\) # (!average(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(1),
	datab => average(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y16_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add2~1\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X23_Y16_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((\Add0~2_combout\ & (\Add2~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add2~1\)))) # (!\Add1~2_combout\ & ((\Add0~2_combout\ & (!\Add2~1\)) # (!\Add0~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (!\Add0~2_combout\ & !\Add2~1\)) # (!\Add1~2_combout\ & ((!\Add2~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X23_Y16_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add0~4_combout\ $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add0~4_combout\ & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\Add0~4_combout\ & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X22_Y16_N5
\memory_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[2]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(2));

-- Location: FF_X22_Y16_N3
\memory_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[1]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(1));

-- Location: FF_X22_Y16_N1
\memory_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \I[0]~input_o\,
	sload => VCC,
	ena => \memory_3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_3(0));

-- Location: LCCOMB_X22_Y16_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (memory_3(0) & (\Add2~0_combout\ $ (VCC))) # (!memory_3(0) & (\Add2~0_combout\ & VCC))
-- \Add3~1\ = CARRY((memory_3(0) & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(0),
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X22_Y16_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~2_combout\ & ((memory_3(1) & (\Add3~1\ & VCC)) # (!memory_3(1) & (!\Add3~1\)))) # (!\Add2~2_combout\ & ((memory_3(1) & (!\Add3~1\)) # (!memory_3(1) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Add2~2_combout\ & (!memory_3(1) & !\Add3~1\)) # (!\Add2~2_combout\ & ((!\Add3~1\) # (!memory_3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => memory_3(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X22_Y16_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Add2~4_combout\ $ (memory_3(2) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Add2~4_combout\ & ((memory_3(2)) # (!\Add3~3\))) # (!\Add2~4_combout\ & (memory_3(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => memory_3(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X22_Y16_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~6_combout\ & ((memory_3(3) & (\Add3~5\ & VCC)) # (!memory_3(3) & (!\Add3~5\)))) # (!\Add2~6_combout\ & ((memory_3(3) & (!\Add3~5\)) # (!memory_3(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\Add2~6_combout\ & (!memory_3(3) & !\Add3~5\)) # (!\Add2~6_combout\ & ((!\Add3~5\) # (!memory_3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => memory_3(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X22_Y16_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((memory_3(4) $ (\Add2~8_combout\ $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((memory_3(4) & ((\Add2~8_combout\) # (!\Add3~7\))) # (!memory_3(4) & (\Add2~8_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(4),
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X19_Y19_N20
\Div0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~0_combout\ = \Add3~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X21_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[49]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~185_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & ((\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Add3~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~8_combout\ & (\Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datab => \Add3~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~185_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[44]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~153_combout\ = (\Div0|auto_generated|divider|divider|op_2~0_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~153_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[44]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~152_combout\ = (\Add3~8_combout\ & \Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~152_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = \Add3~6_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X21_Y19_N18
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|op_3~1\ & (((\Div0|auto_generated|divider|divider|StageOut[44]~153_combout\) # (\Div0|auto_generated|divider|divider|StageOut[44]~152_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~1\ & (!\Div0|auto_generated|divider|divider|StageOut[44]~153_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[44]~152_combout\)))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[44]~153_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[44]~152_combout\ & !\Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~153_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~152_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X21_Y19_N6
\Div0|auto_generated|divider|divider|StageOut[49]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~155_combout\ = (\Div0|auto_generated|divider|divider|op_3~2_combout\ & !\Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~155_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[48]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~156_combout\ = (\Add3~6_combout\ & \Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~156_combout\);

-- Location: LCCOMB_X22_Y19_N0
\Div0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~0_combout\ = \Add3~4_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X22_Y19_N2
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\Div0|auto_generated|divider|divider|op_4~1\ & (((\Div0|auto_generated|divider|divider|StageOut[48]~157_combout\) # (\Div0|auto_generated|divider|divider|StageOut[48]~156_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~1\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~157_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~156_combout\)))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[48]~157_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~156_combout\ & !\Div0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~157_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~156_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X22_Y19_N4
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = (\Div0|auto_generated|divider|divider|op_4~3\ & (((\Div0|auto_generated|divider|divider|StageOut[49]~185_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~155_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[49]~185_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~155_combout\)))))
-- \Div0|auto_generated|divider|divider|op_4~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~3\ & ((\Div0|auto_generated|divider|divider|StageOut[49]~185_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~185_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~155_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X22_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[54]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~158_combout\ = (\Div0|auto_generated|divider|divider|op_4~4_combout\ & !\Div0|auto_generated|divider|divider|op_4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~158_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[54]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~174_combout\ = (\Div0|auto_generated|divider|divider|op_4~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[49]~185_combout\) # ((\Div0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~185_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~174_combout\);

-- Location: LCCOMB_X22_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[53]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~186_combout\ = (\Div0|auto_generated|divider|divider|op_4~8_combout\ & ((\Div0|auto_generated|divider|divider|op_3~8_combout\ & ((\Add3~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~8_combout\ & (\Div0|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datab => \Add3~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~186_combout\);

-- Location: LCCOMB_X22_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[53]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~159_combout\ = (!\Div0|auto_generated|divider|divider|op_4~8_combout\ & \Div0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~159_combout\);

-- Location: LCCOMB_X22_Y19_N12
\Div0|auto_generated|divider|divider|StageOut[52]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~161_combout\ = (!\Div0|auto_generated|divider|divider|op_4~8_combout\ & \Div0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~161_combout\);

-- Location: LCCOMB_X22_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[52]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~160_combout\ = (\Div0|auto_generated|divider|divider|op_4~8_combout\ & \Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \Add3~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~160_combout\);

-- Location: LCCOMB_X22_Y19_N18
\Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~0_combout\ = \Add3~2_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X22_Y19_N20
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Div0|auto_generated|divider|divider|op_5~1\ & (((\Div0|auto_generated|divider|divider|StageOut[52]~161_combout\) # (\Div0|auto_generated|divider|divider|StageOut[52]~160_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~1\ & (!\Div0|auto_generated|divider|divider|StageOut[52]~161_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[52]~160_combout\)))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[52]~161_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[52]~160_combout\ & !\Div0|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~161_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~160_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X22_Y19_N22
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = (\Div0|auto_generated|divider|divider|op_5~3\ & (((\Div0|auto_generated|divider|divider|StageOut[53]~186_combout\) # (\Div0|auto_generated|divider|divider|StageOut[53]~159_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[53]~186_combout\) # (\Div0|auto_generated|divider|divider|StageOut[53]~159_combout\)))))
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_5~3\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~186_combout\) # (\Div0|auto_generated|divider|divider|StageOut[53]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~186_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~159_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X22_Y19_N24
\Div0|auto_generated|divider|divider|op_5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~158_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~174_combout\ & !\Div0|auto_generated|divider|divider|op_5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~158_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~174_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	cout => \Div0|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X22_Y19_N26
\Div0|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~8_combout\ = \Div0|auto_generated|divider|divider|op_5~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~8_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Div0|auto_generated|divider|divider|op_5~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_5~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_5~8_wirecell_combout\);

-- Location: FF_X23_Y19_N7
\average[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_5~8_wirecell_combout\,
	asdata => \I[1]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(1));

-- Location: LCCOMB_X19_Y16_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((average(2) $ (memory_0(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((average(2) & ((memory_0(2)) # (!\Add0~3\))) # (!average(2) & (memory_0(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(2),
	datab => memory_0(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y16_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~6_combout\ & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\)))) # (!\Add0~6_combout\ & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add0~6_combout\ & (!\Add1~6_combout\ & !\Add2~5\)) # (!\Add0~6_combout\ & ((!\Add2~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y16_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add0~8_combout\ $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add0~8_combout\ & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X22_Y16_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (memory_3(5) & ((\Add2~10_combout\ & (\Add3~9\ & VCC)) # (!\Add2~10_combout\ & (!\Add3~9\)))) # (!memory_3(5) & ((\Add2~10_combout\ & (!\Add3~9\)) # (!\Add2~10_combout\ & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((memory_3(5) & (!\Add2~10_combout\ & !\Add3~9\)) # (!memory_3(5) & ((!\Add3~9\) # (!\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(5),
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X19_Y19_N4
\Div0|auto_generated|divider|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~0_combout\ = \Add3~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X19_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[45]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~184_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|op_1~8_combout\ & (\Add3~10_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~8_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~184_combout\);

-- Location: LCCOMB_X21_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[40]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~148_combout\ = (\Add3~10_combout\ & \Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~148_combout\);

-- Location: LCCOMB_X19_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[40]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~149_combout\ = (\Div0|auto_generated|divider|divider|op_1~0_combout\ & !\Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~149_combout\);

-- Location: LCCOMB_X19_Y19_N22
\Div0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~2_combout\ = (\Div0|auto_generated|divider|divider|op_2~1\ & (((\Div0|auto_generated|divider|divider|StageOut[40]~148_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~149_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~1\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~148_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~149_combout\)))
-- \Div0|auto_generated|divider|divider|op_2~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[40]~148_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[40]~149_combout\ & !\Div0|auto_generated|divider|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~148_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~149_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~1\,
	combout => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X21_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[45]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~151_combout\ = (\Div0|auto_generated|divider|divider|op_2~2_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~151_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = (\Div0|auto_generated|divider|divider|op_3~3\ & (((\Div0|auto_generated|divider|divider|StageOut[45]~184_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~151_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[45]~184_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~151_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~3\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~184_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~184_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~151_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X21_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[50]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~154_combout\ = (\Div0|auto_generated|divider|divider|op_3~4_combout\ & !\Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~154_combout\);

-- Location: LCCOMB_X23_Y19_N10
\Div0|auto_generated|divider|divider|StageOut[50]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~173_combout\ = (\Div0|auto_generated|divider|divider|op_3~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~184_combout\) # ((\Div0|auto_generated|divider|divider|op_2~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[45]~184_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~173_combout\);

-- Location: LCCOMB_X22_Y19_N6
\Div0|auto_generated|divider|divider|op_4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~154_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~173_combout\ & !\Div0|auto_generated|divider|divider|op_4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~154_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~173_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	cout => \Div0|auto_generated|divider|divider|op_4~7_cout\);

-- Location: LCCOMB_X22_Y19_N8
\Div0|auto_generated|divider|divider|op_4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~8_combout\ = \Div0|auto_generated|divider|divider|op_4~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~8_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Div0|auto_generated|divider|divider|op_4~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_4~8_wirecell_combout\);

-- Location: FF_X18_Y16_N13
\average[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_4~8_wirecell_combout\,
	asdata => \I[2]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(2));

-- Location: LCCOMB_X19_Y16_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (memory_0(3) & ((average(3) & (\Add0~5\ & VCC)) # (!average(3) & (!\Add0~5\)))) # (!memory_0(3) & ((average(3) & (!\Add0~5\)) # (!average(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((memory_0(3) & (!average(3) & !\Add0~5\)) # (!memory_0(3) & ((!\Add0~5\) # (!average(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(3),
	datab => average(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y16_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((memory_0(4) $ (average(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((memory_0(4) & ((average(4)) # (!\Add0~7\))) # (!memory_0(4) & (average(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(4),
	datab => average(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y16_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add0~12_combout\ $ (\Add1~12_combout\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add0~12_combout\ & ((\Add1~12_combout\) # (!\Add2~11\))) # (!\Add0~12_combout\ & (\Add1~12_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X22_Y16_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((memory_3(6) $ (\Add2~12_combout\ $ (!\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((memory_3(6) & ((\Add2~12_combout\) # (!\Add3~11\))) # (!memory_3(6) & (\Add2~12_combout\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(6),
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X22_Y16_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (memory_3(7) & ((\Add2~14_combout\ & (\Add3~13\ & VCC)) # (!\Add2~14_combout\ & (!\Add3~13\)))) # (!memory_3(7) & ((\Add2~14_combout\ & (!\Add3~13\)) # (!\Add2~14_combout\ & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((memory_3(7) & (!\Add2~14_combout\ & !\Add3~13\)) # (!memory_3(7) & ((!\Add3~13\) # (!\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(7),
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X18_Y19_N14
\Div0|auto_generated|divider|divider|op_13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~0_combout\ = \Add3~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_13~1\ = CARRY(\Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_13~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~1\);

-- Location: LCCOMB_X17_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[32]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~141_combout\ = (\Div0|auto_generated|divider|divider|op_13~0_combout\ & !\Div0|auto_generated|divider|divider|op_13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_13~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~141_combout\);

-- Location: LCCOMB_X18_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[32]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~140_combout\ = (\Add3~14_combout\ & \Div0|auto_generated|divider|divider|op_13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~140_combout\);

-- Location: LCCOMB_X18_Y19_N4
\Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~0_combout\ = \Add3~12_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_14~1\ = CARRY(\Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X18_Y19_N6
\Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~2_combout\ = (\Div0|auto_generated|divider|divider|op_14~1\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~141_combout\) # (\Div0|auto_generated|divider|divider|StageOut[32]~140_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_14~1\ & (!\Div0|auto_generated|divider|divider|StageOut[32]~141_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[32]~140_combout\)))
-- \Div0|auto_generated|divider|divider|op_14~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[32]~141_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[32]~140_combout\ & !\Div0|auto_generated|divider|divider|op_14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~141_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~140_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~1\,
	combout => \Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X17_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[37]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~182_combout\ = (\Div0|auto_generated|divider|divider|op_14~8_combout\ & ((\Div0|auto_generated|divider|divider|op_13~8_combout\ & (\Add3~14_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_13~8_combout\ & ((\Div0|auto_generated|divider|divider|op_13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~182_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[42]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~171_combout\ = (\Div0|auto_generated|divider|divider|op_1~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~182_combout\) # ((\Div0|auto_generated|divider|divider|op_14~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_14~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[37]~182_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~171_combout\);

-- Location: LCCOMB_X17_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[37]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~143_combout\ = (!\Div0|auto_generated|divider|divider|op_14~8_combout\ & \Div0|auto_generated|divider|divider|op_14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~143_combout\);

-- Location: LCCOMB_X17_Y19_N20
\Div0|auto_generated|divider|divider|StageOut[36]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~144_combout\ = (\Div0|auto_generated|divider|divider|op_14~8_combout\ & \Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \Add3~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~144_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[36]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~145_combout\ = (!\Div0|auto_generated|divider|divider|op_14~8_combout\ & \Div0|auto_generated|divider|divider|op_14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~145_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Div0|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|op_1~1\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~144_combout\) # (\Div0|auto_generated|divider|divider|StageOut[36]~145_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~1\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~144_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~145_combout\)))
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[36]~144_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~145_combout\ & !\Div0|auto_generated|divider|divider|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~144_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~145_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X19_Y19_N8
\Div0|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|StageOut[37]~143_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~182_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[37]~143_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~182_combout\)))))
-- \Div0|auto_generated|divider|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|StageOut[37]~143_combout\) # (\Div0|auto_generated|divider|divider|StageOut[37]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~143_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~182_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X19_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[42]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~146_combout\ = (\Div0|auto_generated|divider|divider|op_1~4_combout\ & !\Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~146_combout\);

-- Location: LCCOMB_X19_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[41]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~147_combout\ = (\Div0|auto_generated|divider|divider|op_1~2_combout\ & !\Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~147_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[41]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~183_combout\ = (\Div0|auto_generated|divider|divider|op_1~8_combout\ & ((\Div0|auto_generated|divider|divider|op_14~8_combout\ & ((\Add3~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_14~8_combout\ & (\Div0|auto_generated|divider|divider|op_14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_14~0_combout\,
	datab => \Add3~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~183_combout\);

-- Location: LCCOMB_X19_Y19_N24
\Div0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~4_combout\ = (\Div0|auto_generated|divider|divider|op_2~3\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~147_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~183_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_2~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[41]~147_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~183_combout\)))))
-- \Div0|auto_generated|divider|divider|op_2~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_2~3\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~147_combout\) # (\Div0|auto_generated|divider|divider|StageOut[41]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~147_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~183_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~3\,
	combout => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X19_Y19_N26
\Div0|auto_generated|divider|divider|op_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[42]~171_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[42]~146_combout\ & !\Div0|auto_generated|divider|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~171_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~146_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_2~5\,
	cout => \Div0|auto_generated|divider|divider|op_2~7_cout\);

-- Location: LCCOMB_X19_Y19_N28
\Div0|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_combout\ = \Div0|auto_generated|divider|divider|op_2~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X18_Y16_N6
\Div0|auto_generated|divider|divider|op_2~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_2~8_wirecell_combout\);

-- Location: FF_X18_Y16_N7
\average[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_2~8_wirecell_combout\,
	asdata => \I[4]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(4));

-- Location: LCCOMB_X19_Y16_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((average(6) $ (memory_0(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((average(6) & ((memory_0(6)) # (!\Add0~11\))) # (!average(6) & (memory_0(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(6),
	datab => memory_0(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y16_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add0~14_combout\ & ((\Add1~14_combout\ & (\Add2~13\ & VCC)) # (!\Add1~14_combout\ & (!\Add2~13\)))) # (!\Add0~14_combout\ & ((\Add1~14_combout\ & (!\Add2~13\)) # (!\Add1~14_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\Add0~14_combout\ & (!\Add1~14_combout\ & !\Add2~13\)) # (!\Add0~14_combout\ & ((!\Add2~13\) # (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X22_Y16_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((memory_3(8) $ (\Add2~16_combout\ $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((memory_3(8) & ((\Add2~16_combout\) # (!\Add3~15\))) # (!memory_3(8) & (\Add2~16_combout\ & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(8),
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X22_Y16_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (memory_3(9) & ((\Add2~18_combout\ & (\Add3~17\ & VCC)) # (!\Add2~18_combout\ & (!\Add3~17\)))) # (!memory_3(9) & ((\Add2~18_combout\ & (!\Add3~17\)) # (!\Add2~18_combout\ & ((\Add3~17\) # (GND)))))
-- \Add3~19\ = CARRY((memory_3(9) & (!\Add2~18_combout\ & !\Add3~17\)) # (!memory_3(9) & ((!\Add3~17\) # (!\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(9),
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X19_Y17_N2
\Div0|auto_generated|divider|divider|op_11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~0_combout\ = \Add3~18_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_11~1\ = CARRY(\Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~18_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~1\);

-- Location: LCCOMB_X18_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[29]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~180_combout\ = (\Div0|auto_generated|divider|divider|op_12~8_combout\ & ((\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\Add3~18_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_11~8_combout\ & (\Div0|auto_generated|divider|divider|op_11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	datab => \Add3~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~180_combout\);

-- Location: LCCOMB_X18_Y17_N14
\Div0|auto_generated|divider|divider|StageOut[24]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~133_combout\ = (!\Div0|auto_generated|divider|divider|op_11~8_combout\ & \Div0|auto_generated|divider|divider|op_11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~133_combout\);

-- Location: LCCOMB_X19_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[24]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~132_combout\ = (\Add3~18_combout\ & \Div0|auto_generated|divider|divider|op_11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~132_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Div0|auto_generated|divider|divider|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~0_combout\ = \Add3~16_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X19_Y17_N16
\Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~2_combout\ = (\Div0|auto_generated|divider|divider|op_12~1\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~133_combout\) # (\Div0|auto_generated|divider|divider|StageOut[24]~132_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_12~1\ & (!\Div0|auto_generated|divider|divider|StageOut[24]~133_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[24]~132_combout\)))
-- \Div0|auto_generated|divider|divider|op_12~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[24]~133_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[24]~132_combout\ & !\Div0|auto_generated|divider|divider|op_12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~133_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~132_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~1\,
	combout => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X18_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[34]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~169_combout\ = (\Div0|auto_generated|divider|divider|op_13~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[29]~180_combout\) # ((\Div0|auto_generated|divider|divider|op_12~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[29]~180_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~169_combout\);

-- Location: LCCOMB_X18_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[29]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[29]~135_combout\ = (\Div0|auto_generated|divider|divider|op_12~2_combout\ & !\Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[29]~135_combout\);

-- Location: LCCOMB_X18_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[28]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~136_combout\ = (\Add3~16_combout\ & \Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~136_combout\);

-- Location: LCCOMB_X18_Y17_N8
\Div0|auto_generated|divider|divider|StageOut[28]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~137_combout\ = (\Div0|auto_generated|divider|divider|op_12~0_combout\ & !\Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~137_combout\);

-- Location: LCCOMB_X18_Y19_N16
\Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~2_combout\ = (\Div0|auto_generated|divider|divider|op_13~1\ & (((\Div0|auto_generated|divider|divider|StageOut[28]~136_combout\) # (\Div0|auto_generated|divider|divider|StageOut[28]~137_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_13~1\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~136_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~137_combout\)))
-- \Div0|auto_generated|divider|divider|op_13~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~136_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~137_combout\ & !\Div0|auto_generated|divider|divider|op_13~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~136_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~137_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~1\,
	combout => \Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X18_Y19_N18
\Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~4_combout\ = (\Div0|auto_generated|divider|divider|op_13~3\ & (((\Div0|auto_generated|divider|divider|StageOut[29]~180_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~135_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_13~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[29]~180_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~135_combout\)))))
-- \Div0|auto_generated|divider|divider|op_13~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_13~3\ & ((\Div0|auto_generated|divider|divider|StageOut[29]~180_combout\) # (\Div0|auto_generated|divider|divider|StageOut[29]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[29]~180_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[29]~135_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~3\,
	combout => \Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X18_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[34]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~138_combout\ = (!\Div0|auto_generated|divider|divider|op_13~8_combout\ & \Div0|auto_generated|divider|divider|op_13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_13~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~138_combout\);

-- Location: LCCOMB_X18_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[33]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~139_combout\ = (!\Div0|auto_generated|divider|divider|op_13~8_combout\ & \Div0|auto_generated|divider|divider|op_13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_13~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~139_combout\);

-- Location: LCCOMB_X18_Y19_N8
\Div0|auto_generated|divider|divider|op_14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~4_combout\ = (\Div0|auto_generated|divider|divider|op_14~3\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~139_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~181_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_14~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[33]~139_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~181_combout\)))))
-- \Div0|auto_generated|divider|divider|op_14~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_14~3\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~139_combout\) # (\Div0|auto_generated|divider|divider|StageOut[33]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~139_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~181_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~3\,
	combout => \Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X18_Y19_N10
\Div0|auto_generated|divider|divider|op_14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[34]~169_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[34]~138_combout\ & !\Div0|auto_generated|divider|divider|op_14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~169_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~138_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~5\,
	cout => \Div0|auto_generated|divider|divider|op_14~7_cout\);

-- Location: LCCOMB_X18_Y19_N12
\Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~8_combout\ = \Div0|auto_generated|divider|divider|op_14~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_14~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_14~8_combout\);

-- Location: LCCOMB_X18_Y16_N10
\Div0|auto_generated|divider|divider|op_14~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_14~8_wirecell_combout\);

-- Location: FF_X18_Y16_N11
\average[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_14~8_wirecell_combout\,
	asdata => \I[6]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(6));

-- Location: LCCOMB_X19_Y16_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (average(7) & ((memory_0(7) & (\Add0~13\ & VCC)) # (!memory_0(7) & (!\Add0~13\)))) # (!average(7) & ((memory_0(7) & (!\Add0~13\)) # (!memory_0(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((average(7) & (!memory_0(7) & !\Add0~13\)) # (!average(7) & ((!\Add0~13\) # (!memory_0(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(7),
	datab => memory_0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y16_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Add1~16_combout\ $ (\Add0~16_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Add1~16_combout\ & ((\Add0~16_combout\) # (!\Add2~15\))) # (!\Add1~16_combout\ & (\Add0~16_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X23_Y16_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add0~18_combout\ & ((\Add1~18_combout\ & (\Add2~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add2~17\)))) # (!\Add0~18_combout\ & ((\Add1~18_combout\ & (!\Add2~17\)) # (!\Add1~18_combout\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Add0~18_combout\ & (!\Add1~18_combout\ & !\Add2~17\)) # (!\Add0~18_combout\ & ((!\Add2~17\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X22_Y16_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = ((\Add2~20_combout\ $ (memory_3(10) $ (!\Add3~19\)))) # (GND)
-- \Add3~21\ = CARRY((\Add2~20_combout\ & ((memory_3(10)) # (!\Add3~19\))) # (!\Add2~20_combout\ & (memory_3(10) & !\Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => memory_3(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X18_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[20]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~128_combout\ = (\Add3~20_combout\ & \Div0|auto_generated|divider|divider|op_10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~128_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Div0|auto_generated|divider|divider|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~0_combout\ = \Add3~20_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~20_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X21_Y17_N4
\Div0|auto_generated|divider|divider|StageOut[20]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~129_combout\ = (\Div0|auto_generated|divider|divider|op_10~0_combout\ & !\Div0|auto_generated|divider|divider|op_10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~129_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Div0|auto_generated|divider|divider|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~2_combout\ = (\Div0|auto_generated|divider|divider|op_11~1\ & (((\Div0|auto_generated|divider|divider|StageOut[20]~128_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~129_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_11~1\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~128_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~129_combout\)))
-- \Div0|auto_generated|divider|divider|op_11~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[20]~128_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[20]~129_combout\ & !\Div0|auto_generated|divider|divider|op_11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~128_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~129_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~1\,
	combout => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X19_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[25]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~179_combout\ = (\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\Div0|auto_generated|divider|divider|op_10~8_combout\ & (\Add3~20_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\Div0|auto_generated|divider|divider|op_10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~179_combout\);

-- Location: LCCOMB_X18_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[30]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~168_combout\ = (\Div0|auto_generated|divider|divider|op_12~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~179_combout\) # ((\Div0|auto_generated|divider|divider|op_11~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[25]~179_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~168_combout\);

-- Location: LCCOMB_X19_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[25]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~131_combout\ = (\Div0|auto_generated|divider|divider|op_11~2_combout\ & !\Div0|auto_generated|divider|divider|op_11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~131_combout\);

-- Location: LCCOMB_X19_Y17_N18
\Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~4_combout\ = (\Div0|auto_generated|divider|divider|op_12~3\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~179_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~131_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_12~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[25]~179_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~131_combout\)))))
-- \Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_12~3\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~179_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~179_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~131_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~3\,
	combout => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X19_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[30]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~134_combout\ = (!\Div0|auto_generated|divider|divider|op_12~8_combout\ & \Div0|auto_generated|divider|divider|op_12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~134_combout\);

-- Location: LCCOMB_X18_Y19_N20
\Div0|auto_generated|divider|divider|op_13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[30]~168_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[30]~134_combout\ & !\Div0|auto_generated|divider|divider|op_13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~168_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~134_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~5\,
	cout => \Div0|auto_generated|divider|divider|op_13~7_cout\);

-- Location: LCCOMB_X18_Y19_N22
\Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~8_combout\ = \Div0|auto_generated|divider|divider|op_13~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_13~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_13~8_combout\);

-- Location: LCCOMB_X18_Y16_N16
\Div0|auto_generated|divider|divider|op_13~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_13~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_13~8_wirecell_combout\);

-- Location: FF_X18_Y16_N17
\average[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_13~8_wirecell_combout\,
	asdata => \I[7]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(7));

-- Location: LCCOMB_X19_Y16_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((average(8) $ (memory_0(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((average(8) & ((memory_0(8)) # (!\Add0~15\))) # (!average(8) & (memory_0(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(8),
	datab => memory_0(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y16_N22
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (memory_0(9) & ((average(9) & (\Add0~17\ & VCC)) # (!average(9) & (!\Add0~17\)))) # (!memory_0(9) & ((average(9) & (!\Add0~17\)) # (!average(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((memory_0(9) & (!average(9) & !\Add0~17\)) # (!memory_0(9) & ((!\Add0~17\) # (!average(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(9),
	datab => average(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X23_Y16_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Add1~20_combout\ $ (\Add0~20_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Add1~20_combout\ & ((\Add0~20_combout\) # (!\Add2~19\))) # (!\Add1~20_combout\ & (\Add0~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X22_Y16_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (memory_3(11) & ((\Add2~22_combout\ & (\Add3~21\ & VCC)) # (!\Add2~22_combout\ & (!\Add3~21\)))) # (!memory_3(11) & ((\Add2~22_combout\ & (!\Add3~21\)) # (!\Add2~22_combout\ & ((\Add3~21\) # (GND)))))
-- \Add3~23\ = CARRY((memory_3(11) & (!\Add2~22_combout\ & !\Add3~21\)) # (!memory_3(11) & ((!\Add3~21\) # (!\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_3(11),
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X22_Y16_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Add2~24_combout\ & (\Add3~23\ $ (GND))) # (!\Add2~24_combout\ & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\Add2~24_combout\ & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~24_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X22_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[12]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~120_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Add3~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~120_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~0_combout\ = \Add3~24_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X22_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[12]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[12]~121_combout\ = (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Div0|auto_generated|divider|divider|op_8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[12]~121_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Div0|auto_generated|divider|divider|op_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~0_combout\ = \Add3~22_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X22_Y17_N6
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|op_9~1\ & (((\Div0|auto_generated|divider|divider|StageOut[12]~120_combout\) # (\Div0|auto_generated|divider|divider|StageOut[12]~121_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_9~1\ & (!\Div0|auto_generated|divider|divider|StageOut[12]~120_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[12]~121_combout\)))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[12]~120_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[12]~121_combout\ & !\Div0|auto_generated|divider|divider|op_9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[12]~120_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[12]~121_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X21_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[17]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~177_combout\ = (\Div0|auto_generated|divider|divider|op_9~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Add3~24_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~8_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~177_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[22]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~166_combout\ = (\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~177_combout\) # ((\Div0|auto_generated|divider|divider|op_9~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[17]~177_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~166_combout\);

-- Location: LCCOMB_X21_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[17]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~123_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~123_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[16]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~125_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~125_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Div0|auto_generated|divider|divider|StageOut[16]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~124_combout\ = (\Add3~22_combout\ & \Div0|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~124_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~2_combout\ = (\Div0|auto_generated|divider|divider|op_10~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~125_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~124_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_10~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~125_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~124_combout\)))
-- \Div0|auto_generated|divider|divider|op_10~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~125_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~124_combout\ & !\Div0|auto_generated|divider|divider|op_10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~125_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~124_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1\,
	combout => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X21_Y17_N18
\Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~4_combout\ = (\Div0|auto_generated|divider|divider|op_10~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~123_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~177_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_10~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~123_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~177_combout\)))))
-- \Div0|auto_generated|divider|divider|op_10~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_10~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~123_combout\) # (\Div0|auto_generated|divider|divider|StageOut[17]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~123_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~177_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3\,
	combout => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X21_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[22]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~126_combout\ = (!\Div0|auto_generated|divider|divider|op_10~8_combout\ & \Div0|auto_generated|divider|divider|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~126_combout\);

-- Location: LCCOMB_X21_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[21]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~127_combout\ = (!\Div0|auto_generated|divider|divider|op_10~8_combout\ & \Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~127_combout\);

-- Location: LCCOMB_X19_Y17_N6
\Div0|auto_generated|divider|divider|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~4_combout\ = (\Div0|auto_generated|divider|divider|op_11~3\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~178_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~127_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_11~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[21]~178_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~127_combout\)))))
-- \Div0|auto_generated|divider|divider|op_11~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_11~3\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~178_combout\) # (\Div0|auto_generated|divider|divider|StageOut[21]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~178_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~127_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~3\,
	combout => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X19_Y17_N8
\Div0|auto_generated|divider|divider|op_11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[22]~166_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[22]~126_combout\ & !\Div0|auto_generated|divider|divider|op_11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~166_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~126_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~5\,
	cout => \Div0|auto_generated|divider|divider|op_11~7_cout\);

-- Location: LCCOMB_X19_Y17_N10
\Div0|auto_generated|divider|divider|op_11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~8_combout\ = \Div0|auto_generated|divider|divider|op_11~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_11~8_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Div0|auto_generated|divider|divider|op_11~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_11~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_11~8_wirecell_combout\);

-- Location: LCCOMB_X18_Y16_N24
\average[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \average[9]~feeder_combout\ = \Div0|auto_generated|divider|divider|op_11~8_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_11~8_wirecell_combout\,
	combout => \average[9]~feeder_combout\);

-- Location: FF_X18_Y16_N25
\average[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \average[9]~feeder_combout\,
	asdata => \I[9]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(9));

-- Location: LCCOMB_X19_Y16_N24
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((average(10) $ (memory_0(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((average(10) & ((memory_0(10)) # (!\Add0~19\))) # (!average(10) & (memory_0(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => average(10),
	datab => memory_0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X23_Y16_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add0~22_combout\ & ((\Add1~22_combout\ & (\Add2~21\ & VCC)) # (!\Add1~22_combout\ & (!\Add2~21\)))) # (!\Add0~22_combout\ & ((\Add1~22_combout\ & (!\Add2~21\)) # (!\Add1~22_combout\ & ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Add0~22_combout\ & (!\Add1~22_combout\ & !\Add2~21\)) # (!\Add0~22_combout\ & ((!\Add2~21\) # (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X23_Y16_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add0~24_combout\ $ (\Add1~24_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Add0~24_combout\ & ((\Add1~24_combout\) # (!\Add2~23\))) # (!\Add0~24_combout\ & (\Add1~24_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add1~24_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X22_Y16_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Add2~26_combout\ & (!\Add3~25\)) # (!\Add2~26_combout\ & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X22_Y17_N16
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\Add3~26_combout\ & (\Div0|auto_generated|divider|divider|op_8~1\ & VCC)) # (!\Add3~26_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1\))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY((!\Add3~26_combout\ & !\Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X21_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[18]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~176_combout\ = (\Div0|auto_generated|divider|divider|op_9~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Add3~26_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datab => \Add3~26_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~176_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[13]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~119_combout\ = (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Div0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~119_combout\);

-- Location: LCCOMB_X22_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[13]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[13]~118_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Add3~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[13]~118_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = (\Div0|auto_generated|divider|divider|op_9~3\ & (((\Div0|auto_generated|divider|divider|StageOut[13]~119_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~118_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_9~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[13]~119_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~118_combout\)))))
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_9~3\ & ((\Div0|auto_generated|divider|divider|StageOut[13]~119_combout\) # (\Div0|auto_generated|divider|divider|StageOut[13]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[13]~119_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[13]~118_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X21_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[18]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~122_combout\ = (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & \Div0|auto_generated|divider|divider|op_9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~122_combout\);

-- Location: LCCOMB_X21_Y17_N20
\Div0|auto_generated|divider|divider|op_10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~176_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~122_combout\ & !\Div0|auto_generated|divider|divider|op_10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~176_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~122_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~5\,
	cout => \Div0|auto_generated|divider|divider|op_10~7_cout\);

-- Location: LCCOMB_X21_Y17_N22
\Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~8_combout\ = \Div0|auto_generated|divider|divider|op_10~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~8_combout\);

-- Location: LCCOMB_X18_Y17_N6
\Div0|auto_generated|divider|divider|op_10~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_10~8_wirecell_combout\);

-- Location: LCCOMB_X18_Y16_N14
\average[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \average[10]~feeder_combout\ = \Div0|auto_generated|divider|divider|op_10~8_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_10~8_wirecell_combout\,
	combout => \average[10]~feeder_combout\);

-- Location: FF_X18_Y16_N15
\average[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \average[10]~feeder_combout\,
	asdata => \I[10]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(10));

-- Location: LCCOMB_X19_Y16_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (memory_0(11) & ((average(11) & (\Add0~21\ & VCC)) # (!average(11) & (!\Add0~21\)))) # (!memory_0(11) & ((average(11) & (!\Add0~21\)) # (!average(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((memory_0(11) & (!average(11) & !\Add0~21\)) # (!memory_0(11) & ((!\Add0~21\) # (!average(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memory_0(11),
	datab => average(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X19_Y16_N28
\Add0~24\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X23_Y16_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = \Add2~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~25\,
	combout => \Add2~26_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = !\Add3~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~27\,
	combout => \Add3~28_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = (\Add3~28_combout\ & (\Div0|auto_generated|divider|divider|op_8~3\ $ (GND))) # (!\Add3~28_combout\ & (!\Div0|auto_generated|divider|divider|op_8~3\ & VCC))
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\Add3~28_combout\ & !\Div0|auto_generated|divider|divider|op_8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X22_Y17_N20
\Div0|auto_generated|divider|divider|op_8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|op_8~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	cout => \Div0|auto_generated|divider|divider|op_8~7_cout\);

-- Location: LCCOMB_X22_Y17_N22
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = \Div0|auto_generated|divider|divider|op_8~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[14]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[14]~117_combout\ = (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Div0|auto_generated|divider|divider|op_8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[14]~117_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[14]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[14]~116_combout\ = (\Div0|auto_generated|divider|divider|op_8~8_combout\ & \Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Add3~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[14]~116_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Div0|auto_generated|divider|divider|op_9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[14]~117_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[14]~116_combout\ & !\Div0|auto_generated|divider|divider|op_9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[14]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[14]~116_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	cout => \Div0|auto_generated|divider|divider|op_9~7_cout\);

-- Location: LCCOMB_X22_Y17_N12
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = \Div0|auto_generated|divider|divider|op_9~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\);

-- Location: LCCOMB_X21_Y16_N12
\Div0|auto_generated|divider|divider|op_9~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_wirecell_combout\);

-- Location: LCCOMB_X18_Y16_N28
\average[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \average[11]~feeder_combout\ = \Div0|auto_generated|divider|divider|op_9~8_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_9~8_wirecell_combout\,
	combout => \average[11]~feeder_combout\);

-- Location: FF_X18_Y16_N29
\average[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \average[11]~feeder_combout\,
	asdata => \I[11]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(11));

-- Location: LCCOMB_X21_Y17_N6
\Div0|auto_generated|divider|divider|StageOut[21]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~178_combout\ = (\Div0|auto_generated|divider|divider|op_10~8_combout\ & ((\Div0|auto_generated|divider|divider|op_9~8_combout\ & (\Add3~22_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_9~8_combout\ & ((\Div0|auto_generated|divider|divider|op_9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~178_combout\);

-- Location: LCCOMB_X19_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[26]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~167_combout\ = (\Div0|auto_generated|divider|divider|op_11~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[21]~178_combout\) # ((!\Div0|auto_generated|divider|divider|op_10~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~178_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~167_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[26]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~130_combout\ = (\Div0|auto_generated|divider|divider|op_11~4_combout\ & !\Div0|auto_generated|divider|divider|op_11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~130_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Div0|auto_generated|divider|divider|op_12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~167_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~130_combout\ & !\Div0|auto_generated|divider|divider|op_12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~167_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~130_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~5\,
	cout => \Div0|auto_generated|divider|divider|op_12~7_cout\);

-- Location: LCCOMB_X19_Y17_N22
\Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~8_combout\ = \Div0|auto_generated|divider|divider|op_12~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_12~8_combout\);

-- Location: LCCOMB_X18_Y17_N30
\Div0|auto_generated|divider|divider|op_12~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_12~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_12~8_wirecell_combout\);

-- Location: LCCOMB_X18_Y16_N26
\average[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \average[8]~feeder_combout\ = \Div0|auto_generated|divider|divider|op_12~8_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~8_wirecell_combout\,
	combout => \average[8]~feeder_combout\);

-- Location: FF_X18_Y16_N27
\average[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \average[8]~feeder_combout\,
	asdata => \I[8]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(8));

-- Location: LCCOMB_X18_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[33]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~181_combout\ = (\Div0|auto_generated|divider|divider|op_13~8_combout\ & ((\Div0|auto_generated|divider|divider|op_12~8_combout\ & ((\Add3~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_12~8_combout\ & (\Div0|auto_generated|divider|divider|op_12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~0_combout\,
	datab => \Add3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~181_combout\);

-- Location: LCCOMB_X18_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[38]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~170_combout\ = (\Div0|auto_generated|divider|divider|op_14~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~181_combout\) # ((\Div0|auto_generated|divider|divider|op_13~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~181_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~170_combout\);

-- Location: LCCOMB_X19_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[38]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~142_combout\ = (\Div0|auto_generated|divider|divider|op_14~4_combout\ & !\Div0|auto_generated|divider|divider|op_14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_14~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~142_combout\);

-- Location: LCCOMB_X19_Y19_N10
\Div0|auto_generated|divider|divider|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[38]~170_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[38]~142_combout\ & !\Div0|auto_generated|divider|divider|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~170_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~142_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~5\,
	cout => \Div0|auto_generated|divider|divider|op_1~7_cout\);

-- Location: LCCOMB_X19_Y19_N12
\Div0|auto_generated|divider|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~8_combout\ = \Div0|auto_generated|divider|divider|op_1~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~8_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[46]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~172_combout\ = (\Div0|auto_generated|divider|divider|op_2~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~183_combout\) # ((!\Div0|auto_generated|divider|divider|op_1~8_combout\ & 
-- \Div0|auto_generated|divider|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~183_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~172_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Div0|auto_generated|divider|divider|StageOut[46]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~150_combout\ = (\Div0|auto_generated|divider|divider|op_2~4_combout\ & !\Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~150_combout\);

-- Location: LCCOMB_X21_Y19_N22
\Div0|auto_generated|divider|divider|op_3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[46]~172_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[46]~150_combout\ & !\Div0|auto_generated|divider|divider|op_3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[46]~172_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~150_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	cout => \Div0|auto_generated|divider|divider|op_3~7_cout\);

-- Location: LCCOMB_X21_Y19_N24
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = \Div0|auto_generated|divider|divider|op_3~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\);

-- Location: LCCOMB_X21_Y19_N12
\Div0|auto_generated|divider|divider|op_3~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_wirecell_combout\);

-- Location: FF_X21_Y19_N13
\average[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_3~8_wirecell_combout\,
	asdata => \I[3]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(3));

-- Location: LCCOMB_X23_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[48]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~157_combout\ = (\Div0|auto_generated|divider|divider|op_3~0_combout\ & !\Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~157_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Div0|auto_generated|divider|divider|StageOut[58]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~175_combout\ = (\Div0|auto_generated|divider|divider|op_5~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~186_combout\) # ((\Div0|auto_generated|divider|divider|op_4~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[53]~186_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~175_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Div0|auto_generated|divider|divider|StageOut[58]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~162_combout\ = (!\Div0|auto_generated|divider|divider|op_5~8_combout\ & \Div0|auto_generated|divider|divider|op_5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~162_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[57]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~163_combout\ = (!\Div0|auto_generated|divider|divider|op_5~8_combout\ & \Div0|auto_generated|divider|divider|op_5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~163_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[57]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ = (\Div0|auto_generated|divider|divider|op_5~8_combout\ & ((\Div0|auto_generated|divider|divider|op_4~8_combout\ & ((\Add3~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~8_combout\ & (\Div0|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \Add3~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Div0|auto_generated|divider|divider|StageOut[56]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~165_combout\ = (!\Div0|auto_generated|divider|divider|op_5~8_combout\ & \Div0|auto_generated|divider|divider|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~165_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[56]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~164_combout\ = (\Add3~2_combout\ & \Div0|auto_generated|divider|divider|op_5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~164_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X23_Y19_N16
\Div0|auto_generated|divider|divider|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[56]~165_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[56]~164_combout\ & !\Div0|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~165_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~164_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3_cout\);

-- Location: LCCOMB_X23_Y19_N18
\Div0|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_6~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[57]~163_combout\) # (\Div0|auto_generated|divider|divider|StageOut[57]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~163_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X23_Y19_N20
\Div0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[58]~175_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[58]~162_combout\ & !\Div0|auto_generated|divider|divider|op_6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~175_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~162_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X23_Y19_N22
\Div0|auto_generated|divider|divider|op_6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_combout\ = \Div0|auto_generated|divider|divider|op_6~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~7_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_combout\);

-- Location: LCCOMB_X23_Y19_N28
\Div0|auto_generated|divider|divider|op_6~8_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_wirecell_combout\ = !\Div0|auto_generated|divider|divider|op_6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_wirecell_combout\);

-- Location: FF_X23_Y19_N29
\average[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|divider|op_6~8_wirecell_combout\,
	asdata => \I[0]~input_o\,
	sload => \ALT_INV_avg~input_o\,
	ena => \average[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => average(0));

-- Location: IOIBUF_X16_Y0_N1
\MC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(0),
	o => \MC[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\MC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(1),
	o => \MC[1]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\MC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(2),
	o => \MC[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\MC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(3),
	o => \MC[3]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\MC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(4),
	o => \MC[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\MC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(5),
	o => \MC[5]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\MC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(6),
	o => \MC[6]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\MC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(7),
	o => \MC[7]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\MC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(8),
	o => \MC[8]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\MC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MC(9),
	o => \MC[9]~input_o\);

-- Location: DSPMULT_X20_Y20_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y20_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

ww_A(0) <= \A[0]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(8) <= \A[8]~output_o\;

ww_A(9) <= \A[9]~output_o\;

ww_A(10) <= \A[10]~output_o\;

ww_A(11) <= \A[11]~output_o\;

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
END structure;


