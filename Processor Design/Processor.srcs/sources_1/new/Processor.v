module Processor(CLK, reset, IR, MD, AC, PC, MA, MEM_BUS_READ, MEM_BUS_WRITE, MEM_BUS_CONTROL);
input CLK, reset;
//CPU registers
output reg [15:0]MD, AC;
output reg [15:0]IR;
output reg [11:0]PC;
output reg [11:0]MA;
//End Registers begin wires
input wire [15:0]MEM_BUS_READ;
output reg [15:0]MEM_BUS_WRITE;
output reg MEM_BUS_CONTROL;
reg [4:0]PreviousState, NextState;

//Set up state machines (17 total)
parameter S00 = 5'b00000, S01 = 5'b00001, S02 = 5'b00010, S03 = 5'b00011, S04 = 5'b00100;
parameter S05 = 5'b00101, S06 = 5'b00110, S07 = 5'b00111, S08 = 5'b01000, S09 = 5'b01001;
parameter S10 = 5'b01010, S11 = 5'b01011, S12 = 5'b01100, S13 = 5'b01101, S14 = 5'b01110;
parameter S15 = 5'b01111, S16 = 5'b10000, S17 = 5'b10001;

/*
This Processor uses the Von Newman Architecture, therefore this design consists of
A - an ALU
B - a Control Unit
C - a Bus to interface with the Memory
D - Registers required to perform tasks
*/

//############################
// Initial Conditions for the CPU
//############################
initial begin
//Zero initial registers
MA = 12'b000000000000;
AC = 16'b0000000000000000;
MD = 16'b0000000000000000;
IR = 16'b0000000000000000;
PC = 12'b000000000000;

//Set initial state to S00
PreviousState = S00;
NextState = S00;

//Set initial Memory write and control to 0.
MEM_BUS_WRITE = 16'b0000000000000000;
MEM_BUS_CONTROL = 1'b0;
end
//############################
// Each clock cycle, execute commands.
//############################
always @ (posedge CLK) begin

case(NextState)
//Step 1: Fetch an instruction from memory.
    S00: begin
    //Turn off memory control
    MEM_BUS_CONTROL = 1'b0;
    //Access memory at the Program Counter index to ensure the correct instruction is retrieved
    MA <= PC;
    //Load the instruction into the Instruction Register
    IR <= MEM_BUS_READ;
    PreviousState = S00;
    NextState = S01;
    end
    
//Step 2: Decode
    S01: begin
    PC <= PC + 12'b000000000001; //increment the Program Counter
        case(IR[15:13])
        3'b000: begin //NOT?
        PreviousState = S01;
        NextState = S02;
        end
        3'b010: begin //JPA?
        PreviousState = S01;
        NextState = S00;
            if(AC[15] == 1'b0 && AC > 16'b0000000000000000)begin //Check Greater Than 0
                if(IR[12] == 1)begin
                  PreviousState = S01;
                  NextState = S04;
                end
                if(IR[12] == 0) begin
                  PreviousState = S01;
                  NextState = S07;
                end
            end
        end
        3'b011: begin //INCA?
        PreviousState = S01;
        NextState = S03;
        end
        default: begin //For other instructions:
        PreviousState = S01;
        NextState = S08;
        end
        endcase
    end
    
//Step 3: Execute
    S02:begin
    AC <= ~AC;
    PreviousState = S02;
    NextState = S00;
    MA <= PC;
    end
    S03: begin
    AC <= (AC + 16'b0000000000000001);
    PreviousState = S03;
    NextState = S00;
    MA <= PC;
    end
    S04: begin
    MA <= IR;
    PreviousState = S04;
    NextState = S05;
    end
    S05: begin
    MD <= MEM_BUS_READ;
    PreviousState = S05;
    NextState = S06;
    end
    S06: begin
    PC <= MD;
    PreviousState = S06;
    NextState = S00;
    MA <= PC;
    end
    S07: begin
    PC <= IR;
    PreviousState = S07;
    NextState = S00;
    MA <= PC;
    end
    S08:begin
    MA <= IR[11:0];
        case(IR[15:13])
        3'b100: begin //STA
            if(IR[12] == 1)begin //Check Access Mode
            PreviousState<= S08;
            NextState <= S09;
            end
            if(IR[12] == 0)begin //Check Access Mode
            PreviousState<= S08;
            NextState <= S11;
            end
        end
        default: begin
            PreviousState<= S08;
            NextState <= S12;
        end
        endcase
    end
    S09:begin
    MD <= MEM_BUS_READ;
    PreviousState<= S09;
    NextState <= S10;
    end
    S10:begin
    MA <= MD;
    PreviousState<= S10;
    NextState <= S11;
    end
    S11:begin
    MEM_BUS_WRITE <= AC;
    MEM_BUS_CONTROL <= 1'b1;
    AC <= 16'b0000000000000000;
    PreviousState<= S11;
    NextState <= S17;
    end
    S12:begin
    MD <= MA;
    case(IR[12])
    1'b1: begin
        PreviousState <= S12;
        NextState <= S13;
    end
    1'b0: begin
    end
    endcase
        case(IR[15:13])
        3'b001:begin //ADC
        PreviousState <= S12;
        NextState <= S15;
        end
        3'b101:begin //LDA
            case(IR[12])
            1'b1:begin
            PreviousState <= S12;
            NextState <= S13;
            end
            1'b0:begin
            PreviousState <= S12;
            NextState <= S16;
            end
            endcase
        end
        default: begin //Bad Instruction, go back to S00
        PreviousState <= S12;
        NextState <= S00;
        MA <= PC;
        end
        endcase
    end
    S13:begin
    MA <= MD;
    PreviousState <= S13;
    NextState <= S14;
    end
    S14:begin
    MD <= MEM_BUS_READ;
        case(IR[15:13])
        3'b001:begin //ADC
        PreviousState <= S14;
        NextState <= S15;
        end
        3'b101:begin //LDA
        PreviousState <= S14;
        NextState <= S16;
        end
        default: begin //Bad Instruction, go back to S00
        PreviousState <= S14;
        NextState <= S00;
        end
        endcase
    end
    S15:begin
    AC <= AC + MD;
    PreviousState <= S15;
    NextState <= S00;
    MA <= PC;
    end
    S16:begin
    AC <= MD;
    PreviousState <= S16;
    NextState <= S00;
    MA <= PC;
    end
    S17:begin
    PreviousState<= S17;
    NextState <= S00;
    MA <= PC;
    end
    default: ; //do nothing, something went very wrong.
endcase

end
endmodule