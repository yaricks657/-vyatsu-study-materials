// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mux 

// ============================================================
// File Name: Mult2.v
// Megafunction Name(s):
// 			lpm_mux
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 350 03/24/2010 SP 2 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2010 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Mult2 (
	data0x,
	data1x,
	data2x,
	data3x,
	sel,
	result);

	input	[16:0]  data0x;
	input	[16:0]  data1x;
	input	[16:0]  data2x;
	input	[16:0]  data3x;
	input	[1:0]  sel;
	output	[16:0]  result;

	wire [16:0] sub_wire0;
	wire [16:0] sub_wire5 = data3x[16:0];
	wire [16:0] sub_wire4 = data1x[16:0];
	wire [16:0] sub_wire3 = data0x[16:0];
	wire [16:0] result = sub_wire0[16:0];
	wire [16:0] sub_wire1 = data2x[16:0];
	wire [67:0] sub_wire2 = {sub_wire5, sub_wire1, sub_wire4, sub_wire3};

	lpm_mux	lpm_mux_component (
				.sel (sel),
				.data (sub_wire2),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		lpm_mux_component.lpm_size = 4,
		lpm_mux_component.lpm_type = "LPM_MUX",
		lpm_mux_component.lpm_width = 17,
		lpm_mux_component.lpm_widths = 2;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "4"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "17"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
// Retrieval info: USED_PORT: data0x 0 0 17 0 INPUT NODEFVAL data0x[16..0]
// Retrieval info: USED_PORT: data1x 0 0 17 0 INPUT NODEFVAL data1x[16..0]
// Retrieval info: USED_PORT: data2x 0 0 17 0 INPUT NODEFVAL data2x[16..0]
// Retrieval info: USED_PORT: data3x 0 0 17 0 INPUT NODEFVAL data3x[16..0]
// Retrieval info: USED_PORT: result 0 0 17 0 OUTPUT NODEFVAL result[16..0]
// Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL sel[1..0]
// Retrieval info: CONNECT: result 0 0 17 0 @result 0 0 17 0
// Retrieval info: CONNECT: @data 0 0 17 51 data3x 0 0 17 0
// Retrieval info: CONNECT: @data 0 0 17 34 data2x 0 0 17 0
// Retrieval info: CONNECT: @data 0 0 17 17 data1x 0 0 17 0
// Retrieval info: CONNECT: @data 0 0 17 0 data0x 0 0 17 0
// Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mult2_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
