`timescale 1ns / 1ps

//Basic Full-Adder using Logic Gates.

module FullAdder(x,y,z,c,cin);
input wire x,y,cin;
output wire z,c;
wire w1, w2, w3;

xor(w1,x,y);
xor(z,w1,cin);
and(w2,cin,w1);
and(w3,x,y);
or(c,w2,w3);

endmodule
