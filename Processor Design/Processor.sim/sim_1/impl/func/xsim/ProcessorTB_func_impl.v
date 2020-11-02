// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 25 21:56:44 2020
// Host        : LAPTOP-V6JJOPEA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               {C:/Users/abole/Documents/GitHub/Hardware-Projects/Processor
//               Design/Processor.sim/sim_1/impl/func/xsim/ProcessorTB_func_impl.v}
// Design      : Processor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "cf296333" *) (* S00 = "5'b00000" *) (* S01 = "5'b00001" *) 
(* S02 = "5'b00010" *) (* S03 = "5'b00011" *) (* S04 = "5'b00100" *) 
(* S05 = "5'b00101" *) (* S06 = "5'b00110" *) (* S07 = "5'b00111" *) 
(* S08 = "5'b01000" *) (* S09 = "5'b01001" *) (* S10 = "5'b01010" *) 
(* S11 = "5'b01011" *) (* S12 = "5'b01100" *) (* S13 = "5'b01101" *) 
(* S14 = "5'b01110" *) (* S15 = "5'b01111" *) (* S16 = "5'b10000" *) 
(* S17 = "5'b10001" *) 
(* NotValidForBitStream *)
module Processor
   (CLK,
    reset,
    IR,
    MD,
    AC,
    PC,
    MA,
    MEM_BUS_READ,
    MEM_BUS_WRITE,
    MEM_BUS_CONTROL);
  input CLK;
  input reset;
  output [15:0]IR;
  output [15:0]MD;
  output [15:0]AC;
  output [11:0]PC;
  output [11:0]MA;
  input [15:0]MEM_BUS_READ;
  output [15:0]MEM_BUS_WRITE;
  output MEM_BUS_CONTROL;

  wire [15:0]AC;
  wire \AC[0]_i_1_n_0 ;
  wire \AC[10]_i_1_n_0 ;
  wire \AC[11]_i_1_n_0 ;
  wire \AC[11]_i_3_n_0 ;
  wire \AC[11]_i_4_n_0 ;
  wire \AC[11]_i_5_n_0 ;
  wire \AC[11]_i_6_n_0 ;
  wire \AC[12]_i_1_n_0 ;
  wire \AC[13]_i_1_n_0 ;
  wire \AC[14]_i_1_n_0 ;
  wire \AC[15]_i_2_n_0 ;
  wire \AC[15]_i_3_n_0 ;
  wire \AC[15]_i_5_n_0 ;
  wire \AC[15]_i_6_n_0 ;
  wire \AC[15]_i_7_n_0 ;
  wire \AC[15]_i_8_n_0 ;
  wire \AC[1]_i_1_n_0 ;
  wire \AC[2]_i_1_n_0 ;
  wire \AC[3]_i_1_n_0 ;
  wire \AC[3]_i_3_n_0 ;
  wire \AC[3]_i_4_n_0 ;
  wire \AC[3]_i_5_n_0 ;
  wire \AC[3]_i_6_n_0 ;
  wire \AC[4]_i_1_n_0 ;
  wire \AC[5]_i_1_n_0 ;
  wire \AC[6]_i_1_n_0 ;
  wire \AC[7]_i_1_n_0 ;
  wire \AC[7]_i_3_n_0 ;
  wire \AC[7]_i_4_n_0 ;
  wire \AC[7]_i_5_n_0 ;
  wire \AC[7]_i_6_n_0 ;
  wire \AC[8]_i_1_n_0 ;
  wire \AC[9]_i_1_n_0 ;
  wire [15:0]AC_OBUF;
  wire \AC_reg[11]_i_2_n_0 ;
  wire \AC_reg[3]_i_2_n_0 ;
  wire \AC_reg[7]_i_2_n_0 ;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire \FSM_sequential_NextState[0]_i_2_n_0 ;
  wire \FSM_sequential_NextState[0]_i_3_n_0 ;
  wire \FSM_sequential_NextState[0]_i_4_n_0 ;
  wire \FSM_sequential_NextState[0]_i_5_n_0 ;
  wire \FSM_sequential_NextState[0]_i_6_n_0 ;
  wire \FSM_sequential_NextState[1]_i_2_n_0 ;
  wire \FSM_sequential_NextState[1]_i_3_n_0 ;
  wire \FSM_sequential_NextState[1]_i_4_n_0 ;
  wire \FSM_sequential_NextState[1]_i_5_n_0 ;
  wire \FSM_sequential_NextState[2]_i_10_n_0 ;
  wire \FSM_sequential_NextState[2]_i_11_n_0 ;
  wire \FSM_sequential_NextState[2]_i_12_n_0 ;
  wire \FSM_sequential_NextState[2]_i_13_n_0 ;
  wire \FSM_sequential_NextState[2]_i_2_n_0 ;
  wire \FSM_sequential_NextState[2]_i_3_n_0 ;
  wire \FSM_sequential_NextState[2]_i_4_n_0 ;
  wire \FSM_sequential_NextState[2]_i_5_n_0 ;
  wire \FSM_sequential_NextState[2]_i_6_n_0 ;
  wire \FSM_sequential_NextState[2]_i_7_n_0 ;
  wire \FSM_sequential_NextState[2]_i_8_n_0 ;
  wire \FSM_sequential_NextState[2]_i_9_n_0 ;
  wire \FSM_sequential_NextState[3]_i_2_n_0 ;
  wire \FSM_sequential_NextState[3]_i_3_n_0 ;
  wire \FSM_sequential_NextState[3]_i_4_n_0 ;
  wire \FSM_sequential_NextState[4]_i_1_n_0 ;
  wire \FSM_sequential_NextState[4]_i_3_n_0 ;
  wire \FSM_sequential_NextState[4]_i_4_n_0 ;
  wire \FSM_sequential_NextState[4]_i_5_n_0 ;
  wire [15:0]IR;
  wire \IR[15]_i_1_n_0 ;
  wire [15:0]IR_OBUF;
  wire [11:0]MA;
  wire \MA[0]_i_1_n_0 ;
  wire \MA[10]_i_1_n_0 ;
  wire \MA[11]_i_1_n_0 ;
  wire \MA[11]_i_2_n_0 ;
  wire \MA[11]_i_3_n_0 ;
  wire \MA[11]_i_4_n_0 ;
  wire \MA[1]_i_1_n_0 ;
  wire \MA[2]_i_1_n_0 ;
  wire \MA[3]_i_1_n_0 ;
  wire \MA[4]_i_1_n_0 ;
  wire \MA[5]_i_1_n_0 ;
  wire \MA[6]_i_1_n_0 ;
  wire \MA[7]_i_1_n_0 ;
  wire \MA[8]_i_1_n_0 ;
  wire \MA[9]_i_1_n_0 ;
  wire [11:0]MA_OBUF;
  wire [15:0]MD;
  wire \MD[0]_i_1_n_0 ;
  wire \MD[10]_i_1_n_0 ;
  wire \MD[11]_i_1_n_0 ;
  wire \MD[11]_i_2_n_0 ;
  wire \MD[15]_i_1_n_0 ;
  wire \MD[1]_i_1_n_0 ;
  wire \MD[2]_i_1_n_0 ;
  wire \MD[3]_i_1_n_0 ;
  wire \MD[4]_i_1_n_0 ;
  wire \MD[5]_i_1_n_0 ;
  wire \MD[6]_i_1_n_0 ;
  wire \MD[7]_i_1_n_0 ;
  wire \MD[8]_i_1_n_0 ;
  wire \MD[9]_i_1_n_0 ;
  wire [15:0]MD_OBUF;
  wire MEM_BUS_CONTROL;
  wire MEM_BUS_CONTROL0;
  wire MEM_BUS_CONTROL_OBUF;
  wire [15:0]MEM_BUS_READ;
  wire [15:0]MEM_BUS_READ_IBUF;
  wire [15:0]MEM_BUS_WRITE;
  wire [15:0]MEM_BUS_WRITE_OBUF;
  wire [4:0]NextState;
  wire [4:0]NextState__0;
  wire [11:0]PC;
  wire \PC[0]_i_1_n_0 ;
  wire \PC[10]_i_1_n_0 ;
  wire \PC[11]_i_1_n_0 ;
  wire \PC[11]_i_2_n_0 ;
  wire \PC[1]_i_1_n_0 ;
  wire \PC[2]_i_1_n_0 ;
  wire \PC[3]_i_1_n_0 ;
  wire \PC[4]_i_1_n_0 ;
  wire \PC[5]_i_1_n_0 ;
  wire \PC[6]_i_1_n_0 ;
  wire \PC[7]_i_1_n_0 ;
  wire \PC[8]_i_1_n_0 ;
  wire \PC[9]_i_1_n_0 ;
  wire [11:0]PC_OBUF;
  wire \PC_reg[4]_i_2_n_0 ;
  wire \PC_reg[8]_i_2_n_0 ;
  wire [15:0]in13;
  wire [11:1]in9;
  wire [2:0]\NLW_AC_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_AC_reg[15]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_AC_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_AC_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_PC_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_PC_reg[11]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_PC_reg[8]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[0]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[0]),
        .I2(in13[0]),
        .I3(MD_OBUF[0]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[10]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[10]),
        .I2(in13[10]),
        .I3(MD_OBUF[10]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[11]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[11]),
        .I2(in13[11]),
        .I3(MD_OBUF[11]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[11]_i_3 
       (.I0(NextState[4]),
        .I1(MD_OBUF[11]),
        .I2(AC_OBUF[11]),
        .O(\AC[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[11]_i_4 
       (.I0(NextState[4]),
        .I1(MD_OBUF[10]),
        .I2(AC_OBUF[10]),
        .O(\AC[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[11]_i_5 
       (.I0(NextState[4]),
        .I1(MD_OBUF[9]),
        .I2(AC_OBUF[9]),
        .O(\AC[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[11]_i_6 
       (.I0(NextState[4]),
        .I1(MD_OBUF[8]),
        .I2(AC_OBUF[8]),
        .O(\AC[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[12]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[12]),
        .I2(in13[12]),
        .I3(MD_OBUF[12]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[13]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[13]),
        .I2(in13[13]),
        .I3(MD_OBUF[13]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[14]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[14]),
        .I2(in13[14]),
        .I3(MD_OBUF[14]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \AC[15]_i_1 
       (.I0(NextState[2]),
        .I1(NextState[0]),
        .I2(NextState[1]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .O(MEM_BUS_CONTROL0));
  LUT5 #(
    .INIT(32'h10040014)) 
    \AC[15]_i_2 
       (.I0(NextState[3]),
        .I1(NextState[4]),
        .I2(NextState[1]),
        .I3(NextState[2]),
        .I4(NextState[0]),
        .O(\AC[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[15]_i_3 
       (.I0(NextState[2]),
        .I1(AC_OBUF[15]),
        .I2(in13[15]),
        .I3(MD_OBUF[15]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[15]_i_5 
       (.I0(NextState[4]),
        .I1(MD_OBUF[15]),
        .I2(AC_OBUF[15]),
        .O(\AC[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[15]_i_6 
       (.I0(NextState[4]),
        .I1(MD_OBUF[14]),
        .I2(AC_OBUF[14]),
        .O(\AC[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[15]_i_7 
       (.I0(NextState[4]),
        .I1(MD_OBUF[13]),
        .I2(AC_OBUF[13]),
        .O(\AC[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[15]_i_8 
       (.I0(NextState[4]),
        .I1(MD_OBUF[12]),
        .I2(AC_OBUF[12]),
        .O(\AC[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[1]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[1]),
        .I2(in13[1]),
        .I3(MD_OBUF[1]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[2]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[2]),
        .I2(in13[2]),
        .I3(MD_OBUF[2]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[3]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[3]),
        .I2(in13[3]),
        .I3(MD_OBUF[3]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[3]_i_3 
       (.I0(NextState[4]),
        .I1(MD_OBUF[3]),
        .I2(AC_OBUF[3]),
        .O(\AC[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[3]_i_4 
       (.I0(NextState[4]),
        .I1(MD_OBUF[2]),
        .I2(AC_OBUF[2]),
        .O(\AC[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[3]_i_5 
       (.I0(NextState[4]),
        .I1(MD_OBUF[1]),
        .I2(AC_OBUF[1]),
        .O(\AC[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \AC[3]_i_6 
       (.I0(NextState[0]),
        .I1(MD_OBUF[0]),
        .I2(AC_OBUF[0]),
        .O(\AC[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[4]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[4]),
        .I2(in13[4]),
        .I3(MD_OBUF[4]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[5]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[5]),
        .I2(in13[5]),
        .I3(MD_OBUF[5]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[6]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[6]),
        .I2(in13[6]),
        .I3(MD_OBUF[6]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[7]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[7]),
        .I2(in13[7]),
        .I3(MD_OBUF[7]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[7]_i_3 
       (.I0(NextState[4]),
        .I1(MD_OBUF[7]),
        .I2(AC_OBUF[7]),
        .O(\AC[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[7]_i_4 
       (.I0(NextState[4]),
        .I1(MD_OBUF[6]),
        .I2(AC_OBUF[6]),
        .O(\AC[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[7]_i_5 
       (.I0(NextState[4]),
        .I1(MD_OBUF[5]),
        .I2(AC_OBUF[5]),
        .O(\AC[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \AC[7]_i_6 
       (.I0(NextState[4]),
        .I1(MD_OBUF[4]),
        .I2(AC_OBUF[4]),
        .O(\AC[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[8]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[8]),
        .I2(in13[8]),
        .I3(MD_OBUF[8]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0B1B1B1B1)) 
    \AC[9]_i_1 
       (.I0(NextState[2]),
        .I1(AC_OBUF[9]),
        .I2(in13[9]),
        .I3(MD_OBUF[9]),
        .I4(NextState[0]),
        .I5(NextState[4]),
        .O(\AC[9]_i_1_n_0 ));
  OBUF \AC_OBUF[0]_inst 
       (.I(AC_OBUF[0]),
        .O(AC[0]));
  OBUF \AC_OBUF[10]_inst 
       (.I(AC_OBUF[10]),
        .O(AC[10]));
  OBUF \AC_OBUF[11]_inst 
       (.I(AC_OBUF[11]),
        .O(AC[11]));
  OBUF \AC_OBUF[12]_inst 
       (.I(AC_OBUF[12]),
        .O(AC[12]));
  OBUF \AC_OBUF[13]_inst 
       (.I(AC_OBUF[13]),
        .O(AC[13]));
  OBUF \AC_OBUF[14]_inst 
       (.I(AC_OBUF[14]),
        .O(AC[14]));
  OBUF \AC_OBUF[15]_inst 
       (.I(AC_OBUF[15]),
        .O(AC[15]));
  OBUF \AC_OBUF[1]_inst 
       (.I(AC_OBUF[1]),
        .O(AC[1]));
  OBUF \AC_OBUF[2]_inst 
       (.I(AC_OBUF[2]),
        .O(AC[2]));
  OBUF \AC_OBUF[3]_inst 
       (.I(AC_OBUF[3]),
        .O(AC[3]));
  OBUF \AC_OBUF[4]_inst 
       (.I(AC_OBUF[4]),
        .O(AC[4]));
  OBUF \AC_OBUF[5]_inst 
       (.I(AC_OBUF[5]),
        .O(AC[5]));
  OBUF \AC_OBUF[6]_inst 
       (.I(AC_OBUF[6]),
        .O(AC[6]));
  OBUF \AC_OBUF[7]_inst 
       (.I(AC_OBUF[7]),
        .O(AC[7]));
  OBUF \AC_OBUF[8]_inst 
       (.I(AC_OBUF[8]),
        .O(AC[8]));
  OBUF \AC_OBUF[9]_inst 
       (.I(AC_OBUF[9]),
        .O(AC[9]));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[0]_i_1_n_0 ),
        .Q(AC_OBUF[0]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[10]_i_1_n_0 ),
        .Q(AC_OBUF[10]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[11]_i_1_n_0 ),
        .Q(AC_OBUF[11]),
        .R(MEM_BUS_CONTROL0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \AC_reg[11]_i_2 
       (.CI(\AC_reg[7]_i_2_n_0 ),
        .CO({\AC_reg[11]_i_2_n_0 ,\NLW_AC_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(AC_OBUF[11:8]),
        .O(in13[11:8]),
        .S({\AC[11]_i_3_n_0 ,\AC[11]_i_4_n_0 ,\AC[11]_i_5_n_0 ,\AC[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[12]_i_1_n_0 ),
        .Q(AC_OBUF[12]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[13]_i_1_n_0 ),
        .Q(AC_OBUF[13]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[14]_i_1_n_0 ),
        .Q(AC_OBUF[14]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[15]_i_3_n_0 ),
        .Q(AC_OBUF[15]),
        .R(MEM_BUS_CONTROL0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \AC_reg[15]_i_4 
       (.CI(\AC_reg[11]_i_2_n_0 ),
        .CO(\NLW_AC_reg[15]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,AC_OBUF[14:12]}),
        .O(in13[15:12]),
        .S({\AC[15]_i_5_n_0 ,\AC[15]_i_6_n_0 ,\AC[15]_i_7_n_0 ,\AC[15]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[1]_i_1_n_0 ),
        .Q(AC_OBUF[1]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[2]_i_1_n_0 ),
        .Q(AC_OBUF[2]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[3]_i_1_n_0 ),
        .Q(AC_OBUF[3]),
        .R(MEM_BUS_CONTROL0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \AC_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\AC_reg[3]_i_2_n_0 ,\NLW_AC_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(AC_OBUF[3:0]),
        .O(in13[3:0]),
        .S({\AC[3]_i_3_n_0 ,\AC[3]_i_4_n_0 ,\AC[3]_i_5_n_0 ,\AC[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[4]_i_1_n_0 ),
        .Q(AC_OBUF[4]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[5]_i_1_n_0 ),
        .Q(AC_OBUF[5]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[6]_i_1_n_0 ),
        .Q(AC_OBUF[6]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[7]_i_1_n_0 ),
        .Q(AC_OBUF[7]),
        .R(MEM_BUS_CONTROL0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \AC_reg[7]_i_2 
       (.CI(\AC_reg[3]_i_2_n_0 ),
        .CO({\AC_reg[7]_i_2_n_0 ,\NLW_AC_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(AC_OBUF[7:4]),
        .O(in13[7:4]),
        .S({\AC[7]_i_3_n_0 ,\AC[7]_i_4_n_0 ,\AC[7]_i_5_n_0 ,\AC[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[8]_i_1_n_0 ),
        .Q(AC_OBUF[8]),
        .R(MEM_BUS_CONTROL0));
  FDRE #(
    .INIT(1'b0)) 
    \AC_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\AC[15]_i_2_n_0 ),
        .D(\AC[9]_i_1_n_0 ),
        .Q(AC_OBUF[9]),
        .R(MEM_BUS_CONTROL0));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAEAEAE)) 
    \FSM_sequential_NextState[0]_i_1 
       (.I0(\FSM_sequential_NextState[0]_i_2_n_0 ),
        .I1(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .I2(NextState[0]),
        .I3(\FSM_sequential_NextState[2]_i_4_n_0 ),
        .I4(\FSM_sequential_NextState[0]_i_4_n_0 ),
        .I5(\FSM_sequential_NextState[0]_i_5_n_0 ),
        .O(NextState__0[0]));
  LUT6 #(
    .INIT(64'h00AA0000C0AA0000)) 
    \FSM_sequential_NextState[0]_i_2 
       (.I0(\FSM_sequential_NextState[2]_i_12_n_0 ),
        .I1(\FSM_sequential_NextState[0]_i_6_n_0 ),
        .I2(IR_OBUF[15]),
        .I3(NextState[2]),
        .I4(IR_OBUF[13]),
        .I5(IR_OBUF[14]),
        .O(\FSM_sequential_NextState[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_NextState[0]_i_3 
       (.I0(NextState[4]),
        .I1(NextState[3]),
        .I2(NextState[1]),
        .O(\FSM_sequential_NextState[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_NextState[0]_i_4 
       (.I0(IR_OBUF[12]),
        .I1(NextState[2]),
        .I2(AC_OBUF[15]),
        .I3(\FSM_sequential_NextState[2]_i_12_n_0 ),
        .O(\FSM_sequential_NextState[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000013)) 
    \FSM_sequential_NextState[0]_i_5 
       (.I0(NextState[3]),
        .I1(NextState[1]),
        .I2(NextState[2]),
        .I3(NextState[0]),
        .I4(NextState[4]),
        .O(\FSM_sequential_NextState[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F200)) 
    \FSM_sequential_NextState[0]_i_6 
       (.I0(NextState[0]),
        .I1(IR_OBUF[12]),
        .I2(NextState[1]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .O(\FSM_sequential_NextState[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFEFEFEFE)) 
    \FSM_sequential_NextState[1]_i_1 
       (.I0(\FSM_sequential_NextState[3]_i_2_n_0 ),
        .I1(\FSM_sequential_NextState[1]_i_2_n_0 ),
        .I2(\FSM_sequential_NextState[1]_i_3_n_0 ),
        .I3(\FSM_sequential_NextState[2]_i_4_n_0 ),
        .I4(IR_OBUF[12]),
        .I5(\FSM_sequential_NextState[2]_i_3_n_0 ),
        .O(NextState__0[1]));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAEAA)) 
    \FSM_sequential_NextState[1]_i_2 
       (.I0(\FSM_sequential_NextState[1]_i_4_n_0 ),
        .I1(\FSM_sequential_NextState[1]_i_5_n_0 ),
        .I2(IR_OBUF[15]),
        .I3(NextState[0]),
        .I4(IR_OBUF[14]),
        .I5(IR_OBUF[13]),
        .O(\FSM_sequential_NextState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_NextState[1]_i_3 
       (.I0(\FSM_sequential_NextState[3]_i_4_n_0 ),
        .I1(\FSM_sequential_NextState[4]_i_4_n_0 ),
        .I2(IR_OBUF[12]),
        .I3(IR_OBUF[13]),
        .I4(IR_OBUF[14]),
        .I5(IR_OBUF[15]),
        .O(\FSM_sequential_NextState[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00140000)) 
    \FSM_sequential_NextState[1]_i_4 
       (.I0(NextState[1]),
        .I1(NextState[2]),
        .I2(NextState[3]),
        .I3(NextState[4]),
        .I4(NextState[0]),
        .O(\FSM_sequential_NextState[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_NextState[1]_i_5 
       (.I0(NextState[4]),
        .I1(NextState[3]),
        .I2(NextState[1]),
        .O(\FSM_sequential_NextState[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \FSM_sequential_NextState[2]_i_1 
       (.I0(\FSM_sequential_NextState[2]_i_2_n_0 ),
        .I1(\FSM_sequential_NextState[2]_i_3_n_0 ),
        .I2(IR_OBUF[12]),
        .I3(\FSM_sequential_NextState[2]_i_4_n_0 ),
        .I4(\FSM_sequential_NextState[2]_i_5_n_0 ),
        .I5(\FSM_sequential_NextState[2]_i_6_n_0 ),
        .O(NextState__0[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_NextState[2]_i_10 
       (.I0(AC_OBUF[10]),
        .I1(AC_OBUF[9]),
        .I2(AC_OBUF[12]),
        .I3(AC_OBUF[11]),
        .O(\FSM_sequential_NextState[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_NextState[2]_i_11 
       (.I0(NextState[1]),
        .I1(NextState[2]),
        .O(\FSM_sequential_NextState[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_NextState[2]_i_12 
       (.I0(IR_OBUF[15]),
        .I1(NextState[4]),
        .I2(NextState[3]),
        .I3(NextState[1]),
        .I4(IR_OBUF[14]),
        .O(\FSM_sequential_NextState[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_NextState[2]_i_13 
       (.I0(IR_OBUF[15]),
        .I1(IR_OBUF[14]),
        .I2(IR_OBUF[13]),
        .O(\FSM_sequential_NextState[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004830)) 
    \FSM_sequential_NextState[2]_i_2 
       (.I0(NextState[0]),
        .I1(NextState[1]),
        .I2(NextState[2]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .O(\FSM_sequential_NextState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \FSM_sequential_NextState[2]_i_3 
       (.I0(AC_OBUF[15]),
        .I1(IR_OBUF[15]),
        .I2(\FSM_sequential_NextState[2]_i_7_n_0 ),
        .I3(NextState[1]),
        .I4(IR_OBUF[14]),
        .I5(NextState[0]),
        .O(\FSM_sequential_NextState[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_NextState[2]_i_4 
       (.I0(\FSM_sequential_NextState[2]_i_8_n_0 ),
        .I1(\FSM_sequential_NextState[2]_i_9_n_0 ),
        .I2(AC_OBUF[14]),
        .I3(AC_OBUF[13]),
        .I4(AC_OBUF[0]),
        .I5(\FSM_sequential_NextState[2]_i_10_n_0 ),
        .O(\FSM_sequential_NextState[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_NextState[2]_i_5 
       (.I0(IR_OBUF[12]),
        .I1(IR_OBUF[15]),
        .I2(NextState[0]),
        .I3(NextState[4]),
        .I4(\FSM_sequential_NextState[2]_i_11_n_0 ),
        .I5(\FSM_sequential_NextState[4]_i_3_n_0 ),
        .O(\FSM_sequential_NextState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \FSM_sequential_NextState[2]_i_6 
       (.I0(\FSM_sequential_NextState[2]_i_12_n_0 ),
        .I1(IR_OBUF[13]),
        .I2(\FSM_sequential_NextState[2]_i_13_n_0 ),
        .I3(NextState[0]),
        .I4(\FSM_sequential_NextState[4]_i_4_n_0 ),
        .I5(\FSM_sequential_NextState[3]_i_4_n_0 ),
        .O(\FSM_sequential_NextState[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_NextState[2]_i_7 
       (.I0(NextState[3]),
        .I1(NextState[4]),
        .O(\FSM_sequential_NextState[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_NextState[2]_i_8 
       (.I0(AC_OBUF[6]),
        .I1(AC_OBUF[5]),
        .I2(AC_OBUF[8]),
        .I3(AC_OBUF[7]),
        .O(\FSM_sequential_NextState[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_NextState[2]_i_9 
       (.I0(AC_OBUF[2]),
        .I1(AC_OBUF[1]),
        .I2(AC_OBUF[4]),
        .I3(AC_OBUF[3]),
        .O(\FSM_sequential_NextState[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEEEEFEE)) 
    \FSM_sequential_NextState[3]_i_1 
       (.I0(\FSM_sequential_NextState[3]_i_2_n_0 ),
        .I1(\FSM_sequential_NextState[3]_i_3_n_0 ),
        .I2(NextState[2]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .O(NextState__0[3]));
  LUT6 #(
    .INIT(64'h00FF000008000000)) 
    \FSM_sequential_NextState[3]_i_2 
       (.I0(IR_OBUF[15]),
        .I1(IR_OBUF[12]),
        .I2(\FSM_sequential_NextState[4]_i_3_n_0 ),
        .I3(NextState[0]),
        .I4(\FSM_sequential_NextState[4]_i_4_n_0 ),
        .I5(NextState[1]),
        .O(\FSM_sequential_NextState[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080800080000)) 
    \FSM_sequential_NextState[3]_i_3 
       (.I0(\FSM_sequential_NextState[3]_i_4_n_0 ),
        .I1(NextState[0]),
        .I2(NextState[4]),
        .I3(IR_OBUF[14]),
        .I4(IR_OBUF[13]),
        .I5(IR_OBUF[15]),
        .O(\FSM_sequential_NextState[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_NextState[3]_i_4 
       (.I0(NextState[1]),
        .I1(NextState[2]),
        .O(\FSM_sequential_NextState[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_sequential_NextState[4]_i_1 
       (.I0(NextState[3]),
        .I1(NextState[1]),
        .I2(NextState[2]),
        .I3(NextState[4]),
        .O(\FSM_sequential_NextState[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000400040000000)) 
    \FSM_sequential_NextState[4]_i_2 
       (.I0(\FSM_sequential_NextState[4]_i_3_n_0 ),
        .I1(NextState[0]),
        .I2(NextState[2]),
        .I3(\FSM_sequential_NextState[4]_i_4_n_0 ),
        .I4(NextState[1]),
        .I5(\FSM_sequential_NextState[4]_i_5_n_0 ),
        .O(NextState__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_NextState[4]_i_3 
       (.I0(IR_OBUF[14]),
        .I1(IR_OBUF[13]),
        .O(\FSM_sequential_NextState[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_NextState[4]_i_4 
       (.I0(NextState[3]),
        .I1(NextState[4]),
        .O(\FSM_sequential_NextState[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_NextState[4]_i_5 
       (.I0(IR_OBUF[12]),
        .I1(IR_OBUF[15]),
        .O(\FSM_sequential_NextState[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "S14:01111,S13:01110,S12:01101,S03:00111,S17:01100,S02:00010,S16:10001,S01:00001,S11:01011,S00:00000,S10:01010,S07:00011,S06:00110,S09:01001,S08:01000,S05:00101,S04:00100,S15:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_NextState[4]_i_1_n_0 ),
        .D(NextState__0[0]),
        .Q(NextState[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S14:01111,S13:01110,S12:01101,S03:00111,S17:01100,S02:00010,S16:10001,S01:00001,S11:01011,S00:00000,S10:01010,S07:00011,S06:00110,S09:01001,S08:01000,S05:00101,S04:00100,S15:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_NextState[4]_i_1_n_0 ),
        .D(NextState__0[1]),
        .Q(NextState[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S14:01111,S13:01110,S12:01101,S03:00111,S17:01100,S02:00010,S16:10001,S01:00001,S11:01011,S00:00000,S10:01010,S07:00011,S06:00110,S09:01001,S08:01000,S05:00101,S04:00100,S15:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_NextState[4]_i_1_n_0 ),
        .D(NextState__0[2]),
        .Q(NextState[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S14:01111,S13:01110,S12:01101,S03:00111,S17:01100,S02:00010,S16:10001,S01:00001,S11:01011,S00:00000,S10:01010,S07:00011,S06:00110,S09:01001,S08:01000,S05:00101,S04:00100,S15:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_NextState[4]_i_1_n_0 ),
        .D(NextState__0[3]),
        .Q(NextState[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S14:01111,S13:01110,S12:01101,S03:00111,S17:01100,S02:00010,S16:10001,S01:00001,S11:01011,S00:00000,S10:01010,S07:00011,S06:00110,S09:01001,S08:01000,S05:00101,S04:00100,S15:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_NextState_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_NextState[4]_i_1_n_0 ),
        .D(NextState__0[4]),
        .Q(NextState[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \IR[15]_i_1 
       (.I0(NextState[2]),
        .I1(NextState[0]),
        .I2(NextState[1]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .O(\IR[15]_i_1_n_0 ));
  OBUF \IR_OBUF[0]_inst 
       (.I(IR_OBUF[0]),
        .O(IR[0]));
  OBUF \IR_OBUF[10]_inst 
       (.I(IR_OBUF[10]),
        .O(IR[10]));
  OBUF \IR_OBUF[11]_inst 
       (.I(IR_OBUF[11]),
        .O(IR[11]));
  OBUF \IR_OBUF[12]_inst 
       (.I(IR_OBUF[12]),
        .O(IR[12]));
  OBUF \IR_OBUF[13]_inst 
       (.I(IR_OBUF[13]),
        .O(IR[13]));
  OBUF \IR_OBUF[14]_inst 
       (.I(IR_OBUF[14]),
        .O(IR[14]));
  OBUF \IR_OBUF[15]_inst 
       (.I(IR_OBUF[15]),
        .O(IR[15]));
  OBUF \IR_OBUF[1]_inst 
       (.I(IR_OBUF[1]),
        .O(IR[1]));
  OBUF \IR_OBUF[2]_inst 
       (.I(IR_OBUF[2]),
        .O(IR[2]));
  OBUF \IR_OBUF[3]_inst 
       (.I(IR_OBUF[3]),
        .O(IR[3]));
  OBUF \IR_OBUF[4]_inst 
       (.I(IR_OBUF[4]),
        .O(IR[4]));
  OBUF \IR_OBUF[5]_inst 
       (.I(IR_OBUF[5]),
        .O(IR[5]));
  OBUF \IR_OBUF[6]_inst 
       (.I(IR_OBUF[6]),
        .O(IR[6]));
  OBUF \IR_OBUF[7]_inst 
       (.I(IR_OBUF[7]),
        .O(IR[7]));
  OBUF \IR_OBUF[8]_inst 
       (.I(IR_OBUF[8]),
        .O(IR[8]));
  OBUF \IR_OBUF[9]_inst 
       (.I(IR_OBUF[9]),
        .O(IR[9]));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[0]),
        .Q(IR_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[10]),
        .Q(IR_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[11]),
        .Q(IR_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[12]),
        .Q(IR_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[13]),
        .Q(IR_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[14]),
        .Q(IR_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[15]),
        .Q(IR_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[1]),
        .Q(IR_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[2]),
        .Q(IR_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[3]),
        .Q(IR_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[4]),
        .Q(IR_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[5]),
        .Q(IR_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[6]),
        .Q(IR_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[7]),
        .Q(IR_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[8]),
        .Q(IR_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \IR_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[9]),
        .Q(IR_OBUF[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[0]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[0]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[0]),
        .I4(MD_OBUF[0]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[10]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[10]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[10]),
        .I4(MD_OBUF[10]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000320CC0003FFFF)) 
    \MA[11]_i_1 
       (.I0(\FSM_sequential_NextState[4]_i_3_n_0 ),
        .I1(NextState[1]),
        .I2(NextState[2]),
        .I3(NextState[3]),
        .I4(NextState[4]),
        .I5(NextState[0]),
        .O(\MA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[11]_i_2 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[11]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[11]),
        .I4(MD_OBUF[11]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \MA[11]_i_3 
       (.I0(NextState[1]),
        .I1(NextState[2]),
        .I2(NextState[3]),
        .I3(NextState[4]),
        .O(\MA[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF65)) 
    \MA[11]_i_4 
       (.I0(NextState[3]),
        .I1(NextState[1]),
        .I2(NextState[2]),
        .I3(NextState[4]),
        .O(\MA[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[1]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[1]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[1]),
        .I4(MD_OBUF[1]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[2]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[2]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[2]),
        .I4(MD_OBUF[2]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[3]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[3]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[3]),
        .I4(MD_OBUF[3]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[4]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[4]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[4]),
        .I4(MD_OBUF[4]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[5]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[5]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[5]),
        .I4(MD_OBUF[5]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[6]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[6]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[6]),
        .I4(MD_OBUF[6]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[7]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[7]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[7]),
        .I4(MD_OBUF[7]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[8]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[8]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[8]),
        .I4(MD_OBUF[8]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \MA[9]_i_1 
       (.I0(\MA[11]_i_3_n_0 ),
        .I1(IR_OBUF[9]),
        .I2(\MA[11]_i_4_n_0 ),
        .I3(PC_OBUF[9]),
        .I4(MD_OBUF[9]),
        .I5(\FSM_sequential_NextState[0]_i_3_n_0 ),
        .O(\MA[9]_i_1_n_0 ));
  OBUF \MA_OBUF[0]_inst 
       (.I(MA_OBUF[0]),
        .O(MA[0]));
  OBUF \MA_OBUF[10]_inst 
       (.I(MA_OBUF[10]),
        .O(MA[10]));
  OBUF \MA_OBUF[11]_inst 
       (.I(MA_OBUF[11]),
        .O(MA[11]));
  OBUF \MA_OBUF[1]_inst 
       (.I(MA_OBUF[1]),
        .O(MA[1]));
  OBUF \MA_OBUF[2]_inst 
       (.I(MA_OBUF[2]),
        .O(MA[2]));
  OBUF \MA_OBUF[3]_inst 
       (.I(MA_OBUF[3]),
        .O(MA[3]));
  OBUF \MA_OBUF[4]_inst 
       (.I(MA_OBUF[4]),
        .O(MA[4]));
  OBUF \MA_OBUF[5]_inst 
       (.I(MA_OBUF[5]),
        .O(MA[5]));
  OBUF \MA_OBUF[6]_inst 
       (.I(MA_OBUF[6]),
        .O(MA[6]));
  OBUF \MA_OBUF[7]_inst 
       (.I(MA_OBUF[7]),
        .O(MA[7]));
  OBUF \MA_OBUF[8]_inst 
       (.I(MA_OBUF[8]),
        .O(MA[8]));
  OBUF \MA_OBUF[9]_inst 
       (.I(MA_OBUF[9]),
        .O(MA[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[0]_i_1_n_0 ),
        .Q(MA_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[10]_i_1_n_0 ),
        .Q(MA_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[11]_i_2_n_0 ),
        .Q(MA_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[1]_i_1_n_0 ),
        .Q(MA_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[2]_i_1_n_0 ),
        .Q(MA_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[3]_i_1_n_0 ),
        .Q(MA_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[4]_i_1_n_0 ),
        .Q(MA_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[5]_i_1_n_0 ),
        .Q(MA_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[6]_i_1_n_0 ),
        .Q(MA_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[7]_i_1_n_0 ),
        .Q(MA_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[8]_i_1_n_0 ),
        .Q(MA_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MA_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MA[11]_i_1_n_0 ),
        .D(\MA[9]_i_1_n_0 ),
        .Q(MA_OBUF[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[0]_i_1 
       (.I0(MEM_BUS_READ_IBUF[0]),
        .I1(MA_OBUF[0]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[10]_i_1 
       (.I0(MEM_BUS_READ_IBUF[10]),
        .I1(MA_OBUF[10]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0B020000)) 
    \MD[11]_i_1 
       (.I0(NextState[2]),
        .I1(NextState[1]),
        .I2(NextState[4]),
        .I3(NextState[3]),
        .I4(NextState[0]),
        .O(\MD[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[11]_i_2 
       (.I0(MEM_BUS_READ_IBUF[11]),
        .I1(MA_OBUF[11]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \MD[15]_i_1 
       (.I0(NextState[0]),
        .I1(NextState[3]),
        .I2(NextState[4]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[1]_i_1 
       (.I0(MEM_BUS_READ_IBUF[1]),
        .I1(MA_OBUF[1]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[2]_i_1 
       (.I0(MEM_BUS_READ_IBUF[2]),
        .I1(MA_OBUF[2]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[3]_i_1 
       (.I0(MEM_BUS_READ_IBUF[3]),
        .I1(MA_OBUF[3]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[4]_i_1 
       (.I0(MEM_BUS_READ_IBUF[4]),
        .I1(MA_OBUF[4]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[5]_i_1 
       (.I0(MEM_BUS_READ_IBUF[5]),
        .I1(MA_OBUF[5]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[6]_i_1 
       (.I0(MEM_BUS_READ_IBUF[6]),
        .I1(MA_OBUF[6]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[7]_i_1 
       (.I0(MEM_BUS_READ_IBUF[7]),
        .I1(MA_OBUF[7]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[8]_i_1 
       (.I0(MEM_BUS_READ_IBUF[8]),
        .I1(MA_OBUF[8]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACAAA)) 
    \MD[9]_i_1 
       (.I0(MEM_BUS_READ_IBUF[9]),
        .I1(MA_OBUF[9]),
        .I2(NextState[3]),
        .I3(NextState[2]),
        .I4(NextState[1]),
        .O(\MD[9]_i_1_n_0 ));
  OBUF \MD_OBUF[0]_inst 
       (.I(MD_OBUF[0]),
        .O(MD[0]));
  OBUF \MD_OBUF[10]_inst 
       (.I(MD_OBUF[10]),
        .O(MD[10]));
  OBUF \MD_OBUF[11]_inst 
       (.I(MD_OBUF[11]),
        .O(MD[11]));
  OBUF \MD_OBUF[12]_inst 
       (.I(MD_OBUF[12]),
        .O(MD[12]));
  OBUF \MD_OBUF[13]_inst 
       (.I(MD_OBUF[13]),
        .O(MD[13]));
  OBUF \MD_OBUF[14]_inst 
       (.I(MD_OBUF[14]),
        .O(MD[14]));
  OBUF \MD_OBUF[15]_inst 
       (.I(MD_OBUF[15]),
        .O(MD[15]));
  OBUF \MD_OBUF[1]_inst 
       (.I(MD_OBUF[1]),
        .O(MD[1]));
  OBUF \MD_OBUF[2]_inst 
       (.I(MD_OBUF[2]),
        .O(MD[2]));
  OBUF \MD_OBUF[3]_inst 
       (.I(MD_OBUF[3]),
        .O(MD[3]));
  OBUF \MD_OBUF[4]_inst 
       (.I(MD_OBUF[4]),
        .O(MD[4]));
  OBUF \MD_OBUF[5]_inst 
       (.I(MD_OBUF[5]),
        .O(MD[5]));
  OBUF \MD_OBUF[6]_inst 
       (.I(MD_OBUF[6]),
        .O(MD[6]));
  OBUF \MD_OBUF[7]_inst 
       (.I(MD_OBUF[7]),
        .O(MD[7]));
  OBUF \MD_OBUF[8]_inst 
       (.I(MD_OBUF[8]),
        .O(MD[8]));
  OBUF \MD_OBUF[9]_inst 
       (.I(MD_OBUF[9]),
        .O(MD[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[0]_i_1_n_0 ),
        .Q(MD_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[10]_i_1_n_0 ),
        .Q(MD_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[11]_i_2_n_0 ),
        .Q(MD_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[12]),
        .Q(MD_OBUF[12]),
        .R(\MD[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[13]),
        .Q(MD_OBUF[13]),
        .R(\MD[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[14]),
        .Q(MD_OBUF[14]),
        .R(\MD[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(MEM_BUS_READ_IBUF[15]),
        .Q(MD_OBUF[15]),
        .R(\MD[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[1]_i_1_n_0 ),
        .Q(MD_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[2]_i_1_n_0 ),
        .Q(MD_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[3]_i_1_n_0 ),
        .Q(MD_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[4]_i_1_n_0 ),
        .Q(MD_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[5]_i_1_n_0 ),
        .Q(MD_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[6]_i_1_n_0 ),
        .Q(MD_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[7]_i_1_n_0 ),
        .Q(MD_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[8]_i_1_n_0 ),
        .Q(MD_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MD_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MD[11]_i_1_n_0 ),
        .D(\MD[9]_i_1_n_0 ),
        .Q(MD_OBUF[9]),
        .R(1'b0));
  OBUF MEM_BUS_CONTROL_OBUF_inst
       (.I(MEM_BUS_CONTROL_OBUF),
        .O(MEM_BUS_CONTROL));
  FDSE #(
    .INIT(1'b0)) 
    MEM_BUS_CONTROL_reg
       (.C(CLK_IBUF_BUFG),
        .CE(\IR[15]_i_1_n_0 ),
        .D(1'b0),
        .Q(MEM_BUS_CONTROL_OBUF),
        .S(MEM_BUS_CONTROL0));
  IBUF \MEM_BUS_READ_IBUF[0]_inst 
       (.I(MEM_BUS_READ[0]),
        .O(MEM_BUS_READ_IBUF[0]));
  IBUF \MEM_BUS_READ_IBUF[10]_inst 
       (.I(MEM_BUS_READ[10]),
        .O(MEM_BUS_READ_IBUF[10]));
  IBUF \MEM_BUS_READ_IBUF[11]_inst 
       (.I(MEM_BUS_READ[11]),
        .O(MEM_BUS_READ_IBUF[11]));
  IBUF \MEM_BUS_READ_IBUF[12]_inst 
       (.I(MEM_BUS_READ[12]),
        .O(MEM_BUS_READ_IBUF[12]));
  IBUF \MEM_BUS_READ_IBUF[13]_inst 
       (.I(MEM_BUS_READ[13]),
        .O(MEM_BUS_READ_IBUF[13]));
  IBUF \MEM_BUS_READ_IBUF[14]_inst 
       (.I(MEM_BUS_READ[14]),
        .O(MEM_BUS_READ_IBUF[14]));
  IBUF \MEM_BUS_READ_IBUF[15]_inst 
       (.I(MEM_BUS_READ[15]),
        .O(MEM_BUS_READ_IBUF[15]));
  IBUF \MEM_BUS_READ_IBUF[1]_inst 
       (.I(MEM_BUS_READ[1]),
        .O(MEM_BUS_READ_IBUF[1]));
  IBUF \MEM_BUS_READ_IBUF[2]_inst 
       (.I(MEM_BUS_READ[2]),
        .O(MEM_BUS_READ_IBUF[2]));
  IBUF \MEM_BUS_READ_IBUF[3]_inst 
       (.I(MEM_BUS_READ[3]),
        .O(MEM_BUS_READ_IBUF[3]));
  IBUF \MEM_BUS_READ_IBUF[4]_inst 
       (.I(MEM_BUS_READ[4]),
        .O(MEM_BUS_READ_IBUF[4]));
  IBUF \MEM_BUS_READ_IBUF[5]_inst 
       (.I(MEM_BUS_READ[5]),
        .O(MEM_BUS_READ_IBUF[5]));
  IBUF \MEM_BUS_READ_IBUF[6]_inst 
       (.I(MEM_BUS_READ[6]),
        .O(MEM_BUS_READ_IBUF[6]));
  IBUF \MEM_BUS_READ_IBUF[7]_inst 
       (.I(MEM_BUS_READ[7]),
        .O(MEM_BUS_READ_IBUF[7]));
  IBUF \MEM_BUS_READ_IBUF[8]_inst 
       (.I(MEM_BUS_READ[8]),
        .O(MEM_BUS_READ_IBUF[8]));
  IBUF \MEM_BUS_READ_IBUF[9]_inst 
       (.I(MEM_BUS_READ[9]),
        .O(MEM_BUS_READ_IBUF[9]));
  OBUF \MEM_BUS_WRITE_OBUF[0]_inst 
       (.I(MEM_BUS_WRITE_OBUF[0]),
        .O(MEM_BUS_WRITE[0]));
  OBUF \MEM_BUS_WRITE_OBUF[10]_inst 
       (.I(MEM_BUS_WRITE_OBUF[10]),
        .O(MEM_BUS_WRITE[10]));
  OBUF \MEM_BUS_WRITE_OBUF[11]_inst 
       (.I(MEM_BUS_WRITE_OBUF[11]),
        .O(MEM_BUS_WRITE[11]));
  OBUF \MEM_BUS_WRITE_OBUF[12]_inst 
       (.I(MEM_BUS_WRITE_OBUF[12]),
        .O(MEM_BUS_WRITE[12]));
  OBUF \MEM_BUS_WRITE_OBUF[13]_inst 
       (.I(MEM_BUS_WRITE_OBUF[13]),
        .O(MEM_BUS_WRITE[13]));
  OBUF \MEM_BUS_WRITE_OBUF[14]_inst 
       (.I(MEM_BUS_WRITE_OBUF[14]),
        .O(MEM_BUS_WRITE[14]));
  OBUF \MEM_BUS_WRITE_OBUF[15]_inst 
       (.I(MEM_BUS_WRITE_OBUF[15]),
        .O(MEM_BUS_WRITE[15]));
  OBUF \MEM_BUS_WRITE_OBUF[1]_inst 
       (.I(MEM_BUS_WRITE_OBUF[1]),
        .O(MEM_BUS_WRITE[1]));
  OBUF \MEM_BUS_WRITE_OBUF[2]_inst 
       (.I(MEM_BUS_WRITE_OBUF[2]),
        .O(MEM_BUS_WRITE[2]));
  OBUF \MEM_BUS_WRITE_OBUF[3]_inst 
       (.I(MEM_BUS_WRITE_OBUF[3]),
        .O(MEM_BUS_WRITE[3]));
  OBUF \MEM_BUS_WRITE_OBUF[4]_inst 
       (.I(MEM_BUS_WRITE_OBUF[4]),
        .O(MEM_BUS_WRITE[4]));
  OBUF \MEM_BUS_WRITE_OBUF[5]_inst 
       (.I(MEM_BUS_WRITE_OBUF[5]),
        .O(MEM_BUS_WRITE[5]));
  OBUF \MEM_BUS_WRITE_OBUF[6]_inst 
       (.I(MEM_BUS_WRITE_OBUF[6]),
        .O(MEM_BUS_WRITE[6]));
  OBUF \MEM_BUS_WRITE_OBUF[7]_inst 
       (.I(MEM_BUS_WRITE_OBUF[7]),
        .O(MEM_BUS_WRITE[7]));
  OBUF \MEM_BUS_WRITE_OBUF[8]_inst 
       (.I(MEM_BUS_WRITE_OBUF[8]),
        .O(MEM_BUS_WRITE[8]));
  OBUF \MEM_BUS_WRITE_OBUF[9]_inst 
       (.I(MEM_BUS_WRITE_OBUF[9]),
        .O(MEM_BUS_WRITE[9]));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[0]),
        .Q(MEM_BUS_WRITE_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[10]),
        .Q(MEM_BUS_WRITE_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[11]),
        .Q(MEM_BUS_WRITE_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[12]),
        .Q(MEM_BUS_WRITE_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[13]),
        .Q(MEM_BUS_WRITE_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[14]),
        .Q(MEM_BUS_WRITE_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[15]),
        .Q(MEM_BUS_WRITE_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[1]),
        .Q(MEM_BUS_WRITE_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[2]),
        .Q(MEM_BUS_WRITE_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[3]),
        .Q(MEM_BUS_WRITE_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[4]),
        .Q(MEM_BUS_WRITE_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[5]),
        .Q(MEM_BUS_WRITE_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[6]),
        .Q(MEM_BUS_WRITE_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[7]),
        .Q(MEM_BUS_WRITE_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[8]),
        .Q(MEM_BUS_WRITE_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_BUS_WRITE_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(MEM_BUS_CONTROL0),
        .D(AC_OBUF[9]),
        .Q(MEM_BUS_WRITE_OBUF[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF8B008B)) 
    \PC[0]_i_1 
       (.I0(IR_OBUF[0]),
        .I1(NextState[1]),
        .I2(PC_OBUF[0]),
        .I3(NextState[2]),
        .I4(MD_OBUF[0]),
        .O(\PC[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[10]_i_1 
       (.I0(IR_OBUF[10]),
        .I1(NextState[1]),
        .I2(in9[10]),
        .I3(NextState[2]),
        .I4(MD_OBUF[10]),
        .O(\PC[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020300)) 
    \PC[11]_i_1 
       (.I0(NextState[1]),
        .I1(NextState[3]),
        .I2(NextState[4]),
        .I3(NextState[0]),
        .I4(NextState[2]),
        .O(\PC[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[11]_i_2 
       (.I0(IR_OBUF[11]),
        .I1(NextState[1]),
        .I2(in9[11]),
        .I3(NextState[2]),
        .I4(MD_OBUF[11]),
        .O(\PC[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[1]_i_1 
       (.I0(IR_OBUF[1]),
        .I1(NextState[1]),
        .I2(in9[1]),
        .I3(NextState[2]),
        .I4(MD_OBUF[1]),
        .O(\PC[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[2]_i_1 
       (.I0(IR_OBUF[2]),
        .I1(NextState[1]),
        .I2(in9[2]),
        .I3(NextState[2]),
        .I4(MD_OBUF[2]),
        .O(\PC[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[3]_i_1 
       (.I0(IR_OBUF[3]),
        .I1(NextState[1]),
        .I2(in9[3]),
        .I3(NextState[2]),
        .I4(MD_OBUF[3]),
        .O(\PC[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[4]_i_1 
       (.I0(IR_OBUF[4]),
        .I1(NextState[1]),
        .I2(in9[4]),
        .I3(NextState[2]),
        .I4(MD_OBUF[4]),
        .O(\PC[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[5]_i_1 
       (.I0(IR_OBUF[5]),
        .I1(NextState[1]),
        .I2(in9[5]),
        .I3(NextState[2]),
        .I4(MD_OBUF[5]),
        .O(\PC[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[6]_i_1 
       (.I0(IR_OBUF[6]),
        .I1(NextState[1]),
        .I2(in9[6]),
        .I3(NextState[2]),
        .I4(MD_OBUF[6]),
        .O(\PC[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[7]_i_1 
       (.I0(IR_OBUF[7]),
        .I1(NextState[1]),
        .I2(in9[7]),
        .I3(NextState[2]),
        .I4(MD_OBUF[7]),
        .O(\PC[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[8]_i_1 
       (.I0(IR_OBUF[8]),
        .I1(NextState[1]),
        .I2(in9[8]),
        .I3(NextState[2]),
        .I4(MD_OBUF[8]),
        .O(\PC[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \PC[9]_i_1 
       (.I0(IR_OBUF[9]),
        .I1(NextState[1]),
        .I2(in9[9]),
        .I3(NextState[2]),
        .I4(MD_OBUF[9]),
        .O(\PC[9]_i_1_n_0 ));
  OBUF \PC_OBUF[0]_inst 
       (.I(PC_OBUF[0]),
        .O(PC[0]));
  OBUF \PC_OBUF[10]_inst 
       (.I(PC_OBUF[10]),
        .O(PC[10]));
  OBUF \PC_OBUF[11]_inst 
       (.I(PC_OBUF[11]),
        .O(PC[11]));
  OBUF \PC_OBUF[1]_inst 
       (.I(PC_OBUF[1]),
        .O(PC[1]));
  OBUF \PC_OBUF[2]_inst 
       (.I(PC_OBUF[2]),
        .O(PC[2]));
  OBUF \PC_OBUF[3]_inst 
       (.I(PC_OBUF[3]),
        .O(PC[3]));
  OBUF \PC_OBUF[4]_inst 
       (.I(PC_OBUF[4]),
        .O(PC[4]));
  OBUF \PC_OBUF[5]_inst 
       (.I(PC_OBUF[5]),
        .O(PC[5]));
  OBUF \PC_OBUF[6]_inst 
       (.I(PC_OBUF[6]),
        .O(PC[6]));
  OBUF \PC_OBUF[7]_inst 
       (.I(PC_OBUF[7]),
        .O(PC[7]));
  OBUF \PC_OBUF[8]_inst 
       (.I(PC_OBUF[8]),
        .O(PC[8]));
  OBUF \PC_OBUF[9]_inst 
       (.I(PC_OBUF[9]),
        .O(PC[9]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[0]_i_1_n_0 ),
        .Q(PC_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[10]_i_1_n_0 ),
        .Q(PC_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[11]_i_2_n_0 ),
        .Q(PC_OBUF[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PC_reg[11]_i_3 
       (.CI(\PC_reg[8]_i_2_n_0 ),
        .CO(\NLW_PC_reg[11]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PC_reg[11]_i_3_O_UNCONNECTED [3],in9[11:9]}),
        .S({1'b0,PC_OBUF[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[1]_i_1_n_0 ),
        .Q(PC_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[2]_i_1_n_0 ),
        .Q(PC_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[3]_i_1_n_0 ),
        .Q(PC_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[4]_i_1_n_0 ),
        .Q(PC_OBUF[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PC_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\PC_reg[4]_i_2_n_0 ,\NLW_PC_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(PC_OBUF[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S(PC_OBUF[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[5]_i_1_n_0 ),
        .Q(PC_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[6]_i_1_n_0 ),
        .Q(PC_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[7]_i_1_n_0 ),
        .Q(PC_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[8]_i_1_n_0 ),
        .Q(PC_OBUF[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \PC_reg[8]_i_2 
       (.CI(\PC_reg[4]_i_2_n_0 ),
        .CO({\PC_reg[8]_i_2_n_0 ,\NLW_PC_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S(PC_OBUF[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\PC[11]_i_1_n_0 ),
        .D(\PC[9]_i_1_n_0 ),
        .Q(PC_OBUF[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
