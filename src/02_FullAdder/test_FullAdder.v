`timescale 1 us/ 1 ns
module test_FullAdder();
/*
  test_FullAdder.v
    Test bench for FullAdder.v

    Author：Yuki Fukuda
    Date：2020/12/02
    Licence：MIT License

    // Signal definition
    in_A, in_B, in_C: 1 bit number for input to A, B and C.
    out_out   : 1 bit number for output out.
    out_cy    : 1 bit number for output cy.
*/

/* Signal definition */
// for input
reg in_A = 1'b0;
reg in_B = 1'b0;
reg in_C = 1'b0;

// for output
wire out_out;
wire out_cy;

/* Instantiation */
/* Write your code here to test FullAdder.v */

/* RTL */
always begin
    #1 in_A <= in_A + 1'b1;
end 

always begin
    /* Delete this comment and input time delay here for exhaustive test */ in_B <= in_B + 1'b1;
end

always begin
    /* Delete this comment and input time delay here for exhaustive test */ in_C <= in_C + 1'b1;
end
endmodule