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


module CPU(CLK, PC, State, RegReadData1, RegReadData2, RegIn2, RegWriteData, ALUin2, ALUResult, zero, DMWriteData, DMDataRead);
input wire CLK;
output reg[7:0] State;
output reg[31:0] PC;
reg Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp1,ALUOp0;
reg[3:0] ALUControl;
reg[10:0] OpCode;
parameter InstructionFetch_State='h0, Register_State='h1, ALU_State='h2, DataAccess_State='h3, Register_State2='h4;
//Add Instruction Memory:
wire [31:0]Instruction;
InstructionMemory IM(
.ReadAddress(PC),
 .Instruction(Instruction));

// ReadAddress will always be the Program Counter (PC)
// Instruction will be the instruction output.



//Add Registers file:
output reg[31:0] RegWriteData;
output reg[4:0] RegIn2;
output wire[31:0] RegReadData1,RegReadData2;
Registers register(
.RegWriteControl(RegWrite),
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
output reg[63:0] ALUin2;
output wire[31:0] ALUResult;
output wire zero;
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
output reg[31:0] DMWriteData;
output wire[31:0] DMDataRead;
DataMemory DM(.Address(ALUResult),.WriteData(RegReadData2),.MemWrite(MemWrite),.MemRead(MemRead),.DataRead(DMDataRead), .CLK(CLK));

// Address will be the address input to read or write data to/from
// WriteData will be the data to write if the MemWrite flag is high
// DMDataRead will be the data to read if the MemRead flag is high

initial begin
State = InstructionFetch_State;
PC = 'h0000;
end
always @(posedge CLK) begin
case(State)
    InstructionFetch_State: begin
    //We've retrieved the Instruction as of this clock cycle. Setting Flags...
    Reg2Loc <= Instruction[31];
    ALUSrc <= Instruction[30];
    MemtoReg <= Instruction[29];
    RegWrite <= Instruction[28];
    MemRead <= Instruction[27];
    MemWrite <= Instruction[26];
    Branch <= Instruction[25];
    ALUOp1 <= Instruction[24];
    ALUOp0 <= Instruction[23];
    //Selecting OpCode part from the instruction
//    OpCode <= Instruction[54:44];
    //Setting the next state
    State <= Register_State;
        //Determine the input to Read Register 2 (2x1 MUX Simulation)
        case(Instruction[63])
        1'b0: RegIn2 <= Instruction[20:16]; //set to Rm
        1'b1: RegIn2 <= Instruction[4:0]; //set to Rd
        endcase
    end
    Register_State: begin
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
        //Need to determine the second ALU input:
        case(ALUSrc)
            1'b0: begin //Input should be Read Data 2
            ALUin2 <= ('h00000000 + RegReadData2);
            end
            1'b1: begin //Input should be Sign Extended Instruction [31:0]
            ALUin2 <= ('h00000000 + Instruction[31:0]);
            end
        endcase
    State <= ALU_State;
    end
    ALU_State: begin
    //not much needs to be done here, as the ALU handles it all, however we need the clock cycle.
    State <= DataAccess_State;
    end
    DataAccess_State: begin
    //First, let's determine the next value of the program counter as we have the zero output now.
    case((zero*Branch))
        1'b0: begin //Add 4 and call it a day.
        PC <= PC + 'h4;
        end
        1'b1: begin //Add Instruction [31:0] to the current value
        PC <= PC + Instruction[31:0];
        end
    endcase
    case(MemtoReg)
        1'b0: begin //Write ALU Result to Register Write Data
        RegWriteData <= ALUResult;
        end
        1'b1: begin //Write Memory Read Data to Register Write Data
        RegWriteData <= DMDataRead;
        end
    endcase
    State <= Register_State2;
    end
    Register_State2: begin
    //We need this clock cycle to write the Write Data to the Register
    State <= InstructionFetch_State;
    end
endcase



end
endmodule
