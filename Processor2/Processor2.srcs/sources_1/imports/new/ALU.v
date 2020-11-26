`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 02:10:32 PM
// Design Name: 
// Module Name: ALU
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


module ALU(a, b, ALUControl, ALUresult, zero, CLK);
output reg [63:0]ALUresult;     //Result
output reg zero;                //Output is high if the result is 0
input wire [3:0]ALUControl;          //Operation code (ALU Control)
input wire [63:0]a, b;  //where input b is controlled by the MUX just outside the ALU
input wire CLK;

//Since the project requires a "high as possible level of abstraction design methodology"
//This code will be as simple and high level as possible.
initial begin
zero <= 1'b0;
ALUresult <= 64'b0;
end

always @ (posedge CLK) begin
//perform function based on Operation Code
case(ALUControl)
    4'b0000: begin //AND Operation
    ALUresult = a & b;
    zero = ~((a & b) > 0);
    end
    4'b0001: begin //OR Operation
    ALUresult = a | b;
    zero = ~((a | b) > 0);
    end
    4'b0010: begin //ADD Operation
    ALUresult = a + b;
    zero = ~((a + b) > 0);
    end
    4'b0110: begin //Subtract Operation
    ALUresult = a - b;
    zero = ~((a - b) > 0);
    end
    4'b0111: begin //Pass input b Operation
    ALUresult = b;
    zero = ~(b > 0);
    end
    4'b1100: begin //NOR Operation
    ALUresult = ~(a | b);
    zero = ~(~(a | b) > 0);
    end
endcase




end

endmodule
