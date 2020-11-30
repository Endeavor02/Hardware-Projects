`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:09:26 PM
// Design Name: 
// Module Name: CPU_TB
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


module CPU_TB;
reg CLK;
wire zero;
wire[4:0] RegIn2;
wire[7:0] State;
wire[31:0] PC, RegReadData1, RegReadData2, RegWriteData, ALUin2, ALUResult, DMWriteData, DMDataRead;
CPU processor(CLK, PC, State, RegReadData1, RegReadData2, RegIn2, RegWriteData, ALUin2, ALUResult, zero, DMWriteData, DMDataRead);

integer i;

initial begin
CLK = 0;
#1;
    for (i = 0; i< 3; i = i + 1) begin
        $display("Instruction#%0d",i);
        CLK = 1;
        #1;
        CLK = 0;
        #1;
        CLK = 1;
        #1;
        CLK = 0;
        #1;
        CLK = 1;
        #1;
        CLK = 0;
        #1;
        CLK = 1;
        #1;
        CLK = 0;
        #1;
        CLK = 1;
        #1;
        CLK = 0;
        #1;
    end
end





endmodule
