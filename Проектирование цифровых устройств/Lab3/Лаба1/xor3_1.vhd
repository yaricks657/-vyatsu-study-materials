-- Copyright (C) 1991-2010 Altera Corporation
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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"
-- CREATED		"Wed Dec 22 14:53:42 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY xor3_1 IS 
PORT 
( 
	data0x	:	IN	 STD_LOGIC_VECTOR(6 DOWNTO 0);
	data1x	:	IN	 STD_LOGIC_VECTOR(6 DOWNTO 0);
	result	:	OUT	 STD_LOGIC_VECTOR(6 DOWNTO 0)
); 
END xor3_1;

ARCHITECTURE bdf_type OF xor3_1 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst50 : xor3
PORT MAP(data0x => data0x,
		 data1x => data1x,
		 result => result);

END bdf_type; 