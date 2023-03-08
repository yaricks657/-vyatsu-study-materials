// Copyright (C) 1991-2009 Altera Corporation
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
// VERSION		"Version 9.0 Build 132 02/25/2009 SJ Full Version"
// CREATED ON	"Tue May 18 19:28:51 2021"

module \2laba (
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
input	[10:0] xpin;
output	[8:0] apin;
output	[7:0] ctpin;
output	[3:0] outpin;
output	[14:0] ypin;

wire	[8:0] a;
wire	[7:0] ct;
wire	dec;
wire	e;
wire	ee;
wire	ewr;
wire	f;
wire	ff;
wire	g;
wire	gnd;
wire	h;
wire	hh;
wire	i;
wire	ii;
wire	inc;
wire	j;
wire	k;
wire	l;
wire	m;
wire	n;
wire	[10:0] nx;
wire	o;
wire	[3:0] out;
wire	p;
wire	q;
wire	r;
wire	res;
wire	s;
wire	t;
wire	u;
wire	v;
wire	w;
wire	[10:0] x;
wire	xxx;
wire	[14:0] y;
wire	[14:0] yy;
wire	yyy;
wire	z;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





assign	ct[4] = gnd;


assign	ct[5] = SYNTHESIZED_WIRE_0;


assign	ct[6] = inc;


assign	ct[7] = ewr;



dc4	b2v_inst14(
	.data(out),
	.eq0(a[8]),
	.eq1(a[0]),
	.eq2(a[1]),
	.eq3(a[2]),
	.eq4(a[3]),
	.eq5(a[4]),
	.eq6(a[5]),
	.eq7(a[6]),
	.eq8(a[7]));


CT4pm	b2v_inst15(
	.sclr(ct[0]),
	.sload(ct[7]),
	.updown(ct[6]),
	.clock(clk),
	.cnt_en(ct[5]),
	.aclr(reset),
	.data(ct[4:1]),
	.q(out));

assign	q = a[7] & nx[4] & x[9];

assign	p = a[6] & nx[7] & nx[6];

assign	nx =  ~x;

assign	o = a[6] & nx[7] & x[6];

assign	n = a[6] & x[7] & x[8];

assign	m = a[4] & nx[4] & nx[5] & nx[6];

assign	l = a[4] & nx[4] & nx[5] & x[6];

assign	k = a[3] & nx[2] & x[3];

assign	j = a[3] & nx[2] & nx[3] & nx[1];

assign	i = a[3] & nx[2] & nx[3] & x[1];

assign	h = a[2] & x[0];

assign	g = a[1] & nx[1];

assign	f = a[1] & x[1];


reg	b2v_inst4(
	.clock(clk),
	.data(y),
	.q(yy));

assign	e = a[0] & x[0];

assign	r = a[8] & x[10];

assign	s = p | o;

assign	t = m | l;

assign	u = t | s;

assign	v = a[6] & x[7] & nx[8] & x[9];

assign	w = v | q | k;

assign	xxx = a[4] & x[4];

assign	yyy = a[7] & x[4];

assign	z = yyy | xxx;

assign	ee = g | f;

assign	ff = a[3] & x[2];

assign	hh = j | i;

assign	ii = h | e;

assign	y[0] = e;


assign	y[1] = ii;


assign	SYNTHESIZED_WIRE_1 = a[4] & nx[4] & x[5];

assign	y[2] = w | e | SYNTHESIZED_WIRE_1;

assign	y[3] = j | f;

assign	y[4] = hh | ee;

assign	ct[0] = res;


assign	y[5] = ee;


assign	y[6] = u | ee;

assign	y[7] = z;


assign	y[8] = ff;


assign	y[9] = o | l;

assign	y[10] = u;


assign	y[11] = n;


assign	y[12] = r;


assign	y[13] = w;


assign	y[14] = a[5];


assign	ct[1] = ewr;


assign	inc = ii | hh | ee | t | a[5] | n;

assign	SYNTHESIZED_WIRE_0 = dec | inc;

assign	dec = s;


assign	SYNTHESIZED_WIRE_2 = a[7] & nx[4] & x[5];

assign	res = w | s | SYNTHESIZED_WIRE_2;

assign	ewr = z | r | ff;

assign	ct[2] = gnd;


assign	ct[3] = gnd;


assign	apin = a;
assign	x = xpin;
assign	ctpin = ct;
assign	outpin = out;
assign	ypin = yy;
assign	gnd = 0;

endmodule
