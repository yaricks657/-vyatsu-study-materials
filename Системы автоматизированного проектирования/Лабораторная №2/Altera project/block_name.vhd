-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

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


-- Generated by Quartus II Version 9.1 (Build Build 350 03/24/2010)
-- Created on Thu Mar 30 23:09:52 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY block_name IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		clk : IN STD_LOGIC;
		action : IN STD_LOGIC_VECTOR(1 downto 0);
		x : IN STD_LOGIC_VECTOR(7 downto 0);
		LED_GREEN : OUT STD_LOGIC;
		LED_BLUE : OUT STD_LOGIC;
		LED_RED : OUT STD_LOGIC
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END block_name;


--  Architecture Body

ARCHITECTURE block_name_architecture OF block_name IS

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comp
	PORT(dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 agb : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	blue :  STD_LOGIC;
SIGNAL	green :  STD_LOGIC;
SIGNAL	maax :  STD_LOGIC;
SIGNAL	max :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	min :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	noorm :  STD_LOGIC;
SIGNAL	norm :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;

	
BEGIN

b2v_inst : reg
PORT MAP(clock => clk,
		 enable => SYNTHESIZED_WIRE_0,
		 data => x,
		 q => min);

b2v_inst1 : reg
PORT MAP(clock => clk,
		 enable => SYNTHESIZED_WIRE_1,
		 data => x,
		 q => norm);

SYNTHESIZED_WIRE_2 <= NOT(maax);
green <= noorm AND SYNTHESIZED_WIRE_2;
blue <= NOT(maax OR noorm);
LED_RED <= maax AND clk;
LED_BLUE <= clk AND blue;

b2v_inst2 : reg
PORT MAP(clock => clk,
		 enable => SYNTHESIZED_WIRE_3,
		 data => x,
		 q => max);

b2v_inst3 : comp
PORT MAP(dataa => norm,
		 datab => min,
		 agb => noorm);

b2v_inst4 : comp
PORT MAP(dataa => norm,
		 datab => max,
		 agb => maax);

SYNTHESIZED_WIRE_0 <= action(0) AND SYNTHESIZED_WIRE_4;
SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_5 AND action(1);
SYNTHESIZED_WIRE_3 <= action(1) AND action(0);
SYNTHESIZED_WIRE_4 <= NOT(action(1));
SYNTHESIZED_WIRE_5 <= NOT(action(0));
LED_GREEN <= green;


END block_name_architecture;
