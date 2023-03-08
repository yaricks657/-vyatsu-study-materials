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
-- CREATED		"Wed Dec 22 14:53:42 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY courseproject IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		PinY :  IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
		x :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		DEL :  OUT  STD_LOGIC;
		p :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		result :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END courseproject;

ARCHITECTURE bdf_type OF courseproject IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT xor3_0
	PORT(data0x : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF xor3_0: COMPONENT IS true;
ATTRIBUTE noopt OF xor3_0: COMPONENT IS true;

COMPONENT xor3_1
	PORT(data0x : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF xor3_1: COMPONENT IS true;
ATTRIBUTE noopt OF xor3_1: COMPONENT IS true;

COMPONENT rg2left
	PORT(load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(46 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rg3
	PORT(sclr : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rg4
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_or1
	PORT(data0x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sm2
	PORT(cin : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ct1
	PORT(sclr : IN STD_LOGIC;
		 sload : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ks2xor
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT not6
	PORT(data : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ct2
	PORT(sset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT subsdf
	PORT(cin : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rg2
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT kc1
	PORT(data : IN STD_LOGIC_VECTOR(31 DOWNTO 0 , 0 TO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter0
	PORT(sload : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(clock : IN STD_LOGIC;
		 clken : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sm1
	PORT(cin : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(46 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_inv0
	PORT(data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT resultshift
	PORT(load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rg1
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(46 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_add_sub0
	PORT(cin : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_xorresult
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_countershift
	PORT(sload : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_add_sub65
	PORT(cin : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_or76
	PORT(data : IN STD_LOGIC_VECTOR(7 DOWNTO 0 , 0 TO 0);
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux1
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_xor45
	PORT(data0x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ks1
	PORT(data0x : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(46 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(46 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	clkout :  STD_LOGIC;
SIGNAL	Counter :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Counternull :  STD_LOGIC;
SIGNAL	CT1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	CT2 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	DFG :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	DFG2 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	DTR :  STD_LOGIC;
SIGNAL	g0 :  STD_LOGIC;
SIGNAL	g1 :  STD_LOGIC;
SIGNAL	gf :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	inv :  STD_LOGIC;
SIGNAL	IPMR :  STD_LOGIC;
SIGNAL	IPMR2 :  STD_LOGIC;
SIGNAL	IPMRSum :  STD_LOGIC;
SIGNAL	IPMRSUMorDel :  STD_LOGIC;
SIGNAL	IPRS :  STD_LOGIC;
SIGNAL	jhg :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	KS1 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	KS2XOR :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	KS3XOR :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	KSSum :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	LL :  STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL	Matus :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	MatusVar :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Not6 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	O :  STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL	OrRG1 :  STD_LOGIC;
SIGNAL	OrRG2 :  STD_LOGIC;
SIGNAL	PRS :  STD_LOGIC;
SIGNAL	resultSum :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	RG1 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	RG2 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	RG3 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	rg33 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rg3null :  STD_LOGIC;
SIGNAL	RG4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	RG5 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	RGRaz :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	sm1 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	SM2 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	sm23 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SPMR :  STD_LOGIC;
SIGNAL	SPMR2 :  STD_LOGIC;
SIGNAL	T24 :  STD_LOGIC;
SIGNAL	XOR4 :  STD_LOGIC;
SIGNAL	y :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	ZeroDel :  STD_LOGIC;
SIGNAL	ZeroDel2 :  STD_LOGIC;
SIGNAL	ZnakMatus :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_2 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_3 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_5 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_6 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_11 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_7 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_12 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_13 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_14 :  STD_LOGIC_VECTOR(46 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_9 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_10 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_4 <= (XOR4 & XOR4 & XOR4 & XOR4 & XOR4 & XOR4 & XOR4 & XOR4);
GDFX_TEMP_SIGNAL_2 <= (XOR4 & XOR4 & KS2XOR(6 DOWNTO 0));
GDFX_TEMP_SIGNAL_3 <= (CT1(7) & CT1(7) & CT1(6 DOWNTO 0));
GDFX_TEMP_SIGNAL_1 <= (OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1 & OrRG1);
GDFX_TEMP_SIGNAL_5 <= (CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7));
GDFX_TEMP_SIGNAL_6 <= (CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7) & CT1(7));
GDFX_TEMP_SIGNAL_11 <= (y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5));
GDFX_TEMP_SIGNAL_7 <= (gf(7) & gf(7) & gf(7) & gf(7) & gf(7) & gf(7) & gf(7));
GDFX_TEMP_SIGNAL_12 <= (O(1) & DFG2(6 DOWNTO 0));
GDFX_TEMP_SIGNAL_0 <= (x(31) & x(22 DOWNTO 0) & O(22 DOWNTO 0));
GDFX_TEMP_SIGNAL_13 <= (inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv & inv);
GDFX_TEMP_SIGNAL_14 <= (y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5) & y(5));
GDFX_TEMP_SIGNAL_9 <= (RG3(23) & CT1(7) & DFG(6 DOWNTO 0) & RG3(22 DOWNTO 0));
GDFX_TEMP_SIGNAL_10 <= (g1 & g0);
GDFX_TEMP_SIGNAL_8 <= (O(1) & ZnakMatus & Matus(6 DOWNTO 0) & resultSum(22 DOWNTO 0));


b2v_inst : rg2left
PORT MAP(load => y(1),
		 clock => clkout,
		 enable => SYNTHESIZED_WIRE_0,
		 shiftin => RG2(46),
		 data => GDFX_TEMP_SIGNAL_0,
		 q => RG2);


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_1 OR y(1);


b2v_inst10 : rg3
PORT MAP(sclr => y(8),
		 load => y(3),
		 clock => clkout,
		 enable => SYNTHESIZED_WIRE_2,
		 shiftin => OrRG2,
		 data => GDFX_TEMP_SIGNAL_1,
		 q => RG3);


PROCESS(y(3),SYNTHESIZED_WIRE_3)
BEGIN
IF (SYNTHESIZED_WIRE_3 = '0') THEN
	DTR <= '0';
ELSIF (RISING_EDGE(y(3))) THEN
	DTR <= SM2(8);
END IF;
END PROCESS;


SYNTHESIZED_WIRE_11 <= y(6) OR y(0);


b2v_inst13 : rg4
PORT MAP(clock => clkout,
		 enable => y(1),
		 data => x(30 DOWNTO 23),
		 q => RG4);


SYNTHESIZED_WIRE_2 <= y(6) OR y(8) OR y(3);


b2v_inst15 : lpm_or1
PORT MAP(data0x => SYNTHESIZED_WIRE_4,
		 data1x => rg33,
		 result => sm23);


SPMR <= Not6(3) AND DTR AND CT1(4) AND Not6(2) AND Not6(1) AND SYNTHESIZED_WIRE_5;


b2v_inst17 : sm2
PORT MAP(cin => XOR4,
		 dataa => GDFX_TEMP_SIGNAL_2,
		 datab => GDFX_TEMP_SIGNAL_3,
		 result => SM2);


b2v_inst18 : ct1
PORT MAP(sclr => y(0),
		 sload => y(3),
		 clock => clkout,
		 cnt_en => y(4),
		 data => SM2(7 DOWNTO 0),
		 q => CT1);


OrRG1 <= RG1(46) XOR RG2(46);


ZeroDel <= RG2(45) XOR RG2(46);


T24 <= RG3(22) XOR RG3(23);


XOR4 <= RG4(7) XOR y(5);


IPMR <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7 AND DTR;


b2v_inst23 : rg4
PORT MAP(clock => clkout,
		 enable => y(0),
		 data => x(30 DOWNTO 23),
		 q => RG5);


PROCESS(clkout)
VARIABLE synthesized_var_for_IPMRSum : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clkout)) THEN
	synthesized_var_for_IPMRSum := (NOT(synthesized_var_for_IPMRSum) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_IPMRSum AND (NOT(O(0))));
END IF;
	IPMRSum <= synthesized_var_for_IPMRSum;
END PROCESS;


b2v_inst25 : ks2xor
PORT MAP(data0x => GDFX_TEMP_SIGNAL_4,
		 data1x => RG4,
		 result => KS2XOR);


SYNTHESIZED_WIRE_10 <= RG1(20) XOR RG2(20);


SYNTHESIZED_WIRE_9 <= NOT(DTR);



SYNTHESIZED_WIRE_7 <= NOT(CT1(7));



IPRS <= SYNTHESIZED_WIRE_9 AND CT1(7);


SYNTHESIZED_WIRE_5 <= Not6(0) AND Not6(4) AND Not6(5) AND Not6(6);


SYNTHESIZED_WIRE_6 <= NOT(SPMR);



OrRG2 <= NOT(SYNTHESIZED_WIRE_10);



b2v_inst32 : not6
PORT MAP(data => CT1(6 DOWNTO 0),
		 result => Not6);


b2v_inst33 : ks2xor
PORT MAP(data0x => CT1(6 DOWNTO 0),
		 data1x => GDFX_TEMP_SIGNAL_5);


b2v_inst34 : ct2
PORT MAP(sset => y(0),
		 clock => SYNTHESIZED_WIRE_11,
		 q => CT2);



PROCESS(clkout)
VARIABLE synthesized_var_for_DEL : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clkout)) THEN
	synthesized_var_for_DEL := (NOT(synthesized_var_for_DEL) AND y(10)) OR (synthesized_var_for_DEL AND (NOT(y(0))));
END IF;
	DEL <= synthesized_var_for_DEL;
END PROCESS;


SYNTHESIZED_WIRE_3 <= NOT(y(0));






PROCESS(clkout)
VARIABLE synthesized_var_for_SPMR2 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clkout)) THEN
	synthesized_var_for_SPMR2 := (NOT(synthesized_var_for_SPMR2) AND SPMR) OR (synthesized_var_for_SPMR2 AND (NOT(y(8))));
END IF;
	SPMR2 <= synthesized_var_for_SPMR2;
END PROCESS;


PROCESS(clkout)
VARIABLE synthesized_var_for_g0 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clkout)) THEN
	synthesized_var_for_g0 := (NOT(synthesized_var_for_g0) AND y(12)) OR (synthesized_var_for_g0 AND (NOT(O(0))));
END IF;
	g0 <= synthesized_var_for_g0;
END PROCESS;


b2v_inst42 : xor3_0
PORT MAP(data0x => CT1(6 DOWNTO 0),
		 data1x => GDFX_TEMP_SIGNAL_6,
		 result => SYNTHESIZED_WIRE_13);


b2v_inst43 : subsdf
PORT MAP(cin => CT1(4),
		 dataa => SYNTHESIZED_WIRE_13,
		 datab => O(6 DOWNTO 0),
		 result => DFG);



b2v_inst45 : rg2
PORT MAP(sclr => O(1),
		 clock => clkout,
		 enable => y(1),
		 data => x,
		 q => SYNTHESIZED_WIRE_4);


b2v_inst46 : rg2
PORT MAP(sclr => O(1),
		 clock => clkout,
		 enable => y(3),
		 data => sm23,
		 q => rg33);


b2v_inst47 : kc1
PORT MAP(data => rg33,
		 result => SYNTHESIZED_WIRE_14);


Counternull <= NOT(SYNTHESIZED_WIRE_15);



b2v_inst49 : rg4
PORT MAP(clock => clkout,
		 enable => y(8),
		 data => gf,
		 q => RGRaz);



b2v_inst50 : xor3_1
PORT MAP(data0x => gf(6 DOWNTO 0),
		 data1x => GDFX_TEMP_SIGNAL_7,
		 result => SYNTHESIZED_WIRE_16);


PROCESS(clkout)
VARIABLE synthesized_var_for_g1 : STD_LOGIC;
BEGIN
IF (RISING_EDGE(clkout)) THEN
	synthesized_var_for_g1 := (NOT(synthesized_var_for_g1) AND y(13)) OR (synthesized_var_for_g1 AND (NOT(O(0))));
END IF;
	g1 <= synthesized_var_for_g1;
END PROCESS;


PROCESS(y(3))
VARIABLE synthesized_var_for_ZnakMatus : STD_LOGIC;
BEGIN
IF (RISING_EDGE(y(3))) THEN
	synthesized_var_for_ZnakMatus := (NOT(synthesized_var_for_ZnakMatus) AND MatusVar(7)) OR (synthesized_var_for_ZnakMatus AND (NOT(O(0))));
END IF;
	ZnakMatus <= synthesized_var_for_ZnakMatus;
END PROCESS;


b2v_inst53 : subsdf
PORT MAP(cin => gf(7),
		 dataa => SYNTHESIZED_WIRE_16,
		 datab => O(6 DOWNTO 0),
		 result => DFG2);


b2v_inst54 : lpm_counter0
PORT MAP(sload => y(3),
		 clock => clkout,
		 cnt_en => SYNTHESIZED_WIRE_17,
		 data => MatusVar(6 DOWNTO 0),
		 cout => SYNTHESIZED_WIRE_8,
		 q => Matus);


IPMRSUMorDel <= SYNTHESIZED_WIRE_18 OR IPMRSum;


b2v_inst56 : lpm_mux0
PORT MAP(clock => clkout,
		 clken => y(7),
		 data0x => O(31 DOWNTO 0),
		 data1x => jhg,
		 data2x => GDFX_TEMP_SIGNAL_8,
		 data3x => GDFX_TEMP_SIGNAL_9,
		 sel => GDFX_TEMP_SIGNAL_10,
		 result => result);


SYNTHESIZED_WIRE_18 <= g1 AND g0 AND IPMR;


b2v_inst6 : sm1
PORT MAP(cin => y(5),
		 dataa => KS1,
		 datab => RG1,
		 result => sm1);


b2v_inst64 : lpm_inv0
PORT MAP(data => rg33,
		 result => jhg);


inv <= RG2(46) AND y(3);


b2v_inst69 : resultshift
PORT MAP(load => y(3),
		 clock => clkout,
		 enable => SYNTHESIZED_WIRE_19,
		 shiftin => O(1),
		 data => SYNTHESIZED_WIRE_20,
		 q => resultSum);


b2v_inst7 : rg1
PORT MAP(clock => clkout,
		 enable => y(2),
		 data => sm1,
		 q => RG1);


b2v_inst70 : lpm_add_sub0
PORT MAP(cin => inv,
		 dataa => KSSum,
		 datab => resultSum,
		 result => SYNTHESIZED_WIRE_20);


b2v_inst71 : lpm_xorresult
PORT MAP(data0x => RG4,
		 data1x => GDFX_TEMP_SIGNAL_11,
		 result => SYNTHESIZED_WIRE_21);


b2v_inst72 : lpm_countershift
PORT MAP(sload => y(8),
		 clock => clkout,
		 cnt_en => y(4),
		 data => GDFX_TEMP_SIGNAL_12,
		 q => Counter);


SYNTHESIZED_WIRE_24 <= resultSum(23) AND y(6);


b2v_inst74 : lpm_add_sub65
PORT MAP(cin => y(5),
		 dataa => SYNTHESIZED_WIRE_21,
		 datab => RG5,
		 result => gf);


b2v_inst75 : lpm_or76
PORT MAP(data => Counter,
		 result => SYNTHESIZED_WIRE_15);


SYNTHESIZED_WIRE_1 <= g1 AND SYNTHESIZED_WIRE_22 AND y(4);


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_24 OR y(3);


SYNTHESIZED_WIRE_23 <= g1 AND RGRaz(7) AND y(4);


ZeroDel2 <= RG1(45) XOR RG1(46);


SYNTHESIZED_WIRE_22 <= NOT(RGRaz(7));



b2v_inst82 : lpm_mux1
PORT MAP(sel => RGRaz(7),
		 data0x => RG5,
		 data1x => RG4,
		 result => MatusVar);


b2v_inst83 : lpm_xor45
PORT MAP(data0x => RG2(46 DOWNTO 23),
		 data1x => GDFX_TEMP_SIGNAL_13,
		 result => KSSum);


SYNTHESIZED_WIRE_17 <= resultSum(23) AND y(6);


b2v_inst9 : ks1
PORT MAP(data0x => RG2,
		 data1x => GDFX_TEMP_SIGNAL_14,
		 result => KS1);

y <= PinY;
clkout <= clk;
p(9) <= Counternull;
p(8) <= CT2(5);
p(7) <= ZeroDel2;
p(6) <= T24;
p(5) <= O(5);
p(4) <= SPMR2;
p(3) <= IPMRSUMorDel;
p(2) <= IPRS;
p(1) <= OrRG1;
p(0) <= ZeroDel;

LL <= "111111111111111111111111111111111111111111111111";
END bdf_type;