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
//  This File has been verified to work as intended via REG_TB.v
//
//  Function 1:
//  Input: Two registers to read from (RegIn1 and RegIn2)
//  Output: The value of the registers specified (RegReadData1 and RegReadData2 respectively)
//  Indepenant of clock (CLK)
//
//  Function 2:
//  Input: A Write Control Flag (RegWriteControl), a register number to write to (RegWriteNum),
//  data to write to the specified register (RegWriteData), and a clock signal (CLK)
//  Output: None. The register will be written to, this can be verified by using the first function.
//
//  As of 11/27/2020 by Jeffrey Blanda
//*********************************************************************************


module Registers(
RegWriteControl,
RegWriteData,
RegIn1,
RegIn2,
RegWriteNum,
RegReadData1,
RegReadData2,
CLK);
input wire RegWriteControl;
input wire [4:0]RegIn1,RegIn2,RegWriteNum;
output wire [63:0]RegReadData1,RegReadData2;
input wire [63:0]RegWriteData;
input wire CLK;
reg[63:0] registers[31:0];
initial begin
registers[0] = 'h00000000;
registers[1] = 'hffffffff;
registers[2] = 'h00000002;
registers[3] = 'h00000003;
registers[4] = 'h00000004;
registers[5] = 'h0000e00f;
registers[6] = 'h00000000;
registers[7] = 'hffffffff;
registers[8] = 'h11111111;
registers[9] = 'h00000000;
registers[10] = 'h00000000;
registers[11] = 'h00000000;
registers[12] = 'h00000000;
registers[13] = 'h00000000;
registers[14] = 'h00000000;
registers[15] = 'h00000000;
//etc...
end
//Read Register Section (Async)
assign RegReadData1 = registers[RegIn1];
assign RegReadData2 = registers[RegIn2];
    
always @(posedge CLK) begin
//Write Register Section (Sync)
    if(RegWriteControl == 1'b1)
        registers[RegWriteNum] <= RegWriteData;
end
endmodule

