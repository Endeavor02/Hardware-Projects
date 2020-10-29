`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 02:10:32 PM
// Design Name: 
// Module Name: ALU
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


module ALU(a, b, ALUOp,ALUresult,zero);
output reg [63:0]ALUresult;     //Result
output reg zero;                //Output is high if the result is 0
input wire [3:0]ALUOp;          //Operation code (ALU Control)
input wire [63:0]a, b;  //where input b is controlled by the MUX just outside the ALU



endmodule
