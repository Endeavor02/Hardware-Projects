`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 02:47:43 PM
// Design Name: 
// Module Name: TB
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


module TB;
reg CLK;
reg [3:0]ALUOp;
reg [63:0]a,b;
wire [63:0] ALUresult;
wire zero;
ALU Test(
.CLK(CLK),
.ALUOp(ALUOp),
.a(a),
.b(b),
.ALUresult(ALUresult),
.zero(zero)
);


initial begin
CLK <= 0;
a <= 64'b1010101010101010101010101010101010101010101011111111110000000000;
b <= 64'b1010101010101010101010101010101010101010101011111111110000000000;
ALUOp <= 4'b0110; //Subtract
#1
CLK <= 1;
#1
CLK <= 0;
ALUOp <= 4'b0010; //Add
#1
CLK <= 1;
#1
CLK<=0;
ALUOp <= 4'b0000; //AND
#1
CLK<=1;
#1
CLK<=0;
ALUOp <= 4'b0111; //Pass input B
#1
CLK <=  1;
#1
CLK <= 0;
ALUOp <= 4'b1100; // NOR
#1
CLK <= 1;
#1
CLK = 0;
ALUOp <= 4'b0001; //OR
#1
CLK <= 1;
#1
CLK<=0;

end
endmodule
