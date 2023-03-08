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
-- CREATED		"Wed Apr 05 18:26:05 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY test2 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END test2;

ARCHITECTURE bdf_type OF test2 IS 

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ct3pm
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
		 updown : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dc3
	PORT(data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 eq0 : OUT STD_LOGIC;
		 eq1 : OUT STD_LOGIC;
		 eq2 : OUT STD_LOGIC;
		 eq3 : OUT STD_LOGIC;
		 eq4 : OUT STD_LOGIC;
		 eq5 : OUT STD_LOGIC;
		 eq6 : OUT STD_LOGIC;
		 eq7 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	c :  STD_LOGIC;
SIGNAL	ct :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	d :  STD_LOGIC;
SIGNAL	down :  STD_LOGIC;
SIGNAL	e :  STD_LOGIC;
SIGNAL	f :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	i :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	nx :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	out :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	up :  STD_LOGIC;
SIGNAL	x :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	y :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	yy :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_2 <= '0';



c <= a(0) AND x(1);


f <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


i <= e OR d;


j <= g OR c;


SYNTHESIZED_WIRE_3 <= a(4) AND x(3);

down <= e;


ct(0) <= k;


ct(3) <= f;



y(7) <= f OR k OR c;

y(0) <= c;


y(1) <= j;


y(2) <= a(3);


y(3) <= i;


y(5) <= f;


y(6) <= i;



b2v_inst25 : reg
PORT MAP(clock => clk,
		 data => y,
		 q => yy);

ct(5) <= up;



ct(4) <= down OR up;

ct(1) <= f;



nx <= NOT(x);


ct(6) <= f;



ct(2) <= SYNTHESIZED_WIRE_2;



up <= a(3) OR SYNTHESIZED_WIRE_3 OR d OR j;


d <= a(2) AND x(2);


e <= a(4) AND nx(3);


SYNTHESIZED_WIRE_1 <= a(1) AND nx(2);


SYNTHESIZED_WIRE_0 <= a(2) AND nx(2);


g <= a(1) AND x(1) AND x(2);


k <= a(5) AND x(4);


b2v_UAinst26 : ct3pm
PORT MAP(sclr => ct(0),
		 sload => ct(6),
		 updown => ct(5),
		 clock => clk,
		 cnt_en => ct(4),
		 aclr => reset,
		 data => ct(3 DOWNTO 1),
		 q => out);


b2v_UAinst27 : dc3
PORT MAP(data => out,
		 eq0 => a(0),
		 eq1 => a(1),
		 eq2 => a(2),
		 eq3 => a(3),
		 eq4 => a(4),
		 eq5 => a(5));

apin <= a;
x <= xpin;
ctpin <= ct;
outpin <= out;
ypin <= yy;

END bdf_type;