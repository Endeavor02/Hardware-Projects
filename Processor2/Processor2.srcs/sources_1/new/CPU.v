`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 05:49:18 PM
// Design Name: 
// Module Name: CPU
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


module CPU(
input wire CLK
    );
reg[7:0] State;
reg[63:0] PC;
reg Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp1,ALUOp0;
reg[3:0] ALUControl;
reg[10:0] OpCode;
parameter IM_State='h0, R_State='h1, ALU_State='h2, DM_State='h3;
//Add Instruction Memory:
wire [63:0]Instruction;
InstructionMemory IM(
.ReadAddress(PC),
 .Instruction(Instruction));

// ReadAddress will always be the Program Counter (PC)
// Instruction will be the instruction output.



//Add Registers file:
reg RegWriteControl;
reg[63:0] RegWriteData;
reg[4:0] RegIn2;
wire[63:0] RegReadData1,RegReadData2;
Registers register(
.RegWriteControl(RegWriteControl),
.RegWriteData(RegWriteData),
.RegIn1(Instruction[9:5]),
.RegIn2(RegIn2),
.RegWriteNum(Instruction[4:0]),
.RegReadData1(RegReadData1),
.RegReadData2(RegReadData2),
.CLK(CLK));

// RegWriteControl - Writes the value of RegWriteData to RegWriteNum when high and during a clock pulse.
// RegIn(1/2) - Registers to read



//Add ALU:
reg[63:0] ALUin2;
wire[63:0] ALUResult;
wire zero;
ALU ALU(
.a(RegReadData1), 
.b(ALUin2), 
.ALUControl(ALUControl), 
.ALUresult(ALUResult), 
.zero(zero), 
.CLK(CLK));

// ALUin (1/2) are the inputs to the ALU.
// ALUResult is the output of the ALU
// zero is high if ALUResult is 0
// ALUControl controls the operation, determined by ALUOP 1 and 2


//Add Data Memory:
reg[63:0] DMWriteData;
reg MemWrite, MemRead;
wire[63:0] DMDataRead;
DataMemory DM(.Address(ALURsult),.WriteData(RegReadData2),.MemWrite(MemWrite),.MemRead(MemRead),.DataRead(DMDataRead), .CLK(CLK));

// Address will be the address input to read or write data to/from
// WriteData will be the data to write if the MemWrite flag is high
// DMDataRead will be the data to read if the MemRead flag is high

initial begin
State = IM_State;
PC = 'h00000000;
end
always @(posedge CLK) begin
case(State)
    IM_State: begin
    //We've retrieved the Instruction as of this clock cycle. Setting Flags...
    Reg2Loc <= Instruction[63];
    ALUSrc <= Instruction[62];
    MemtoReg <= Instruction[61];
    RegWrite <= Instruction[60];
    MemRead <= Instruction[59];
    MemWrite <= Instruction[58];
    Branch <= Instruction[57];
    ALUOp1 <= Instruction[56];
    ALUOp0 <= Instruction[55];
    OpCode <= Instruction[54:44];
    State = R_State;
        case(Instruction[63])
        1'b0: RegIn2 <= Instruction[20:16];
        1'b1: RegIn2 <= Instruction[4:0];
        endcase
    end
    R_State: begin
    //Set ALU Control Signal...
        case(ALUOp1)
            1'b0: begin
                case(ALUOp0)
                    1'b0: begin
                    ALUControl <= 4'b0010;
                    end
                    1'b1: begin
                    ALUControl <= 4'b0111;
                    end
                endcase
            end
            1'b1: begin
                case(ALUOp0)
                    1'b0: begin
                        case(OpCode)
                            11'b10001011000: begin //Opcode for ADD
                            ALUControl <= 4'b0010;
                            end
                            11'b11001011000: begin //Opcode for SUB
                            ALUControl <= 4'b0110;
                            end
                            11'b10001010000: begin //Opcode for AND
                            ALUControl <= 4'b0000;
                            end
                            11'b10101010000: begin //Opcode for ORR
                            ALUControl <= 4'b0001;
                            end
                        endcase
                    end
                    1'b1: begin
                    end
                endcase
            end
        endcase
    State <= ALU_State;
    end
    ALU_State: begin
    State <= DM_State;
    end
    DM_State: begin
    State <= IM_State;
    end
endcase



end
endmodule
