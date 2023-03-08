module   full_adder_4bit(
    c_in,
    c_out,
    a,
    b,
    sum
    );
    
    parameter   reg_size = 4;
    
    input   c_in;
    input   [reg_size-1:0] a;
    input   [reg_size-1:0] b;
    output  [reg_size-1:0] sum;
    output  c_out;
    
    assign   {c_out,sum} = a + b + c_in;
    
endmodule