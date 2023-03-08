// WARNING: Do NOT edit the input and output ports in this file in a text
// editor if you plan to continue editing the block that represents it in
// the Block Editor! File corruption is VERY likely to occur.

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


// Generated by Quartus II Version 9.1 (Build Build 350 03/24/2010)
// Created on Tue Apr 18 15:19:54 2017

//  Module Declaration
module block_name
(
	// {{ALTERA_ARGS_BEGIN}} DO NOT REMOVE THIS LINE!
	clk, clkout, Z, y, p
	// {{ALTERA_ARGS_END}} DO NOT REMOVE THIS LINE!
);
// Port Declaration

	// {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	input clk;
	input [5:0] p;
	output clkout;
	output Z;
	output [8:0] y;
	// {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
integer pc=1;//������� ������
reg [8:0] y;
wire clkout;
reg Z=0;
assign clkout=!clk;
always @(posedge clk)

begin
y=9'b000000000;

case(pc)
1:begin
	y[1]=1; y[3]=1; y[0]=1;
	pc=pc+1;
end

2:begin
if (p[0]==1)
	begin
		y[0]=1;
		Z=1;
		pc=50;
	end
	else
	begin
		y[5]=1;
		pc=pc+1;
	end
end
3:begin
	y[1]=1;
	pc=pc+1;
end

4:begin
if (p[0]==1)
	begin
		y[0]=1;
		Z=1;
		pc=50;
	end
	else
	begin
		y[5]=1;
		pc=pc+1;
	end
end

5:begin
if (!p[4]&!p[3])
	begin
		y[4]=1;
		pc=pc+1;
	end
	else if (!p[4]&p[3])
	begin
		y[0]=1;
		Z=1;
		pc=50;
	end
	else if (p[4]==1)
	begin
		y[8]=1;
		pc=50;
	end
end

6:begin
y[2]=1;
pc=pc+1;
end

7:begin
if (p[1]==0)
	begin
		y[4]=1;
		pc=6;
	end
	else if (p[1]&p[2])
	begin
		y[6]=1;
		pc=pc+1;
	end
	else if (p[1]&!p[2])
	begin
		pc=pc+1;
	end
end

8:begin
if (p[5]==1)
	begin
		y[8]=1;
		pc=50;
	end
	else if (!p[5]&p[3])
	begin	
		y[0]=1;
		Z=1;
		pc=50;
	end
	else if (!p[5]&!p[3])
	begin
		Z=1;
		y[7]=1;
		pc=50;
	end
end
endcase;
end
endmodule
