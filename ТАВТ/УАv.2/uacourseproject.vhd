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
-- CREATED		"Sun May 30 20:59:59 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY uacourseproject IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		xpin :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		apin :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		ctpin :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		outpin :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		ypin :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END uacourseproject;

ARCHITECTURE bdf_type OF uacourseproject IS 

COMPONENT reg
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dc4
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

COMPONENT ct4pm
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

SIGNAL	a :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	ct :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	f :  STD_LOGIC;
SIGNAL	fgh :  STD_LOGIC;
SIGNAL	g :  STD_LOGIC;
SIGNAL	j :  STD_LOGIC;
SIGNAL	k :  STD_LOGIC;
SIGNAL	LL :  STD_LOGIC;
SIGNAL	m :  STD_LOGIC;
SIGNAL	n :  STD_LOGIC;
SIGNAL	No0 :  STD_LOGIC;
SIGNAL	No1 :  STD_LOGIC;
SIGNAL	No2 :  STD_LOGIC;
SIGNAL	No3 :  STD_LOGIC;
SIGNAL	O :  STD_LOGIC;
SIGNAL	out :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	p :  STD_LOGIC;
SIGNAL	q1 :  STD_LOGIC;
SIGNAL	q3 :  STD_LOGIC;
SIGNAL	res :  STD_LOGIC;
SIGNAL	yy :  STD_LOGIC_VECTOR(4 DOWNTO 0);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (j & q3 & a(3) & q1 & f);
GDFX_TEMP_SIGNAL_1 <= (LL & O & LL);


g <= a(1) AND No0 AND xpin(2);


No0 <= NOT(xpin(0));



f <= a(0) AND xpin(2);


k <= a(1) AND xpin(0) AND xpin(0);


m <= a(4) AND No1;


p <= a(2) AND xpin(0) AND xpin(0);


n <= a(2) AND No0;


ct(1) <= p OR k;


fgh <= a(4) AND xpin(1);


j <= a(5) AND xpin(3);



No1 <= NOT(xpin(1));



q1 <= g OR f;


b2v_inst31 : reg
PORT MAP(clock => clk,
		 data => GDFX_TEMP_SIGNAL_0,
		 q => yy);


q3 <= m OR n;


ct(6) <= m XOR ct(5);


ct(4 DOWNTO 2) <= GDFX_TEMP_SIGNAL_1;



ct(0) <= j;




ct(5) <= fgh OR a(3) OR fgh OR n OR g OR f;


b2v_UAinst : dc4
PORT MAP(data => out,
		 eq0 => a(0),
		 eq1 => a(1),
		 eq2 => a(2),
		 eq3 => a(3),
		 eq4 => a(4),
		 eq5 => a(5));


b2v_UAinst2 : ct4pm
PORT MAP(sclr => ct(0),
		 sload => ct(1),
		 updown => ct(5),
		 clock => clk,
		 cnt_en => ct(6),
		 aclr => res,
		 data => ct(4 DOWNTO 2),
		 q => out);

apin <= a;
res <= reset;
ctpin <= ct;
outpin <= out;
ypin <= yy;

LL <= '1';
O <= '0';
END bdf_type;