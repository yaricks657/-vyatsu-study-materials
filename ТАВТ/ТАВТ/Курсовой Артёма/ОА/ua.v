module UA
(
clk, p, clkout, y, Z
);
input clk;

input [9:0] p;

output clkout;

output Z;

output [11:0] y;


integer pc=1; 

reg [11:0] y;

wire clkout; 

reg Z=0; 

assign clkout=!clk; 

always @(posedge clk)

begin
case (pc)
1: begin
	if (p[9]==1)
		begin
			y=11'b000000000011;
			pc= pc + 1;
		end;
end
2: begin
	y=11'b000000001100;
	pc= pc + 1;
end
3: begin
	y=11'b000000000010;
	pc=4;
end
4: begin
	if (p[0]==0) 
		begin 
			y=11'b010000000000; 
			pc=1000; 
		end 
	else 
	begin
		if (p[7]==0) 
			begin 
				y=11'b000100000001; 
				pc=13;  
			end 
		else 
			begin
				y=11'b000000101000;
				pc=pc+1;
			end;
		end;
end
5:begin
	if (p[2]==0)
		begin
			if(p[3]==0)
				begin
					if(p[6]==0)
						begin
							if (p[1]==1) 
								begin 
									y=11'b000000100100;  
								end 
							else 
								begin 
									y=11'b000000000100; 
								end;
						pc=pc+1;
						end
					else
						begin
							if (p[8]==0) 
								begin 
									y=11'b000000010000;
									pc=8; 
								end 
							else
								begin
									if (p[4]==1) 
										begin 
										y=11'b000100000001; 
										end;
									pc=13;
								end;
						end;
				end
			else
				begin
				y=11'b000100000001; 
				pc=13; 
				end;
		end
	else
		begin
			y=11'b001000000000; 
			pc=1000;
		end;
end
6: begin
 y=11'b000001000000;
pc=5;
end
8:begin
if (p[2]==1) 
	begin 
		y=11'b001000000000;
		pc=100; 
	end
else
	begin
	pc=13;
	end;
end
13: begin
Z=1; pc=100; 
end
default y=13'b000000000000;
endcase;
end
endmodule