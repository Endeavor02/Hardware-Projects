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
IR = 12'b000000000000;
PC = 12'b000000000000;

//Set initial state to S00
PreviousState = S00;
NextState = S00;
end
//############################
// Each clock cycle, execute commands.
//############################
always @ (posedge CLK) begin

case(NextState)
//Step 1: Fetch an instruction from memory.
    S00: begin
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
            if(AC[15] == 1'b1 && AC > 16'b0000000000000000)begin //Check Greater Than 0
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
    S08:begin
    MA <= IR;
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
    S12:begin
    MD <= MEM_BUS_READ[MA];
    
    case(IR[12])
    1'b1: begin
    end
    1'b0: begin
    end
    endcase
    
    if(IR[12] == 1)begin
        PreviousState <= S12;
        NextState <= S13;
    end
    if(IR[12] == 0)begin
        
    end
    end

//Step 4: Store


    default: ; //do nothing, something went very wrong.
endcase












//
// Everything Below this is wrong.
// 
/*
case(IR[15:13]) //determines function based on OP code of the Instruction Register
3'b000: AC <= ~AC;//NOT Function
3'b001: begin//ADC Function
    //Updates the Memory Address register with our new Memory Address
    MA <= IR[11:0];
    case(IR[12]) //Check the addressing mode
    1'b0: begin //Direct Addressing Mode
    AC[11:0] <= MA;
    end
    1'b1: begin //Indirect Addressing Mode
    //Reads the data from the bus and inserts it into the MD register.
    MD <= MEM_BUS_READ;
    //Now to compute 12-bit Addition with carry
    AC = AC+MD; //fix this!
############ TO-DO!
############        
        end 
   endcase
end 
3'b010:begin//JPA Function
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//
//  TO-DO!
//
//
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
end
3'b011: begin//INCA Function
AC <= AC + 1'b0000000000000001;
end
3'b100: begin//STA Function
//Set the memory address as the one supplied in the instruction.
MA <= IR[11:0];
MEM_BUS_WRITE = AC;
MEM_BUS_CONTROL = 1;
AC <= 16'b0000000000000000;
end

3'b101: begin//LDA Function

end
default: ;//Otherwise do nothing. Bad Register value.
endcase
MEM_BUS_CONTROL = 0; */
end
endmodule