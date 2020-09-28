`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2020 10:26:05 PM
// Design Name: 
// Module Name: TwoBitLookAhead
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
// Let me preface this by saying that the idea of a 2-bit look ahead adder is completely ridiculous, the whole idea of a look ahead adder is to
// compute the sum using a look-ahead module that would determine every value based off the value of the first carry. This means the entire sum
// would be computed at roughly the same speed of a 2-bit ripple carry. This design is simply an over-complicated inefficient way of doing the same
// thing as a 2-bit ripple carry adder.
//////////////////////////////////////////////////////////////////////////////////


module TwoBitLookAhead(a1, a2, b1, b2, cin, cout, s1, s2);
input a1,a2,b1,b2,cin;
output cout, s1, s2;
wire s1, s2, cout, c0, w1, w2, w3, w4, w5, w6, w7, w8;
//Let's group parallel processes: (Assuming every gate has a propogation delay of 1 time unit)
xor #1 xor1(w1,a1,b1);//Used to find S1

and #1 and1(w2, a1, b1); //Used to determine C0
and #1 and2(w3, a1, cin);//Used to determine C0
and #1 and3(w4, b1, cin);//Used to determine C0

xor #1 xor2(w5, a2, b2); //Used to determine S2

and #1 and4(w6, a2, b2); //Generate, if a2 AND b2 then we know it's a carry
or #1 or1 (w7, a2, b2); //Propogate, if a2 OR b2 then it depends on the carry

xor #1 xor3(s1, w1, cin);//outputs S1 (a1 XOR b1 ) XOR cin
or #1 or2 (c0, w2, w3, w4); //Determines C0


xor #1 xor4(s2, w5, c0); //since this carry is generated from the first part, we don't need any logic to get it.
and and5(w8, w7, c0); //Propogate, see above.

or #1 or3(cout, w6, w8); //Output the carry.



/* 2 Bit look-ahead ignoring the delay: (Was used initially)
//First we'll compute s1
w1 = a1 ^ b1; 
s1 = w1 ^ cin;
//This value will go unchanged.

//Let's compute the carry we'll call c0
w2 = a1 & b1;
w3 = a1 & cin;
w4 = b1 & cin;
c0 = w2 | w3 | w4;
//this value will impact the value of all subsiquent values (1 bit)

//Now we'll compute s2
w5 = a2 ^ b2; 
s2 = w5 ^ c0; //since this carry is generated from the first part, we don't need any logic to get it.

//Now the fun part, we need to determine the carry.
w6 = a2 & b2; //Generate, if a2 AND b2 then we know it's a carry
w7 = a2 | b2; //Propogate, if a2 OR b2 then it depends on the carry
w8 = w7 & c0; //Propogate, see above.
cout = w6 | w8; //Output the carry.
*/
endmodule
