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

-- DATE "08/19/2023 13:42:33"

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

ENTITY 	clk_multiplier IS
    PORT (
	CLK_OUT_1 : OUT std_logic;
	SET : IN std_logic;
	CLR : IN std_logic;
	T : IN std_logic;
	CLK_IN_1 : IN std_logic;
	CLK_OUT_2 : OUT std_logic;
	CLK_IN_2 : IN std_logic;
	C_OUT : OUT std_logic;
	C_IN : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic
	);
END clk_multiplier;

-- Design Ports Information
-- CLK_OUT_1	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_OUT_2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_OUT	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_IN	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_IN_2	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_IN_1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_OUT_1 : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_CLK_IN_1 : std_logic;
SIGNAL ww_CLK_OUT_2 : std_logic;
SIGNAL ww_CLK_IN_2 : std_logic;
SIGNAL ww_C_OUT : std_logic;
SIGNAL ww_C_IN : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL \CLK_OUT_1~output_o\ : std_logic;
SIGNAL \CLK_OUT_2~output_o\ : std_logic;
SIGNAL \C_OUT~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \SET~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \CLK_IN_1~input_o\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \inst~_emulated_q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~_emulated_q\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \inst2~_emulated_q\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \inst3~_emulated_q\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \CLK_IN_2~input_o\ : std_logic;
SIGNAL \inst7~1_combout\ : std_logic;
SIGNAL \inst7~_emulated_q\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst8~_emulated_q\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \inst9~_emulated_q\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~_emulated_q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \C_IN~input_o\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst28~0_combout\ : std_logic;
SIGNAL \inst34~0_combout\ : std_logic;
SIGNAL \inst40~0_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst7~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~2_combout\ : std_logic;

BEGIN

CLK_OUT_1 <= ww_CLK_OUT_1;
ww_SET <= SET;
ww_CLR <= CLR;
ww_T <= T;
ww_CLK_IN_1 <= CLK_IN_1;
CLK_OUT_2 <= ww_CLK_OUT_2;
ww_CLK_IN_2 <= CLK_IN_2;
C_OUT <= ww_C_OUT;
ww_C_IN <= C_IN;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst3~0_combout\ <= NOT \inst3~0_combout\;
\ALT_INV_inst~0_combout\ <= NOT \inst~0_combout\;
\ALT_INV_inst7~0_combout\ <= NOT \inst7~0_combout\;
\ALT_INV_inst8~0_combout\ <= NOT \inst8~0_combout\;
\ALT_INV_inst1~0_combout\ <= NOT \inst1~0_combout\;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;
\ALT_INV_inst2~0_combout\ <= NOT \inst2~0_combout\;
\ALT_INV_inst10~0_combout\ <= NOT \inst10~0_combout\;
\ALT_INV_inst3~2_combout\ <= NOT \inst3~2_combout\;

-- Location: IOOBUF_X33_Y25_N9
\CLK_OUT_1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst3~2_combout\,
	devoe => ww_devoe,
	o => \CLK_OUT_1~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\CLK_OUT_2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst10~0_combout\,
	devoe => ww_devoe,
	o => \CLK_OUT_2~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\C_OUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40~0_combout\,
	devoe => ww_devoe,
	o => \C_OUT~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\S0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\S1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\S2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\S3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOIBUF_X33_Y27_N8
\SET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET,
	o => \SET~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\CLR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X30_Y28_N24
\inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datac => \CLR~input_o\,
	datad => \inst3~1_combout\,
	combout => \inst3~1_combout\);

-- Location: IOIBUF_X33_Y27_N1
\CLK_IN_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN_1,
	o => \CLK_IN_1~input_o\);

-- Location: LCCOMB_X32_Y29_N28
\inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = \inst3~1_combout\ $ (!\inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datac => \inst~0_combout\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X32_Y28_N0
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (!\CLR~input_o\) # (!\SET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SET~input_o\,
	datad => \CLR~input_o\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X33_Y25_N1
\T~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: FF_X32_Y29_N29
\inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN_1~input_o\,
	d => \inst~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \T~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~_emulated_q\);

-- Location: LCCOMB_X32_Y29_N30
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \SET~input_o\,
	datac => \CLR~input_o\,
	datad => \inst~_emulated_q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X31_Y28_N10
\inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = \inst1~0_combout\ $ (!\inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~0_combout\,
	datad => \inst3~1_combout\,
	combout => \inst1~1_combout\);

-- Location: FF_X31_Y28_N11
\inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst~0_combout\,
	d => \inst1~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~_emulated_q\);

-- Location: LCCOMB_X31_Y28_N18
\inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst1~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datab => \inst3~1_combout\,
	datac => \CLR~input_o\,
	datad => \inst1~_emulated_q\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X30_Y28_N26
\inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = \inst2~0_combout\ $ (!\inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~0_combout\,
	datad => \inst3~1_combout\,
	combout => \inst2~1_combout\);

-- Location: FF_X30_Y28_N27
\inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst1~0_combout\,
	d => \inst2~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~_emulated_q\);

-- Location: LCCOMB_X30_Y28_N20
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst2~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datab => \inst3~1_combout\,
	datac => \inst2~_emulated_q\,
	datad => \CLR~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = \inst3~2_combout\ $ (!\inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~2_combout\,
	datad => \inst3~1_combout\,
	combout => \inst3~3_combout\);

-- Location: FF_X29_Y28_N1
\inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst2~0_combout\,
	d => \inst3~3_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~_emulated_q\);

-- Location: LCCOMB_X29_Y28_N18
\inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst3~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datab => \inst3~1_combout\,
	datac => \CLR~input_o\,
	datad => \inst3~_emulated_q\,
	combout => \inst3~2_combout\);

-- Location: IOIBUF_X33_Y28_N1
\CLK_IN_2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_IN_2,
	o => \CLK_IN_2~input_o\);

-- Location: LCCOMB_X32_Y28_N14
\inst7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~1_combout\ = \inst3~1_combout\ $ (!\inst7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~1_combout\,
	datad => \inst7~0_combout\,
	combout => \inst7~1_combout\);

-- Location: FF_X32_Y28_N15
\inst7~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_IN_2~input_o\,
	d => \inst7~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \T~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~_emulated_q\);

-- Location: LCCOMB_X32_Y28_N12
\inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst7~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \SET~input_o\,
	datac => \inst7~_emulated_q\,
	datad => \CLR~input_o\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X31_Y29_N0
\inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = \inst8~0_combout\ $ (!\inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8~0_combout\,
	datad => \inst3~1_combout\,
	combout => \inst8~1_combout\);

-- Location: FF_X31_Y29_N1
\inst8~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst7~0_combout\,
	d => \inst8~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~_emulated_q\);

-- Location: LCCOMB_X31_Y29_N24
\inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst8~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \SET~input_o\,
	datac => \CLR~input_o\,
	datad => \inst8~_emulated_q\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X30_Y29_N16
\inst9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = \inst3~1_combout\ $ (!\inst9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~1_combout\,
	datac => \inst9~0_combout\,
	combout => \inst9~1_combout\);

-- Location: FF_X30_Y29_N17
\inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst8~0_combout\,
	d => \inst9~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~_emulated_q\);

-- Location: LCCOMB_X30_Y29_N8
\inst9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst9~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~input_o\,
	datab => \inst3~1_combout\,
	datac => \CLR~input_o\,
	datad => \inst9~_emulated_q\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X29_Y29_N0
\inst10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = \inst10~0_combout\ $ (!\inst3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datad => \inst3~1_combout\,
	combout => \inst10~1_combout\);

-- Location: FF_X29_Y29_N1
\inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inst9~0_combout\,
	d => \inst10~1_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	ena => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~_emulated_q\);

-- Location: LCCOMB_X29_Y29_N18
\inst10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\CLR~input_o\ & ((\inst3~1_combout\ $ (\inst10~_emulated_q\)) # (!\SET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \CLR~input_o\,
	datac => \SET~input_o\,
	datad => \inst10~_emulated_q\,
	combout => \inst10~0_combout\);

-- Location: IOIBUF_X29_Y31_N8
\C_IN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_IN,
	o => \C_IN~input_o\);

-- Location: LCCOMB_X29_Y29_N8
\inst22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\inst7~0_combout\ & ((\inst~0_combout\) # (\C_IN~input_o\))) # (!\inst7~0_combout\ & (\inst~0_combout\ & \C_IN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7~0_combout\,
	datac => \inst~0_combout\,
	datad => \C_IN~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X30_Y29_N6
\inst28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst28~0_combout\ = (\inst22~0_combout\ & ((\inst8~0_combout\) # (\inst1~0_combout\))) # (!\inst22~0_combout\ & (\inst8~0_combout\ & \inst1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22~0_combout\,
	datab => \inst8~0_combout\,
	datad => \inst1~0_combout\,
	combout => \inst28~0_combout\);

-- Location: LCCOMB_X29_Y29_N6
\inst34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst34~0_combout\ = (\inst2~0_combout\ & ((\inst9~0_combout\) # (\inst28~0_combout\))) # (!\inst2~0_combout\ & (\inst9~0_combout\ & \inst28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~0_combout\,
	datac => \inst9~0_combout\,
	datad => \inst28~0_combout\,
	combout => \inst34~0_combout\);

-- Location: LCCOMB_X29_Y28_N24
\inst40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst40~0_combout\ = (\inst3~2_combout\ & ((\inst10~0_combout\) # (\inst34~0_combout\))) # (!\inst3~2_combout\ & (\inst10~0_combout\ & \inst34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst10~0_combout\,
	datad => \inst34~0_combout\,
	combout => \inst40~0_combout\);

-- Location: LCCOMB_X29_Y29_N28
\inst17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = \inst7~0_combout\ $ (\inst~0_combout\ $ (\C_IN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7~0_combout\,
	datac => \inst~0_combout\,
	datad => \C_IN~input_o\,
	combout => \inst17~0_combout\);

-- Location: LCCOMB_X31_Y29_N16
inst23 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst23~combout\ = \inst1~0_combout\ $ (\inst8~0_combout\ $ (\inst22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~0_combout\,
	datac => \inst8~0_combout\,
	datad => \inst22~0_combout\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X29_Y29_N30
inst29 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst29~combout\ = \inst2~0_combout\ $ (\inst9~0_combout\ $ (\inst28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~0_combout\,
	datac => \inst9~0_combout\,
	datad => \inst28~0_combout\,
	combout => \inst29~combout\);

-- Location: LCCOMB_X29_Y28_N6
inst35 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst35~combout\ = \inst3~2_combout\ $ (\inst10~0_combout\ $ (\inst34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst10~0_combout\,
	datad => \inst34~0_combout\,
	combout => \inst35~combout\);

ww_CLK_OUT_1 <= \CLK_OUT_1~output_o\;

ww_CLK_OUT_2 <= \CLK_OUT_2~output_o\;

ww_C_OUT <= \C_OUT~output_o\;

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;
END structure;


