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
-- Generated on "11/16/2023 19:26:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          average
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY average_vhd_vec_tst IS
END average_vhd_vec_tst;
ARCHITECTURE average_arch OF average_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL avg : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL I : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL M : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MC : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT average
	PORT (
	A : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	avg : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	I : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	M : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	MC : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : average
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	avg => avg,
	clk => clk,
	I => I,
	M => M,
	MC => MC
	);
-- I[11]
t_prcs_I_11: PROCESS
BEGIN
	I(11) <= '0';
WAIT;
END PROCESS t_prcs_I_11;
-- I[10]
t_prcs_I_10: PROCESS
BEGIN
	I(10) <= '0';
WAIT;
END PROCESS t_prcs_I_10;
-- I[9]
t_prcs_I_9: PROCESS
BEGIN
	I(9) <= '0';
WAIT;
END PROCESS t_prcs_I_9;
-- I[8]
t_prcs_I_8: PROCESS
BEGIN
	I(8) <= '0';
WAIT;
END PROCESS t_prcs_I_8;
-- I[7]
t_prcs_I_7: PROCESS
BEGIN
	I(7) <= '0';
WAIT;
END PROCESS t_prcs_I_7;
-- I[6]
t_prcs_I_6: PROCESS
BEGIN
	I(6) <= '0';
WAIT;
END PROCESS t_prcs_I_6;
-- I[5]
t_prcs_I_5: PROCESS
BEGIN
	I(5) <= '0';
	WAIT FOR 210000 ps;
	I(5) <= '1';
	WAIT FOR 180000 ps;
	I(5) <= '0';
	WAIT FOR 20000 ps;
	I(5) <= '1';
	WAIT FOR 80000 ps;
	I(5) <= '0';
	WAIT FOR 230000 ps;
	I(5) <= '1';
	WAIT FOR 180000 ps;
	I(5) <= '0';
	WAIT FOR 20000 ps;
	I(5) <= '1';
WAIT;
END PROCESS t_prcs_I_5;
-- I[4]
t_prcs_I_4: PROCESS
BEGIN
	I(4) <= '1';
	WAIT FOR 190000 ps;
	I(4) <= '0';
	WAIT FOR 320000 ps;
	I(4) <= '1';
	WAIT FOR 190000 ps;
	I(4) <= '0';
WAIT;
END PROCESS t_prcs_I_4;
-- I[3]
t_prcs_I_3: PROCESS
BEGIN
	I(3) <= '1';
	WAIT FOR 190000 ps;
	I(3) <= '0';
	WAIT FOR 220000 ps;
	I(3) <= '1';
	WAIT FOR 80000 ps;
	I(3) <= '0';
	WAIT FOR 20000 ps;
	I(3) <= '1';
	WAIT FOR 190000 ps;
	I(3) <= '0';
	WAIT FOR 220000 ps;
	I(3) <= '1';
WAIT;
END PROCESS t_prcs_I_3;
-- I[2]
t_prcs_I_2: PROCESS
BEGIN
	I(2) <= '0';
	WAIT FOR 100000 ps;
	I(2) <= '1';
	WAIT FOR 90000 ps;
	I(2) <= '0';
	WAIT FOR 110000 ps;
	I(2) <= '1';
	WAIT FOR 90000 ps;
	I(2) <= '0';
	WAIT FOR 220000 ps;
	I(2) <= '1';
	WAIT FOR 90000 ps;
	I(2) <= '0';
	WAIT FOR 110000 ps;
	I(2) <= '1';
	WAIT FOR 90000 ps;
	I(2) <= '0';
WAIT;
END PROCESS t_prcs_I_2;
-- I[1]
t_prcs_I_1: PROCESS
BEGIN
	I(1) <= '0';
WAIT;
END PROCESS t_prcs_I_1;
-- I[0]
t_prcs_I_0: PROCESS
BEGIN
	I(0) <= '0';
WAIT;
END PROCESS t_prcs_I_0;
-- MC[9]
t_prcs_MC_9: PROCESS
BEGIN
	MC(9) <= '0';
WAIT;
END PROCESS t_prcs_MC_9;
-- MC[8]
t_prcs_MC_8: PROCESS
BEGIN
	MC(8) <= '0';
WAIT;
END PROCESS t_prcs_MC_8;
-- MC[7]
t_prcs_MC_7: PROCESS
BEGIN
	MC(7) <= '0';
WAIT;
END PROCESS t_prcs_MC_7;
-- MC[6]
t_prcs_MC_6: PROCESS
BEGIN
	MC(6) <= '0';
WAIT;
END PROCESS t_prcs_MC_6;
-- MC[5]
t_prcs_MC_5: PROCESS
BEGIN
	MC(5) <= '0';
WAIT;
END PROCESS t_prcs_MC_5;
-- MC[4]
t_prcs_MC_4: PROCESS
BEGIN
	MC(4) <= '0';
WAIT;
END PROCESS t_prcs_MC_4;
-- MC[3]
t_prcs_MC_3: PROCESS
BEGIN
	MC(3) <= '0';
	WAIT FOR 400000 ps;
	MC(3) <= '1';
	WAIT FOR 90000 ps;
	MC(3) <= '0';
	WAIT FOR 420000 ps;
	MC(3) <= '1';
WAIT;
END PROCESS t_prcs_MC_3;
-- MC[2]
t_prcs_MC_2: PROCESS
BEGIN
	MC(2) <= '0';
	WAIT FOR 200000 ps;
	MC(2) <= '1';
	WAIT FOR 200000 ps;
	MC(2) <= '0';
	WAIT FOR 310000 ps;
	MC(2) <= '1';
	WAIT FOR 200000 ps;
	MC(2) <= '0';
WAIT;
END PROCESS t_prcs_MC_2;
-- MC[1]
t_prcs_MC_1: PROCESS
BEGIN
	MC(1) <= '0';
WAIT;
END PROCESS t_prcs_MC_1;
-- MC[0]
t_prcs_MC_0: PROCESS
BEGIN
	MC(0) <= '0';
	WAIT FOR 20000 ps;
	MC(0) <= '1';
	WAIT FOR 180000 ps;
	MC(0) <= '0';
	WAIT FOR 310000 ps;
	MC(0) <= '1';
	WAIT FOR 200000 ps;
	MC(0) <= '0';
WAIT;
END PROCESS t_prcs_MC_0;

-- avg
t_prcs_avg: PROCESS
BEGIN
LOOP
	avg <= '0';
	WAIT FOR 500000 ps;
	avg <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_avg;

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
END average_arch;
