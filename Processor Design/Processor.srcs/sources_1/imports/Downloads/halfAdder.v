`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 02:17:52 PM
// Design Name: 
// Module Name: halfAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfAdder(A,B,Cout,S);
input A,B;
output Cout,S;
wire S, Cout;
xor #1 xor1(S, A, B);
and #1 and1(Cout, A, B);
 
endmodule

