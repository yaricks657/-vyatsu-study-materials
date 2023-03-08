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

LIBRARY work;

ENTITY projectmaruu IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END projectmaruu;

ARCHITECTURE bdf_type OF projectmaruu IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \74198_0\
	PORT(A : IN STD_LOGIC;
		 SRSI : IN STD_LOGIC;
		 SLSI : IN STD_LOGIC;
		 E : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 H : IN STD_LOGIC;
		 G : IN STD_LOGIC;
		 CLRN : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 F : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 QD : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 QH : OUT STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QE : OUT STD_LOGIC;
		 QF : OUT STD_LOGIC;
		 QG : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74198_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74198_0\: COMPONENT IS true;

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	c :  STD_LOGIC;
SIGNAL	d :  STD_LOGIC;
SIGNAL	e :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	gnd :  STD_LOGIC;
SIGNAL	H :  STD_LOGIC;
SIGNAL	K :  STD_LOGIC;
SIGNAL	N :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(1 TO 1);
SIGNAL	Pi :  STD_LOGIC;
SIGNAL	vcc :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	y2 :  STD_LOGIC;
SIGNAL	y5 :  STD_LOGIC;
SIGNAL	yy :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (H & a(5) & y5 & d & f & y2 & c & K);


b2v_inst : reg
PORT MAP(clock => clk,
		 data => GDFX_TEMP_SIGNAL_0,
		 q => yy);



N <= a(4) OR f;


y2 <= a(3) OR c;


y5 <= e OR N;


H <= x(1) AND x(2) AND g;


Pi <= H OR reset;


SYNTHESIZED_WIRE_2 <= e OR Pi;


SYNTHESIZED_WIRE_0 <= K OR a(3) OR a(5) OR N;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_0 OR Pi;



c <= a(0) AND x(0);


d <= a(2) AND x(0);


e <= a(6) AND nx;


f <= a(1) AND nx;


nx <= NOT(x(1));



g <= a(6) OR a(1);


K <= d OR c;


b2v_UAinst : 74198_0
PORT MAP(A => Pi,
		 SRSI => gnd,
		 SLSI => gnd,
		 E => gnd,
		 S0 => SYNTHESIZED_WIRE_1,
		 B => gnd,
		 C => gnd,
		 D => gnd,
		 H => gnd,
		 G => gnd,
		 CLRN => vcc,
		 CLK => clk,
		 F => gnd,
		 S1 => SYNTHESIZED_WIRE_2,
		 QD => a(3),
		 QC => a(2),
		 QH => a(7),
		 QA => a(0),
		 QB => a(1),
		 QE => a(4),
		 QF => a(5),
		 QG => a(6));

apin(6 DOWNTO 0) <= a(6 DOWNTO 0);
x <= xpin;
ypin <= yy;

gnd <= '0';
vcc <= '1';
END bdf_type;