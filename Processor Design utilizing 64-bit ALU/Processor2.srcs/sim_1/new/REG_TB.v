`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:09:26 PM
// Design Name: 
// Module Name: REG_TB
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

//
//  Verified Registers.v
//

module REG_TB;
reg RegWriteControl;
reg [4:0]RegIn1,RegIn2,RegWriteNum;
wire [31:0]RegReadData1,RegReadData2;
reg [31:0]RegWriteData;
reg CLK;
Registers rgstr(RegWriteControl, RegWriteData, RegIn1, RegIn2, RegWriteNum, RegReadData1, RegReadData2, CLK);
initial begin
//First, test the register reads which are Asynchronous and not clock dependant.
RegIn1 = 5'b00000; //r0
RegIn2 = 5'b00001; //r1
#1;
RegIn1 = 5'b00011; //r3
RegIn2 = 5'b00101; //r5
#1;
RegIn1 = 5'b00111; //r7
RegIn2 = 5'b01000; //r8

//Second, test the register writes which are Synchronous.
CLK = 0;
RegIn1 = 5'b10000;
RegIn2 = 5'b01111;
#1;
RegWriteControl = 1'b1;
RegWriteData = 'heeee;
RegWriteNum = 5'b10000;
CLK = 1;
#1;
CLK = 0;
#1;
RegWriteData = 'h334f;
RegWriteNum = 5'b01111;
CLK = 1;
#1
CLK = 0;
end
endmodule
