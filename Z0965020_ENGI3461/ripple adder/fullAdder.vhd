-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2008 Altera Corporation
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


-- Generated by Quartus II Version 8.0 (Build Build 215 05/29/2008)
-- Created on Mon Feb 05 14:38:48 2018

LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY fullAdder IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC;
		Cout : OUT STD_LOGIC
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END fullAdder;


--  Architecture Body

ARCHITECTURE fullAdder_architecture OF fullAdder IS

	signal sig1, sig2, sig3 : std_logic;
BEGIN
	sig1 <= A XOR B;
	sig2 <= A AND B;
	sig3 <= Cin AND sig1;
	S	<= sig1 XOR Cin;
	Cout <= sig2 OR sig3;
END fullAdder_architecture;