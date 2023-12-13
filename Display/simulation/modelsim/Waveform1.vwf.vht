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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/26/2023 14:25:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY display_vhd_vec_tst IS
END display_vhd_vec_tst;
ARCHITECTURE display_arch OF display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL act : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL at : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL avg : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dd : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ds : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL mc : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL t : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT display
	PORT (
	act : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	at : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	avg : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dd : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	ds : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	mc : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	t : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : display
	PORT MAP (
-- list connections between master ports and signals
	act => act,
	at => at,
	avg => avg,
	clk => clk,
	dd => dd,
	ds => ds,
	mc => mc,
	t => t
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- act[2]
t_prcs_act_2: PROCESS
BEGIN
	act(2) <= '0';
WAIT;
END PROCESS t_prcs_act_2;
-- act[1]
t_prcs_act_1: PROCESS
BEGIN
	act(1) <= '0';
WAIT;
END PROCESS t_prcs_act_1;
-- act[0]
t_prcs_act_0: PROCESS
BEGIN
	act(0) <= '0';
	WAIT FOR 80000 ps;
	act(0) <= '1';
WAIT;
END PROCESS t_prcs_act_0;
-- at[9]
t_prcs_at_9: PROCESS
BEGIN
	at(9) <= '0';
WAIT;
END PROCESS t_prcs_at_9;
-- at[8]
t_prcs_at_8: PROCESS
BEGIN
	at(8) <= '0';
WAIT;
END PROCESS t_prcs_at_8;
-- at[7]
t_prcs_at_7: PROCESS
BEGIN
	at(7) <= '0';
WAIT;
END PROCESS t_prcs_at_7;
-- at[6]
t_prcs_at_6: PROCESS
BEGIN
	at(6) <= '0';
WAIT;
END PROCESS t_prcs_at_6;
-- at[5]
t_prcs_at_5: PROCESS
BEGIN
	at(5) <= '0';
WAIT;
END PROCESS t_prcs_at_5;
-- at[4]
t_prcs_at_4: PROCESS
BEGIN
	at(4) <= '0';
WAIT;
END PROCESS t_prcs_at_4;
-- at[3]
t_prcs_at_3: PROCESS
BEGIN
	at(3) <= '0';
WAIT;
END PROCESS t_prcs_at_3;
-- at[2]
t_prcs_at_2: PROCESS
BEGIN
	at(2) <= '0';
	WAIT FOR 800000 ps;
	at(2) <= '1';
WAIT;
END PROCESS t_prcs_at_2;
-- at[1]
t_prcs_at_1: PROCESS
BEGIN
	at(1) <= '0';
	WAIT FOR 400000 ps;
	at(1) <= '1';
	WAIT FOR 400000 ps;
	at(1) <= '0';
WAIT;
END PROCESS t_prcs_at_1;
-- at[0]
t_prcs_at_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		at(0) <= '0';
		WAIT FOR 200000 ps;
		at(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	at(0) <= '0';
WAIT;
END PROCESS t_prcs_at_0;
-- t[9]
t_prcs_t_9: PROCESS
BEGIN
	t(9) <= '0';
WAIT;
END PROCESS t_prcs_t_9;
-- t[8]
t_prcs_t_8: PROCESS
BEGIN
	t(8) <= '0';
WAIT;
END PROCESS t_prcs_t_8;
-- t[7]
t_prcs_t_7: PROCESS
BEGIN
	t(7) <= '0';
WAIT;
END PROCESS t_prcs_t_7;
-- t[6]
t_prcs_t_6: PROCESS
BEGIN
	t(6) <= '0';
WAIT;
END PROCESS t_prcs_t_6;
-- t[5]
t_prcs_t_5: PROCESS
BEGIN
	t(5) <= '0';
WAIT;
END PROCESS t_prcs_t_5;
-- t[4]
t_prcs_t_4: PROCESS
BEGIN
	t(4) <= '0';
WAIT;
END PROCESS t_prcs_t_4;
-- t[3]
t_prcs_t_3: PROCESS
BEGIN
	t(3) <= '0';
WAIT;
END PROCESS t_prcs_t_3;
-- t[2]
t_prcs_t_2: PROCESS
BEGIN
	t(2) <= '0';
WAIT;
END PROCESS t_prcs_t_2;
-- t[1]
t_prcs_t_1: PROCESS
BEGIN
	t(1) <= '0';
WAIT;
END PROCESS t_prcs_t_1;
-- t[0]
t_prcs_t_0: PROCESS
BEGIN
	t(0) <= '0';
WAIT;
END PROCESS t_prcs_t_0;
-- mc[9]
t_prcs_mc_9: PROCESS
BEGIN
	mc(9) <= '0';
WAIT;
END PROCESS t_prcs_mc_9;
-- mc[8]
t_prcs_mc_8: PROCESS
BEGIN
	mc(8) <= '0';
WAIT;
END PROCESS t_prcs_mc_8;
-- mc[7]
t_prcs_mc_7: PROCESS
BEGIN
	mc(7) <= '0';
WAIT;
END PROCESS t_prcs_mc_7;
-- mc[6]
t_prcs_mc_6: PROCESS
BEGIN
	mc(6) <= '0';
WAIT;
END PROCESS t_prcs_mc_6;
-- mc[5]
t_prcs_mc_5: PROCESS
BEGIN
	mc(5) <= '0';
WAIT;
END PROCESS t_prcs_mc_5;
-- mc[4]
t_prcs_mc_4: PROCESS
BEGIN
	mc(4) <= '0';
WAIT;
END PROCESS t_prcs_mc_4;
-- mc[3]
t_prcs_mc_3: PROCESS
BEGIN
	mc(3) <= '0';
WAIT;
END PROCESS t_prcs_mc_3;
-- mc[2]
t_prcs_mc_2: PROCESS
BEGIN
	mc(2) <= '0';
WAIT;
END PROCESS t_prcs_mc_2;
-- mc[1]
t_prcs_mc_1: PROCESS
BEGIN
	mc(1) <= '0';
WAIT;
END PROCESS t_prcs_mc_1;
-- mc[0]
t_prcs_mc_0: PROCESS
BEGIN
	mc(0) <= '0';
WAIT;
END PROCESS t_prcs_mc_0;

-- avg
t_prcs_avg: PROCESS
BEGIN
	avg <= '0';
WAIT;
END PROCESS t_prcs_avg;
END display_arch;
