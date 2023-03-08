-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_counter 

-- ============================================================
-- File Name: ct4.vhd
-- Megafunction Name(s):
-- 			lpm_counter
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

ENTITY ct4 IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		sclr		: IN STD_LOGIC ;
		sload		: IN STD_LOGIC ;
		updown		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END ct4;


ARCHITECTURE SYN OF ct4 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			sload	: IN STD_LOGIC ;
			sclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			updown	: IN STD_LOGIC ;
			cnt_en	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(3 DOWNTO 0);

	lpm_counter_component : lpm_counter
	GENERIC MAP (
		lpm_direction => "UNUSED",
		lpm_port_updown => "PORT_USED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 4
	)
	PORT MAP (
		sload => sload,
		sclr => sclr,
		clock => clock,
		data => data,
		updown => updown,
		cnt_en => cnt_en,
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
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: Direction NUMERIC "2"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "1"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "1"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_USED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL cnt_en
-- Retrieval info: USED_PORT: data 0 0 4 0 INPUT NODEFVAL data[3..0]
-- Retrieval info: USED_PORT: q 0 0 4 0 OUTPUT NODEFVAL q[3..0]
-- Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL sclr
-- Retrieval info: USED_PORT: sload 0 0 0 0 INPUT NODEFVAL sload
-- Retrieval info: USED_PORT: updown 0 0 0 0 INPUT NODEFVAL updown
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 4 0 @q 0 0 4 0
-- Retrieval info: CONNECT: @updown 0 0 0 0 updown 0 0 0 0
-- Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
-- Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
-- Retrieval info: CONNECT: @sload 0 0 0 0 sload 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 4 0 data 0 0 4 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL ct4_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: lpm
