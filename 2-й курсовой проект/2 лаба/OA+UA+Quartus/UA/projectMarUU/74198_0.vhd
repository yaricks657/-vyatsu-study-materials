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
-- CREATED		"Thu Apr 01 22:13:26 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 74198_0 IS 
PORT 
( 
	A	:	IN	 STD_LOGIC;
	SRSI	:	IN	 STD_LOGIC;
	SLSI	:	IN	 STD_LOGIC;
	E	:	IN	 STD_LOGIC;
	S0	:	IN	 STD_LOGIC;
	B	:	IN	 STD_LOGIC;
	C	:	IN	 STD_LOGIC;
	D	:	IN	 STD_LOGIC;
	H	:	IN	 STD_LOGIC;
	G	:	IN	 STD_LOGIC;
	CLRN	:	IN	 STD_LOGIC;
	CLK	:	IN	 STD_LOGIC;
	F	:	IN	 STD_LOGIC;
	S1	:	IN	 STD_LOGIC;
	QD	:	OUT	 STD_LOGIC;
	QC	:	OUT	 STD_LOGIC;
	QH	:	OUT	 STD_LOGIC;
	QA	:	OUT	 STD_LOGIC;
	QB	:	OUT	 STD_LOGIC;
	QE	:	OUT	 STD_LOGIC;
	QF	:	OUT	 STD_LOGIC;
	QG	:	OUT	 STD_LOGIC
); 
END 74198_0;

ARCHITECTURE bdf_type OF 74198_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_UAinst : 74198
PORT MAP(A => A,
		 SRSI => SRSI,
		 SLSI => SLSI,
		 E => E,
		 S0 => S0,
		 B => B,
		 C => C,
		 D => D,
		 H => H,
		 G => G,
		 CLRN => CLRN,
		 CLK => CLK,
		 F => F,
		 S1 => S1,
		 QD => QD,
		 QC => QC,
		 QH => QH,
		 QA => QA,
		 QB => QB,
		 QE => QE,
		 QF => QF,
		 QG => QG);

END bdf_type; 