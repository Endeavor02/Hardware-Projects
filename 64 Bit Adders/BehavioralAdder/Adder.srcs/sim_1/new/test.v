`timescale 1ns / 1ps

module test;
reg [63:0]x;
reg [63:0]y;
wire [63:0]s;
Adder test(
.x(x),
.y(y),
.s(s)
);

initial begin
x = 64'b0000000000000000000000000000000000000000000000000000000000000000;
y = 64'b0000000000000000000000000000000000000000000000000000000000000000;
#200; //initialization time

x = 64'b1110101010101010101010101011010101010101010101011001010101010101;
y = 64'b1001010101011010010110101010100110101010101010101010101010101010;
#200;

x = 64'b0000000000101010101010101011010101010101010101011001010101010101;
y = 64'b1001010101011010010110101010100110101010101010101010101010101010;
#200;
x = 64'b1110101010101010101010101011010101010101010101011001010101010101;
y = 64'b1111010101011010010110101010100110101010101010101010101010101010;
#200;

x = 64'b1111101010101010101010101011010101010101010101011001010101010101;
y = 64'b0000000000000000000000101010100110101010101010101010101010101010;
#200;

end

endmodule