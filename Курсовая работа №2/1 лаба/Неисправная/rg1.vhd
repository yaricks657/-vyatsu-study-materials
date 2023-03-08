-- megafunction wizard: %LPM_FF%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_ff 

-- ============================================================
-- File Name: rg1.vhd
-- Megafunction Name(s):
-- 			lpm_ff
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.0 Build 132 02/25/2009 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
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
USE lpm.all;

ENTITY rg1 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		enable		: IN STD_LOGIC ;
		sclr		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
END rg1;


ARCHITECTURE SYN OF rg1 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (9 DOWNTO 0);



	COMPONENT lpm_ff
	GENERIC (
		lpm_fftype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			enable	: IN STD_LOGIC ;
			sclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(9 DOWNTO 0);

	lpm_ff_component : lpm_ff
	GENERIC MAP (
		lpm_fftype => "DFF",
		lpm_type => "LPM_FF",
		lpm_width => 10
	)
	PORT MAP (
		enable => enable,
		sclr => sclr,
		clock => clock,
		data => data,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "0"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "0"
-- Retrieval info: PRIVATE: ASET NUMERIC "0"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
-- Retrieval info: PRIVATE: DFF NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: SCLR NUMERIC "1"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "0"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: UseTFFdataPort NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "10"
-- Retrieval info: CONSTANT: LPM_FFTYPE STRING "DFF"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_FF"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "10"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0]
-- Retrieval info: USED_PORT: enable 0 0 0 0 INPUT NODEFVAL enable
-- Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL q[9..0]
-- Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL sclr
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 10 0 @q 0 0 10 0
-- Retrieval info: CONNECT: @enable 0 0 0 0 enable 0 0 0 0
-- Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 10 0 data 0 0 10 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL rg1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rg1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rg1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rg1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL rg1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
