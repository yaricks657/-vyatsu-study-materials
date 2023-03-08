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
-- CREATED		"Fri May 14 00:07:26 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ua IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END ua;

ARCHITECTURE bdf_type OF ua IS 

COMPONENT orr9
	PORT(data : IN STD_LOGIC_VECTOR(8 DOWNTO 0 , 0 TO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT orr5
	PORT(data : IN STD_LOGIC_VECTOR(3 DOWNTO 0 , 0 TO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ct4pm
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
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

SIGNAL	a :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	ct :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	d :  STD_LOGIC;
SIGNAL	D0 :  STD_LOGIC;
SIGNAL	DD0 :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	gn :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	h :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	l :  STD_LOGIC;
SIGNAL	m :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(7 DOWNTO 1);
SIGNAL	out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	plus :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC;
SIGNAL	R :  STD_LOGIC;
SIGNAL	res1 :  STD_LOGIC;
SIGNAL	res2 :  STD_LOGIC;
SIGNAL	s :  STD_LOGIC;
SIGNAL	t :  STD_LOGIC;
SIGNAL	vc :  STD_LOGIC;
SIGNAL	w :  STD_LOGIC;
SIGNAL	WR :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	y :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	yy :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	z :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(8 DOWNTO 0 , 0 TO 0);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0 , 0 TO 0);
SIGNAL	GDFX_TEMP_SIGNAL_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (t & a(1) & q & m & h & w & a(6) & d & f);
GDFX_TEMP_SIGNAL_1 <= (WR & R & plus & plus);
GDFX_TEMP_SIGNAL_3 <= (D0 & j & j & z);
GDFX_TEMP_SIGNAL_2 <= (z & j & j & DD0);


D0 <= n OR s OR p;


t <= a(0) AND x(0);


m <= a(3) AND nx(1) AND nx(2);


DD0 <= reset OR D0;


n <= a(8) AND x(3);


p <= a(3) AND x(1);


q <= a(2) AND x(0);


s <= a(4) AND x(3);


w <= a(5) AND x(5);


z <= a(5) AND nx(5);


res1 <= a(7) AND x(6) AND x(7);


res2 <= a(8) AND nx(3);


nx <= NOT(x(7 DOWNTO 1));



R <= l OR res1 OR res2 OR k;


b2v_inst22 : orr9
PORT MAP(data => GDFX_TEMP_SIGNAL_0,
		 result => plus);


f <= a(9) AND x(9);

	ct(0) <= GDFX_TEMP_SIGNAL_1(3);
	ct(5) <= GDFX_TEMP_SIGNAL_1(2);
	ct(7) <= GDFX_TEMP_SIGNAL_1(1);
	ct(6) <= GDFX_TEMP_SIGNAL_1(0);

ct(4 DOWNTO 1) <= GDFX_TEMP_SIGNAL_2;





b2v_inst35 : orr5
PORT MAP(data => GDFX_TEMP_SIGNAL_3,
		 result => WR);


y(0) <= t OR k OR g OR l;


y(1) <= k OR g OR l;


y(2) <= q OR t;

y(3) <= t;



g <= a(7) AND x(6) AND x(7) AND x(8);


y(4) <= a(6) OR z;


y(5) <= j OR h;


y(6) <= a(1) OR w OR j OR h;

y(7) <= f;


y(8) <= m;


y(10) <= d;



y(9) <= m OR a(1);


y(11) <= n OR s;

y(12) <= p;



j <= a(7) AND nx(6);


d <= a(7) AND x(6) AND nx(7);


h <= a(4) AND nx(3) AND nx(4);


k <= a(4) AND nx(3) AND x(4);


l <= a(3) AND nx(1) AND x(2);


b2v_UAinst : reg
PORT MAP(clock => clk,
		 data => y,
		 q => yy);


b2v_UAinst1 : ct4pm
PORT MAP(sclr => ct(0),
		 sload => ct(7),
		 updown => ct(6),
		 clock => clk,
		 cnt_en => ct(5),
		 aload => reset,
		 data => ct(4 DOWNTO 1),
		 q => out);


b2v_UAinst2 : dc4
PORT MAP(data => out,
		 eq0 => a(9),
		 eq1 => a(0),
		 eq2 => a(1),
		 eq3 => a(2),
		 eq4 => a(3),
		 eq5 => a(4),
		 eq6 => a(5),
		 eq7 => a(6),
		 eq8 => a(7),
		 eq9 => a(8));

apin <= a;
x <= xpin;
ctpin <= ct;
outpin <= out;
ypin <= yy;

gn <= "000";
vc <= '1';
END bdf_type;