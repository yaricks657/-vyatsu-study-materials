-- megafunction wizard: %LPM_OR%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_or 

-- ============================================================
-- File Name: ili9.vhd
-- Megafunction Name(s):
-- 			lpm_or
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2010 Altera Corporation
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

ENTITY ili9 IS
	PORT
	(
		data		: IN STD_LOGIC_2D (9 DOWNTO 0, 0 DOWNTO 0);
		result		: OUT STD_LOGIC 
	);
END ili9;


ARCHITECTURE SYN OF ili9 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;

BEGIN
	sub_wire1    <= sub_wire0(0);
	result    <= sub_wire1;

	lpm_or_component : lpm_or
	GENERIC MAP (
		lpm_size => 10,
		lpm_type => "LPM_OR",
		lpm_width => 1
	)
	PORT MAP (
		data => data,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: CompactSymbol NUMERIC "0"
-- Retrieval info: PRIVATE: GateFunction NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: InputAsBus NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: WidthInput NUMERIC "1"
-- Retrieval info: PRIVATE: nInput NUMERIC "10"
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "10"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_OR"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: USED_PORT: data 10 0 1 0 INPUT NODEFVAL data[9..0][0..0]
-- Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL result
-- Retrieval info: CONNECT: @data 10 0 1 0 data 10 0 1 0
-- Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL ili9.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ili9.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ili9.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ili9.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ili9_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
