// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"
// CREATED		"Sat May 08 18:03:58 2021"

module uacourseproject(
	clk,
	reset,
	xpin,
	apin,
	ctpin,
	outpin,
	ypin
);


input	clk;
input	reset;
input	[8:0] xpin;
output	[8:0] apin;
output	[6:0] ctpin;
output	[3:0] outpin;
output	[11:0] ypin;

wire	[8:0] a;
wire	b;
wire	c;
wire	[7:0] ct;
wire	d;
wire	e;
wire	f;
wire	g;
wire	h;
wire	j;
wire	k;
wire	l;
wire	LL;
wire	m;
wire	No0;
wire	No1;
wire	No2;
wire	No3;
wire	No4;
wire	No5;
wire	No6;
wire	No7;
wire	No8;
wire	O;
wire	[3:0] out;
wire	q0;
wire	q1;
wire	q2;
wire	q3;
wire	q4;
wire	q5;
wire	q8;
wire	q9;
wire	r;
wire	res;
wire	[9:0] x;
wire	[11:0] yy;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

wire	[11:0] GDFX_TEMP_SIGNAL_1;
wire	GDFX_TEMP_SIGNAL_0;
wire	[3:0] GDFX_TEMP_SIGNAL_2;


assign	GDFX_TEMP_SIGNAL_1 = {l,g,q9,q8,f,a[4],q5,q4,q3,q2,q1,q0};
assign	GDFX_TEMP_SIGNAL_0 = {g,e,j,f};
assign	GDFX_TEMP_SIGNAL_2 = {LL,O,O,O};

assign	q2 = a[1] | k | c;


ilireset	b2v_inst1(
	.data(GDFX_TEMP_SIGNAL_0),
	.result(ct[0]));



assign	b = a[0] & x[0];

assign	e = a[8] & x[3];

assign	j = a[6] & x[3];

assign	r = a[2] & x[0];

assign	c = a[8] & No3 & No4;

assign	h = a[8] & No3 & x[4];

assign	f = a[7] & x[9];

assign	g = a[3] & No1;

assign	k = a[5] & No6;

assign	m = a[3] & x[1] & No2;

assign	l = a[3] & x[1] & x[2];

assign	d = a[5] & x[6] & x[7] & x[8];


assign	SYNTHESIZED_WIRE_0 = a[5] & x[6] & x[7];

assign	SYNTHESIZED_WIRE_1 = a[6] & No3;

assign	ct[1] = SYNTHESIZED_WIRE_0 | m | h | SYNTHESIZED_WIRE_1;

assign	q0 = b | d | h | m;

assign	No1 =  ~x[1];

assign	q1 = r | b;


reg	b2v_inst31(
	.clock(clk),
	.data(GDFX_TEMP_SIGNAL_1),
	.q(yy));

assign	q3 = l | a[1];

assign	q4 = a[5] & x[6] & No7;


assign	SYNTHESIZED_WIRE_2 = a[5] & No6 & x[5];

assign	q5 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_3 = a[8] & No3 & No4 & x[5];

assign	q8 = d | h | m;

assign	ct[5:2] = GDFX_TEMP_SIGNAL_2;


assign	No2 =  ~x[2];

assign	q9 = e | j;

assign	SYNTHESIZED_WIRE_4 = a[5] & x[6] & No7;

assign	ct[6] = SYNTHESIZED_WIRE_4 | c | a[4] | l | a[1] | r | b | b;

assign	ct[7] = k | ct[6];

assign	No3 =  ~x[3];

assign	No4 =  ~x[4];


assign	No6 =  ~x[6];

assign	No7 =  ~x[7];


dc4	b2v_UAinst(
	.data(out),
	.eq0(a[0]),
	.eq1(a[1]),
	.eq2(a[2]),
	.eq3(a[3]),
	.eq4(a[8]),
	.eq5(a[4]),
	.eq6(a[5]),
	.eq7(a[6]),
	.eq8(a[7])
	
	
	
	
	
	
	);


ct4pm	b2v_UAinst2(
	.sclr(ct[0]),
	.sload(ct[1]),
	.updown(ct[6]),
	.clock(clk),
	.cnt_en(ct[7]),
	.aclr(res),
	.data(ct[5:2]),
	.q(out));

assign	apin = a;
assign	res = reset;
assign	ctpin[6:0] = ct[6:0];
assign	outpin = out;
assign	ypin = yy;
assign	LL = 1;
assign	O = 0;
assign	x[8:0] = xpin;

endmodule
