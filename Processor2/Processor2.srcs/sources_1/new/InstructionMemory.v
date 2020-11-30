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
reg[31:0] InstructionMemory[127:0];
initial begin
InstructionMemory[0] = 32'b00000000001000000000000000000001;
InstructionMemory[1] = 32'b00000000010000000000110000100001;
InstructionMemory[2] = 32'b00000000010000000000000001000001;
InstructionMemory[3] = 'h0000;
InstructionMemory[4] = 'h0000;
InstructionMemory[5] = 'h0000;
InstructionMemory[6] = 'h0000;
end


assign Instruction = InstructionMemory[ReadAddress];
endmodule