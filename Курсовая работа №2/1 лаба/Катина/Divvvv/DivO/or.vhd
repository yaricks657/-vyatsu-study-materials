-- megafunction wizard: %LPM_OR%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_or 

-- ============================================================
-- File Name: or.vhd
-- Megafunction Name(s):
-- 			lpm_or
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 7.2 Build 151 09/26/2007 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2007 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY or IS
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END or;


ARCHITECTURE SYN OF or IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_2D (0 DOWNTO 0, 3 DOWNTO 0);

BEGIN
	result    <= sub_wire0(3 DOWNTO 0);
	sub_wire1    <= data0x(3 DOWNTO 0);
	sub_wire2(0, 0)    <= sub_wire1(0);
	sub_wire2(0, 1)    <= sub_wire1(1);
	sub_wire2(0, 2)    <= sub_wire1(2);
	sub_wire2(0, 3)    <= sub_wire1(3);

	lpm_or_component : lpm_or
	GENERIC MAP (
		lpm_size => 1,
		lpm_type => "LPM_OR",
		lpm_width => 4
	)
	PORT MAP (
		data => sub_wire2,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: CompactSymbol NUMERIC "0"
-- Retrieval info: PRIVATE: GateFunction NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: InputAsBus NUMERIC "0"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: WidthInput NUMERIC "4"
-- Retrieval info: PRIVATE: nInput NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_OR"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
-- Retrieval info: USED_PORT: data0x 0 0 4 0 INPUT NODEFVAL data0x[3..0]
-- Retrieval info: USED_PORT: result 0 0 4 0 OUTPUT NODEFVAL result[3..0]
-- Retrieval info: CONNECT: @data 1 0 4 0 data0x 0 0 4 0
-- Retrieval info: CONNECT: result 0 0 4 0 @result 0 0 4 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL or.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL or.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL or.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL or.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL or_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
