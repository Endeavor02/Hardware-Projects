module Processor(CLK, reset, IR, MD, AC, PC, MA, MEM_BUS_READ, MEM_BUS_WRITE, MEM_BUS_CONTROL);
input CLK, reset;
//Only pre-allowed registers
output reg [15:0]MD, AC;
input wire [15:0]IR;
output reg [11:0]PC;
output reg [11:0]MA;
//End Registers begin wires
input wire [15:0]MEM_BUS_READ;
output reg [15:0]MEM_BUS_WRITE;
output reg MEM_BUS_CONTROL;
//These last 2 would be wires in an actual design but due to verilog's limitations they have
//to be declared as registers. They are not used at all in the CPU's instructions except to send data to the Memory Controller.

//############################
// Initial Conditions for the CPU
//############################
initial begin
//load initial memory address (all 0's)
MA = 12'b000000000000;
//used for testing
AC = 16'b0000100100000000;
end
//############################
// Each clock cycle, execute commands.
//############################
always @ (posedge CLK) begin

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
/*        
############ TO-DO!
############        
*/      
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
MEM_BUS_CONTROL = 0;
end
endmodule