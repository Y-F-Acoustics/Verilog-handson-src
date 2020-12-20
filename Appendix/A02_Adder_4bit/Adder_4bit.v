module Adder_4bit(A, B, ans);
/*
  Adder_4bit.v
    Unsigned 4 bit Adder combined HalfAdder and FullAdder.

    Author：Yuki Fukuda
    Date：2020/12/02
    Licence：MIT License
*/

/* Port definition */
// Input
input wire unsigned [3:0] A, B;

// Output
output wire unsigned [4:0] ans;

// Internal signal
wire out0, out1, out2, out3, out4;
wire cy0, cy1, cy2;

// Instantiation
HalfAdder HalfAdder(.A(A[0]), .B(B[0]), .out(out0), .cy(cy0));
FullAdder FullAdder1(.A(A[1]), .B(B[1]), .C(cy0), .out(out1), .cy(cy1));
FullAdder FullAdder2(.A(A[2]), .B(B[2]), .C(cy1), .out(out2), .cy(cy2));
FullAdder FullAdder3(.A(A[3]), .B(B[3]), .C(cy2), .out(out3), .cy(out4));

assign ans = {out4, out3, out2, out1, out0};

endmodule