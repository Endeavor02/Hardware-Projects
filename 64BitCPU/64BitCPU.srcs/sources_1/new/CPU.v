`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 03:29:50 PM
// Design Name: 
// Module Name: CPU
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
// 1. High as possible level of abstraction design methodology. This means design using high-level programming.
// 2. Support LDUR, STUR, ADD, SUB, AND, ORR, CBZ, B
// 3. Assuming 64 bits as the ALU is 64 bits.
//////////////////////////////////////////////////////////////////////////////////


module CPU(CLK);
input wire CLK;
reg [63:0] instruction;
reg [63:0] ReadData1, ReadData2, ALUSrcOut;
wire[63:0] ALUresult;
reg [3:0] ALUOp;
wire zero;
ALU alu(.a(ReadData1),.b(ALUSrcOut),.ALUOp(ALUOp),.ALUresult(ALUresult),.zero(zero),.CLK(CLK));
always @(posedge CLK) begin





end
endmodule
