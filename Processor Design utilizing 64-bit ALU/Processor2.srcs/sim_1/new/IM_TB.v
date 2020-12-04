`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:09:26 PM
// Design Name: 
// Module Name: IM_TB
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
// Testbench to test the Instruction Memory portion of the project
//////////////////////////////////////////////////////////////////////////////////

//
//  Verified InstructionMemory.v
//




module IM_TB;
reg [31:0]ReadAddress;
wire [31:0]Instruction;
InstructionMemory IM(ReadAddress, Instruction);
initial begin
#1
ReadAddress = 'h0000;
#1
ReadAddress = 'h0001;
#1
ReadAddress = 'h0002;
#1
ReadAddress = 'h0003;
#1
ReadAddress = 'h0004;
#1
ReadAddress = 'h0005;
#1
ReadAddress = 'h0006;
#1
ReadAddress = 'h0007;

end
endmodule
