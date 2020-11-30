`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 05:50:01 PM
// Design Name: 
// Module Name: Registers
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

//*********************************************************************************
//  This File has been verified to work as intended via IM_TB.v
//  Input: a 64-bit address to read from instruction memory defined in this file
//  Output: The value of the instruction memory at that addresse.
//  As of 11/27/2020 by Jeffrey Blanda
//*********************************************************************************


module InstructionMemory(
input wire [31:0]ReadAddress,
output wire [31:0]Instruction
);
reg[31:0] InstructionMemory[63:0];
initial begin
InstructionMemory[0] = 32'b00000000001000000000000100000000;
InstructionMemory[4] = 32'b10001011000000000000000000000001;
InstructionMemory[8] = 32'b10001010000000000000000000100010;
InstructionMemory[12] = 32'b11001011000000100000000000000011;
InstructionMemory[16] = 32'b00000000100000000000000000000001;
InstructionMemory[20] = 32'b00000000011000000000000000001000;
InstructionMemory[52] = 32'b10101010000000010000000001100100;
InstructionMemory[56] = 32'b00000000010000000000000000101000;
end
assign Instruction = InstructionMemory[ReadAddress[6:0]];
endmodule