-- Copyright (C) 1991-2009 Altera Corporation
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
-- VERSION		"Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Web Edition"
-- CREATED ON		"Fri Apr 29 09:32:59 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab21 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END lab21;

ARCHITECTURE bdf_type OF lab21 IS 

COMPONENT ct4pm
	PORT(sclr : IN STD_LOGIC;
		 updown : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aload : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dc4
	PORT(data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 eq0 : OUT STD_LOGIC;
		 eq1 : OUT STD_LOGIC;
		 eq2 : OUT STD_LOGIC;
		 eq3 : OUT STD_LOGIC;
		 eq4 : OUT STD_LOGIC;
		 eq5 : OUT STD_LOGIC;
		 eq6 : OUT STD_LOGIC;
		 eq7 : OUT STD_LOGIC;
		 eq8 : OUT STD_LOGIC;
		 eq9 : OUT STD_LOGIC;
		 eq10 : OUT STD_LOGIC;
		 eq11 : OUT STD_LOGIC;
		 eq12 : OUT STD_LOGIC;
		 eq13 : OUT STD_LOGIC;
		 eq14 : OUT STD_LOGIC;
		 eq15 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	ct :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	EWR :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	gnd :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	h :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	m :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	nx3 :  STD_LOGIC;
SIGNAL	out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	R :  STD_LOGIC;
SIGNAL	vcc :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	y[0] :  STD_LOGIC;
SIGNAL	y[10] :  STD_LOGIC;
SIGNAL	y[1] :  STD_LOGIC;
SIGNAL	y[2] :  STD_LOGIC;
SIGNAL	y[3] :  STD_LOGIC;
SIGNAL	y[4] :  STD_LOGIC;
SIGNAL	y[5] :  STD_LOGIC;
SIGNAL	y[7] :  STD_LOGIC;
SIGNAL	y[8] :  STD_LOGIC;
SIGNAL	y[9] :  STD_LOGIC;
SIGNAL	yy :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(10 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (gnd(2 DOWNTO 0) & vcc & R & h & EWR);
GDFX_TEMP_SIGNAL_1 <= (y[10] & y[9] & y[8] & y[7] & a(5) & y[5] & y[4] & y[3] & y[2] & y[1] & y[0]);

ct <= GDFX_TEMP_SIGNAL_0;



SYNTHESIZED_WIRE_15 <= NOT(x(1));





b2v_UAinst : ct4pm
PORT MAP(sclr => ct(4),
		 updown => ct(5),
		 clock => clk,
		 cnt_en => ct(6),
		 aload => reset,
		 data => ct(3 DOWNTO 0),
		 q => out);


b2v_UAinst1 : dc4
PORT MAP(data => out,
		 eq0 => a(10),
		 eq1 => a(0),
		 eq2 => a(1),
		 eq3 => a(2),
		 eq4 => a(3),
		 eq5 => a(4),
		 eq6 => a(5),
		 eq7 => a(6),
		 eq8 => a(7),
		 eq9 => a(8),
		 eq10 => a(9));


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_0 AND x(4);


y[8] <= a(8) AND x(8);


y[7] <= a(7) AND x(7);


y[4] <= p OR n;


y[9] <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


y[5] <= y[7] OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_0 <= a(6) OR SYNTHESIZED_WIRE_4;


b2v_UAinst2 : reg
PORT MAP(clock => clk,
		 data => GDFX_TEMP_SIGNAL_1,
		 q => yy);


SYNTHESIZED_WIRE_4 <= g AND nx3;


SYNTHESIZED_WIRE_2 <= m AND x(1);


SYNTHESIZED_WIRE_1 <= x(3) AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_5 <= a(9) OR g;


SYNTHESIZED_WIRE_11 <= a(9) AND nx3;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_6 AND a(10);


m <= a(3) OR a(1);


n <= a(4) AND x(2);


g <= a(4) AND SYNTHESIZED_WIRE_7;


h <= a(6) AND SYNTHESIZED_WIRE_8;


y[0] <= a(0) AND x(0);


SYNTHESIZED_WIRE_12 <= R OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


R <= y[9] OR p OR SYNTHESIZED_WIRE_11 OR n;


SYNTHESIZED_WIRE_14 <= NOT(x(0));



SYNTHESIZED_WIRE_6 <= NOT(x(9));



EWR <= NOT(SYNTHESIZED_WIRE_12);



nx3 <= NOT(x(3));



SYNTHESIZED_WIRE_13 <= NOT(x(7));



SYNTHESIZED_WIRE_7 <= NOT(x(2));



SYNTHESIZED_WIRE_8 <= NOT(x(5));



y[1] <= y[9] OR y[0];


p <= SYNTHESIZED_WIRE_13 OR x(8) OR a(8);


y[2] <= x(0) AND k;


k <= a(2) OR a(0);


y[10] <= a(10) AND x(9);


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_14 AND k;


y[3] <= SYNTHESIZED_WIRE_15 AND m;

apin <= a;
x <= xpin;
ctpin <= ct;
outpin <= out;
ypin <= yy;

gnd <= "000";
vcc <= '1';
END bdf_type;