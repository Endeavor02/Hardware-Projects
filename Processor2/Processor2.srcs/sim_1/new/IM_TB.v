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
reg [63:0]ReadAddress;
wire [63:0]Instruction;
InstructionMemory IM(ReadAddress, Instruction);
initial begin
#1
ReadAddress = 'h00000000;
#1
ReadAddress = 'h00000001;
#1
ReadAddress = 'h00000002;
#1
ReadAddress = 'h00000003;
#1
ReadAddress = 'h00000004;
#1
ReadAddress = 'h00000005;
#1
ReadAddress = 'h00000006;
#1
ReadAddress = 'h00000007;

end
endmodule
