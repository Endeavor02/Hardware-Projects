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
CPU processor(CLK);

integer i;

initial begin
CLK = 0;
#1;
    for (i = 0; i< 8; i = i + 1) begin
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
        CLK = 1;
        #1;
        CLK = 0;
        #1;
    end
end





endmodule
