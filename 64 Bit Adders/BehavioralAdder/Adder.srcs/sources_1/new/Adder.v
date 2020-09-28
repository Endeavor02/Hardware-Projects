`timescale 1ns / 1ps


module Adder(x,y,s);
input [63:0]x;
input [63:0]y;
output s;
reg [63:0]s;
always @(*) begin

#1;
s = x^y;
end
endmodule
