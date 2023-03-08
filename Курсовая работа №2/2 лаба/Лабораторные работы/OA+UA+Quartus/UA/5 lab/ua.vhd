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
-- CREATED		"Tue Apr 25 12:06:59 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ua IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
		a :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END ua;

ARCHITECTURE bdf_type OF ua IS 

COMPONENT ct4
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
		 updown : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
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
		 data : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	ct4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	d0 :  STD_LOGIC;
SIGNAL	d1 :  STD_LOGIC;
SIGNAL	e :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	h :  STD_LOGIC;
SIGNAL	i :  STD_LOGIC;
SIGNAL	inc :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	l :  STD_LOGIC;
SIGNAL	m :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	o :  STD_LOGIC;
SIGNAL	out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC;
SIGNAL	t :  STD_LOGIC;
SIGNAL	u :  STD_LOGIC;
SIGNAL	v :  STD_LOGIC;
SIGNAL	w :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	y :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	yy :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (t & d1 & j & d0);

y(2) <= a_ALTERA_SYNTHESIZED(5);


y(3) <= e;


y(7) <= q;


y(6) <= n;



y(0) <= j OR l OR w;


y(1) <= h OR e;


y(4) <= u OR m;


y(8) <= p OR k;


nx <= NOT(x);



e <= a_ALTERA_SYNTHESIZED(0) AND x(7);


f <= a_ALTERA_SYNTHESIZED(1) AND nx(0);


g <= a_ALTERA_SYNTHESIZED(1) AND x(0);


h <= a_ALTERA_SYNTHESIZED(2) AND x(7);


i <= a_ALTERA_SYNTHESIZED(3) AND nx(0);


k <= a_ALTERA_SYNTHESIZED(4) AND x(4);


j <= a_ALTERA_SYNTHESIZED(3) AND x(0);


p <= a_ALTERA_SYNTHESIZED(7) AND x(5);


l <= a_ALTERA_SYNTHESIZED(4) AND nx(4) AND x(3);


m <= a_ALTERA_SYNTHESIZED(4) AND nx(4) AND nx(3);


n <= a_ALTERA_SYNTHESIZED(6) AND x(1) AND nx(2);


o <= a_ALTERA_SYNTHESIZED(7) AND nx(5) AND nx(3);


q <= a_ALTERA_SYNTHESIZED(8) AND x(6);


u <= a_ALTERA_SYNTHESIZED(6) AND nx(1);


v <= i OR f;


w <= o OR e;


t <= g OR l OR k OR j;


SYNTHESIZED_WIRE_0 <= v OR h OR m OR w;


SYNTHESIZED_WIRE_3 <= n OR a_ALTERA_SYNTHESIZED(5) OR p;


SYNTHESIZED_WIRE_1 <= a_ALTERA_SYNTHESIZED(7) AND nx(5) AND x(3);


SYNTHESIZED_WIRE_2 <= a_ALTERA_SYNTHESIZED(6) AND x(1) AND x(2);


inc <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


d0 <= j OR g;


d1 <= k OR l;

ct4(0) <= q;


ct4(4 DOWNTO 1) <= GDFX_TEMP_SIGNAL_0;


ct4(5) <= SYNTHESIZED_WIRE_4;


ct4(7) <= t;



SYNTHESIZED_WIRE_4 <= u OR inc;

ct4(6) <= inc;


y(5) <= v;



b2v_UAinst1 : ct4
PORT MAP(sclr => ct4(0),
		 sload => ct4(7),
		 updown => ct4(6),
		 clock => clk,
		 cnt_en => ct4(5),
		 aclr => reset,
		 data => ct4(4 DOWNTO 1),
		 q => out);


b2v_UAinst2 : dc4
PORT MAP(data => out,
		 eq0 => a_ALTERA_SYNTHESIZED(0),
		 eq1 => a_ALTERA_SYNTHESIZED(1),
		 eq2 => a_ALTERA_SYNTHESIZED(2),
		 eq3 => a_ALTERA_SYNTHESIZED(3),
		 eq4 => a_ALTERA_SYNTHESIZED(4),
		 eq5 => a_ALTERA_SYNTHESIZED(5),
		 eq6 => a_ALTERA_SYNTHESIZED(6),
		 eq7 => a_ALTERA_SYNTHESIZED(7),
		 eq8 => a_ALTERA_SYNTHESIZED(8));


b2v_UAinst3 : reg
PORT MAP(clock => clk,
		 data => y,
		 q => yy);

a <= a_ALTERA_SYNTHESIZED;
ctpin <= ct4;
outpin <= out;
ypin <= yy;

x(6 DOWNTO 0) <= xpin;
END bdf_type;