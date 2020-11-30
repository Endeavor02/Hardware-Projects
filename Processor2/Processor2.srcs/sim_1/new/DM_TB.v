`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:09:26 PM
// Design Name: 
// Module Name: DM_TB
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


module DM_TB;
reg[31:0] Address;
reg[31:0] WriteData;
reg MemWrite;
reg MemRead;
wire[31:0] DataRead;
reg CLK;

DataMemory mem(Address, WriteData, MemWrite,MemRead, DataRead, CLK);

initial begin
//Concurrently determine if both functions work properly:
Address = 'h0000;
WriteData = 'hffff;
CLK = 0;
MemWrite = 0;
MemRead = 0;
#1;
CLK = 1; //Should output all X's as we're not reading and we're not writing.
#1;
CLK = 0;
MemRead = 1;
#1;
CLK = 1; //Should still output all X's as the memory has no value.
#1;
CLK = 0;
MemRead = 0;
MemWrite = 1;
#1;
CLK = 1; //Still all X's as we're writing but not reading.
#1;
CLK = 0;
MemRead = 1;
MemWrite = 0;
#1;
CLK = 1; //Should now output the value we wrote previously.
#1;
CLK = 0;
Address = 'h0001;
MemRead = 1;
MemWrite = 1;
WriteData = 'haaaa;
#1;
CLK = 1; //Should write (and read?[No, since it reads and writes at the same time it will write the data but cannot read until the next clock.]) the value from WriteData to memory location 1
#1;
CLK = 0;
#1;
CLK = 1; //Now it will properly read what we did in the last cycle.
#1;
CLK = 0;
end

endmodule
