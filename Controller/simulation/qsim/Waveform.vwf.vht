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
-- Generated on "11/16/2023 17:14:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controller_vhd_vec_tst IS
END controller_vhd_vec_tst;
ARCHITECTURE controller_arch OF controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL act : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL at : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL avg : STD_LOGIC;
SIGNAL b0 : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL mc : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL t : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT controller
	PORT (
	A : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	act : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	at : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	avg : OUT STD_LOGIC;
	b0 : IN STD_LOGIC;
	b1 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	b3 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	mc : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	reset : IN STD_LOGIC;
	t : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : controller
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	act => act,
	at => at,
	avg => avg,
	b0 => b0,
	b1 => b1,
	b2 => b2,
	b3 => b3,
	clk => clk,
	mc => mc,
	reset => reset,
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- b0
t_prcs_b0: PROCESS
BEGIN
	b0 <= '0';
WAIT;
END PROCESS t_prcs_b0;

-- b1
t_prcs_b1: PROCESS
BEGIN
	b1 <= '0';
WAIT;
END PROCESS t_prcs_b1;

-- b2
t_prcs_b2: PROCESS
BEGIN
	b2 <= '0';
WAIT;
END PROCESS t_prcs_b2;

-- b3
t_prcs_b3: PROCESS
BEGIN
	b3 <= '0';
	WAIT FOR 80000 ps;
	b3 <= '1';
	WAIT FOR 40000 ps;
	b3 <= '0';
WAIT;
END PROCESS t_prcs_b3;
END controller_arch;
