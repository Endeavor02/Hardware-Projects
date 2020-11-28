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
input wire [63:0]ReadAddress,
output wire [63:0]Instruction
);
reg[63:0] InstructionMemory[63:0];
initial begin
InstructionMemory[0] = 'h00000000;
InstructionMemory[1] = 'h00000001;
InstructionMemory[2] = 'h00000002;
InstructionMemory[3] = 'h00000003;
InstructionMemory[4] = 'h00000004;
InstructionMemory[5] = 'h00000005;
InstructionMemory[6] = 'hF000B00A;
end


assign Instruction = InstructionMemory[ReadAddress];
endmodule