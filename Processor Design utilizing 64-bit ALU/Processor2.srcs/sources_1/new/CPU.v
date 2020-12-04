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


module CPU(CLK);
input wire CLK;
reg[7:0] State;
reg[31:0] PC;
reg Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp1,ALUOp0,Unconditional;
reg[3:0] ALUControl;
reg[10:0] OpCode;
parameter InstructionFetch_State='h0, Register_State='h1, ALU_State='h2, DataAccess_State='h3, Register_State2='h4, Extra_State='h5;
//Add Instruction Memory:
wire [31:0]Instruction;
InstructionMemory IM(
.ReadAddress(PC),
 .Instruction(Instruction));

// ReadAddress will always be the Program Counter (PC)
// Instruction will be the instruction output.



//Add Registers file:
reg[31:0] RegWriteData;
reg[4:0] RegIn2;
wire[31:0] RegReadData1,RegReadData2;
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
reg[63:0] ALUin2,ALUin1;
wire[63:0] ALUResult;
wire zero;
ALU ALU(
.a(ALUin1), 
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
reg[31:0] DMWriteData;
wire[31:0] DMDataRead;
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
    //We've retrieved the Instruction as of this clock cycle. Setting Flags...(Control)
    case(Instruction[31:21])
        11'b10001011000: begin //ADD
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b1;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b1;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b11001011000: begin //SUB
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b1;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b1;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b10001010000: begin //AND
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b1;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b1;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b10101010000: begin //OR
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b1;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b1;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b00000000001: begin //LDUR
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b1;
            MemtoReg <= 1'b1;
            RegWrite <= 1'b1;
            MemRead <= 1'b1;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b0;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b000000000010: begin //STUR
            Reg2Loc <= 1'b1;
            ALUSrc <= 1'b1;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b0;
            MemRead <= 1'b0;
            MemWrite <= 1'b1;
            Branch <= 1'b0;
            ALUOp1 <= 1'b0;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
        11'b00000000011: begin //CBZ
            Reg2Loc <= 1'b1;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b0;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b1;
            ALUOp1 <= 1'b0;
            ALUOp0 <= 1'b1;
            Unconditional <= 1'b0;
        end
        11'b00000000100: begin //B
            Reg2Loc <= 1'b1;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b0;
            MemRead <= 1'b0;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b0;
            ALUOp0 <= 1'b1;
            Unconditional <= 1'b1;
        end
        default: begin
            Reg2Loc <= 1'b0;
            ALUSrc <= 1'b0;
            MemtoReg <= 1'b0;
            RegWrite <= 1'b0;
            MemRead <= 1'b1;
            MemWrite <= 1'b0;
            Branch <= 1'b0;
            ALUOp1 <= 1'b0;
            ALUOp0 <= 1'b0;
            Unconditional <= 1'b0;
        end
    endcase
    //Selecting OpCode part from the instruction
    OpCode <= Instruction[31:21];
    //Setting the next state
    State <= Register_State;
        //Determine the input to Read Register 2 (2x1 MUX Simulation)
        case(Instruction[31]) //This bit is only high when it's an r-type instruction.
        1'b1: RegIn2 <= Instruction[20:16]; //set to Rm
        1'b0: RegIn2 <= Instruction[4:0]; //set to Rd
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
        //Need to determine the ALU inputs:
        ALUin1 = 'h0000000 + RegReadData1;
        case(ALUSrc)
            1'b0: begin //Input should be Read Data 2
            ALUin2 = ('h00000000 + RegReadData2);
            end
            1'b1: begin //Input should be Sign Extended Instruction [31:0]
            ALUin2 = ('h00000000 + Instruction[21:0]);
            end
        endcase
    State <= ALU_State;
    end
    ALU_State: begin
    //not much needs to be done here, as the ALU handles it all, however we need the clock cycle.
    State <= DataAccess_State;
    end
    DataAccess_State: begin
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
                //First, let's determine the next value of the program counter as we have the zero output now.
        case(Unconditional)
            1'b0: begin //Unconditional flag not set
            case(zero)
                1'b0: begin
                    PC <= PC + 'h4;
                end
                1'bx: begin
                    PC <= PC + 'h4;
                end
                1'b1: begin
                    case(Branch)
                        1'b0: begin
                            PC <= PC + 'h4;
                        end
                        1'b1: begin//Add Shifted Instruction [21:0] to the current value
                            PC <= PC + (Instruction[21:0] << 2);
                        end
                    endcase
                end
            1'b1: begin//Add Shifted Instruction [31:0] to the current value
                PC <= PC + (Instruction[31:0] << 2);
            end
        endcase
        end
        1'b1: begin //Add Shifted Instruction [31:0] to the current value
        PC <= PC + (Instruction[31:0] << 2);
        end
    endcase
    State <= Extra_State;
    end
    Extra_State: begin
    //This state is simply because the hardware needs the extra clock cycle to catch up before adding a new instruction.
    State <= InstructionFetch_State;
    end
endcase



end
endmodule
