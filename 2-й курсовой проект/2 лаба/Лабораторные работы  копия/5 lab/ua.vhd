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
-- CREATED		"Wed Apr 26 12:19:24 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ua IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0);
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
		 eq8 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	ct :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dec :  STD_LOGIC;
SIGNAL	e :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	gnd :  STD_LOGIC;
SIGNAL	h :  STD_LOGIC;
SIGNAL	i :  STD_LOGIC;
SIGNAL	inc :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	l :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	o :  STD_LOGIC;
SIGNAL	out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC;
SIGNAL	r :  STD_LOGIC;
SIGNAL	res :  STD_LOGIC;
SIGNAL	s :  STD_LOGIC;
SIGNAL	t :  STD_LOGIC;
SIGNAL	u :  STD_LOGIC;
SIGNAL	wr :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	y :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	yy :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 




e <= a(0) AND x(7);

y(2) <= a(5);


y(3) <= e;


y(7) <= r;


y(6) <= l;



y(0) <= p OR t OR e;

y(1) <= g;



y(4) <= k OR q;


y(8) <= u OR s;


nx <= NOT(x);



n <= a(4) AND nx(4) AND x(3);


f <= a(2) AND x(7);


o <= a(3) AND x(0);


p <= o OR n;


q <= a(6) AND nx(1);


r <= a(8) AND x(6);


s <= a(4) AND x(4);


t <= a(7) AND nx(5) AND nx(3);


u <= a(7) AND x(5);


SYNTHESIZED_WIRE_2 <= g OR k OR j OR l OR u OR t OR a(5) OR SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_1 <= a(7) AND nx(5) AND x(3);


inc <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


h <= a(1) AND nx(0);


SYNTHESIZED_WIRE_0 <= a(6) AND x(1) AND nx(2);


SYNTHESIZED_WIRE_3 <= a(1) AND x(0);


wr <= p OR s OR SYNTHESIZED_WIRE_3;


g <= f OR e;

ct(0) <= res;


dec <= q;


ct(5) <= SYNTHESIZED_WIRE_4;


ct(7) <= wr;



SYNTHESIZED_WIRE_4 <= dec OR inc;

ct(6) <= inc;



i <= a(3) AND nx(0);

res <= r;


ct(4) <= wr;


ct(3) <= gnd;


ct(2) <= gnd;


ct(1) <= gnd;



j <= i OR h;


k <= a(4) AND nx(4) AND nx(3);


l <= a(6) AND x(1) AND x(2);

y(5) <= j;



b2v_UAinst : ct4
PORT MAP(sclr => ct(0),
		 sload => ct(7),
		 updown => ct(6),
		 clock => clk,
		 cnt_en => ct(5),
		 aclr => reset,
		 data => ct(4 DOWNTO 1),
		 q => out);


b2v_UAinst1 : dc4
PORT MAP(data => out,
		 eq0 => a(0),
		 eq1 => a(1),
		 eq2 => a(2),
		 eq3 => a(3),
		 eq4 => a(4),
		 eq5 => a(5),
		 eq6 => a(6),
		 eq7 => a(7),
		 eq8 => a(8));


b2v_UAinst2 : reg
PORT MAP(clock => clk,
		 data => y,
		 q => yy);

apin <= a;
x <= xpin;
ctpin <= ct;
outpin <= out;
ypin <= yy;

gnd <= '0';
END bdf_type;