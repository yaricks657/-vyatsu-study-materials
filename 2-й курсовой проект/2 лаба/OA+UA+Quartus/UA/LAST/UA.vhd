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
-- VERSION		"Version 9.0 Build 132 02/25/2009 SJ Full Version"
-- CREATED ON		"Wed May 19 09:44:30 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY UA IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(10 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END UA;

ARCHITECTURE bdf_type OF UA IS 

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

COMPONENT ct4pm
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

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	ct :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dec :  STD_LOGIC;
SIGNAL	e :  STD_LOGIC;
SIGNAL	ee :  STD_LOGIC;
SIGNAL	ewr :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	ff :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	gnd :  STD_LOGIC;
SIGNAL	h :  STD_LOGIC;
SIGNAL	hh :  STD_LOGIC;
SIGNAL	i :  STD_LOGIC;
SIGNAL	ii :  STD_LOGIC;
SIGNAL	inc :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	l :  STD_LOGIC;
SIGNAL	m :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	o :  STD_LOGIC;
SIGNAL	out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC;
SIGNAL	r :  STD_LOGIC;
SIGNAL	res :  STD_LOGIC;
SIGNAL	s :  STD_LOGIC;
SIGNAL	t :  STD_LOGIC;
SIGNAL	u :  STD_LOGIC;
SIGNAL	v :  STD_LOGIC;
SIGNAL	w :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	xxx :  STD_LOGIC;
SIGNAL	y :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	yy :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	yyy :  STD_LOGIC;
SIGNAL	z :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



ct(4) <= gnd;


ct(5) <= SYNTHESIZED_WIRE_0;


ct(6) <= inc;


ct(7) <= ewr;



b2v_inst14 : dc4
PORT MAP(data => out,
		 eq0 => a(8),
		 eq1 => a(0),
		 eq2 => a(1),
		 eq3 => a(2),
		 eq4 => a(3),
		 eq5 => a(4),
		 eq6 => a(5),
		 eq7 => a(6),
		 eq8 => a(7));


b2v_inst15 : ct4pm
PORT MAP(sclr => ct(0),
		 sload => ct(7),
		 updown => ct(6),
		 clock => clk,
		 cnt_en => ct(5),
		 aclr => reset,
		 data => ct(4 DOWNTO 1),
		 q => out);


q <= a(7) AND nx(4) AND x(9);


p <= a(6) AND nx(7) AND nx(6);


nx <= NOT(x);



o <= a(6) AND nx(7) AND x(6);


n <= a(6) AND x(7) AND x(8);


m <= a(4) AND nx(4) AND nx(5) AND nx(6);


l <= a(4) AND nx(4) AND nx(5) AND x(6);


k <= a(3) AND nx(2) AND x(3);


j <= a(3) AND nx(2) AND nx(3) AND nx(1);


i <= a(3) AND nx(2) AND nx(3) AND x(1);


h <= a(2) AND x(0);


g <= a(1) AND nx(1);


f <= a(1) AND x(1);


e <= a(0) AND x(0);


r <= a(8) AND x(10);


s <= p OR o;


t <= m OR l;


u <= t OR s;


v <= a(6) AND x(7) AND nx(8) AND x(9);


w <= v OR q OR k;


xxx <= a(4) AND x(4);


yyy <= a(7) AND x(4);


z <= yyy OR xxx;


b2v_inst5 : reg
PORT MAP(clock => clk,
		 data => y,
		 q => yy);


ee <= g OR f;


ff <= a(3) AND x(2);


hh <= j OR i;


ii <= h OR e;

y(0) <= e;


y(1) <= ii;



SYNTHESIZED_WIRE_1 <= a(4) AND nx(4) AND x(5);


y(2) <= w OR e OR SYNTHESIZED_WIRE_1;


y(3) <= j OR f;


y(4) <= hh OR ee;

ct(0) <= res;


y(5) <= ee;



y(6) <= u OR ee;

y(7) <= z;


y(8) <= ff;



y(9) <= o OR l;

y(10) <= u;


y(11) <= n;


y(12) <= r;


y(13) <= w;


y(14) <= a(5);


ct(1) <= ewr;



inc <= ii OR hh OR ee OR t OR a(5) OR n;


SYNTHESIZED_WIRE_0 <= dec OR inc;

dec <= s;



SYNTHESIZED_WIRE_2 <= a(7) AND nx(4) AND x(5);


res <= w OR s OR SYNTHESIZED_WIRE_2;


ewr <= z OR r OR ff;

ct(2) <= gnd;


ct(3) <= gnd;


apin <= a;
x <= xpin;
ctpin <= ct;
outpin <= out;
ypin <= yy;

gnd <= '0';
END bdf_type;